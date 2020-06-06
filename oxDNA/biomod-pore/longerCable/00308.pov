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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.352270, 35.387806, 35.083237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.140919, 35.048225, 35.087181>,  <24.014109, 34.844479, 35.089550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.140919, 35.048225, 35.087181>,  <24.352270, 35.387806, 35.083237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.140919, 35.048225, 35.087181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760571, -0.478471, -0.438860,
		0.377291, -0.224381, 0.898502,
		-0.528378, -0.848952, 0.009865,
		23.982405, 34.793541, 35.090141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.108418, 35.454201, 35.311001>,  <24.352270, 35.387806, 35.083237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.108418, 35.454201, 35.311001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.384090, 35.379837, 35.030869>,  <25.549494, 35.335217, 34.862789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.384090, 35.379837, 35.030869>,  <25.108418, 35.454201, 35.311001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.384090, 35.379837, 35.030869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257402, -0.840667, 0.476470,
		-0.677328, -0.508641, -0.531518,
		0.689182, -0.185912, -0.700332,
		25.590845, 35.324062, 34.820770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.042969, 34.777096, 34.863541>,  <25.108418, 35.454201, 35.311001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.042969, 34.777096, 34.863541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.414526, 34.905361, 34.937660>,  <25.637461, 34.982319, 34.982132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.414526, 34.905361, 34.937660>,  <25.042969, 34.777096, 34.863541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.414526, 34.905361, 34.937660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222085, -0.882679, 0.414192,
		0.296371, -0.343589, -0.891129,
		0.928893, 0.320661, 0.185294,
		25.693193, 35.001560, 34.993248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.513817, 34.207615, 34.603401>,  <25.042969, 34.777096, 34.863541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.513817, 34.207615, 34.603401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.679268, 34.430252, 34.891598>,  <25.778540, 34.563835, 35.064518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.679268, 34.430252, 34.891598>,  <25.513817, 34.207615, 34.603401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.679268, 34.430252, 34.891598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531347, -0.790192, 0.305396,
		0.739311, 0.256512, -0.622592,
		0.413630, 0.556596, 0.720494,
		25.803356, 34.597229, 35.107746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.142628, 33.881466, 34.685352>,  <25.513817, 34.207615, 34.603401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.142628, 33.881466, 34.685352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.085827, 34.097317, 35.017288>,  <26.051746, 34.226826, 35.216450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.085827, 34.097317, 35.017288>,  <26.142628, 33.881466, 34.685352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.085827, 34.097317, 35.017288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403259, -0.734080, 0.546360,
		0.904001, 0.412225, -0.113369,
		-0.142001, 0.539628, 0.829842,
		26.043226, 34.259205, 35.266239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.768547, 33.997768, 35.090950>,  <26.142628, 33.881466, 34.685352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.768547, 33.997768, 35.090950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450298, 33.991894, 35.333195>,  <26.259348, 33.988369, 35.478542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.450298, 33.991894, 35.333195>,  <26.768547, 33.997768, 35.090950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.450298, 33.991894, 35.333195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394450, -0.771304, 0.499499,
		0.459775, 0.636297, 0.619462,
		-0.795623, -0.014689, 0.605614,
		26.211611, 33.987488, 35.514877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.951971, 34.025536, 35.830509>,  <26.768547, 33.997768, 35.090950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.951971, 34.025536, 35.830509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.610287, 33.821186, 35.791862>,  <26.405277, 33.698578, 35.768673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.610287, 33.821186, 35.791862>,  <26.951971, 34.025536, 35.830509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.610287, 33.821186, 35.791862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364762, -0.721266, 0.588832,
		-0.370506, 0.467743, 0.802459,
		-0.854209, -0.510873, -0.096618,
		26.354023, 33.667923, 35.762878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.575138, 33.945202, 36.467957>,  <26.951971, 34.025536, 35.830509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.575138, 33.945202, 36.467957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.490881, 33.643394, 36.219334>,  <26.440327, 33.462311, 36.070160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.490881, 33.643394, 36.219334>,  <26.575138, 33.945202, 36.467957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.490881, 33.643394, 36.219334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340675, -0.652626, 0.676772,
		-0.916281, -0.069193, 0.394514,
		-0.210642, -0.754514, -0.621561,
		26.427689, 33.417042, 36.032864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.198250, 33.485340, 36.901302>,  <26.575138, 33.945202, 36.467957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.198250, 33.485340, 36.901302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.364794, 33.301727, 36.587376>,  <26.464720, 33.191559, 36.399021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.364794, 33.301727, 36.587376>,  <26.198250, 33.485340, 36.901302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.364794, 33.301727, 36.587376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448316, -0.647309, 0.616444,
		-0.790985, -0.608508, -0.063722,
		0.416359, -0.459031, -0.784816,
		26.489702, 33.164017, 36.351933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.186113, 32.793049, 37.107502>,  <26.198250, 33.485340, 36.901302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.186113, 32.793049, 37.107502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.440191, 32.785370, 36.798656>,  <26.592638, 32.780762, 36.613350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.440191, 32.785370, 36.798656>,  <26.186113, 32.793049, 37.107502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.440191, 32.785370, 36.798656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495299, -0.756939, 0.426289,
		-0.592629, -0.653203, -0.471293,
		0.635193, -0.019200, -0.772114,
		26.630749, 32.779610, 36.567020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.396805, 32.065578, 37.008228>,  <26.186113, 32.793049, 37.107502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.396805, 32.065578, 37.008228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.688543, 32.276066, 36.833347>,  <26.863586, 32.402359, 36.728416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.688543, 32.276066, 36.833347>,  <26.396805, 32.065578, 37.008228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.688543, 32.276066, 36.833347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679016, -0.634870, 0.368615,
		-0.083598, -0.565719, -0.820349,
		0.729348, 0.526215, -0.437207,
		26.907349, 32.433929, 36.702187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.963713, 31.543139, 36.870007>,  <26.396805, 32.065578, 37.008228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.963713, 31.543139, 36.870007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.121574, 31.910320, 36.853973>,  <27.216291, 32.130630, 36.844353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.121574, 31.910320, 36.853973>,  <26.963713, 31.543139, 36.870007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.121574, 31.910320, 36.853973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816169, -0.330188, 0.474178,
		0.422040, -0.219848, -0.879516,
		0.394652, 0.917956, -0.040081,
		27.239969, 32.185707, 36.841949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.663046, 31.334930, 37.209934>,  <26.963713, 31.543139, 36.870007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.663046, 31.334930, 37.209934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.966810, 31.593548, 37.239006>,  <28.149069, 31.748718, 37.256451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.966810, 31.593548, 37.239006>,  <27.663046, 31.334930, 37.209934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.966810, 31.593548, 37.239006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541807, 0.690294, -0.479520,
		-0.360199, 0.324774, 0.874516,
		0.759408, 0.646542, 0.072678,
		28.194633, 31.787510, 37.260811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.523693, 31.926466, 37.640720>,  <27.663046, 31.334930, 37.209934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.523693, 31.926466, 37.640720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.779707, 31.992903, 37.340649>,  <27.933315, 32.032764, 37.160606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.779707, 31.992903, 37.340649>,  <27.523693, 31.926466, 37.640720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.779707, 31.992903, 37.340649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685283, 0.564952, -0.459584,
		0.347484, 0.808235, 0.475407,
		0.640033, 0.166090, -0.750181,
		27.971718, 32.042728, 37.115593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553019, 32.601162, 37.414383>,  <27.523693, 31.926466, 37.640720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.553019, 32.601162, 37.414383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.640018, 32.358028, 37.108902>,  <27.692219, 32.212151, 36.925613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.640018, 32.358028, 37.108902>,  <27.553019, 32.601162, 37.414383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.640018, 32.358028, 37.108902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565686, 0.559126, -0.606117,
		0.795420, 0.563844, -0.222232,
		0.217500, -0.607831, -0.763698,
		27.705269, 32.175678, 36.879791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.904564, 33.036167, 36.901478>,  <27.553019, 32.601162, 37.414383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.904564, 33.036167, 36.901478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720482, 32.718185, 36.743362>,  <27.610033, 32.527397, 36.648495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.720482, 32.718185, 36.743362>,  <27.904564, 33.036167, 36.901478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.720482, 32.718185, 36.743362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499773, 0.599958, -0.624722,
		0.733783, -0.089949, -0.673403,
		-0.460207, -0.794959, -0.395285,
		27.582420, 32.479698, 36.624779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874544, 33.114616, 36.220734>,  <27.904564, 33.036167, 36.901478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874544, 33.114616, 36.220734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.560886, 32.912769, 36.365219>,  <27.372692, 32.791660, 36.451908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.560886, 32.912769, 36.365219>,  <27.874544, 33.114616, 36.220734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.560886, 32.912769, 36.365219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620559, 0.633289, -0.462442,
		0.004608, -0.586774, -0.809738,
		-0.784147, -0.504621, 0.361209,
		27.325642, 32.761383, 36.473583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.535595, 32.820637, 35.587559>,  <27.874544, 33.114616, 36.220734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.535595, 32.820637, 35.587559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.249500, 32.781105, 35.864300>,  <27.077843, 32.757385, 36.030346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.249500, 32.781105, 35.864300>,  <27.535595, 32.820637, 35.587559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.249500, 32.781105, 35.864300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656493, 0.434528, -0.616606,
		-0.239690, -0.895219, -0.375674,
		-0.715238, -0.098834, 0.691857,
		27.034929, 32.751453, 36.071857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.886604, 32.488400, 35.316616>,  <27.535595, 32.820637, 35.587559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.886604, 32.488400, 35.316616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766651, 32.685192, 35.643547>,  <26.694679, 32.803268, 35.839706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.766651, 32.685192, 35.643547>,  <26.886604, 32.488400, 35.316616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.766651, 32.685192, 35.643547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648974, 0.522753, -0.552777,
		-0.699216, -0.696193, 0.162519,
		-0.299882, 0.491981, 0.817328,
		26.676687, 32.832787, 35.888744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.204174, 32.413906, 35.209633>,  <26.886604, 32.488400, 35.316616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.204174, 32.413906, 35.209633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.305416, 32.732025, 35.429974>,  <26.366161, 32.922897, 35.562176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.305416, 32.732025, 35.429974>,  <26.204174, 32.413906, 35.209633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.305416, 32.732025, 35.429974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638379, 0.565129, -0.522591,
		-0.726917, -0.219380, 0.650741,
		0.253107, 0.795300, 0.550850,
		26.381348, 32.970615, 35.595230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.590101, 32.623749, 35.545956>,  <26.204174, 32.413906, 35.209633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.590101, 32.623749, 35.545956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.846123, 32.926018, 35.490402>,  <25.999737, 33.107380, 35.457069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.846123, 32.926018, 35.490402>,  <25.590101, 32.623749, 35.545956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.846123, 32.926018, 35.490402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696349, 0.494149, -0.520496,
		-0.324697, 0.429856, 0.842494,
		0.640055, 0.755673, -0.138881,
		26.038139, 33.152721, 35.448738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.764891, 33.295563, 35.863632>,  <25.590101, 32.623749, 35.545956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.764891, 33.295563, 35.863632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830658, 33.546299, 36.168270>,  <25.870119, 33.696743, 36.351055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830658, 33.546299, 36.168270>,  <25.764891, 33.295563, 35.863632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.830658, 33.546299, 36.168270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338724, 0.689274, -0.640444,
		-0.926408, 0.363273, -0.098997,
		0.164419, 0.626845, 0.761598,
		25.879984, 33.734352, 36.396748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.286835, 33.921913, 35.908066>,  <25.764891, 33.295563, 35.863632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.286835, 33.921913, 35.908066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646481, 34.000023, 36.064758>,  <25.862268, 34.046890, 36.158775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.646481, 34.000023, 36.064758>,  <25.286835, 33.921913, 35.908066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.646481, 34.000023, 36.064758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150568, 0.702363, -0.695713,
		-0.410996, 0.684510, 0.602104,
		0.899117, 0.195277, 0.391734,
		25.916216, 34.058605, 36.182278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.392862, 34.610577, 36.143177>,  <25.286835, 33.921913, 35.908066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.392862, 34.610577, 36.143177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.727108, 34.434139, 36.012218>,  <25.927656, 34.328278, 35.933643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.727108, 34.434139, 36.012218>,  <25.392862, 34.610577, 36.143177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.727108, 34.434139, 36.012218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207382, 0.805215, -0.555537,
		0.508667, 0.396319, 0.764323,
		0.835614, -0.441090, -0.327397,
		25.977793, 34.301811, 35.913998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.904890, 35.070057, 36.294117>,  <25.392862, 34.610577, 36.143177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.904890, 35.070057, 36.294117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.964697, 34.816448, 35.990627>,  <26.000580, 34.664284, 35.808533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.964697, 34.816448, 35.990627>,  <25.904890, 35.070057, 36.294117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.964697, 34.816448, 35.990627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004650, 0.767795, -0.640678,
		0.988748, 0.092263, 0.117746,
		0.149516, -0.634017, -0.758727,
		26.009552, 34.626244, 35.763008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.570486, 35.311863, 35.940758>,  <25.904890, 35.070057, 36.294117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.570486, 35.311863, 35.940758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.354122, 35.104164, 35.676094>,  <26.224304, 34.979546, 35.517296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.354122, 35.104164, 35.676094>,  <26.570486, 35.311863, 35.940758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.354122, 35.104164, 35.676094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100639, 0.741073, -0.663840,
		0.835039, -0.425665, -0.348596,
		-0.540908, -0.519250, -0.661663,
		26.191849, 34.948391, 35.477596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.827971, 35.543190, 35.337452>,  <26.570486, 35.311863, 35.940758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.827971, 35.543190, 35.337452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.491549, 35.359203, 35.223568>,  <26.289696, 35.248810, 35.155239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.491549, 35.359203, 35.223568>,  <26.827971, 35.543190, 35.337452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.491549, 35.359203, 35.223568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162046, 0.716366, -0.678646,
		0.516111, -0.524642, -0.677038,
		-0.841053, -0.459968, -0.284708,
		26.239233, 35.221214, 35.138157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.748003, 35.731850, 34.596062>,  <26.827971, 35.543190, 35.337452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.748003, 35.731850, 34.596062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.385958, 35.608414, 34.713051>,  <26.168730, 35.534351, 34.783245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.385958, 35.608414, 34.713051>,  <26.748003, 35.731850, 34.596062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.385958, 35.608414, 34.713051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423828, 0.709397, -0.563139,
		-0.033700, -0.633664, -0.772874,
		-0.905115, -0.308588, 0.292472,
		26.114424, 35.515839, 34.800793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.443617, 35.827755, 33.865826>,  <26.748003, 35.731850, 34.596062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.443617, 35.827755, 33.865826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185873, 35.790596, 34.169449>,  <26.031227, 35.768303, 34.351624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.185873, 35.790596, 34.169449>,  <26.443617, 35.827755, 33.865826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.185873, 35.790596, 34.169449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408434, 0.880969, -0.238904,
		-0.646515, -0.463966, -0.605601,
		-0.644359, -0.092893, 0.759060,
		25.992565, 35.762730, 34.397167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.864737, 35.402668, 33.563198>,  <26.443617, 35.827755, 33.865826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.864737, 35.402668, 33.563198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055086, 35.633480, 33.297695>,  <26.169296, 35.771969, 33.138393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.055086, 35.633480, 33.297695>,  <25.864737, 35.402668, 33.563198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.055086, 35.633480, 33.297695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221157, -0.651934, -0.725308,
		-0.851253, 0.491951, -0.182625,
		0.475876, 0.577032, -0.663759,
		26.197849, 35.806591, 33.098568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.561716, 35.274204, 32.984241>,  <25.864737, 35.402668, 33.563198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.561716, 35.274204, 32.984241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.897545, 35.454601, 32.863091>,  <26.099041, 35.562840, 32.790401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.897545, 35.454601, 32.863091>,  <25.561716, 35.274204, 32.984241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.897545, 35.454601, 32.863091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139993, -0.359081, -0.922747,
		-0.524904, 0.817111, -0.238339,
		0.839570, 0.450988, -0.302873,
		26.149416, 35.589897, 32.772228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.442743, 35.639694, 32.398617>,  <25.561716, 35.274204, 32.984241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.442743, 35.639694, 32.398617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.832088, 35.547981, 32.398853>,  <26.065695, 35.492954, 32.398994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.832088, 35.547981, 32.398853>,  <25.442743, 35.639694, 32.398617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.832088, 35.547981, 32.398853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124616, -0.531188, -0.838040,
		0.192457, 0.815642, -0.545609,
		0.973361, -0.229278, 0.000589,
		26.124096, 35.479198, 32.399029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.698849, 35.778351, 31.713112>,  <25.442743, 35.639694, 32.398617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.698849, 35.778351, 31.713112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.914232, 35.486206, 31.881226>,  <26.043463, 35.310921, 31.982094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.914232, 35.486206, 31.881226>,  <25.698849, 35.778351, 31.713112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.914232, 35.486206, 31.881226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025214, -0.512503, -0.858315,
		0.842275, 0.451570, -0.294377,
		0.538458, -0.730360, 0.420282,
		26.075769, 35.267097, 32.007309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.120075, 35.599754, 31.195810>,  <25.698849, 35.778351, 31.713112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.120075, 35.599754, 31.195810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.142481, 35.288219, 31.445698>,  <26.155924, 35.101299, 31.595631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.142481, 35.288219, 31.445698>,  <26.120075, 35.599754, 31.195810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.142481, 35.288219, 31.445698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181565, -0.623213, -0.760684,
		0.981783, -0.070819, -0.176317,
		0.056012, -0.778839, 0.624717,
		26.159285, 35.054569, 31.633114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.521374, 35.140472, 30.853741>,  <26.120075, 35.599754, 31.195810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.521374, 35.140472, 30.853741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277222, 34.953926, 31.109846>,  <26.130730, 34.841999, 31.263510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277222, 34.953926, 31.109846>,  <26.521374, 35.140472, 30.853741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.277222, 34.953926, 31.109846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182981, -0.703422, -0.686816,
		0.770683, -0.536375, 0.344019,
		-0.610381, -0.466368, 0.640262,
		26.094107, 34.814014, 31.301924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.676376, 34.432613, 31.026474>,  <26.521374, 35.140472, 30.853741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.676376, 34.432613, 31.026474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.281796, 34.495846, 31.044029>,  <26.045048, 34.533783, 31.054564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.281796, 34.495846, 31.044029>,  <26.676376, 34.432613, 31.026474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.281796, 34.495846, 31.044029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143921, -0.705407, -0.694038,
		-0.078753, -0.690951, 0.718600,
		-0.986450, 0.158079, 0.043890,
		25.985861, 34.543270, 31.057196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.229313, 33.885227, 30.683128>,  <26.676376, 34.432613, 31.026474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.229313, 33.885227, 30.683128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082886, 33.544815, 30.833719>,  <25.995029, 33.340569, 30.924074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082886, 33.544815, 30.833719>,  <26.229313, 33.885227, 30.683128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.082886, 33.544815, 30.833719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875056, 0.452459, 0.171925,
		-0.316655, -0.266503, -0.910333,
		-0.366070, -0.851033, 0.376478,
		25.973064, 33.289505, 30.946663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.604094, 33.980431, 30.498749>,  <26.229313, 33.885227, 30.683128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.604094, 33.980431, 30.498749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.580204, 33.695610, 30.778580>,  <25.565870, 33.524715, 30.946478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.580204, 33.695610, 30.778580>,  <25.604094, 33.980431, 30.498749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.580204, 33.695610, 30.778580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882908, 0.364663, 0.295794,
		-0.465732, -0.599999, -0.650458,
		-0.059722, -0.712055, 0.699579,
		25.562288, 33.481995, 30.988453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.950310, 33.651699, 30.575773>,  <25.604094, 33.980431, 30.498749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.950310, 33.651699, 30.575773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.101873, 33.573948, 30.937689>,  <25.192812, 33.527298, 31.154839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.101873, 33.573948, 30.937689>,  <24.950310, 33.651699, 30.575773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.101873, 33.573948, 30.937689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844523, 0.327167, 0.423960,
		-0.378427, -0.924758, -0.040191,
		0.378911, -0.194380, 0.904789,
		25.215548, 33.515633, 31.209126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.468122, 33.172905, 30.934465>,  <24.950310, 33.651699, 30.575773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.468122, 33.172905, 30.934465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.695229, 33.405159, 31.167875>,  <24.831491, 33.544514, 31.307920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.695229, 33.405159, 31.167875>,  <24.468122, 33.172905, 30.934465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.695229, 33.405159, 31.167875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812218, 0.510489, 0.282317,
		-0.133959, -0.634239, 0.761443,
		0.567765, 0.580639, 0.583525,
		24.865559, 33.579350, 31.342932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.025064, 33.385342, 31.418074>,  <24.468122, 33.172905, 30.934465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.025064, 33.385342, 31.418074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.325768, 33.649082, 31.413910>,  <24.506189, 33.807327, 31.411411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.325768, 33.649082, 31.413910>,  <24.025064, 33.385342, 31.418074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.325768, 33.649082, 31.413910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640428, 0.733760, 0.226823,
		0.157196, -0.163849, 0.973881,
		0.751759, 0.659356, -0.010410,
		24.551294, 33.846889, 31.410788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.045269, 33.845505, 31.981722>,  <24.025064, 33.385342, 31.418074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.045269, 33.845505, 31.981722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.236523, 34.061882, 31.704948>,  <24.351274, 34.191708, 31.538885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.236523, 34.061882, 31.704948>,  <24.045269, 33.845505, 31.981722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.236523, 34.061882, 31.704948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532375, 0.805096, 0.261531,
		0.698545, 0.243321, 0.672926,
		0.478133, 0.540939, -0.691934,
		24.379963, 34.224163, 31.497368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.492788, 34.308228, 32.252300>,  <24.045269, 33.845505, 31.981722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.492788, 34.308228, 32.252300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.351997, 34.445862, 31.904114>,  <24.267523, 34.528442, 31.695202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.351997, 34.445862, 31.904114>,  <24.492788, 34.308228, 32.252300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.351997, 34.445862, 31.904114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487161, 0.726750, 0.484261,
		0.799242, 0.594507, -0.088171,
		-0.351975, 0.344088, -0.870469,
		24.246405, 34.549088, 31.642973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.794083, 34.996044, 32.140305>,  <24.492788, 34.308228, 32.252300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.794083, 34.996044, 32.140305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.432484, 34.915409, 31.989494>,  <24.215525, 34.867027, 31.899008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.432484, 34.915409, 31.989494>,  <24.794083, 34.996044, 32.140305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.432484, 34.915409, 31.989494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395281, 0.730113, 0.557394,
		0.162908, 0.652915, -0.739705,
		-0.903999, -0.201587, -0.377026,
		24.161283, 34.854935, 31.876387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.059666, 34.685825, 31.557961>,  <24.794083, 34.996044, 32.140305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.059666, 34.685825, 31.557961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.365070, 34.430485, 31.518856>,  <25.548313, 34.277279, 31.495394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.365070, 34.430485, 31.518856>,  <25.059666, 34.685825, 31.557961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.365070, 34.430485, 31.518856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558638, 0.576909, 0.595902,
		-0.323997, -0.509590, 0.797084,
		0.763511, -0.638352, -0.097760,
		25.594124, 34.238979, 31.489529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.442421, 34.401081, 32.165157>,  <25.059666, 34.685825, 31.557961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.442421, 34.401081, 32.165157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.741318, 34.443798, 31.902790>,  <25.920656, 34.469429, 31.745369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.741318, 34.443798, 31.902790>,  <25.442421, 34.401081, 32.165157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.741318, 34.443798, 31.902790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488989, 0.580026, 0.651505,
		0.450024, -0.807568, 0.381199,
		0.747240, 0.106791, -0.655918,
		25.965490, 34.475834, 31.706015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.154381, 34.078156, 32.430199>,  <25.442421, 34.401081, 32.165157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.154381, 34.078156, 32.430199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.176546, 34.395515, 32.187733>,  <26.189846, 34.585934, 32.042252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.176546, 34.395515, 32.187733>,  <26.154381, 34.078156, 32.430199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.176546, 34.395515, 32.187733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395153, 0.540106, 0.743061,
		0.916942, -0.280705, -0.283587,
		0.055414, 0.793404, -0.606167,
		26.193171, 34.633537, 32.005882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.912014, 34.354153, 32.424572>,  <26.154381, 34.078156, 32.430199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.912014, 34.354153, 32.424572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.651598, 34.636757, 32.313587>,  <26.495348, 34.806320, 32.246998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.651598, 34.636757, 32.313587>,  <26.912014, 34.354153, 32.424572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.651598, 34.636757, 32.313587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322690, 0.588484, 0.741322,
		0.687035, 0.393097, -0.611112,
		-0.651041, 0.706514, -0.277460,
		26.456285, 34.848713, 32.230350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.305710, 35.007690, 32.766830>,  <26.912014, 34.354153, 32.424572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.305710, 35.007690, 32.766830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.961491, 35.149883, 32.620903>,  <26.754959, 35.235199, 32.533348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.961491, 35.149883, 32.620903>,  <27.305710, 35.007690, 32.766830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.961491, 35.149883, 32.620903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001765, 0.718288, 0.695743,
		0.509364, 0.598077, -0.618750,
		-0.860549, 0.355478, -0.364815,
		26.703325, 35.256527, 32.511459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.408636, 35.691242, 32.516556>,  <27.305710, 35.007690, 32.766830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.408636, 35.691242, 32.516556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033163, 35.670971, 32.652973>,  <26.807880, 35.658806, 32.734821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033163, 35.670971, 32.652973>,  <27.408636, 35.691242, 32.516556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033163, 35.670971, 32.652973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195390, 0.736778, 0.647288,
		-0.284076, 0.674233, -0.681697,
		-0.938682, -0.050682, 0.341040,
		26.751558, 35.655766, 32.755283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.147760, 35.556175, 32.059761>,  <27.408636, 35.691242, 32.516556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.147760, 35.556175, 32.059761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.088631, 35.378410, 32.413177>,  <28.053152, 35.271751, 32.625229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.088631, 35.378410, 32.413177>,  <28.147760, 35.556175, 32.059761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.088631, 35.378410, 32.413177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988863, 0.082011, -0.124195,
		-0.017266, -0.892059, -0.451588,
		-0.147824, -0.444415, 0.883540,
		28.044283, 35.245087, 32.678238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.828075, 35.294697, 31.739414>,  <28.147760, 35.556175, 32.059761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.828075, 35.294697, 31.739414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165510, 35.425526, 31.569056>,  <29.367971, 35.504021, 31.466841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165510, 35.425526, 31.569056>,  <28.828075, 35.294697, 31.739414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165510, 35.425526, 31.569056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141644, 0.629496, 0.763984,
		0.517977, -0.704812, 0.484706,
		0.843586, 0.327070, -0.425897,
		29.418587, 35.523647, 31.441286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477076, 35.137531, 32.131882>,  <28.828075, 35.294697, 31.739414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477076, 35.137531, 32.131882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.426727, 35.475422, 31.923805>,  <29.396519, 35.678154, 31.798960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.426727, 35.475422, 31.923805>,  <29.477076, 35.137531, 32.131882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.426727, 35.475422, 31.923805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021736, 0.526584, 0.849845,
		0.991808, 0.095665, -0.084644,
		-0.125872, 0.844723, -0.520191,
		29.388966, 35.728840, 31.767748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761698, 34.430088, 32.387344>,  <29.477076, 35.137531, 32.131882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761698, 34.430088, 32.387344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.654827, 34.056511, 32.292377>,  <29.590704, 33.832363, 32.235397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.654827, 34.056511, 32.292377>,  <29.761698, 34.430088, 32.387344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654827, 34.056511, 32.292377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719563, -0.357231, 0.595495,
		-0.640971, -0.011734, 0.767476,
		-0.267179, -0.933942, -0.237418,
		29.574673, 33.776329, 32.221153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350908, 34.802593, 32.762573>,  <29.761698, 34.430088, 32.387344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350908, 34.802593, 32.762573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.968069, 34.918133, 32.753372>,  <29.738365, 34.987457, 32.747852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.968069, 34.918133, 32.753372>,  <30.350908, 34.802593, 32.762573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968069, 34.918133, 32.753372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244520, -0.762539, 0.598953,
		0.155467, 0.578882, 0.800454,
		-0.957100, 0.288844, -0.022998,
		29.680939, 35.004787, 32.746471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180370, 34.773357, 33.348763>,  <30.350908, 34.802593, 32.762573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180370, 34.773357, 33.348763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.825716, 34.762131, 33.164116>,  <29.612925, 34.755394, 33.053326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.825716, 34.762131, 33.164116>,  <30.180370, 34.773357, 33.348763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.825716, 34.762131, 33.164116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186763, -0.891413, 0.412919,
		-0.423084, 0.452321, 0.785115,
		-0.886634, -0.028069, -0.461620,
		29.559727, 34.753712, 33.025631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713877, 34.684322, 33.906933>,  <30.180370, 34.773357, 33.348763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713877, 34.684322, 33.906933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.605480, 34.538040, 33.550770>,  <29.540443, 34.450272, 33.337074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.605480, 34.538040, 33.550770>,  <29.713877, 34.684322, 33.906933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.605480, 34.538040, 33.550770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129109, -0.902850, 0.410113,
		-0.953884, 0.226096, 0.197447,
		-0.270990, -0.365708, -0.890405,
		29.524183, 34.428329, 33.283649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183678, 35.305447, 33.821419>,  <29.713877, 34.684322, 33.906933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183678, 35.305447, 33.821419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457336, 35.576019, 33.930511>,  <29.621532, 35.738361, 33.995968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457336, 35.576019, 33.930511>,  <29.183678, 35.305447, 33.821419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457336, 35.576019, 33.930511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380875, -0.012446, -0.924543,
		-0.621993, 0.736403, -0.266150,
		0.684149, 0.676429, 0.272736,
		29.662580, 35.778950, 34.012333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201410, 35.745762, 33.222572>,  <29.183678, 35.305447, 33.821419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.201410, 35.745762, 33.222572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.546679, 35.754574, 33.424343>,  <29.753839, 35.759861, 33.545406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.546679, 35.754574, 33.424343>,  <29.201410, 35.745762, 33.222572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.546679, 35.754574, 33.424343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501183, -0.158557, -0.850691,
		0.061243, 0.987104, -0.147901,
		0.863172, 0.022027, 0.504430,
		29.805630, 35.761181, 33.575672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.707766, 36.318016, 32.924721>,  <29.201410, 35.745762, 33.222572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.707766, 36.318016, 32.924721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.850605, 35.970619, 33.062241>,  <29.936310, 35.762180, 33.144753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.850605, 35.970619, 33.062241>,  <29.707766, 36.318016, 32.924721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.850605, 35.970619, 33.062241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263226, -0.259582, -0.929155,
		0.896209, 0.422299, 0.135913,
		0.357101, -0.868493, 0.343800,
		29.957735, 35.710072, 33.165382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.391544, 36.458378, 33.240494>,  <29.707766, 36.318016, 32.924721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.391544, 36.458378, 33.240494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138714, 36.733192, 33.383862>,  <29.987017, 36.898079, 33.469883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138714, 36.733192, 33.383862>,  <30.391544, 36.458378, 33.240494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138714, 36.733192, 33.383862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268317, -0.627966, 0.730523,
		0.726971, 0.365574, 0.581264,
		-0.632075, 0.687032, 0.358424,
		29.949091, 36.939301, 33.491390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526695, 37.298023, 33.311855>,  <30.391544, 36.458378, 33.240494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526695, 37.298023, 33.311855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906839, 37.419781, 33.337669>,  <31.134926, 37.492836, 33.353157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.906839, 37.419781, 33.337669>,  <30.526695, 37.298023, 33.311855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906839, 37.419781, 33.337669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300734, -0.951782, 0.060586,
		0.079869, -0.038169, -0.996074,
		0.950358, 0.304392, 0.064539,
		31.191946, 37.511097, 33.357033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005173, 37.139500, 32.687641>,  <30.526695, 37.298023, 33.311855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005173, 37.139500, 32.687641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210569, 37.172844, 33.029255>,  <31.333807, 37.192852, 33.234222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210569, 37.172844, 33.029255>,  <31.005173, 37.139500, 32.687641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210569, 37.172844, 33.029255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393356, -0.907406, -0.147934,
		0.762625, 0.411903, -0.498737,
		0.513492, 0.083363, 0.854036,
		31.364616, 37.197853, 33.285465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698597, 37.048409, 32.553642>,  <31.005173, 37.139500, 32.687641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698597, 37.048409, 32.553642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.611868, 36.948307, 32.931080>,  <31.559830, 36.888248, 33.157543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.611868, 36.948307, 32.931080>,  <31.698597, 37.048409, 32.553642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611868, 36.948307, 32.931080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329856, -0.928515, -0.170457,
		0.918794, 0.274290, 0.283870,
		-0.216822, -0.250251, 0.943590,
		31.546822, 36.873230, 33.214157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294250, 36.842556, 33.043289>,  <31.698597, 37.048409, 32.553642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294250, 36.842556, 33.043289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956009, 36.651115, 33.137856>,  <31.753065, 36.536251, 33.194595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956009, 36.651115, 33.137856>,  <32.294250, 36.842556, 33.043289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956009, 36.651115, 33.137856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434211, -0.874309, -0.216898,
		0.310512, -0.080754, 0.947133,
		-0.845602, -0.478605, 0.236419,
		31.702328, 36.507534, 33.208782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339725, 36.297970, 33.618706>,  <32.294250, 36.842556, 33.043289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339725, 36.297970, 33.618706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075062, 36.210079, 33.331951>,  <31.916264, 36.157345, 33.159897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075062, 36.210079, 33.331951>,  <32.339725, 36.297970, 33.618706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075062, 36.210079, 33.331951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475716, -0.862044, -0.174856,
		-0.579570, -0.456731, 0.674904,
		-0.661659, -0.219722, -0.716889,
		31.876564, 36.144161, 33.116886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081104, 35.712128, 33.817825>,  <32.339725, 36.297970, 33.618706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081104, 35.712128, 33.817825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096249, 35.705078, 33.418175>,  <32.105335, 35.700848, 33.178383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096249, 35.705078, 33.418175>,  <32.081104, 35.712128, 33.817825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096249, 35.705078, 33.418175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660577, -0.749783, 0.038255,
		-0.749804, -0.661448, -0.016735,
		0.037851, -0.017629, -0.999128,
		32.107605, 35.699791, 33.118435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837124, 35.003960, 33.595779>,  <32.081104, 35.712128, 33.817825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837124, 35.003960, 33.595779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133160, 35.136765, 33.361847>,  <32.310780, 35.216450, 33.221485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133160, 35.136765, 33.361847>,  <31.837124, 35.003960, 33.595779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133160, 35.136765, 33.361847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280076, -0.942797, -0.180808,
		-0.611411, -0.029984, -0.790745,
		0.740090, 0.332016, -0.584834,
		32.355186, 35.236370, 33.186398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753700, 34.764870, 32.922886>,  <31.837124, 35.003960, 33.595779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753700, 34.764870, 32.922886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143284, 34.843304, 32.968418>,  <32.377033, 34.890366, 32.995739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143284, 34.843304, 32.968418>,  <31.753700, 34.764870, 32.922886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143284, 34.843304, 32.968418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222214, -0.925267, -0.307413,
		0.045045, 0.324702, -0.944743,
		0.973957, 0.196088, 0.113832,
		32.435471, 34.902130, 33.002567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027363, 34.344307, 32.498051>,  <31.753700, 34.764870, 32.922886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027363, 34.344307, 32.498051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353275, 34.463501, 32.696983>,  <32.548820, 34.535015, 32.816345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353275, 34.463501, 32.696983>,  <32.027363, 34.344307, 32.498051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353275, 34.463501, 32.696983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497824, -0.799251, -0.336704,
		0.297163, 0.521924, -0.799555,
		0.814779, 0.297982, 0.497335,
		32.597710, 34.552895, 32.846184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532982, 34.601383, 31.964233>,  <32.027363, 34.344307, 32.498051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532982, 34.601383, 31.964233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712250, 34.471031, 32.297207>,  <32.819809, 34.392818, 32.496990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712250, 34.471031, 32.297207>,  <32.532982, 34.601383, 31.964233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712250, 34.471031, 32.297207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496099, -0.683974, -0.534850,
		0.743662, 0.652673, -0.144865,
		0.448166, -0.325880, 0.832436,
		32.846699, 34.373268, 32.546936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296272, 34.721062, 31.801704>,  <32.532982, 34.601383, 31.964233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296272, 34.721062, 31.801704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234474, 34.446175, 32.085640>,  <33.197395, 34.281242, 32.256001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234474, 34.446175, 32.085640>,  <33.296272, 34.721062, 31.801704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234474, 34.446175, 32.085640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375439, -0.705404, -0.601208,
		0.913880, 0.173618, 0.366987,
		-0.154494, -0.687214, 0.709837,
		33.188126, 34.240009, 32.298592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870083, 34.256966, 31.759220>,  <33.296272, 34.721062, 31.801704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870083, 34.256966, 31.759220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632874, 34.034428, 31.992050>,  <33.490547, 33.900906, 32.131748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632874, 34.034428, 31.992050>,  <33.870083, 34.256966, 31.759220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632874, 34.034428, 31.992050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573877, -0.799113, -0.179118,
		0.564794, 0.227818, 0.793162,
		-0.593020, -0.556342, 0.582074,
		33.454967, 33.867523, 32.166672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372654, 33.813133, 32.115067>,  <33.870083, 34.256966, 31.759220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372654, 33.813133, 32.115067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007759, 33.659428, 32.171852>,  <33.788822, 33.567204, 32.205925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.007759, 33.659428, 32.171852>,  <34.372654, 33.813133, 32.115067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007759, 33.659428, 32.171852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352281, -0.912740, -0.206889,
		0.209080, -0.138720, 0.968009,
		-0.912241, -0.384268, 0.141968,
		33.734085, 33.544147, 32.214443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567741, 33.204380, 32.415848>,  <34.372654, 33.813133, 32.115067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567741, 33.204380, 32.415848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199219, 33.201004, 32.260353>,  <33.978104, 33.198978, 32.167057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.199219, 33.201004, 32.260353>,  <34.567741, 33.204380, 32.415848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199219, 33.201004, 32.260353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228075, -0.821439, -0.522704,
		-0.314915, -0.570234, 0.758724,
		-0.921309, -0.008439, -0.388740,
		33.922825, 33.198471, 32.143730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396484, 32.493824, 32.374359>,  <34.567741, 33.204380, 32.415848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396484, 32.493824, 32.374359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139633, 32.661316, 32.117504>,  <33.985523, 32.761810, 31.963392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139633, 32.661316, 32.117504>,  <34.396484, 32.493824, 32.374359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139633, 32.661316, 32.117504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138565, -0.760447, -0.634444,
		-0.753962, -0.496377, 0.430292,
		-0.642138, 0.418724, -0.642129,
		33.946995, 32.786934, 31.924864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965168, 31.970156, 32.158466>,  <34.396484, 32.493824, 32.374359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965168, 31.970156, 32.158466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894260, 32.246609, 31.878206>,  <33.851715, 32.412479, 31.710051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894260, 32.246609, 31.878206>,  <33.965168, 31.970156, 32.158466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894260, 32.246609, 31.878206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025209, -0.708504, -0.705257,
		-0.983840, -0.142683, 0.108172,
		-0.177268, 0.691132, -0.700651,
		33.841080, 32.453949, 31.668011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553490, 31.613264, 31.685461>,  <33.965168, 31.970156, 32.158466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553490, 31.613264, 31.685461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728111, 31.914360, 31.488361>,  <33.832886, 32.095016, 31.370102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728111, 31.914360, 31.488361>,  <33.553490, 31.613264, 31.685461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728111, 31.914360, 31.488361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108432, -0.587727, -0.801760,
		-0.893118, 0.296586, -0.338198,
		0.436559, 0.752738, -0.492750,
		33.859077, 32.140182, 31.340536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432587, 31.478678, 30.995403>,  <33.553490, 31.613264, 31.685461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432587, 31.478678, 30.995403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711201, 31.760414, 30.940636>,  <33.878368, 31.929455, 30.907774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711201, 31.760414, 30.940636>,  <33.432587, 31.478678, 30.995403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711201, 31.760414, 30.940636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239661, -0.408240, -0.880853,
		-0.676315, 0.580730, -0.453156,
		0.696534, 0.704339, -0.136920,
		33.920162, 31.971716, 30.899559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380623, 31.811089, 30.300812>,  <33.432587, 31.478678, 30.995403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380623, 31.811089, 30.300812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747559, 31.936598, 30.398817>,  <33.967720, 32.011902, 30.457621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747559, 31.936598, 30.398817>,  <33.380623, 31.811089, 30.300812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747559, 31.936598, 30.398817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250057, 0.024739, -0.967915,
		-0.309766, 0.949176, -0.055766,
		0.917342, 0.313772, 0.245011,
		34.022762, 32.030731, 30.472321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497272, 32.372860, 29.857143>,  <33.380623, 31.811089, 30.300812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497272, 32.372860, 29.857143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844002, 32.218235, 29.983120>,  <34.052040, 32.125462, 30.058706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.844002, 32.218235, 29.983120>,  <33.497272, 32.372860, 29.857143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844002, 32.218235, 29.983120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351927, 0.026876, -0.935641,
		0.353217, 0.921873, 0.159337,
		0.866824, -0.386560, 0.314939,
		34.104050, 32.102268, 30.077602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026131, 32.658985, 29.370512>,  <33.497272, 32.372860, 29.857143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026131, 32.658985, 29.370512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242855, 32.390354, 29.572668>,  <34.372890, 32.229176, 29.693962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242855, 32.390354, 29.572668>,  <34.026131, 32.658985, 29.370512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242855, 32.390354, 29.572668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524125, -0.200103, -0.827799,
		0.657062, 0.713401, 0.243573,
		0.541813, -0.671578, 0.505392,
		34.405399, 32.188881, 29.724285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731953, 32.814087, 29.270960>,  <34.026131, 32.658985, 29.370512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731953, 32.814087, 29.270960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687126, 32.427204, 29.362129>,  <34.660229, 32.195076, 29.416830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.687126, 32.427204, 29.362129>,  <34.731953, 32.814087, 29.270960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687126, 32.427204, 29.362129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329608, -0.252564, -0.909709,
		0.937443, -0.026824, 0.347104,
		-0.112068, -0.967208, 0.227923,
		34.653507, 32.137043, 29.430506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.290401, 32.450851, 28.934214>,  <34.731953, 32.814087, 29.270960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.290401, 32.450851, 28.934214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028198, 32.154755, 28.994019>,  <34.870876, 31.977097, 29.029902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028198, 32.154755, 28.994019>,  <35.290401, 32.450851, 28.934214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028198, 32.154755, 28.994019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160423, -0.329951, -0.930267,
		0.737952, -0.585813, 0.335037,
		-0.655509, -0.740240, 0.149511,
		34.831547, 31.932682, 29.038872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569790, 31.743605, 28.652246>,  <35.290401, 32.450851, 28.934214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569790, 31.743605, 28.652246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170544, 31.721027, 28.661947>,  <34.930996, 31.707481, 28.667768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170544, 31.721027, 28.661947>,  <35.569790, 31.743605, 28.652246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170544, 31.721027, 28.661947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010574, -0.231039, -0.972887,
		0.060519, -0.971306, 0.230006,
		-0.998111, -0.056446, 0.024253,
		34.871109, 31.704094, 28.669224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345116, 31.008867, 28.431866>,  <35.569790, 31.743605, 28.652246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345116, 31.008867, 28.431866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004166, 31.210741, 28.377102>,  <34.799595, 31.331865, 28.344244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004166, 31.210741, 28.377102>,  <35.345116, 31.008867, 28.431866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004166, 31.210741, 28.377102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125887, -0.452157, -0.883010,
		-0.507548, -0.735422, 0.448942,
		-0.852377, 0.504686, -0.136911,
		34.748451, 31.362146, 28.336029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904186, 30.555290, 28.082260>,  <35.345116, 31.008867, 28.431866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904186, 30.555290, 28.082260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720100, 30.905979, 28.026316>,  <34.609650, 31.116392, 27.992748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720100, 30.905979, 28.026316>,  <34.904186, 30.555290, 28.082260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720100, 30.905979, 28.026316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369465, -0.332372, -0.867770,
		-0.807281, -0.347683, 0.476880,
		-0.460210, 0.876724, -0.139861,
		34.582039, 31.168997, 27.984358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249081, 30.428356, 28.067362>,  <34.904186, 30.555290, 28.082260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249081, 30.428356, 28.067362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299187, 30.760077, 27.849529>,  <34.329250, 30.959108, 27.718830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299187, 30.760077, 27.849529>,  <34.249081, 30.428356, 28.067362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299187, 30.760077, 27.849529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412171, -0.455791, -0.788904,
		-0.902453, 0.323286, 0.284718,
		0.125270, 0.829301, -0.544580,
		34.336769, 31.008867, 27.686155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822632, 30.338478, 27.515625>,  <34.249081, 30.428356, 28.067362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822632, 30.338478, 27.515625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023739, 30.653660, 27.373442>,  <34.144405, 30.842770, 27.288132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023739, 30.653660, 27.373442>,  <33.822632, 30.338478, 27.515625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023739, 30.653660, 27.373442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273423, -0.245133, -0.930134,
		-0.820037, 0.564835, 0.092198,
		0.502772, 0.787954, -0.355457,
		34.174572, 30.890045, 27.266804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447067, 30.618258, 27.036514>,  <33.822632, 30.338478, 27.515625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447067, 30.618258, 27.036514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818878, 30.736816, 26.948767>,  <34.041965, 30.807953, 26.896118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818878, 30.736816, 26.948767>,  <33.447067, 30.618258, 27.036514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818878, 30.736816, 26.948767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150849, -0.237194, -0.959679,
		-0.336480, 0.925142, -0.175768,
		0.929530, 0.296398, -0.219368,
		34.097736, 30.825735, 26.882956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423584, 30.929232, 26.356354>,  <33.447067, 30.618258, 27.036514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423584, 30.929232, 26.356354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800182, 30.809275, 26.417858>,  <34.026142, 30.737301, 26.454760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800182, 30.809275, 26.417858>,  <33.423584, 30.929232, 26.356354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800182, 30.809275, 26.417858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020014, -0.405683, -0.913795,
		0.336418, 0.863415, -0.375949,
		0.941500, -0.299893, 0.153760,
		34.082634, 30.719307, 26.463985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723583, 31.320562, 25.899570>,  <33.423584, 30.929232, 26.356354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723583, 31.320562, 25.899570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974457, 31.021173, 25.985760>,  <34.124981, 30.841539, 26.037474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974457, 31.021173, 25.985760>,  <33.723583, 31.320562, 25.899570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974457, 31.021173, 25.985760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037643, -0.305456, -0.951462,
		0.777961, 0.588630, -0.219752,
		0.627184, -0.748473, 0.215475,
		34.162613, 30.796631, 26.050402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281544, 31.368113, 25.372246>,  <33.723583, 31.320562, 25.899570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281544, 31.368113, 25.372246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273750, 30.997471, 25.522457>,  <34.269073, 30.775085, 25.612585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273750, 30.997471, 25.522457>,  <34.281544, 31.368113, 25.372246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273750, 30.997471, 25.522457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010833, -0.375775, -0.926648,
		0.999752, -0.013983, 0.017358,
		-0.019480, -0.926605, 0.375530,
		34.267906, 30.719490, 25.635117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796421, 30.989836, 25.041777>,  <34.281544, 31.368113, 25.372246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796421, 30.989836, 25.041777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600056, 30.678350, 25.198040>,  <34.482235, 30.491459, 25.291798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600056, 30.678350, 25.198040>,  <34.796421, 30.989836, 25.041777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600056, 30.678350, 25.198040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165521, -0.523607, -0.835726,
		0.855341, -0.345606, 0.385938,
		-0.490912, -0.778712, 0.390657,
		34.452782, 30.444736, 25.315237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239532, 30.411013, 24.895590>,  <34.796421, 30.989836, 25.041777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239532, 30.411013, 24.895590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879711, 30.254990, 24.974236>,  <34.663818, 30.161375, 25.021423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879711, 30.254990, 24.974236>,  <35.239532, 30.411013, 24.895590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879711, 30.254990, 24.974236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065478, -0.565438, -0.822187,
		0.431873, -0.726728, 0.534183,
		-0.899554, -0.390058, 0.196613,
		34.609844, 30.137972, 25.033220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312454, 29.703526, 24.735811>,  <35.239532, 30.411013, 24.895590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312454, 29.703526, 24.735811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919186, 29.776245, 24.743086>,  <34.683224, 29.819876, 24.747452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.919186, 29.776245, 24.743086>,  <35.312454, 29.703526, 24.735811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919186, 29.776245, 24.743086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116991, -0.549960, -0.826957,
		-0.140335, -0.815165, 0.561971,
		-0.983168, 0.181797, 0.018189,
		34.624237, 29.830784, 24.748543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012474, 29.051229, 24.633570>,  <35.312454, 29.703526, 24.735811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012474, 29.051229, 24.633570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738182, 29.314461, 24.509174>,  <34.573608, 29.472399, 24.434538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738182, 29.314461, 24.509174>,  <35.012474, 29.051229, 24.633570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738182, 29.314461, 24.509174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055438, -0.473244, -0.879185,
		-0.725744, -0.585641, 0.360999,
		-0.685728, 0.658077, -0.310987,
		34.532463, 29.511883, 24.415878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572556, 28.623053, 24.285604>,  <35.012474, 29.051229, 24.633570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572556, 28.623053, 24.285604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503197, 28.994776, 24.155178>,  <34.461582, 29.217810, 24.076921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503197, 28.994776, 24.155178>,  <34.572556, 28.623053, 24.285604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503197, 28.994776, 24.155178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087582, -0.344321, -0.934758,
		-0.980950, -0.133524, 0.141094,
		-0.173394, 0.929309, -0.326068,
		34.451180, 29.273569, 24.057358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948463, 28.648382, 23.924841>,  <34.572556, 28.623053, 24.285604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948463, 28.648382, 23.924841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106491, 28.978479, 23.763397>,  <34.201309, 29.176537, 23.666531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106491, 28.978479, 23.763397>,  <33.948463, 28.648382, 23.924841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106491, 28.978479, 23.763397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267944, -0.316731, -0.909883,
		-0.878708, 0.467610, 0.095988,
		0.395068, 0.825241, -0.403607,
		34.225010, 29.226051, 23.642315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575802, 28.769493, 23.319548>,  <33.948463, 28.648382, 23.924841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575802, 28.769493, 23.319548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888931, 29.005289, 23.239866>,  <34.076809, 29.146767, 23.192057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888931, 29.005289, 23.239866>,  <33.575802, 28.769493, 23.319548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888931, 29.005289, 23.239866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124243, -0.165615, -0.978333,
		-0.609710, 0.790615, -0.056408,
		0.782827, 0.589491, -0.199205,
		34.123779, 29.182137, 23.180105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345367, 29.280582, 22.702295>,  <33.575802, 28.769493, 23.319548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345367, 29.280582, 22.702295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742912, 29.250040, 22.734318>,  <33.981438, 29.231714, 22.753531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742912, 29.250040, 22.734318>,  <33.345367, 29.280582, 22.702295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742912, 29.250040, 22.734318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067536, -0.154402, -0.985697,
		0.087627, 0.985053, -0.148297,
		0.993861, -0.076358, 0.080057,
		34.041069, 29.227133, 22.758335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487804, 29.636135, 22.093386>,  <33.345367, 29.280582, 22.702295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487804, 29.636135, 22.093386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802372, 29.419079, 22.211424>,  <33.991112, 29.288845, 22.282248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802372, 29.419079, 22.211424>,  <33.487804, 29.636135, 22.093386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802372, 29.419079, 22.211424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272837, -0.123447, -0.954107,
		0.554167, 0.830843, 0.050972,
		0.786421, -0.542642, 0.295095,
		34.038300, 29.256287, 22.299952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231060, 29.951868, 21.897831>,  <33.487804, 29.636135, 22.093386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231060, 29.951868, 21.897831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259029, 29.553539, 21.921328>,  <34.275810, 29.314543, 21.935425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.259029, 29.553539, 21.921328>,  <34.231060, 29.951868, 21.897831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259029, 29.553539, 21.921328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305060, -0.034718, -0.951700,
		0.949763, 0.084465, 0.301358,
		0.069922, -0.995822, 0.058741,
		34.280006, 29.254793, 21.938950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654266, 29.786125, 21.372023>,  <34.231060, 29.951868, 21.897831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654266, 29.786125, 21.372023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544224, 29.407974, 21.441967>,  <34.478199, 29.181084, 21.483932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544224, 29.407974, 21.441967>,  <34.654266, 29.786125, 21.372023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544224, 29.407974, 21.441967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278442, -0.252430, -0.926687,
		0.920209, -0.206253, 0.332679,
		-0.275110, -0.945378, 0.174859,
		34.461689, 29.124361, 21.494425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249752, 29.340502, 21.125963>,  <34.654266, 29.786125, 21.372023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249752, 29.340502, 21.125963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936790, 29.091444, 21.121023>,  <34.749012, 28.942009, 21.118059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936790, 29.091444, 21.121023>,  <35.249752, 29.340502, 21.125963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936790, 29.091444, 21.121023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232151, -0.273199, -0.933525,
		0.577882, -0.733262, 0.358300,
		-0.782406, -0.622647, -0.012351,
		34.702068, 28.904650, 21.117317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432762, 28.785303, 20.775320>,  <35.249752, 29.340502, 21.125963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432762, 28.785303, 20.775320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035271, 28.760109, 20.738352>,  <34.796776, 28.744991, 20.716171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.035271, 28.760109, 20.738352>,  <35.432762, 28.785303, 20.775320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035271, 28.760109, 20.738352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109250, -0.369666, -0.922720,
		0.023953, -0.927028, 0.374228,
		-0.993726, -0.062987, -0.092423,
		34.737152, 28.741213, 20.710625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329105, 28.094938, 20.408472>,  <35.432762, 28.785303, 20.775320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329105, 28.094938, 20.408472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023777, 28.348194, 20.357124>,  <34.840580, 28.500147, 20.326315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.023777, 28.348194, 20.357124>,  <35.329105, 28.094938, 20.408472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023777, 28.348194, 20.357124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089816, -0.300789, -0.949452,
		-0.639748, -0.713205, 0.286464,
		-0.763319, 0.633139, -0.128372,
		34.794781, 28.538136, 20.318613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959511, 27.784758, 19.939594>,  <35.329105, 28.094938, 20.408472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959511, 27.784758, 19.939594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849499, 28.169220, 19.930273>,  <34.783493, 28.399897, 19.924681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849499, 28.169220, 19.930273>,  <34.959511, 27.784758, 19.939594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849499, 28.169220, 19.930273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066657, -0.043242, -0.996839,
		-0.959123, -0.272606, 0.075961,
		-0.275028, 0.961154, -0.023304,
		34.766991, 28.457565, 19.923283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450497, 27.806131, 19.343359>,  <34.959511, 27.784758, 19.939594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450497, 27.806131, 19.343359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553722, 28.188002, 19.402691>,  <34.615658, 28.417124, 19.438290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553722, 28.188002, 19.402691>,  <34.450497, 27.806131, 19.343359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553722, 28.188002, 19.402691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086198, 0.130169, -0.987738,
		-0.962276, 0.267682, -0.048700,
		0.258060, 0.954674, 0.148332,
		34.631142, 28.474403, 19.447191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037376, 28.238985, 18.842024>,  <34.450497, 27.806131, 19.343359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037376, 28.238985, 18.842024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365982, 28.442600, 18.944782>,  <34.563145, 28.564770, 19.006437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365982, 28.442600, 18.944782>,  <34.037376, 28.238985, 18.842024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365982, 28.442600, 18.944782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194460, 0.173412, -0.965460,
		-0.536004, 0.843095, 0.043473,
		0.821514, 0.509037, 0.256897,
		34.612434, 28.595312, 19.021851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137665, 28.807222, 18.280853>,  <34.037376, 28.238985, 18.842024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137665, 28.807222, 18.280853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506218, 28.807598, 18.436317>,  <34.727348, 28.807823, 18.529596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.506218, 28.807598, 18.436317>,  <34.137665, 28.807222, 18.280853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506218, 28.807598, 18.436317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386614, -0.104666, -0.916283,
		0.039818, 0.994507, -0.096800,
		0.921382, 0.000939, 0.388658,
		34.782631, 28.807880, 18.552916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140282, 29.367027, 18.825167>,  <34.137665, 28.807222, 18.280853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140282, 29.367027, 18.825167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210884, 29.581966, 18.495293>,  <34.253246, 29.710930, 18.297369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210884, 29.581966, 18.495293>,  <34.140282, 29.367027, 18.825167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210884, 29.581966, 18.495293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309911, -0.764887, -0.564715,
		-0.934239, 0.355252, 0.031525,
		0.176504, 0.537349, -0.824683,
		34.263836, 29.743172, 18.247887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577419, 29.330160, 18.464237>,  <34.140282, 29.367027, 18.825167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577419, 29.330160, 18.464237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842243, 29.416433, 18.177139>,  <34.001137, 29.468197, 18.004881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842243, 29.416433, 18.177139>,  <33.577419, 29.330160, 18.464237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842243, 29.416433, 18.177139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390515, -0.718124, -0.576017,
		-0.639667, 0.661648, -0.391214,
		0.662061, 0.215684, -0.717744,
		34.040863, 29.481138, 17.961817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225040, 29.410925, 17.784986>,  <33.577419, 29.330160, 18.464237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225040, 29.410925, 17.784986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609570, 29.343390, 17.697937>,  <33.840286, 29.302868, 17.645708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.609570, 29.343390, 17.697937>,  <33.225040, 29.410925, 17.784986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609570, 29.343390, 17.697937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273885, -0.669774, -0.690210,
		-0.029224, 0.723115, -0.690109,
		0.961318, -0.168840, -0.217624,
		33.897964, 29.292738, 17.632650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235271, 29.016008, 17.188427>,  <33.225040, 29.410925, 17.784986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235271, 29.016008, 17.188427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461353, 28.753202, 16.988876>,  <33.597000, 28.595518, 16.869146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461353, 28.753202, 16.988876>,  <33.235271, 29.016008, 17.188427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461353, 28.753202, 16.988876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806152, 0.568254, 0.164945,
		0.175118, -0.495398, 0.850832,
		0.565201, -0.657015, -0.498878,
		33.630913, 28.556099, 16.839212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762920, 28.647566, 17.595985>,  <33.235271, 29.016008, 17.188427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762920, 28.647566, 17.595985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805840, 28.760632, 17.214706>,  <33.831593, 28.828470, 16.985939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805840, 28.760632, 17.214706>,  <33.762920, 28.647566, 17.595985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805840, 28.760632, 17.214706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582380, 0.759168, 0.290683,
		0.805804, -0.586315, -0.083158,
		0.107301, 0.282663, -0.953199,
		33.838032, 28.845430, 16.928747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448532, 28.598665, 17.415581>,  <33.762920, 28.647566, 17.595985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448532, 28.598665, 17.415581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237137, 28.866852, 17.207281>,  <34.110302, 29.027763, 17.082300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237137, 28.866852, 17.207281>,  <34.448532, 28.598665, 17.415581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237137, 28.866852, 17.207281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460113, 0.741716, 0.488009,
		0.713442, 0.018301, -0.700475,
		-0.528485, 0.670464, -0.520751,
		34.078590, 29.067991, 17.051056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929768, 29.169188, 17.157267>,  <34.448532, 28.598665, 17.415581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929768, 29.169188, 17.157267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550446, 29.260674, 17.245266>,  <34.322853, 29.315565, 17.298065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550446, 29.260674, 17.245266>,  <34.929768, 29.169188, 17.157267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550446, 29.260674, 17.245266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316897, 0.719490, 0.617988,
		-0.016944, 0.655761, -0.754778,
		-0.948308, 0.228716, 0.220000,
		34.265953, 29.329288, 17.311266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823689, 29.844751, 16.983248>,  <34.929768, 29.169188, 17.157267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823689, 29.844751, 16.983248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569908, 29.733437, 17.271700>,  <34.417641, 29.666647, 17.444771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.569908, 29.733437, 17.271700>,  <34.823689, 29.844751, 16.983248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569908, 29.733437, 17.271700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238111, 0.817208, 0.524856,
		-0.735375, 0.504704, -0.452214,
		-0.634450, -0.278289, 0.721130,
		34.379574, 29.649950, 17.488039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550838, 30.462536, 17.219683>,  <34.823689, 29.844751, 16.983248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550838, 30.462536, 17.219683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450836, 30.240273, 17.536856>,  <34.390835, 30.106915, 17.727160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.450836, 30.240273, 17.536856>,  <34.550838, 30.462536, 17.219683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.450836, 30.240273, 17.536856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283568, 0.741014, 0.608677,
		-0.925791, 0.377021, -0.027689,
		-0.250002, -0.555656, 0.792934,
		34.375835, 30.073576, 17.774736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056511, 30.864042, 17.535040>,  <34.550838, 30.462536, 17.219683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056511, 30.864042, 17.535040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216721, 30.612616, 17.801720>,  <34.312847, 30.461760, 17.961727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.216721, 30.612616, 17.801720>,  <34.056511, 30.864042, 17.535040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216721, 30.612616, 17.801720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012639, 0.731331, 0.681905,
		-0.916200, -0.264691, 0.300858,
		0.400521, -0.628565, 0.666701,
		34.336876, 30.424046, 18.001730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674091, 30.987598, 18.095148>,  <34.056511, 30.864042, 17.535040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674091, 30.987598, 18.095148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995117, 30.797407, 18.239267>,  <34.187733, 30.683292, 18.325739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995117, 30.797407, 18.239267>,  <33.674091, 30.987598, 18.095148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995117, 30.797407, 18.239267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027583, 0.632883, 0.773756,
		-0.595931, -0.611049, 0.521043,
		0.802562, -0.475477, 0.360300,
		34.235886, 30.654764, 18.347357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527466, 30.763966, 18.773354>,  <33.674091, 30.987598, 18.095148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527466, 30.763966, 18.773354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925594, 30.785307, 18.741116>,  <34.164471, 30.798111, 18.721773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925594, 30.785307, 18.741116>,  <33.527466, 30.763966, 18.773354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925594, 30.785307, 18.741116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017851, 0.718012, 0.695801,
		0.094990, -0.693982, 0.713698,
		0.995318, 0.053354, -0.080593,
		34.224190, 30.801313, 18.716938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732929, 30.785244, 19.462593>,  <33.527466, 30.763966, 18.773354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732929, 30.785244, 19.462593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027737, 30.946918, 19.245914>,  <34.204620, 31.043922, 19.115908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.027737, 30.946918, 19.245914>,  <33.732929, 30.785244, 19.462593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027737, 30.946918, 19.245914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121564, 0.709131, 0.694517,
		0.664845, -0.577726, 0.473512,
		0.737023, 0.404184, -0.541693,
		34.248844, 31.068174, 19.083406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211067, 30.953581, 19.964102>,  <33.732929, 30.785244, 19.462593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211067, 30.953581, 19.964102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362202, 31.154387, 19.652916>,  <34.452881, 31.274870, 19.466206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362202, 31.154387, 19.652916>,  <34.211067, 30.953581, 19.964102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362202, 31.154387, 19.652916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357698, 0.695863, 0.622757,
		0.853987, -0.513574, 0.083352,
		0.377834, 0.502012, -0.777962,
		34.475552, 31.304991, 19.419527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852650, 31.169632, 20.151245>,  <34.211067, 30.953581, 19.964102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852650, 31.169632, 20.151245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759670, 31.417591, 19.851460>,  <34.703884, 31.566366, 19.671589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759670, 31.417591, 19.851460>,  <34.852650, 31.169632, 20.151245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759670, 31.417591, 19.851460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262321, 0.781972, 0.565426,
		0.936566, -0.065169, -0.344379,
		-0.232446, 0.619897, -0.749464,
		34.689938, 31.603559, 19.626619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379398, 31.573551, 20.163599>,  <34.852650, 31.169632, 20.151245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379398, 31.573551, 20.163599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091618, 31.772516, 19.969702>,  <34.918949, 31.891895, 19.853363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091618, 31.772516, 19.969702>,  <35.379398, 31.573551, 20.163599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091618, 31.772516, 19.969702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301029, 0.852284, 0.427778,
		0.625920, 0.161843, -0.762910,
		-0.719449, 0.497412, -0.484742,
		34.875782, 31.921740, 19.824280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572643, 32.250988, 19.905924>,  <35.379398, 31.573551, 20.163599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572643, 32.250988, 19.905924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176674, 32.297802, 19.937790>,  <34.939091, 32.325890, 19.956909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176674, 32.297802, 19.937790>,  <35.572643, 32.250988, 19.905924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176674, 32.297802, 19.937790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141454, 0.840807, 0.522527,
		-0.005830, 0.528533, -0.848893,
		-0.989928, 0.117033, 0.079665,
		34.879696, 32.332912, 19.961689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372326, 33.012650, 19.872723>,  <35.572643, 32.250988, 19.905924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372326, 33.012650, 19.872723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069706, 32.834770, 20.064501>,  <34.888134, 32.728043, 20.179567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069706, 32.834770, 20.064501>,  <35.372326, 33.012650, 19.872723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069706, 32.834770, 20.064501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078856, 0.665781, 0.741968,
		-0.649161, 0.599145, -0.468631,
		-0.756552, -0.444703, 0.479446,
		34.842739, 32.701359, 20.208334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123058, 33.575512, 20.255560>,  <35.372326, 33.012650, 19.872723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123058, 33.575512, 20.255560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945042, 33.254787, 20.415075>,  <34.838230, 33.062351, 20.510784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.945042, 33.254787, 20.415075>,  <35.123058, 33.575512, 20.255560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945042, 33.254787, 20.415075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184119, 0.517734, 0.835495,
		-0.876377, 0.298408, -0.378043,
		-0.445044, -0.801813, 0.398788,
		34.811527, 33.014244, 20.534712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431664, 33.867649, 20.463871>,  <35.123058, 33.575512, 20.255560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431664, 33.867649, 20.463871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469841, 33.550674, 20.704847>,  <34.492748, 33.360489, 20.849434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.469841, 33.550674, 20.704847>,  <34.431664, 33.867649, 20.463871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469841, 33.550674, 20.704847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420614, 0.516419, 0.745919,
		-0.902206, -0.324586, -0.284022,
		0.095441, -0.792436, 0.602441,
		34.498474, 33.312943, 20.885580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791718, 33.796574, 20.768885>,  <34.431664, 33.867649, 20.463871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791718, 33.796574, 20.768885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059433, 33.607033, 20.997799>,  <34.220062, 33.493309, 21.135147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059433, 33.607033, 20.997799>,  <33.791718, 33.796574, 20.768885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059433, 33.607033, 20.997799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339979, 0.489558, 0.802962,
		-0.660652, -0.731981, 0.166557,
		0.669293, -0.473853, 0.572285,
		34.260220, 33.464878, 21.169485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376293, 33.544907, 21.250200>,  <33.791718, 33.796574, 20.768885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376293, 33.544907, 21.250200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748653, 33.560360, 21.395491>,  <33.972069, 33.569630, 21.482666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748653, 33.560360, 21.395491>,  <33.376293, 33.544907, 21.250200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748653, 33.560360, 21.395491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354280, 0.337633, 0.872061,
		-0.088949, -0.940485, 0.327988,
		0.930899, 0.038631, 0.363227,
		34.027924, 33.571949, 21.504459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291714, 33.368301, 21.977396>,  <33.376293, 33.544907, 21.250200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291714, 33.368301, 21.977396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649384, 33.547142, 21.967972>,  <33.863983, 33.654446, 21.962317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.649384, 33.547142, 21.967972>,  <33.291714, 33.368301, 21.977396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649384, 33.547142, 21.967972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197323, 0.440778, 0.875659,
		0.401888, -0.778344, 0.482356,
		0.894175, 0.447097, -0.023558,
		33.917637, 33.681274, 21.960903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533649, 33.267296, 22.573429>,  <33.291714, 33.368301, 21.977396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533649, 33.267296, 22.573429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736526, 33.584030, 22.437336>,  <33.858253, 33.774071, 22.355680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736526, 33.584030, 22.437336>,  <33.533649, 33.267296, 22.573429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736526, 33.584030, 22.437336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122213, 0.456867, 0.881100,
		0.853127, -0.405302, 0.328489,
		0.507188, 0.791836, -0.340232,
		33.888683, 33.821579, 22.335266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037983, 33.447311, 23.053816>,  <33.533649, 33.267296, 22.573429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037983, 33.447311, 23.053816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014824, 33.772636, 22.822239>,  <34.000931, 33.967831, 22.683292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014824, 33.772636, 22.822239>,  <34.037983, 33.447311, 23.053816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014824, 33.772636, 22.822239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255472, 0.572675, 0.778959,
		0.965081, -0.102806, -0.240933,
		-0.057894, 0.813311, -0.578942,
		33.997456, 34.016628, 22.648556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755077, 33.828777, 23.032263>,  <34.037983, 33.447311, 23.053816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755077, 33.828777, 23.032263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438580, 34.066093, 22.973013>,  <34.248680, 34.208485, 22.937462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438580, 34.066093, 22.973013>,  <34.755077, 33.828777, 23.032263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438580, 34.066093, 22.973013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208739, 0.489731, 0.846517,
		0.574775, 0.638879, -0.511339,
		-0.791241, 0.593293, -0.148126,
		34.201206, 34.244080, 22.928576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911465, 34.333206, 23.434414>,  <34.755077, 33.828777, 23.032263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911465, 34.333206, 23.434414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.534721, 34.429298, 23.340439>,  <34.308678, 34.486954, 23.284054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.534721, 34.429298, 23.340439>,  <34.911465, 34.333206, 23.434414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534721, 34.429298, 23.340439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071506, 0.539872, 0.838704,
		0.328322, 0.806738, -0.491304,
		-0.941855, 0.240233, -0.234939,
		34.252163, 34.501369, 23.269957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833603, 35.076263, 23.655294>,  <34.911465, 34.333206, 23.434414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833603, 35.076263, 23.655294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467247, 34.919548, 23.620310>,  <34.247433, 34.825520, 23.599319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.467247, 34.919548, 23.620310>,  <34.833603, 35.076263, 23.655294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467247, 34.919548, 23.620310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277910, 0.461615, 0.842424,
		-0.289674, 0.795875, -0.531669,
		-0.915890, -0.391784, -0.087464,
		34.192478, 34.802013, 23.594070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362690, 35.622780, 23.903166>,  <34.833603, 35.076263, 23.655294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362690, 35.622780, 23.903166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140862, 35.290947, 23.929237>,  <34.007767, 35.091846, 23.944880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140862, 35.290947, 23.929237>,  <34.362690, 35.622780, 23.903166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140862, 35.290947, 23.929237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442684, 0.360438, 0.821046,
		-0.704617, 0.426473, -0.567130,
		-0.554569, -0.829581, 0.065177,
		33.974491, 35.042072, 23.948792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694153, 35.910107, 24.013781>,  <34.362690, 35.622780, 23.903166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694153, 35.910107, 24.013781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661392, 35.533497, 24.144514>,  <33.641735, 35.307529, 24.222954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661392, 35.533497, 24.144514>,  <33.694153, 35.910107, 24.013781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661392, 35.533497, 24.144514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617697, 0.305311, 0.724731,
		-0.782139, -0.142529, -0.606584,
		-0.081902, -0.941526, 0.326836,
		33.636822, 35.251038, 24.242565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992966, 35.689461, 24.085289>,  <33.694153, 35.910107, 24.013781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992966, 35.689461, 24.085289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201126, 35.440514, 24.319157>,  <33.326023, 35.291145, 24.459478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201126, 35.440514, 24.319157>,  <32.992966, 35.689461, 24.085289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201126, 35.440514, 24.319157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627349, 0.185859, 0.756234,
		-0.579322, -0.760339, -0.293720,
		0.520403, -0.622368, 0.584670,
		33.357246, 35.253803, 24.494558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448219, 35.488670, 24.579834>,  <32.992966, 35.689461, 24.085289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448219, 35.488670, 24.579834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767017, 35.331501, 24.763315>,  <32.958298, 35.237198, 24.873404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767017, 35.331501, 24.763315>,  <32.448219, 35.488670, 24.579834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767017, 35.331501, 24.763315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505033, -0.016994, 0.862933,
		-0.331274, -0.919413, -0.211985,
		0.796994, -0.392927, 0.458704,
		33.006115, 35.213623, 24.900927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204254, 34.964642, 24.923956>,  <32.448219, 35.488670, 24.579834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204254, 34.964642, 24.923956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560368, 35.037498, 25.090918>,  <32.774036, 35.081211, 25.191095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560368, 35.037498, 25.090918>,  <32.204254, 34.964642, 24.923956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560368, 35.037498, 25.090918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424564, 0.000353, 0.905398,
		0.164761, -0.983273, 0.077644,
		0.890281, 0.182139, 0.417404,
		32.827454, 35.092140, 25.216139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147190, 34.629375, 25.583433>,  <32.204254, 34.964642, 24.923956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147190, 34.629375, 25.583433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457214, 34.879002, 25.623062>,  <32.643230, 35.028778, 25.646839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457214, 34.879002, 25.623062>,  <32.147190, 34.629375, 25.583433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457214, 34.879002, 25.623062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208208, 0.104198, 0.972518,
		0.596594, -0.774392, 0.210696,
		0.775065, 0.624067, 0.099071,
		32.689735, 35.066223, 25.652784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436344, 34.502331, 26.216707>,  <32.147190, 34.629375, 25.583433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436344, 34.502331, 26.216707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543190, 34.880146, 26.140297>,  <32.607300, 35.106834, 26.094452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543190, 34.880146, 26.140297>,  <32.436344, 34.502331, 26.216707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543190, 34.880146, 26.140297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183754, 0.244514, 0.952075,
		0.945983, -0.219213, 0.238877,
		0.267116, 0.944541, -0.191024,
		32.623325, 35.163509, 26.082989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854061, 34.597404, 26.758661>,  <32.436344, 34.502331, 26.216707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854061, 34.597404, 26.758661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763622, 34.966835, 26.634800>,  <32.709358, 35.188492, 26.560484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763622, 34.966835, 26.634800>,  <32.854061, 34.597404, 26.758661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763622, 34.966835, 26.634800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000198, 0.317840, 0.948144,
		0.974104, 0.214438, -0.071681,
		-0.226102, 0.923577, -0.309651,
		32.695793, 35.243908, 26.541904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324589, 34.972099, 27.068077>,  <32.854061, 34.597404, 26.758661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324589, 34.972099, 27.068077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015392, 35.207939, 26.974386>,  <32.829876, 35.349442, 26.918173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015392, 35.207939, 26.974386>,  <33.324589, 34.972099, 27.068077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015392, 35.207939, 26.974386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011563, 0.382229, 0.923995,
		0.634313, 0.711530, -0.302276,
		-0.772990, 0.589598, -0.234225,
		32.783497, 35.384819, 26.904119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551079, 35.601627, 27.328062>,  <33.324589, 34.972099, 27.068077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551079, 35.601627, 27.328062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153637, 35.616871, 27.285534>,  <32.915173, 35.626019, 27.260017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153637, 35.616871, 27.285534>,  <33.551079, 35.601627, 27.328062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153637, 35.616871, 27.285534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088170, 0.326619, 0.941035,
		0.070587, 0.944387, -0.321169,
		-0.993601, 0.038108, -0.106322,
		32.855556, 35.628304, 27.253637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243916, 36.254448, 27.743645>,  <33.551079, 35.601627, 27.328062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243916, 36.254448, 27.743645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942955, 35.996372, 27.690548>,  <32.762379, 35.841526, 27.658689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.942955, 35.996372, 27.690548>,  <33.243916, 36.254448, 27.743645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.942955, 35.996372, 27.690548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255899, 0.100609, 0.961454,
		-0.606965, 0.757369, -0.240802,
		-0.752402, -0.645190, -0.132744,
		32.717236, 35.802814, 27.650724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661953, 36.459332, 28.141829>,  <33.243916, 36.254448, 27.743645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661953, 36.459332, 28.141829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540001, 36.080517, 28.101480>,  <32.466831, 35.853230, 28.077272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540001, 36.080517, 28.101480>,  <32.661953, 36.459332, 28.141829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540001, 36.080517, 28.101480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457797, 0.052849, 0.887485,
		-0.835148, 0.316751, -0.449662,
		-0.304876, -0.947035, -0.100871,
		32.448540, 35.796406, 28.071218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961836, 36.476551, 28.316063>,  <32.661953, 36.459332, 28.141829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961836, 36.476551, 28.316063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097183, 36.102448, 28.357637>,  <32.178391, 35.877987, 28.382582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.097183, 36.102448, 28.357637>,  <31.961836, 36.476551, 28.316063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097183, 36.102448, 28.357637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411107, -0.047567, 0.910345,
		-0.846462, -0.350761, -0.400586,
		0.338368, -0.935256, 0.103936,
		32.198692, 35.821869, 28.388819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.465092, 36.109318, 28.789152>,  <31.961836, 36.476551, 28.316063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.465092, 36.109318, 28.789152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794743, 35.882763, 28.790876>,  <31.992533, 35.746830, 28.791910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.794743, 35.882763, 28.790876>,  <31.465092, 36.109318, 28.789152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794743, 35.882763, 28.790876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043169, 0.070395, 0.996585,
		-0.564760, -0.821124, 0.082465,
		0.824125, -0.566391, 0.004309,
		32.041981, 35.712845, 28.792170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424816, 35.712391, 29.394926>,  <31.465092, 36.109318, 28.789152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424816, 35.712391, 29.394926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816011, 35.706230, 29.311691>,  <32.050728, 35.702534, 29.261751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816011, 35.706230, 29.311691>,  <31.424816, 35.712391, 29.394926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816011, 35.706230, 29.311691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208360, 0.019067, 0.977866,
		-0.011099, -0.999699, 0.021858,
		0.977989, -0.015407, -0.208086,
		32.109409, 35.701611, 29.249266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712414, 35.324989, 29.900270>,  <31.424816, 35.712391, 29.394926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712414, 35.324989, 29.900270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040821, 35.496861, 29.749907>,  <32.237865, 35.599983, 29.659689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040821, 35.496861, 29.749907>,  <31.712414, 35.324989, 29.900270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040821, 35.496861, 29.749907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413358, 0.006769, 0.910544,
		0.393783, -0.902958, -0.172052,
		0.821018, 0.429676, -0.375911,
		32.287125, 35.625763, 29.637133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205345, 35.129257, 30.233534>,  <31.712414, 35.324989, 29.900270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205345, 35.129257, 30.233534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377922, 35.452721, 30.073568>,  <32.481468, 35.646797, 29.977589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377922, 35.452721, 30.073568>,  <32.205345, 35.129257, 30.233534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377922, 35.452721, 30.073568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472328, 0.175202, 0.863835,
		0.768614, -0.561581, -0.306363,
		0.431438, 0.808660, -0.399913,
		32.507355, 35.695320, 29.953594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976097, 35.200676, 30.432650>,  <32.205345, 35.129257, 30.233534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976097, 35.200676, 30.432650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909752, 35.581177, 30.328648>,  <32.869946, 35.809479, 30.266247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909752, 35.581177, 30.328648>,  <32.976097, 35.200676, 30.432650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909752, 35.581177, 30.328648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395992, 0.305714, 0.865869,
		0.903150, 0.040656, -0.427396,
		-0.165864, 0.951255, -0.260006,
		32.859993, 35.866554, 30.250647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627151, 35.489441, 30.547054>,  <32.976097, 35.200676, 30.432650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627151, 35.489441, 30.547054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356232, 35.783722, 30.547714>,  <33.193680, 35.960289, 30.548109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356232, 35.783722, 30.547714>,  <33.627151, 35.489441, 30.547054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356232, 35.783722, 30.547714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503436, 0.461838, 0.730245,
		0.536481, 0.495428, -0.683183,
		-0.677304, 0.735701, 0.001649,
		33.153042, 36.004433, 30.548208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018806, 36.046329, 30.591227>,  <33.627151, 35.489441, 30.547054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018806, 36.046329, 30.591227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656872, 36.177101, 30.700323>,  <33.439713, 36.255566, 30.765781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656872, 36.177101, 30.700323>,  <34.018806, 36.046329, 30.591227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656872, 36.177101, 30.700323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416602, 0.547732, 0.725557,
		0.087818, 0.770134, -0.631808,
		-0.904838, 0.326929, 0.272739,
		33.385422, 36.275181, 30.782145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061165, 36.786098, 30.537140>,  <34.018806, 36.046329, 30.591227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061165, 36.786098, 30.537140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813702, 36.613045, 30.799465>,  <33.665222, 36.509212, 30.956860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813702, 36.613045, 30.799465>,  <34.061165, 36.786098, 30.537140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813702, 36.613045, 30.799465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490125, 0.439859, 0.752530,
		-0.614033, 0.786990, -0.060080,
		-0.618661, -0.432631, 0.655811,
		33.628105, 36.483253, 30.996208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353470, 36.408092, 29.856649>,  <34.061165, 36.786098, 30.537140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353470, 36.408092, 29.856649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615509, 36.365730, 30.155884>,  <34.772732, 36.340313, 30.335424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615509, 36.365730, 30.155884>,  <34.353470, 36.408092, 29.856649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615509, 36.365730, 30.155884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726332, 0.360938, -0.584949,
		-0.208064, 0.926557, 0.313370,
		0.655096, -0.105904, 0.748086,
		34.812038, 36.333958, 30.380310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710751, 37.109741, 30.089024>,  <34.353470, 36.408092, 29.856649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710751, 37.109741, 30.089024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921139, 36.772388, 30.132963>,  <35.047371, 36.569977, 30.159327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921139, 36.772388, 30.132963>,  <34.710751, 37.109741, 30.089024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921139, 36.772388, 30.132963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669368, 0.330804, -0.665219,
		0.524692, 0.423415, 0.738524,
		0.525970, -0.843379, 0.109850,
		35.078930, 36.519375, 30.165918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396423, 37.319626, 30.305414>,  <34.710751, 37.109741, 30.089024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396423, 37.319626, 30.305414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451080, 36.955276, 30.149656>,  <35.483875, 36.736668, 30.056202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451080, 36.955276, 30.149656>,  <35.396423, 37.319626, 30.305414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451080, 36.955276, 30.149656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821608, 0.323814, -0.469153,
		0.553433, -0.255823, 0.792632,
		0.136645, -0.910878, -0.389396,
		35.492073, 36.682014, 30.032837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164272, 37.255154, 30.179533>,  <35.396423, 37.319626, 30.305414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164272, 37.255154, 30.179533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021854, 36.950195, 29.963390>,  <35.936405, 36.767220, 29.833704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021854, 36.950195, 29.963390>,  <36.164272, 37.255154, 30.179533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021854, 36.950195, 29.963390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826633, 0.012708, -0.562598,
		0.435791, -0.646984, 0.625698,
		-0.356040, -0.762398, -0.540356,
		35.915043, 36.721478, 29.801283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711349, 36.759285, 30.109861>,  <36.164272, 37.255154, 30.179533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711349, 36.759285, 30.109861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451324, 36.678425, 29.816862>,  <36.295311, 36.629910, 29.641062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451324, 36.678425, 29.816862>,  <36.711349, 36.759285, 30.109861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451324, 36.678425, 29.816862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759720, -0.192833, -0.621000,
		-0.015715, -0.960183, 0.278930,
		-0.650060, -0.202150, -0.732500,
		36.256306, 36.617779, 29.597113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930313, 36.176846, 29.818766>,  <36.711349, 36.759285, 30.109861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930313, 36.176846, 29.818766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703606, 36.265667, 29.501411>,  <36.567581, 36.318958, 29.310999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703606, 36.265667, 29.501411>,  <36.930313, 36.176846, 29.818766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703606, 36.265667, 29.501411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720026, -0.334523, -0.607994,
		-0.400414, -0.915853, 0.029713,
		-0.566772, 0.222055, -0.793385,
		36.533573, 36.332283, 29.263395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915710, 35.557041, 29.402943>,  <36.930313, 36.176846, 29.818766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915710, 35.557041, 29.402943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836636, 35.885059, 29.188112>,  <36.789188, 36.081871, 29.059214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836636, 35.885059, 29.188112>,  <36.915710, 35.557041, 29.402943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836636, 35.885059, 29.188112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707087, -0.260175, -0.657524,
		-0.678930, -0.509744, -0.528407,
		-0.197691, 0.820043, -0.537074,
		36.777328, 36.131073, 29.026991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860371, 35.278473, 28.769543>,  <36.915710, 35.557041, 29.402943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860371, 35.278473, 28.769543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901451, 35.669060, 28.693687>,  <36.926102, 35.903412, 28.648174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.901451, 35.669060, 28.693687>,  <36.860371, 35.278473, 28.769543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901451, 35.669060, 28.693687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510956, -0.215361, -0.832192,
		-0.853449, -0.011428, -0.521051,
		0.102704, 0.976468, -0.189639,
		36.932262, 35.962002, 28.636795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696831, 35.301991, 28.057850>,  <36.860371, 35.278473, 28.769543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696831, 35.301991, 28.057850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884117, 35.647823, 28.130816>,  <36.996490, 35.855324, 28.174595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884117, 35.647823, 28.130816>,  <36.696831, 35.301991, 28.057850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884117, 35.647823, 28.130816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485570, -0.079277, -0.870596,
		-0.738237, 0.496203, -0.456933,
		0.468217, 0.864579, 0.182416,
		37.024582, 35.907196, 28.185541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542778, 35.758331, 27.465710>,  <36.696831, 35.301991, 28.057850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542778, 35.758331, 27.465710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882881, 35.879940, 27.637585>,  <37.086945, 35.952908, 27.740709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882881, 35.879940, 27.637585>,  <36.542778, 35.758331, 27.465710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882881, 35.879940, 27.637585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437872, 0.044498, -0.897935,
		-0.292115, 0.951625, -0.095289,
		0.850257, 0.304024, 0.429689,
		37.137959, 35.971146, 27.766491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797501, 36.360523, 27.120642>,  <36.542778, 35.758331, 27.465710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797501, 36.360523, 27.120642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124683, 36.225117, 27.306696>,  <37.320995, 36.143871, 27.418327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124683, 36.225117, 27.306696>,  <36.797501, 36.360523, 27.120642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124683, 36.225117, 27.306696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515003, 0.070598, -0.854276,
		0.256349, 0.938308, 0.232083,
		0.817959, -0.338517, 0.465134,
		37.370071, 36.123562, 27.446236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407124, 36.811241, 27.016735>,  <36.797501, 36.360523, 27.120642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407124, 36.811241, 27.016735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498760, 36.424873, 27.064915>,  <37.553741, 36.193050, 27.093822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498760, 36.424873, 27.064915>,  <37.407124, 36.811241, 27.016735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498760, 36.424873, 27.064915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492073, 0.008156, -0.870515,
		0.839869, 0.258697, 0.477174,
		0.229092, -0.965924, 0.120448,
		37.567486, 36.135098, 27.101049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095909, 36.700840, 26.652966>,  <37.407124, 36.811241, 27.016735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095909, 36.700840, 26.652966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956585, 36.327961, 26.692341>,  <37.872990, 36.104233, 26.715965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.956585, 36.327961, 26.692341>,  <38.095909, 36.700840, 26.652966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956585, 36.327961, 26.692341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292160, -0.207744, -0.933534,
		0.890686, -0.296401, 0.344710,
		-0.348312, -0.932196, 0.098439,
		37.852093, 36.048302, 26.721872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559341, 36.316074, 26.282379>,  <38.095909, 36.700840, 26.652966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559341, 36.316074, 26.282379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230545, 36.089405, 26.305054>,  <38.033268, 35.953403, 26.318659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230545, 36.089405, 26.305054>,  <38.559341, 36.316074, 26.282379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230545, 36.089405, 26.305054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172791, -0.342999, -0.923307,
		0.542660, -0.749152, 0.379858,
		-0.821988, -0.566677, 0.056685,
		37.983948, 35.919403, 26.322060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745071, 35.750626, 25.880630>,  <38.559341, 36.316074, 26.282379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745071, 35.750626, 25.880630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353580, 35.676300, 25.915409>,  <38.118687, 35.631702, 25.936277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.353580, 35.676300, 25.915409>,  <38.745071, 35.750626, 25.880630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353580, 35.676300, 25.915409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015022, -0.357772, -0.933688,
		0.204603, -0.915135, 0.347371,
		-0.978730, -0.185817, 0.086948,
		38.059963, 35.620556, 25.941494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576183, 35.061398, 25.655550>,  <38.745071, 35.750626, 25.880630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576183, 35.061398, 25.655550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220779, 35.242554, 25.626053>,  <38.007538, 35.351246, 25.608355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220779, 35.242554, 25.626053>,  <38.576183, 35.061398, 25.655550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220779, 35.242554, 25.626053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265399, -0.638338, -0.722557,
		-0.374311, -0.622429, 0.687367,
		-0.888512, 0.452888, -0.073745,
		37.954227, 35.378422, 25.603930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005081, 34.540207, 25.521715>,  <38.576183, 35.061398, 25.655550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005081, 34.540207, 25.521715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857178, 34.888851, 25.392988>,  <37.768436, 35.098038, 25.315752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857178, 34.888851, 25.392988>,  <38.005081, 34.540207, 25.521715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857178, 34.888851, 25.392988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399628, -0.461883, -0.791809,
		-0.838796, -0.164168, 0.519105,
		-0.369756, 0.871615, -0.321819,
		37.746250, 35.150337, 25.296442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495255, 34.266659, 25.127254>,  <38.005081, 34.540207, 25.521715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495255, 34.266659, 25.127254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464420, 34.651749, 25.023548>,  <37.445919, 34.882801, 24.961325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.464420, 34.651749, 25.023548>,  <37.495255, 34.266659, 25.127254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464420, 34.651749, 25.023548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448024, -0.265753, -0.853610,
		-0.890692, 0.050356, 0.451810,
		-0.077086, 0.962725, -0.259265,
		37.441296, 34.940567, 24.945768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786324, 34.509178, 25.116570>,  <37.495255, 34.266659, 25.127254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786324, 34.509178, 25.116570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998451, 34.741699, 24.869720>,  <37.125729, 34.881214, 24.721611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998451, 34.741699, 24.869720>,  <36.786324, 34.509178, 25.116570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998451, 34.741699, 24.869720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540048, -0.329494, -0.774456,
		-0.653534, 0.743988, 0.139194,
		0.530323, 0.581305, -0.617124,
		37.157547, 34.916092, 24.684584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313293, 34.898628, 24.723953>,  <36.786324, 34.509178, 25.116570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313293, 34.898628, 24.723953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655113, 34.919250, 24.517229>,  <36.860203, 34.931625, 24.393194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655113, 34.919250, 24.517229>,  <36.313293, 34.898628, 24.723953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655113, 34.919250, 24.517229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498757, -0.196129, -0.844260,
		-0.144887, 0.979222, -0.141888,
		0.854546, 0.051554, -0.516810,
		36.911476, 34.934715, 24.362186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.121975, 35.310238, 24.100317>,  <36.313293, 34.898628, 24.723953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.121975, 35.310238, 24.100317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455013, 35.106304, 24.013739>,  <36.654839, 34.983944, 23.961792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.455013, 35.106304, 24.013739>,  <36.121975, 35.310238, 24.100317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455013, 35.106304, 24.013739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365418, -0.211959, -0.906390,
		0.416230, 0.833753, -0.362779,
		0.832600, -0.509832, -0.216444,
		36.704792, 34.953354, 23.948805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362022, 35.558392, 23.505337>,  <36.121975, 35.310238, 24.100317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362022, 35.558392, 23.505337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493500, 35.181339, 23.528658>,  <36.572388, 34.955109, 23.542650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.493500, 35.181339, 23.528658>,  <36.362022, 35.558392, 23.505337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493500, 35.181339, 23.528658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296326, -0.161550, -0.941325,
		0.896744, 0.292133, -0.332428,
		0.328696, -0.942635, 0.058303,
		36.592110, 34.898548, 23.546148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606121, 35.371189, 22.748589>,  <36.362022, 35.558392, 23.505337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606121, 35.371189, 22.748589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534824, 35.026066, 22.937813>,  <36.492046, 34.818993, 23.051348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534824, 35.026066, 22.937813>,  <36.606121, 35.371189, 22.748589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534824, 35.026066, 22.937813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381394, -0.382599, -0.841520,
		0.907066, -0.330414, -0.260877,
		-0.178239, -0.862812, 0.473061,
		36.481354, 34.767223, 23.079731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969265, 34.885826, 22.255444>,  <36.606121, 35.371189, 22.748589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.969265, 34.885826, 22.255444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729870, 34.660255, 22.483059>,  <36.586235, 34.524914, 22.619629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729870, 34.660255, 22.483059>,  <36.969265, 34.885826, 22.255444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729870, 34.660255, 22.483059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121436, -0.638228, -0.760209,
		0.791878, -0.524075, 0.313489,
		-0.598484, -0.563924, 0.569040,
		36.550323, 34.491077, 22.653770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245472, 34.158810, 22.151867>,  <36.969265, 34.885826, 22.255444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245472, 34.158810, 22.151867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879120, 34.105621, 22.303385>,  <36.659309, 34.073708, 22.394295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879120, 34.105621, 22.303385>,  <37.245472, 34.158810, 22.151867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879120, 34.105621, 22.303385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105297, -0.830955, -0.546284,
		0.387398, -0.540216, 0.747054,
		-0.915880, -0.132967, 0.378793,
		36.604355, 34.065731, 22.417023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143467, 33.647724, 22.628586>,  <37.245472, 34.158810, 22.151867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143467, 33.647724, 22.628586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796146, 33.631950, 22.430801>,  <36.587753, 33.622486, 22.312132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796146, 33.631950, 22.430801>,  <37.143467, 33.647724, 22.628586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796146, 33.631950, 22.430801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301129, -0.834035, -0.462285,
		-0.394165, -0.550300, 0.736073,
		-0.868306, -0.039436, -0.494459,
		36.535656, 33.620121, 22.282463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835243, 33.032875, 22.753422>,  <37.143467, 33.647724, 22.628586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835243, 33.032875, 22.753422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709034, 33.151684, 22.392929>,  <36.633308, 33.222969, 22.176634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709034, 33.151684, 22.392929>,  <36.835243, 33.032875, 22.753422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709034, 33.151684, 22.392929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323506, -0.859182, -0.396421,
		-0.892069, -0.416635, 0.175008,
		-0.315527, 0.297019, -0.901234,
		36.614376, 33.240788, 22.122559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529770, 32.472290, 22.455103>,  <36.835243, 33.032875, 22.753422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529770, 32.472290, 22.455103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619820, 32.713791, 22.149212>,  <36.673851, 32.858692, 21.965677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619820, 32.713791, 22.149212>,  <36.529770, 32.472290, 22.455103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619820, 32.713791, 22.149212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203798, -0.796691, -0.568989,
		-0.952778, -0.027757, -0.302396,
		0.225123, 0.603748, -0.764727,
		36.687355, 32.894917, 21.919794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193569, 32.133728, 21.921234>,  <36.529770, 32.472290, 22.455103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193569, 32.133728, 21.921234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471535, 32.387234, 21.785332>,  <36.638313, 32.539337, 21.703791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471535, 32.387234, 21.785332>,  <36.193569, 32.133728, 21.921234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471535, 32.387234, 21.785332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442720, -0.749385, -0.492362,
		-0.566650, 0.191733, -0.801340,
		0.694915, 0.633766, -0.339755,
		36.680008, 32.577362, 21.683405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092934, 32.118690, 21.200388>,  <36.193569, 32.133728, 21.921234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092934, 32.118690, 21.200388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464855, 32.255508, 21.254744>,  <36.688007, 32.337597, 21.287357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464855, 32.255508, 21.254744>,  <36.092934, 32.118690, 21.200388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464855, 32.255508, 21.254744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323760, -0.584535, -0.743974,
		-0.175037, 0.735749, -0.654245,
		0.929807, 0.342041, 0.135891,
		36.743797, 32.358120, 21.295511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274319, 31.965683, 20.509043>,  <36.092934, 32.118690, 21.200388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274319, 31.965683, 20.509043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604424, 32.032536, 20.724821>,  <36.802486, 32.072647, 20.854288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604424, 32.032536, 20.724821>,  <36.274319, 31.965683, 20.509043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604424, 32.032536, 20.724821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493711, -0.677291, -0.545460,
		0.274200, 0.716481, -0.641459,
		0.825266, 0.167130, 0.539448,
		36.852005, 32.082676, 20.886656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835144, 32.174419, 20.094486>,  <36.274319, 31.965683, 20.509043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835144, 32.174419, 20.094486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.964710, 31.998373, 20.429480>,  <37.042450, 31.892746, 20.630476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.964710, 31.998373, 20.429480>,  <36.835144, 32.174419, 20.094486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964710, 31.998373, 20.429480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415381, -0.729168, -0.543850,
		0.850023, 0.524034, -0.053370,
		0.323911, -0.440116, 0.837484,
		37.061882, 31.866339, 20.680725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463863, 31.920631, 19.870115>,  <36.835144, 32.174419, 20.094486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463863, 31.920631, 19.870115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424164, 31.691231, 20.195383>,  <37.400345, 31.553591, 20.390545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424164, 31.691231, 20.195383>,  <37.463863, 31.920631, 19.870115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424164, 31.691231, 20.195383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557561, -0.708920, -0.431924,
		0.824182, 0.410524, 0.390121,
		-0.099249, -0.573500, 0.813171,
		37.394390, 31.519180, 20.439335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126942, 31.767708, 20.068991>,  <37.463863, 31.920631, 19.870115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126942, 31.767708, 20.068991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909554, 31.474016, 20.231741>,  <37.779121, 31.297802, 20.329391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909554, 31.474016, 20.231741>,  <38.126942, 31.767708, 20.068991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909554, 31.474016, 20.231741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584636, -0.678895, -0.444187,
		0.602358, -0.003531, 0.798218,
		-0.543475, -0.734227, 0.406874,
		37.746510, 31.253748, 20.353804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600471, 31.218769, 20.286345>,  <38.126942, 31.767708, 20.068991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600471, 31.218769, 20.286345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239880, 31.047070, 20.264164>,  <38.023525, 30.944050, 20.250856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239880, 31.047070, 20.264164>,  <38.600471, 31.218769, 20.286345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239880, 31.047070, 20.264164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420818, -0.839315, -0.344185,
		0.101202, -0.333611, 0.937263,
		-0.901482, -0.429249, -0.055449,
		37.969437, 30.918295, 20.247530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756725, 30.577293, 20.519695>,  <38.600471, 31.218769, 20.286345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756725, 30.577293, 20.519695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409035, 30.550390, 20.323765>,  <38.200420, 30.534248, 20.206207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409035, 30.550390, 20.323765>,  <38.756725, 30.577293, 20.519695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409035, 30.550390, 20.323765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342103, -0.797075, -0.497632,
		-0.356957, -0.600123, 0.715845,
		-0.869222, -0.067259, -0.489826,
		38.148270, 30.530212, 20.176817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599098, 29.823137, 20.575558>,  <38.756725, 30.577293, 20.519695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599098, 29.823137, 20.575558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388435, 29.994513, 20.281870>,  <38.262039, 30.097338, 20.105658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388435, 29.994513, 20.281870>,  <38.599098, 29.823137, 20.575558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388435, 29.994513, 20.281870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060113, -0.842773, -0.534902,
		-0.847957, -0.325839, 0.418087,
		-0.526645, 0.428442, -0.734223,
		38.230438, 30.123043, 20.061605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410965, 29.156082, 20.170811>,  <38.599098, 29.823137, 20.575558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410965, 29.156082, 20.170811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631969, 28.827709, 20.228502>,  <38.764572, 28.630686, 20.263117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631969, 28.827709, 20.228502>,  <38.410965, 29.156082, 20.170811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631969, 28.827709, 20.228502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017530, 0.161557, 0.986708,
		-0.833322, -0.547693, 0.074871,
		0.552509, -0.820933, 0.144230,
		38.797722, 28.581429, 20.271770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000839, 28.832861, 20.585463>,  <38.410965, 29.156082, 20.170811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000839, 28.832861, 20.585463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386520, 28.736156, 20.629047>,  <38.617928, 28.678133, 20.655197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386520, 28.736156, 20.629047>,  <38.000839, 28.832861, 20.585463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386520, 28.736156, 20.629047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021522, 0.338190, 0.940832,
		-0.264306, -0.909494, 0.320879,
		0.964199, -0.241761, 0.108960,
		38.675781, 28.663628, 20.661736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007610, 28.667301, 21.242121>,  <38.000839, 28.832861, 20.585463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007610, 28.667301, 21.242121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396748, 28.700886, 21.155836>,  <38.630230, 28.721037, 21.104065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396748, 28.700886, 21.155836>,  <38.007610, 28.667301, 21.242121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396748, 28.700886, 21.155836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205089, 0.119446, 0.971427,
		0.107318, -0.989285, 0.098984,
		0.972842, 0.083951, -0.215710,
		38.688599, 28.726074, 21.091124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372768, 28.350622, 21.814745>,  <38.007610, 28.667301, 21.242121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.372768, 28.350622, 21.814745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638885, 28.585844, 21.630756>,  <38.798557, 28.726976, 21.520363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638885, 28.585844, 21.630756>,  <38.372768, 28.350622, 21.814745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638885, 28.585844, 21.630756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330810, 0.320120, 0.887743,
		0.669288, -0.742775, 0.018440,
		0.665296, 0.588055, -0.459970,
		38.838474, 28.762260, 21.492765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026386, 28.286720, 22.144325>,  <38.372768, 28.350622, 21.814745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026386, 28.286720, 22.144325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019974, 28.640028, 21.956888>,  <39.016125, 28.852013, 21.844425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.019974, 28.640028, 21.956888>,  <39.026386, 28.286720, 22.144325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019974, 28.640028, 21.956888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321744, 0.448286, 0.833979,
		0.946691, -0.137393, -0.291375,
		-0.016036, 0.883268, -0.468593,
		39.015163, 28.905008, 21.816311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588524, 28.645962, 22.394047>,  <39.026386, 28.286720, 22.144325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588524, 28.645962, 22.394047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385677, 28.957975, 22.247419>,  <39.263969, 29.145184, 22.159443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385677, 28.957975, 22.247419>,  <39.588524, 28.645962, 22.394047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385677, 28.957975, 22.247419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332070, 0.569314, 0.752071,
		0.795335, 0.259664, -0.547737,
		-0.507120, 0.780036, -0.366569,
		39.233540, 29.191986, 22.137449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035931, 29.217218, 22.356043>,  <39.588524, 28.645962, 22.394047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035931, 29.217218, 22.356043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669403, 29.377377, 22.353519>,  <39.449486, 29.473473, 22.352005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.669403, 29.377377, 22.353519>,  <40.035931, 29.217218, 22.356043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669403, 29.377377, 22.353519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250092, 0.584505, 0.771886,
		0.312749, 0.705716, -0.635730,
		-0.916320, 0.400397, -0.006310,
		39.394508, 29.497496, 22.351627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134197, 30.069271, 22.343531>,  <40.035931, 29.217218, 22.356043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134197, 30.069271, 22.343531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771633, 29.969547, 22.479925>,  <39.554096, 29.909714, 22.561762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771633, 29.969547, 22.479925>,  <40.134197, 30.069271, 22.343531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771633, 29.969547, 22.479925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189964, 0.480418, 0.856220,
		-0.377280, 0.840858, -0.388095,
		-0.906407, -0.249310, 0.340985,
		39.499710, 29.894754, 22.582220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941692, 30.717226, 22.669891>,  <40.134197, 30.069271, 22.343531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941692, 30.717226, 22.669891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673248, 30.453550, 22.805584>,  <39.512180, 30.295345, 22.886999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.673248, 30.453550, 22.805584>,  <39.941692, 30.717226, 22.669891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.673248, 30.453550, 22.805584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026738, 0.478806, 0.877513,
		-0.740876, 0.579837, -0.338957,
		-0.671110, -0.659191, 0.339232,
		39.471916, 30.255793, 22.907354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237652, 31.078823, 22.882275>,  <39.941692, 30.717226, 22.669891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237652, 31.078823, 22.882275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262810, 30.735764, 23.086424>,  <39.277905, 30.529928, 23.208914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262810, 30.735764, 23.086424>,  <39.237652, 31.078823, 22.882275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262810, 30.735764, 23.086424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460569, 0.428730, 0.777217,
		-0.885393, -0.283946, -0.368041,
		0.062898, -0.857651, 0.510372,
		39.281677, 30.478468, 23.239536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596298, 31.041582, 23.316414>,  <39.237652, 31.078823, 22.882275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596298, 31.041582, 23.316414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871529, 30.796526, 23.471962>,  <39.036667, 30.649492, 23.565290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.871529, 30.796526, 23.471962>,  <38.596298, 31.041582, 23.316414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.871529, 30.796526, 23.471962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116342, 0.435831, 0.892478,
		-0.716248, -0.659338, 0.228611,
		0.688079, -0.612638, 0.388871,
		39.077953, 30.612734, 23.588623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.485950, 31.005243, 23.991863>,  <38.596298, 31.041582, 23.316414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.485950, 31.005243, 23.991863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864765, 30.876797, 23.991941>,  <39.092056, 30.799728, 23.991989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864765, 30.876797, 23.991941>,  <38.485950, 31.005243, 23.991863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864765, 30.876797, 23.991941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126265, 0.372949, 0.919220,
		-0.295250, -0.870513, 0.393744,
		0.947040, -0.321116, 0.000198,
		39.148876, 30.780462, 23.992001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.593750, 30.834990, 24.741863>,  <38.485950, 31.005243, 23.991863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.593750, 30.834990, 24.741863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961502, 30.875433, 24.589798>,  <39.182152, 30.899700, 24.498558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961502, 30.875433, 24.589798>,  <38.593750, 30.834990, 24.741863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961502, 30.875433, 24.589798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320531, 0.367701, 0.872958,
		0.228050, -0.924431, 0.305647,
		0.919377, 0.101108, -0.380163,
		39.237316, 30.905766, 24.475748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123268, 30.712263, 25.268106>,  <38.593750, 30.834990, 24.741863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.123268, 30.712263, 25.268106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317661, 30.939259, 25.002241>,  <39.434296, 31.075457, 24.842722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317661, 30.939259, 25.002241>,  <39.123268, 30.712263, 25.268106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317661, 30.939259, 25.002241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267850, 0.627203, 0.731350,
		0.831912, -0.533453, 0.152807,
		0.485981, 0.567489, -0.664664,
		39.463455, 31.109505, 24.802841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836151, 31.016018, 25.498167>,  <39.123268, 30.712263, 25.268106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836151, 31.016018, 25.498167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719280, 31.255184, 25.199604>,  <39.649158, 31.398684, 25.020466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719280, 31.255184, 25.199604>,  <39.836151, 31.016018, 25.498167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719280, 31.255184, 25.199604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204148, 0.801471, 0.562111,
		0.934320, 0.011860, -0.356238,
		-0.292181, 0.597917, -0.746409,
		39.631626, 31.434559, 24.975681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301460, 31.507584, 25.468231>,  <39.836151, 31.016018, 25.498167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301460, 31.507584, 25.468231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.992409, 31.670103, 25.273108>,  <39.806976, 31.767614, 25.156033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.992409, 31.670103, 25.273108>,  <40.301460, 31.507584, 25.468231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992409, 31.670103, 25.273108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136993, 0.856982, 0.496805,
		0.619896, 0.317022, -0.717792,
		-0.772633, 0.406300, -0.487810,
		39.760620, 31.791992, 25.126764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492371, 32.194206, 25.475309>,  <40.301460, 31.507584, 25.468231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492371, 32.194206, 25.475309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104942, 32.199665, 25.375965>,  <39.872486, 32.202942, 25.316359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104942, 32.199665, 25.375965>,  <40.492371, 32.194206, 25.475309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104942, 32.199665, 25.375965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148295, 0.769943, 0.620642,
		0.199694, 0.637967, -0.743721,
		-0.968572, 0.013648, -0.248361,
		39.814369, 32.203758, 25.301456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381268, 32.930759, 25.376709>,  <40.492371, 32.194206, 25.475309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381268, 32.930759, 25.376709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045174, 32.732002, 25.463520>,  <39.843517, 32.612747, 25.515608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045174, 32.732002, 25.463520>,  <40.381268, 32.930759, 25.376709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045174, 32.732002, 25.463520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202908, 0.659322, 0.723963,
		-0.502823, 0.564263, -0.654809,
		-0.840236, -0.496892, 0.217029,
		39.793102, 32.582935, 25.528629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907093, 33.404869, 25.331301>,  <40.381268, 32.930759, 25.376709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907093, 33.404869, 25.331301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706913, 33.118603, 25.526184>,  <39.586803, 32.946842, 25.643114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.706913, 33.118603, 25.526184>,  <39.907093, 33.404869, 25.331301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.706913, 33.118603, 25.526184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296459, 0.670384, 0.680219,
		-0.813426, 0.195978, -0.547659,
		-0.500449, -0.715666, 0.487209,
		39.556778, 32.903904, 25.672346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291656, 33.719173, 25.411800>,  <39.907093, 33.404869, 25.331301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291656, 33.719173, 25.411800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318607, 33.436165, 25.693190>,  <39.334778, 33.266361, 25.862022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318607, 33.436165, 25.693190>,  <39.291656, 33.719173, 25.411800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318607, 33.436165, 25.693190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299448, 0.658231, 0.690697,
		-0.951731, -0.257189, -0.167517,
		0.067375, -0.707521, 0.703474,
		39.338821, 33.223907, 25.904232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841633, 33.923538, 25.804123>,  <39.291656, 33.719173, 25.411800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841633, 33.923538, 25.804123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070705, 33.688080, 26.032345>,  <39.208149, 33.546806, 26.169277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070705, 33.688080, 26.032345>,  <38.841633, 33.923538, 25.804123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070705, 33.688080, 26.032345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184700, 0.585443, 0.789394,
		-0.798700, -0.557453, 0.226549,
		0.572682, -0.588645, 0.570554,
		39.242512, 33.511486, 26.203510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328640, 33.708904, 26.257603>,  <38.841633, 33.923538, 25.804123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328640, 33.708904, 26.257603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682728, 33.647293, 26.433178>,  <38.895180, 33.610325, 26.538523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682728, 33.647293, 26.433178>,  <38.328640, 33.708904, 26.257603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682728, 33.647293, 26.433178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275215, 0.587317, 0.761128,
		-0.375033, -0.794566, 0.477511,
		0.885216, -0.154030, 0.438939,
		38.948292, 33.601086, 26.564859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208519, 33.705177, 27.085968>,  <38.328640, 33.708904, 26.257603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208519, 33.705177, 27.085968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603561, 33.755508, 27.048439>,  <38.840588, 33.785709, 27.025921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603561, 33.755508, 27.048439>,  <38.208519, 33.705177, 27.085968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603561, 33.755508, 27.048439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046410, 0.336934, 0.940384,
		0.149941, -0.933082, 0.326918,
		0.987605, 0.125829, -0.093824,
		38.899841, 33.793259, 27.020292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462421, 33.432541, 27.740988>,  <38.208519, 33.705177, 27.085968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462421, 33.432541, 27.740988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739601, 33.665825, 27.571432>,  <38.905910, 33.805798, 27.469698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.739601, 33.665825, 27.571432>,  <38.462421, 33.432541, 27.740988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739601, 33.665825, 27.571432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123549, 0.483180, 0.866760,
		0.710320, -0.652993, 0.262764,
		0.692950, 0.583213, -0.423890,
		38.947487, 33.840790, 27.444265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081280, 33.386265, 28.111988>,  <38.462421, 33.432541, 27.740988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081280, 33.386265, 28.111988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100037, 33.740200, 27.926577>,  <39.111290, 33.952560, 27.815329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.100037, 33.740200, 27.926577>,  <39.081280, 33.386265, 28.111988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100037, 33.740200, 27.926577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119773, 0.455712, 0.882032,
		0.991693, -0.096882, -0.084609,
		0.046896, 0.884839, -0.463530,
		39.114105, 34.005653, 27.787518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585541, 33.721169, 28.473339>,  <39.081280, 33.386265, 28.111988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585541, 33.721169, 28.473339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386097, 34.012661, 28.285578>,  <39.266430, 34.187557, 28.172922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386097, 34.012661, 28.285578>,  <39.585541, 33.721169, 28.473339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386097, 34.012661, 28.285578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034857, 0.524224, 0.850867,
		0.866123, 0.440616, -0.235984,
		-0.498614, 0.728730, -0.469401,
		39.236511, 34.231281, 28.144758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837154, 34.277878, 28.823931>,  <39.585541, 33.721169, 28.473339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837154, 34.277878, 28.823931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505775, 34.404758, 28.639299>,  <39.306950, 34.480888, 28.528521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505775, 34.404758, 28.639299>,  <39.837154, 34.277878, 28.823931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505775, 34.404758, 28.639299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168608, 0.644667, 0.745638,
		0.534083, 0.695548, -0.480590,
		-0.828448, 0.317202, -0.461581,
		39.257240, 34.499920, 28.500826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939690, 34.913239, 28.857763>,  <39.837154, 34.277878, 28.823931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939690, 34.913239, 28.857763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551579, 34.833778, 28.802488>,  <39.318710, 34.786102, 28.769323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551579, 34.833778, 28.802488>,  <39.939690, 34.913239, 28.857763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551579, 34.833778, 28.802488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233625, 0.620131, 0.748904,
		-0.063079, 0.758929, -0.648111,
		-0.970279, -0.198655, -0.138187,
		39.260494, 34.774181, 28.761032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593498, 35.572365, 28.981098>,  <39.939690, 34.913239, 28.857763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593498, 35.572365, 28.981098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295883, 35.307491, 29.016682>,  <39.117313, 35.148567, 29.038033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.295883, 35.307491, 29.016682>,  <39.593498, 35.572365, 28.981098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295883, 35.307491, 29.016682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357638, 0.507186, 0.784128,
		-0.564359, 0.551606, -0.614190,
		-0.744039, -0.662188, 0.088959,
		39.072670, 35.108833, 29.043369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892948, 35.967293, 29.115986>,  <39.593498, 35.572365, 28.981098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892948, 35.967293, 29.115986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870964, 35.590584, 29.248674>,  <38.857773, 35.364559, 29.328287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870964, 35.590584, 29.248674>,  <38.892948, 35.967293, 29.115986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870964, 35.590584, 29.248674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325541, 0.330973, 0.885708,
		-0.943929, -0.059308, -0.324778,
		-0.054963, -0.941774, 0.331723,
		38.854477, 35.308052, 29.348190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210770, 35.926907, 29.567822>,  <38.892948, 35.967293, 29.115986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210770, 35.926907, 29.567822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427528, 35.600792, 29.649452>,  <38.557583, 35.405121, 29.698431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.427528, 35.600792, 29.649452>,  <38.210770, 35.926907, 29.567822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427528, 35.600792, 29.649452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215854, 0.099663, 0.971326,
		-0.812251, -0.570412, -0.121976,
		0.541899, -0.815290, 0.204077,
		38.590099, 35.356205, 29.710676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740150, 35.401924, 29.928244>,  <38.210770, 35.926907, 29.567822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740150, 35.401924, 29.928244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125633, 35.358868, 30.025969>,  <38.356922, 35.333035, 30.084604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125633, 35.358868, 30.025969>,  <37.740150, 35.401924, 29.928244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125633, 35.358868, 30.025969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238206, 0.066539, 0.968933,
		-0.120554, -0.991961, 0.038483,
		0.963704, -0.107641, 0.244313,
		38.414745, 35.326576, 30.099262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691002, 34.934803, 30.557213>,  <37.740150, 35.401924, 29.928244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691002, 34.934803, 30.557213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054104, 35.100208, 30.528946>,  <38.271965, 35.199451, 30.511986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054104, 35.100208, 30.528946>,  <37.691002, 34.934803, 30.557213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054104, 35.100208, 30.528946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073104, 0.009950, 0.997275,
		0.413087, -0.910445, -0.021197,
		0.907753, 0.413511, -0.070668,
		38.326431, 35.224262, 30.507746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137463, 34.603497, 31.094698>,  <37.691002, 34.934803, 30.557213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137463, 34.603497, 31.094698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328735, 34.944912, 31.011934>,  <38.443501, 35.149761, 30.962276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328735, 34.944912, 31.011934>,  <38.137463, 34.603497, 31.094698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328735, 34.944912, 31.011934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251032, 0.092928, 0.963508,
		0.841618, -0.512676, -0.169828,
		0.478185, 0.853538, -0.206908,
		38.472191, 35.200974, 30.949862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681015, 34.625423, 31.550602>,  <38.137463, 34.603497, 31.094698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681015, 34.625423, 31.550602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681210, 35.012413, 31.449409>,  <38.681328, 35.244606, 31.388695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681210, 35.012413, 31.449409>,  <38.681015, 34.625423, 31.550602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681210, 35.012413, 31.449409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522986, 0.215378, 0.824681,
		0.852341, -0.132710, -0.505868,
		0.000491, 0.967471, -0.252981,
		38.681358, 35.302654, 31.373516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448105, 34.899117, 31.596632>,  <38.681015, 34.625423, 31.550602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448105, 34.899117, 31.596632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186687, 35.200573, 31.624653>,  <39.029835, 35.381447, 31.641466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186687, 35.200573, 31.624653>,  <39.448105, 34.899117, 31.596632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186687, 35.200573, 31.624653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513622, 0.373610, 0.772404,
		0.555941, 0.540782, -0.631256,
		-0.653546, 0.753638, 0.070053,
		38.990623, 35.426666, 31.645668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873558, 35.475983, 31.771624>,  <39.448105, 34.899117, 31.596632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873558, 35.475983, 31.771624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524841, 35.648678, 31.864216>,  <39.315613, 35.752296, 31.919771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524841, 35.648678, 31.864216>,  <39.873558, 35.475983, 31.771624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524841, 35.648678, 31.864216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455094, 0.538885, 0.708867,
		0.181307, 0.723328, -0.666277,
		-0.871790, 0.431741, 0.231478,
		39.263306, 35.778198, 31.933659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023113, 36.155632, 31.884022>,  <39.873558, 35.475983, 31.771624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023113, 36.155632, 31.884022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670334, 36.089722, 32.060665>,  <39.458668, 36.050175, 32.166653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670334, 36.089722, 32.060665>,  <40.023113, 36.155632, 31.884022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670334, 36.089722, 32.060665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214190, 0.694479, 0.686893,
		-0.419873, 0.700391, -0.577199,
		-0.881946, -0.164778, 0.441610,
		39.405750, 36.040287, 32.193150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885769, 36.834270, 32.176064>,  <40.023113, 36.155632, 31.884022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885769, 36.834270, 32.176064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675682, 36.573318, 32.394619>,  <39.549629, 36.416748, 32.525753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675682, 36.573318, 32.394619>,  <39.885769, 36.834270, 32.176064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675682, 36.573318, 32.394619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419729, 0.359937, 0.833230,
		-0.740251, 0.666964, 0.084779,
		-0.525220, -0.652384, 0.546388,
		39.518116, 36.377602, 32.558537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494511, 37.323383, 32.629375>,  <39.885769, 36.834270, 32.176064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494511, 37.323383, 32.629375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480549, 36.953575, 32.781193>,  <39.472172, 36.731689, 32.872284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480549, 36.953575, 32.781193>,  <39.494511, 37.323383, 32.629375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480549, 36.953575, 32.781193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239862, 0.360920, 0.901223,
		-0.970179, 0.122496, 0.209158,
		-0.034907, -0.924517, 0.379539,
		39.470078, 36.676220, 32.895054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890045, 37.348450, 33.079369>,  <39.494511, 37.323383, 32.629375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890045, 37.348450, 33.079369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136513, 37.065418, 33.217739>,  <39.284393, 36.895599, 33.300762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136513, 37.065418, 33.217739>,  <38.890045, 37.348450, 33.079369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136513, 37.065418, 33.217739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095358, 0.502994, 0.859013,
		-0.781820, -0.496311, 0.377403,
		0.616169, -0.707582, 0.345923,
		39.321365, 36.853146, 33.321518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676544, 37.262192, 33.734089>,  <38.890045, 37.348450, 33.079369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676544, 37.262192, 33.734089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024563, 37.066822, 33.760780>,  <39.233376, 36.949600, 33.776794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024563, 37.066822, 33.760780>,  <38.676544, 37.262192, 33.734089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024563, 37.066822, 33.760780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166393, 0.418395, 0.892894,
		-0.464031, -0.765759, 0.445296,
		0.870051, -0.488424, 0.066731,
		39.285580, 36.920296, 33.780800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661591, 36.758606, 34.384048>,  <38.676544, 37.262192, 33.734089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661591, 36.758606, 34.384048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027897, 36.879288, 34.277958>,  <39.247681, 36.951694, 34.214302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027897, 36.879288, 34.277958>,  <38.661591, 36.758606, 34.384048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027897, 36.879288, 34.277958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175452, 0.293539, 0.939708,
		0.361369, -0.907088, 0.215878,
		0.915767, 0.301705, -0.265227,
		39.302628, 36.969799, 34.198391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082436, 36.792046, 35.023708>,  <38.661591, 36.758606, 34.384048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082436, 36.792046, 35.023708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358913, 36.988983, 34.812107>,  <39.524799, 37.107147, 34.685146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358913, 36.988983, 34.812107>,  <39.082436, 36.792046, 35.023708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358913, 36.988983, 34.812107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319593, 0.448293, 0.834801,
		0.648164, -0.746074, 0.152504,
		0.691190, 0.492349, -0.529008,
		39.566269, 37.136688, 34.653404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672661, 36.872700, 35.440968>,  <39.082436, 36.792046, 35.023708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672661, 36.872700, 35.440968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702427, 37.154335, 35.158485>,  <39.720287, 37.323315, 34.988995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702427, 37.154335, 35.158485>,  <39.672661, 36.872700, 35.440968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702427, 37.154335, 35.158485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318176, 0.654393, 0.685955,
		0.945107, -0.275741, -0.175329,
		0.074412, 0.704086, -0.706206,
		39.724751, 37.365562, 34.946625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479027, 37.086441, 35.549686>,  <39.672661, 36.872700, 35.440968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479027, 37.086441, 35.549686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309055, 37.367668, 35.321606>,  <40.207073, 37.536404, 35.184757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309055, 37.367668, 35.321606>,  <40.479027, 37.086441, 35.549686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309055, 37.367668, 35.321606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481353, 0.708960, 0.515437,
		0.766639, -0.055447, -0.639680,
		-0.424928, 0.703066, -0.570206,
		40.181576, 37.578587, 35.150543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032536, 37.601971, 35.210991>,  <40.479027, 37.086441, 35.549686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032536, 37.601971, 35.210991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688774, 37.806046, 35.224411>,  <40.482517, 37.928490, 35.232464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688774, 37.806046, 35.224411>,  <41.032536, 37.601971, 35.210991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688774, 37.806046, 35.224411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484779, 0.792230, 0.370624,
		0.162513, 0.334779, -0.928177,
		-0.859406, 0.510191, 0.033546,
		40.430954, 37.959103, 35.234474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182659, 38.344872, 34.977425>,  <41.032536, 37.601971, 35.210991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.182659, 38.344872, 34.977425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.827976, 38.389263, 35.156952>,  <40.615166, 38.415897, 35.264668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.827976, 38.389263, 35.156952>,  <41.182659, 38.344872, 34.977425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.827976, 38.389263, 35.156952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310712, 0.861904, 0.400723,
		-0.342367, 0.494777, -0.798737,
		-0.886703, 0.110983, 0.448821,
		40.561966, 38.422558, 35.291599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245930, 38.968815, 35.105080>,  <41.182659, 38.344872, 34.977425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245930, 38.968815, 35.105080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926296, 38.850433, 35.314415>,  <40.734516, 38.779404, 35.440014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926296, 38.850433, 35.314415>,  <41.245930, 38.968815, 35.105080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926296, 38.850433, 35.314415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074751, 0.814792, 0.574914,
		-0.596556, 0.498523, -0.628964,
		-0.799083, -0.295953, 0.523334,
		40.686573, 38.761646, 35.471416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981068, 39.571808, 35.251305>,  <41.245930, 38.968815, 35.105080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981068, 39.571808, 35.251305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799225, 39.333359, 35.516026>,  <40.690121, 39.190289, 35.674858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799225, 39.333359, 35.516026>,  <40.981068, 39.571808, 35.251305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799225, 39.333359, 35.516026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074646, 0.714903, 0.695228,
		-0.887560, 0.365454, -0.280500,
		-0.454604, -0.596119, 0.661799,
		40.662846, 39.154522, 35.714565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236725, 39.785133, 35.430172>,  <40.981068, 39.571808, 35.251305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236725, 39.785133, 35.430172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473030, 39.618805, 35.706749>,  <40.614811, 39.519009, 35.872696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.473030, 39.618805, 35.706749>,  <40.236725, 39.785133, 35.430172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.473030, 39.618805, 35.706749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131493, 0.895132, 0.425968,
		-0.796060, -0.160725, 0.583486,
		0.590761, -0.415820, 0.691444,
		40.650257, 39.494061, 35.914181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075203, 40.246582, 35.969566>,  <40.236725, 39.785133, 35.430172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075203, 40.246582, 35.969566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400036, 40.032635, 36.062901>,  <40.594936, 39.904266, 36.118900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400036, 40.032635, 36.062901>,  <40.075203, 40.246582, 35.969566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400036, 40.032635, 36.062901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301832, 0.727206, 0.616498,
		-0.499426, -0.430218, 0.751988,
		0.812078, -0.534869, 0.233332,
		40.643658, 39.872173, 36.132900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073078, 40.286575, 36.642864>,  <40.075203, 40.246582, 35.969566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073078, 40.286575, 36.642864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449463, 40.179382, 36.560131>,  <40.675293, 40.115067, 36.510490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449463, 40.179382, 36.560131>,  <40.073078, 40.286575, 36.642864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449463, 40.179382, 36.560131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338474, 0.735061, 0.587470,
		-0.005397, -0.622793, 0.782368,
		0.940960, -0.267981, -0.206832,
		40.731750, 40.098988, 36.498081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264172, 40.345928, 37.222263>,  <40.073078, 40.286575, 36.642864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.264172, 40.345928, 37.222263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615311, 40.345848, 37.030685>,  <40.825993, 40.345798, 36.915737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615311, 40.345848, 37.030685>,  <40.264172, 40.345928, 37.222263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615311, 40.345848, 37.030685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344824, 0.694281, 0.631719,
		0.332396, -0.719703, 0.609540,
		0.877843, -0.000203, -0.478948,
		40.878662, 40.345787, 36.887001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853081, 40.129585, 37.640354>,  <40.264172, 40.345928, 37.222263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853081, 40.129585, 37.640354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940094, 40.392651, 37.351868>,  <40.992302, 40.550491, 37.178776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940094, 40.392651, 37.351868>,  <40.853081, 40.129585, 37.640354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940094, 40.392651, 37.351868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203672, 0.692063, 0.692507,
		0.954567, -0.297534, 0.016596,
		0.217530, 0.657664, -0.721220,
		41.005352, 40.589951, 37.135502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.302979, 40.611233, 37.927689>,  <40.853081, 40.129585, 37.640354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.302979, 40.611233, 37.927689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204311, 40.821659, 37.602135>,  <41.145111, 40.947914, 37.406803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.204311, 40.821659, 37.602135>,  <41.302979, 40.611233, 37.927689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.204311, 40.821659, 37.602135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006868, 0.840762, 0.541362,
		0.969076, 0.127947, -0.211001,
		-0.246667, 0.526070, -0.813883,
		41.130310, 40.979481, 37.357971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706387, 41.274353, 37.964836>,  <41.302979, 40.611233, 37.927689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.706387, 41.274353, 37.964836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.382759, 41.327305, 37.735794>,  <41.188583, 41.359077, 37.598370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.382759, 41.327305, 37.735794>,  <41.706387, 41.274353, 37.964836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.382759, 41.327305, 37.735794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156426, 0.890651, 0.426934,
		0.566511, 0.434991, -0.699891,
		-0.809071, 0.132381, -0.572608,
		41.140038, 41.367020, 37.564011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692242, 41.985489, 37.705528>,  <41.706387, 41.274353, 37.964836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692242, 41.985489, 37.705528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310287, 41.867962, 37.688229>,  <41.081116, 41.797447, 37.677849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.310287, 41.867962, 37.688229>,  <41.692242, 41.985489, 37.705528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310287, 41.867962, 37.688229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295559, 0.925927, 0.235168,
		-0.029048, 0.237342, -0.970992,
		-0.954883, -0.293817, -0.043252,
		41.023823, 41.779816, 37.675255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331238, 42.533783, 37.290157>,  <41.692242, 41.985489, 37.705528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331238, 42.533783, 37.290157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036831, 42.335178, 37.474224>,  <40.860188, 42.216015, 37.584663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036831, 42.335178, 37.474224>,  <41.331238, 42.533783, 37.290157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036831, 42.335178, 37.474224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430296, 0.867895, 0.248199,
		-0.522608, -0.015327, -0.852435,
		-0.736020, -0.496510, 0.460165,
		40.816025, 42.186226, 37.612274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595158, 42.604004, 36.940819>,  <41.331238, 42.533783, 37.290157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595158, 42.604004, 36.940819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626972, 42.577267, 37.338654>,  <40.646061, 42.561226, 37.577354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626972, 42.577267, 37.338654>,  <40.595158, 42.604004, 36.940819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626972, 42.577267, 37.338654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179030, 0.980568, 0.080213,
		-0.980624, -0.184441, 0.066022,
		0.079534, -0.066839, 0.994589,
		40.650833, 42.557217, 37.637032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563061, 43.282246, 36.627911>,  <40.595158, 42.604004, 36.940819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563061, 43.282246, 36.627911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885002, 43.466927, 36.777069>,  <41.078167, 43.577736, 36.866562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885002, 43.466927, 36.777069>,  <40.563061, 43.282246, 36.627911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885002, 43.466927, 36.777069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468166, 0.880085, -0.079192,
		-0.364740, -0.110838, 0.924489,
		0.804851, 0.461699, 0.372893,
		41.126457, 43.605434, 36.888935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285831, 43.637779, 37.135612>,  <40.563061, 43.282246, 36.627911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285831, 43.637779, 37.135612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630676, 43.808784, 37.026798>,  <40.837582, 43.911388, 36.961510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630676, 43.808784, 37.026798>,  <40.285831, 43.637779, 37.135612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630676, 43.808784, 37.026798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467256, 0.878410, -0.100337,
		0.196066, 0.213613, 0.957041,
		0.862108, 0.427511, -0.272038,
		40.889309, 43.937038, 36.945187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196129, 43.618599, 37.945572>,  <40.285831, 43.637779, 37.135612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196129, 43.618599, 37.945572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077091, 43.440857, 38.283562>,  <40.005669, 43.334213, 38.486355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077091, 43.440857, 38.283562>,  <40.196129, 43.618599, 37.945572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077091, 43.440857, 38.283562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426022, -0.853878, -0.298993,
		0.854366, 0.270999, 0.443416,
		-0.297597, -0.444355, 0.844976,
		39.987812, 43.307549, 38.537056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722473, 43.168804, 38.327770>,  <40.196129, 43.618599, 37.945572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722473, 43.168804, 38.327770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351631, 43.034210, 38.393814>,  <40.129128, 42.953453, 38.433441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.351631, 43.034210, 38.393814>,  <40.722473, 43.168804, 38.327770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351631, 43.034210, 38.393814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282004, -0.916392, -0.284076,
		0.246894, -0.216806, 0.944478,
		-0.927102, -0.336483, 0.165111,
		40.073502, 42.933266, 38.443348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724262, 42.534225, 38.705128>,  <40.722473, 43.168804, 38.327770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724262, 42.534225, 38.705128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451347, 42.582756, 38.416752>,  <40.287598, 42.611874, 38.243725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451347, 42.582756, 38.416752>,  <40.724262, 42.534225, 38.705128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451347, 42.582756, 38.416752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268271, -0.875793, -0.401269,
		-0.680081, -0.467190, 0.564998,
		-0.682290, 0.121323, -0.720944,
		40.246658, 42.619152, 38.200470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189587, 41.991554, 38.635876>,  <40.724262, 42.534225, 38.705128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189587, 41.991554, 38.635876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268192, 42.156559, 38.280075>,  <40.315353, 42.255562, 38.066593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.268192, 42.156559, 38.280075>,  <40.189587, 41.991554, 38.635876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.268192, 42.156559, 38.280075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146074, -0.909388, -0.389457,
		-0.969559, -0.053401, -0.238962,
		0.196512, 0.412508, -0.889506,
		40.327145, 42.280312, 38.013222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900272, 41.583725, 38.210293>,  <40.189587, 41.991554, 38.635876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900272, 41.583725, 38.210293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165634, 41.766491, 37.973270>,  <40.324852, 41.876148, 37.831059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.165634, 41.766491, 37.973270>,  <39.900272, 41.583725, 38.210293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165634, 41.766491, 37.973270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345408, -0.889490, -0.299167,
		-0.663763, -0.006202, -0.747917,
		0.663409, 0.456913, -0.592553,
		40.364658, 41.903564, 37.795506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801781, 41.399857, 37.431053>,  <39.900272, 41.583725, 38.210293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801781, 41.399857, 37.431053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181770, 41.511959, 37.486187>,  <40.409763, 41.579220, 37.519268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.181770, 41.511959, 37.486187>,  <39.801781, 41.399857, 37.431053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181770, 41.511959, 37.486187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304808, -0.735749, -0.604786,
		-0.068087, 0.616545, -0.784370,
		0.949977, 0.280261, 0.137833,
		40.466763, 41.596039, 37.527538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166470, 41.458099, 36.773830>,  <39.801781, 41.399857, 37.431053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166470, 41.458099, 36.773830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487816, 41.446026, 37.011719>,  <40.680622, 41.438782, 37.154453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487816, 41.446026, 37.011719>,  <40.166470, 41.458099, 36.773830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487816, 41.446026, 37.011719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395088, -0.720220, -0.570253,
		0.445543, 0.693088, -0.566675,
		0.803366, -0.030186, 0.594719,
		40.728825, 41.436970, 37.190136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780437, 41.558430, 36.341599>,  <40.166470, 41.458099, 36.773830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780437, 41.558430, 36.341599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847271, 41.349518, 36.676098>,  <40.887371, 41.224171, 36.876797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847271, 41.349518, 36.676098>,  <40.780437, 41.558430, 36.341599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847271, 41.349518, 36.676098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471634, -0.702495, -0.532974,
		0.865820, 0.483455, 0.128946,
		0.167085, -0.522275, 0.836248,
		40.897396, 41.192837, 36.926971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396507, 41.411034, 36.245499>,  <40.780437, 41.558430, 36.341599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396507, 41.411034, 36.245499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259804, 41.135899, 36.501652>,  <41.177784, 40.970818, 36.655342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259804, 41.135899, 36.501652>,  <41.396507, 41.411034, 36.245499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259804, 41.135899, 36.501652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357749, -0.725325, -0.588150,
		0.869033, 0.028093, 0.493955,
		-0.341755, -0.687834, 0.640381,
		41.157276, 40.929550, 36.693768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947792, 41.021320, 36.620106>,  <41.396507, 41.411034, 36.245499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947792, 41.021320, 36.620106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700222, 40.786518, 36.828854>,  <41.551678, 40.645638, 36.954102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700222, 40.786518, 36.828854>,  <41.947792, 41.021320, 36.620106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700222, 40.786518, 36.828854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138685, -0.572309, -0.808226,
		0.773107, -0.572610, 0.272809,
		-0.618929, -0.587010, 0.521868,
		41.514542, 40.610416, 36.985413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.015209, 40.409454, 36.333733>,  <41.947792, 41.021320, 36.620106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.015209, 40.409454, 36.333733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666424, 40.354637, 36.521732>,  <41.457153, 40.321747, 36.634533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666424, 40.354637, 36.521732>,  <42.015209, 40.409454, 36.333733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.666424, 40.354637, 36.521732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228741, -0.734748, -0.638611,
		0.432847, -0.664353, 0.609326,
		-0.871964, -0.137043, 0.469999,
		41.404835, 40.313522, 36.662731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911835, 39.618259, 36.511539>,  <42.015209, 40.409454, 36.333733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911835, 39.618259, 36.511539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552666, 39.790703, 36.476017>,  <41.337166, 39.894169, 36.454704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.552666, 39.790703, 36.476017>,  <41.911835, 39.618259, 36.511539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552666, 39.790703, 36.476017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401490, -0.884888, -0.236174,
		-0.180396, -0.176412, 0.967644,
		-0.897921, 0.431105, -0.088803,
		41.283291, 39.920033, 36.449375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467155, 39.248417, 36.937035>,  <41.911835, 39.618259, 36.511539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.467155, 39.248417, 36.937035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.254982, 39.408661, 36.638195>,  <41.127678, 39.504807, 36.458893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.254982, 39.408661, 36.638195>,  <41.467155, 39.248417, 36.937035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254982, 39.408661, 36.638195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387800, -0.898344, -0.206370,
		-0.753821, 0.180257, 0.631872,
		-0.530439, 0.400606, -0.747094,
		41.095852, 39.528843, 36.414066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974720, 38.799892, 36.989548>,  <41.467155, 39.248417, 36.937035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974720, 38.799892, 36.989548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890362, 38.997360, 36.652069>,  <40.839748, 39.115841, 36.449581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890362, 38.997360, 36.652069>,  <40.974720, 38.799892, 36.989548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890362, 38.997360, 36.652069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302339, -0.853726, -0.423962,
		-0.929577, 0.165669, 0.329302,
		-0.210896, 0.493666, -0.843693,
		40.827091, 39.145458, 36.398960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827450, 38.272701, 36.654877>,  <40.974720, 38.799892, 36.989548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827450, 38.272701, 36.654877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702187, 38.551575, 36.396927>,  <40.627029, 38.718899, 36.242157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702187, 38.551575, 36.396927>,  <40.827450, 38.272701, 36.654877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702187, 38.551575, 36.396927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457843, -0.705741, -0.540656,
		-0.832053, 0.125940, 0.540210,
		-0.313159, 0.697186, -0.644875,
		40.608238, 38.760731, 36.203465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.164051, 38.079632, 36.422165>,  <40.827450, 38.272701, 36.654877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.164051, 38.079632, 36.422165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304138, 38.341496, 36.154205>,  <40.388191, 38.498615, 35.993427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304138, 38.341496, 36.154205>,  <40.164051, 38.079632, 36.422165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304138, 38.341496, 36.154205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479470, -0.489094, -0.728626,
		-0.804648, 0.576373, 0.142602,
		0.350215, 0.654660, -0.669902,
		40.409203, 38.537895, 35.953236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.521595, 38.470432, 36.075680>,  <40.164051, 38.079632, 36.422165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.521595, 38.470432, 36.075680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832855, 38.449783, 35.825298>,  <40.019611, 38.437393, 35.675072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.832855, 38.449783, 35.825298>,  <39.521595, 38.470432, 36.075680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832855, 38.449783, 35.825298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546926, -0.545673, -0.634912,
		-0.308791, 0.836407, -0.452848,
		0.778152, -0.051620, -0.625951,
		40.066299, 38.434296, 35.637512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272270, 38.488117, 35.297901>,  <39.521595, 38.470432, 36.075680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272270, 38.488117, 35.297901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639549, 38.329800, 35.291584>,  <39.859917, 38.234810, 35.287796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639549, 38.329800, 35.291584>,  <39.272270, 38.488117, 35.297901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639549, 38.329800, 35.291584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289084, -0.642325, -0.709824,
		0.270805, 0.656326, -0.704203,
		0.918202, -0.395798, -0.015789,
		39.915009, 38.211060, 35.286846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349728, 38.458656, 34.593185>,  <39.272270, 38.488117, 35.297901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349728, 38.458656, 34.593185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.593597, 38.188881, 34.759769>,  <39.739918, 38.027016, 34.859718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.593597, 38.188881, 34.759769>,  <39.349728, 38.458656, 34.593185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593597, 38.188881, 34.759769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095067, -0.583820, -0.806298,
		0.786930, 0.451988, -0.420057,
		0.609675, -0.674434, 0.416456,
		39.776501, 37.986549, 34.884705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894974, 38.277267, 34.090683>,  <39.349728, 38.458656, 34.593185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894974, 38.277267, 34.090683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874844, 37.969585, 34.345490>,  <39.862766, 37.784977, 34.498375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874844, 37.969585, 34.345490>,  <39.894974, 38.277267, 34.090683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874844, 37.969585, 34.345490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135912, -0.626619, -0.767382,
		0.989442, -0.125198, -0.073009,
		-0.050325, -0.769203, 0.637019,
		39.859745, 37.738823, 34.536594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193645, 37.801086, 33.746075>,  <39.894974, 38.277267, 34.090683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193645, 37.801086, 33.746075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989502, 37.604191, 34.028133>,  <39.867016, 37.486053, 34.197369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989502, 37.604191, 34.028133>,  <40.193645, 37.801086, 33.746075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989502, 37.604191, 34.028133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204807, -0.726811, -0.655591,
		0.835216, -0.479007, 0.270122,
		-0.510361, -0.492237, 0.705149,
		39.836395, 37.456520, 34.239677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553490, 37.189854, 33.946472>,  <40.193645, 37.801086, 33.746075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553490, 37.189854, 33.946472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157906, 37.147785, 33.988220>,  <39.920555, 37.122543, 34.013268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.157906, 37.147785, 33.988220>,  <40.553490, 37.189854, 33.946472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157906, 37.147785, 33.988220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000821, -0.708278, -0.705933,
		0.148168, -0.698055, 0.700547,
		-0.988962, -0.105171, 0.104371,
		39.861217, 37.116234, 34.019531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.551266, 36.483917, 33.831844>,  <40.553490, 37.189854, 33.946472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.551266, 36.483917, 33.831844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170654, 36.606915, 33.829090>,  <39.942287, 36.680714, 33.827438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170654, 36.606915, 33.829090>,  <40.551266, 36.483917, 33.831844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170654, 36.606915, 33.829090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218692, -0.692125, -0.687849,
		-0.216274, -0.653001, 0.725821,
		-0.951525, 0.307494, -0.006883,
		39.885197, 36.699162, 33.827026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043228, 35.839752, 33.807209>,  <40.551266, 36.483917, 33.831844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043228, 35.839752, 33.807209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852783, 36.156269, 33.653759>,  <39.738518, 36.346180, 33.561687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852783, 36.156269, 33.653759>,  <40.043228, 35.839752, 33.807209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852783, 36.156269, 33.653759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348186, -0.570226, -0.744049,
		-0.807516, -0.220677, 0.547009,
		-0.476113, 0.791293, -0.383630,
		39.709949, 36.393658, 33.538670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215023, 35.578770, 34.529480>,  <40.043228, 35.839752, 33.807209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215023, 35.578770, 34.529480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475521, 35.400246, 34.774979>,  <40.631821, 35.293133, 34.922279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475521, 35.400246, 34.774979>,  <40.215023, 35.578770, 34.529480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475521, 35.400246, 34.774979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570089, -0.246084, -0.783863,
		0.500879, 0.860379, 0.094174,
		0.651244, -0.446308, 0.613750,
		40.670895, 35.266354, 34.959103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805157, 35.597839, 34.091225>,  <40.215023, 35.578770, 34.529480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805157, 35.597839, 34.091225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886478, 35.348064, 34.392883>,  <40.935272, 35.198200, 34.573879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886478, 35.348064, 34.392883>,  <40.805157, 35.597839, 34.091225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886478, 35.348064, 34.392883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788326, -0.352422, -0.504322,
		0.580698, 0.697045, 0.420615,
		0.203301, -0.624441, 0.754150,
		40.947468, 35.160732, 34.619129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541595, 35.602509, 34.278358>,  <40.805157, 35.597839, 34.091225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541595, 35.602509, 34.278358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384678, 35.247322, 34.374374>,  <41.290527, 35.034210, 34.431984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.384678, 35.247322, 34.374374>,  <41.541595, 35.602509, 34.278358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.384678, 35.247322, 34.374374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758645, -0.459906, -0.461458,
		0.520153, 0.001073, 0.854072,
		-0.392298, -0.887967, 0.240035,
		41.266987, 34.980930, 34.446384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100502, 35.204376, 34.642475>,  <41.541595, 35.602509, 34.278358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100502, 35.204376, 34.642475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.838547, 34.932468, 34.510399>,  <41.681374, 34.769321, 34.431152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.838547, 34.932468, 34.510399>,  <42.100502, 35.204376, 34.642475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.838547, 34.932468, 34.510399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735717, -0.473611, -0.484163,
		0.172736, -0.560003, 0.810283,
		-0.654892, -0.679771, -0.330194,
		41.642078, 34.728539, 34.411343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.323574, 34.510208, 34.787430>,  <42.100502, 35.204376, 34.642475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.323574, 34.510208, 34.787430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108940, 34.501938, 34.449993>,  <41.980160, 34.496975, 34.247532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108940, 34.501938, 34.449993>,  <42.323574, 34.510208, 34.787430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108940, 34.501938, 34.449993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745950, -0.478986, -0.462743,
		-0.394503, -0.877579, 0.272438,
		-0.536587, -0.020672, -0.843592,
		41.947964, 34.495735, 34.196915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026932, 33.800102, 34.530125>,  <42.323574, 34.510208, 34.787430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026932, 33.800102, 34.530125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120605, 34.067596, 34.247860>,  <42.176811, 34.228092, 34.078503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120605, 34.067596, 34.247860>,  <42.026932, 33.800102, 34.530125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120605, 34.067596, 34.247860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783275, -0.559739, -0.270506,
		-0.575881, -0.489377, -0.654883,
		0.234184, 0.668732, -0.705659,
		42.190861, 34.268215, 34.036163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282227, 33.496635, 33.962261>,  <42.026932, 33.800102, 34.530125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282227, 33.496635, 33.962261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.421585, 33.863472, 33.884731>,  <42.505199, 34.083572, 33.838215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.421585, 33.863472, 33.884731>,  <42.282227, 33.496635, 33.962261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.421585, 33.863472, 33.884731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823128, -0.398253, -0.404790,
		-0.448418, -0.018513, -0.893632,
		0.348398, 0.917089, -0.193822,
		42.526104, 34.138599, 33.826584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.594276, 33.564690, 33.352280>,  <42.282227, 33.496635, 33.962261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.594276, 33.564690, 33.352280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.780392, 33.885288, 33.502537>,  <42.892063, 34.077648, 33.592690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.780392, 33.885288, 33.502537>,  <42.594276, 33.564690, 33.352280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.780392, 33.885288, 33.502537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875419, -0.353899, -0.329237,
		-0.130944, 0.482033, -0.866313,
		0.465291, 0.801498, 0.375639,
		42.919979, 34.125736, 33.615227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267319, 33.627899, 32.897736>,  <42.594276, 33.564690, 33.352280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267319, 33.627899, 32.897736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.312977, 33.847721, 33.228783>,  <43.340374, 33.979614, 33.427410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.312977, 33.847721, 33.228783>,  <43.267319, 33.627899, 32.897736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.312977, 33.847721, 33.228783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977179, -0.212325, 0.006213,
		0.179139, 0.808024, -0.561254,
		0.114148, 0.549559, 0.827620,
		43.347221, 34.012589, 33.477070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.035393, 33.962421, 32.938839>,  <43.267319, 33.627899, 32.897736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.035393, 33.962421, 32.938839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.904015, 33.960735, 33.316643>,  <43.825188, 33.959724, 33.543327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.904015, 33.960735, 33.316643>,  <44.035393, 33.962421, 32.938839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.904015, 33.960735, 33.316643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933646, -0.152767, 0.323988,
		0.142923, 0.988253, 0.054115,
		-0.328449, -0.004219, 0.944512,
		43.805481, 33.959469, 33.599995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.510860, 34.292694, 33.195068>,  <44.035393, 33.962421, 32.938839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.510860, 34.292694, 33.195068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.318340, 34.040581, 33.438740>,  <44.202827, 33.889313, 33.584942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.318340, 34.040581, 33.438740>,  <44.510860, 34.292694, 33.195068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.318340, 34.040581, 33.438740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857382, -0.193947, 0.476740,
		-0.182332, 0.751752, 0.633739,
		-0.481302, -0.630281, 0.609175,
		44.173950, 33.851498, 33.621494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.560333, 34.494225, 33.914467>,  <44.510860, 34.292694, 33.195068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.560333, 34.494225, 33.914467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.590183, 34.106388, 33.821232>,  <44.608093, 33.873688, 33.765289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.590183, 34.106388, 33.821232>,  <44.560333, 34.494225, 33.914467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.590183, 34.106388, 33.821232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902001, -0.034043, 0.430390,
		-0.425236, -0.242364, 0.872029,
		0.074624, -0.969588, -0.233089,
		44.612572, 33.815514, 33.751305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.805737, 34.308609, 34.486065>,  <44.560333, 34.494225, 33.914467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.805737, 34.308609, 34.486065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.844494, 34.018513, 34.213409>,  <44.867748, 33.844456, 34.049816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.844494, 34.018513, 34.213409>,  <44.805737, 34.308609, 34.486065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.844494, 34.018513, 34.213409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859947, -0.283804, 0.424201,
		-0.501101, -0.627278, 0.596171,
		0.096896, -0.725243, -0.681640,
		44.873562, 33.800941, 34.008919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.172447, 33.709270, 34.659473>,  <44.805737, 34.308609, 34.486065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.172447, 33.709270, 34.659473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.287144, 33.758148, 34.279400>,  <45.355961, 33.787476, 34.051357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.287144, 33.758148, 34.279400>,  <45.172447, 33.709270, 34.659473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.287144, 33.758148, 34.279400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950782, 0.085294, 0.297891,
		0.117446, -0.988834, -0.091725,
		0.286741, 0.122197, -0.950183,
		45.373165, 33.794807, 33.994347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.673412, 33.233341, 34.395706>,  <45.172447, 33.709270, 34.659473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.673412, 33.233341, 34.395706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.701843, 33.612804, 34.272427>,  <45.718903, 33.840485, 34.198460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.701843, 33.612804, 34.272427>,  <45.673412, 33.233341, 34.395706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.701843, 33.612804, 34.272427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898591, 0.073230, 0.432632,
		0.432992, -0.307696, -0.847255,
		0.071075, 0.948663, -0.308201,
		45.723167, 33.897404, 34.179966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.168121, 33.434093, 34.944153>,  <45.673412, 33.233341, 34.395706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.168121, 33.434093, 34.944153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.519756, 33.284176, 35.061958>,  <46.730736, 33.194225, 35.132641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.519756, 33.284176, 35.061958>,  <46.168121, 33.434093, 34.944153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.519756, 33.284176, 35.061958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388488, 0.921363, 0.012927,
		-0.276201, 0.103052, 0.955559,
		0.879085, -0.374794, 0.294516,
		46.783482, 33.171738, 35.150314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.231270, 33.732883, 35.595371>,  <46.168121, 33.434093, 34.944153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.231270, 33.732883, 35.595371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.554333, 33.641430, 35.377960>,  <46.748169, 33.586559, 35.247513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.554333, 33.641430, 35.377960>,  <46.231270, 33.732883, 35.595371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.554333, 33.641430, 35.377960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361677, 0.920091, 0.150409,
		0.465703, -0.318059, 0.825808,
		0.807658, -0.228630, -0.543523,
		46.796631, 33.572842, 35.214905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.897167, 33.733265, 35.949623>,  <46.231270, 33.732883, 35.595371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.897167, 33.733265, 35.949623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.888527, 33.855938, 35.568996>,  <46.883343, 33.929543, 35.340622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.888527, 33.855938, 35.568996>,  <46.897167, 33.733265, 35.949623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.888527, 33.855938, 35.568996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272480, 0.917564, 0.289535,
		0.961919, -0.253028, -0.103388,
		-0.021604, 0.306681, -0.951567,
		46.882046, 33.947941, 35.283527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.595634, 33.956367, 35.726669>,  <46.897167, 33.733265, 35.949623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.595634, 33.956367, 35.726669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.300121, 34.139618, 35.528957>,  <47.122814, 34.249569, 35.410328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.300121, 34.139618, 35.528957>,  <47.595634, 33.956367, 35.726669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.300121, 34.139618, 35.528957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462712, 0.878043, 0.122223,
		0.489995, -0.138414, -0.860666,
		-0.738784, 0.458129, -0.494283,
		47.078487, 34.277058, 35.380672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.942909, 34.345024, 35.273453>,  <47.595634, 33.956367, 35.726669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.942909, 34.345024, 35.273453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.582401, 34.497700, 35.355442>,  <47.366096, 34.589306, 35.404636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.582401, 34.497700, 35.355442>,  <47.942909, 34.345024, 35.273453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.582401, 34.497700, 35.355442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411166, 0.902671, 0.126991,
		-0.136556, 0.198733, -0.970493,
		-0.901274, 0.381693, 0.204978,
		47.312019, 34.612209, 35.416935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.865025, 35.031212, 34.908237>,  <47.942909, 34.345024, 35.273453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.865025, 35.031212, 34.908237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.634190, 35.010593, 35.234257>,  <47.495689, 34.998222, 35.429871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.634190, 35.010593, 35.234257>,  <47.865025, 35.031212, 34.908237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.634190, 35.010593, 35.234257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230459, 0.947168, 0.223073,
		-0.783488, 0.316570, -0.534724,
		-0.577092, -0.051543, 0.815051,
		47.461063, 34.995129, 35.478771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.953804, 28.157804, 27.611814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.589012, 28.290684, 27.515537>,  <36.370136, 28.370411, 27.457771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.589012, 28.290684, 27.515537>,  <36.953804, 28.157804, 27.611814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589012, 28.290684, 27.515537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060729, 0.470938, 0.880073,
		0.405711, 0.817228, -0.409313,
		-0.911982, 0.332198, -0.240695,
		36.315418, 28.390343, 27.443329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875839, 28.795773, 27.928980>,  <36.953804, 28.157804, 27.611814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875839, 28.795773, 27.928980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.490860, 28.757105, 27.827515>,  <36.259872, 28.733904, 27.766636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.490860, 28.757105, 27.827515>,  <36.875839, 28.795773, 27.928980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490860, 28.757105, 27.827515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270742, 0.409645, 0.871143,
		0.019699, 0.907109, -0.420435,
		-0.962450, -0.096669, -0.253662,
		36.202126, 28.728104, 27.751415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628456, 29.436316, 27.716696>,  <36.875839, 28.795773, 27.928980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628456, 29.436316, 27.716696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.320343, 29.205622, 27.825537>,  <36.135475, 29.067205, 27.890841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.320343, 29.205622, 27.825537>,  <36.628456, 29.436316, 27.716696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320343, 29.205622, 27.825537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066320, 0.496827, 0.865312,
		-0.634242, 0.648491, -0.420947,
		-0.770285, -0.576734, 0.272100,
		36.089256, 29.032600, 27.907167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140636, 29.910664, 28.026199>,  <36.628456, 29.436316, 27.716696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140636, 29.910664, 28.026199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.023136, 29.550913, 28.155712>,  <35.952637, 29.335062, 28.233419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.023136, 29.550913, 28.155712>,  <36.140636, 29.910664, 28.026199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023136, 29.550913, 28.155712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265172, 0.402103, 0.876354,
		-0.918365, 0.171571, -0.356607,
		-0.293750, -0.899376, 0.323782,
		35.935013, 29.281099, 28.252846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315849, 29.931263, 28.218466>,  <36.140636, 29.910664, 28.026199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315849, 29.931263, 28.218466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.524368, 29.646149, 28.406160>,  <35.649479, 29.475080, 28.518778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.524368, 29.646149, 28.406160>,  <35.315849, 29.931263, 28.218466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524368, 29.646149, 28.406160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261153, 0.390231, 0.882904,
		-0.812433, -0.582798, 0.017280,
		0.521297, -0.712788, 0.469236,
		35.680759, 29.432312, 28.546930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960640, 29.851149, 28.877251>,  <35.315849, 29.931263, 28.218466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960640, 29.851149, 28.877251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.297623, 29.661390, 28.979404>,  <35.499813, 29.547535, 29.040697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.297623, 29.661390, 28.979404>,  <34.960640, 29.851149, 28.877251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297623, 29.661390, 28.979404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039373, 0.418539, 0.907345,
		-0.537330, -0.774450, 0.333921,
		0.842452, -0.474396, 0.255386,
		35.550358, 29.519072, 29.056021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.887589, 29.753254, 29.544254>,  <34.960640, 29.851149, 28.877251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.887589, 29.753254, 29.544254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.278549, 29.677893, 29.505899>,  <35.513126, 29.632675, 29.482885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.278549, 29.677893, 29.505899>,  <34.887589, 29.753254, 29.544254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278549, 29.677893, 29.505899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166114, 0.403920, 0.899586,
		-0.130754, -0.895183, 0.426087,
		0.977400, -0.188403, -0.095888,
		35.571770, 29.621372, 29.477133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091885, 29.443991, 30.135170>,  <34.887589, 29.753254, 29.544254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091885, 29.443991, 30.135170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.444508, 29.585636, 30.010300>,  <35.656082, 29.670624, 29.935377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.444508, 29.585636, 30.010300>,  <35.091885, 29.443991, 30.135170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444508, 29.585636, 30.010300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207226, 0.303880, 0.929900,
		0.424156, -0.884454, 0.194507,
		0.881560, 0.354116, -0.312175,
		35.708977, 29.691872, 29.916647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681496, 29.253456, 30.655636>,  <35.091885, 29.443991, 30.135170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681496, 29.253456, 30.655636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.813675, 29.573706, 30.455713>,  <35.892982, 29.765856, 30.335760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.813675, 29.573706, 30.455713>,  <35.681496, 29.253456, 30.655636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813675, 29.573706, 30.455713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416585, 0.351459, 0.838411,
		0.846913, -0.485263, -0.217389,
		0.330447, 0.800622, -0.499808,
		35.912807, 29.813892, 30.305771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449581, 29.259985, 30.856464>,  <35.681496, 29.253456, 30.655636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449581, 29.259985, 30.856464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.346840, 29.614986, 30.703432>,  <36.285194, 29.827988, 30.611612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.346840, 29.614986, 30.703432>,  <36.449581, 29.259985, 30.856464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346840, 29.614986, 30.703432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571909, 0.458688, 0.680092,
		0.779069, -0.044119, -0.625384,
		-0.256851, 0.887501, -0.382582,
		36.269783, 29.881237, 30.588657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060009, 29.690437, 30.946775>,  <36.449581, 29.259985, 30.856464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060009, 29.690437, 30.946775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.743240, 29.929804, 30.898186>,  <36.553181, 30.073423, 30.869032>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.743240, 29.929804, 30.898186>,  <37.060009, 29.690437, 30.946775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743240, 29.929804, 30.898186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368538, 0.627026, 0.686307,
		0.486867, 0.498733, -0.717096,
		-0.791922, 0.598417, -0.121476,
		36.505665, 30.109329, 30.861742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318130, 30.348793, 31.005182>,  <37.060009, 29.690437, 30.946775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318130, 30.348793, 31.005182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.929775, 30.420584, 31.068647>,  <36.696762, 30.463657, 31.106726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.929775, 30.420584, 31.068647>,  <37.318130, 30.348793, 31.005182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929775, 30.420584, 31.068647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239497, 0.712991, 0.659004,
		0.005149, 0.677815, -0.735214,
		-0.970884, 0.179474, 0.158663,
		36.638512, 30.474426, 31.116247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188522, 31.079187, 30.890936>,  <37.318130, 30.348793, 31.005182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188522, 31.079187, 30.890936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.884380, 30.965324, 31.124458>,  <36.701893, 30.897007, 31.264572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.884380, 30.965324, 31.124458>,  <37.188522, 31.079187, 30.890936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884380, 30.965324, 31.124458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162741, 0.786676, 0.595530,
		-0.628786, 0.547824, -0.551830,
		-0.760357, -0.284656, 0.583804,
		36.656273, 30.879927, 31.299599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650436, 31.604193, 30.883654>,  <37.188522, 31.079187, 30.890936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650436, 31.604193, 30.883654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.597721, 31.399057, 31.222977>,  <36.566090, 31.275976, 31.426571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.597721, 31.399057, 31.222977>,  <36.650436, 31.604193, 30.883654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597721, 31.399057, 31.222977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202281, 0.823853, 0.529480,
		-0.970419, 0.241379, -0.004841,
		-0.131793, -0.512838, 0.848309,
		36.558182, 31.245207, 31.477468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556824, 32.053562, 31.281742>,  <36.650436, 31.604193, 30.883654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556824, 32.053562, 31.281742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.616581, 31.781706, 31.569012>,  <36.652435, 31.618593, 31.741373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.616581, 31.781706, 31.569012>,  <36.556824, 32.053562, 31.281742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616581, 31.781706, 31.569012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278813, 0.725805, 0.628864,
		-0.948654, 0.106286, 0.297925,
		0.149396, -0.679639, 0.718172,
		36.661400, 31.577814, 31.784464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223114, 32.300442, 31.896761>,  <36.556824, 32.053562, 31.281742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223114, 32.300442, 31.896761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.470375, 32.031540, 32.059719>,  <36.618732, 31.870199, 32.157494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.470375, 32.031540, 32.059719>,  <36.223114, 32.300442, 31.896761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470375, 32.031540, 32.059719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300609, 0.681047, 0.667689,
		-0.726309, -0.290266, 0.623074,
		0.618150, -0.672251, 0.407394,
		36.655819, 31.829865, 32.181938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128872, 32.278526, 32.684761>,  <36.223114, 32.300442, 31.896761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128872, 32.278526, 32.684761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.483143, 32.108334, 32.610428>,  <36.695705, 32.006218, 32.565826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.483143, 32.108334, 32.610428>,  <36.128872, 32.278526, 32.684761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483143, 32.108334, 32.610428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430530, 0.602786, 0.671784,
		-0.173815, -0.674992, 0.717059,
		0.885682, -0.425481, -0.185831,
		36.748848, 31.980690, 32.554680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371086, 32.094334, 33.361691>,  <36.128872, 32.278526, 32.684761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371086, 32.094334, 33.361691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.696396, 32.098656, 33.128979>,  <36.891582, 32.101250, 32.989353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.696396, 32.098656, 33.128979>,  <36.371086, 32.094334, 33.361691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696396, 32.098656, 33.128979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452600, 0.616629, 0.644145,
		0.365702, -0.787180, 0.496598,
		0.813274, 0.010805, -0.581780,
		36.940376, 32.101898, 32.954445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000065, 32.031223, 33.731865>,  <36.371086, 32.094334, 33.361691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000065, 32.031223, 33.731865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.145386, 32.229256, 33.416168>,  <37.232578, 32.348076, 33.226749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.145386, 32.229256, 33.416168>,  <37.000065, 32.031223, 33.731865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145386, 32.229256, 33.416168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588861, 0.534442, 0.606311,
		0.721981, -0.685027, -0.097374,
		0.363299, 0.495085, -0.789243,
		37.254375, 32.377781, 33.179394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708214, 31.956549, 33.896641>,  <37.000065, 32.031223, 33.731865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708214, 31.956549, 33.896641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.711075, 32.246281, 33.620872>,  <37.712791, 32.420120, 33.455414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.711075, 32.246281, 33.620872>,  <37.708214, 31.956549, 33.896641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711075, 32.246281, 33.620872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603188, 0.546761, 0.580703,
		0.797567, -0.420001, -0.432996,
		0.007151, 0.724328, -0.689418,
		37.713219, 32.463577, 33.414047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330570, 32.257130, 33.879021>,  <37.708214, 31.956549, 33.896641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330570, 32.257130, 33.879021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.102913, 32.552479, 33.734310>,  <37.966320, 32.729687, 33.647484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.102913, 32.552479, 33.734310>,  <38.330570, 32.257130, 33.879021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102913, 32.552479, 33.734310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514497, 0.663014, 0.543788,
		0.641380, 0.123361, -0.757241,
		-0.569143, 0.738373, -0.361776,
		37.932171, 32.773991, 33.625778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.806828, 32.780319, 33.911430>,  <38.330570, 32.257130, 33.879021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.806828, 32.780319, 33.911430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.455158, 32.967102, 33.873478>,  <38.244156, 33.079170, 33.850704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.455158, 32.967102, 33.873478>,  <38.806828, 32.780319, 33.911430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455158, 32.967102, 33.873478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307463, 0.708064, 0.635698,
		0.364025, 0.529718, -0.766084,
		-0.879177, 0.466953, -0.094884,
		38.191406, 33.107189, 33.845013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637787, 33.584339, 33.816250>,  <38.806828, 32.780319, 33.911430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637787, 33.584339, 33.816250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.022705, 33.686855, 33.779819>,  <39.253658, 33.748367, 33.757961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.022705, 33.686855, 33.779819>,  <38.637787, 33.584339, 33.816250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022705, 33.686855, 33.779819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052598, -0.503879, -0.862171,
		-0.266860, 0.824876, -0.498363,
		0.962299, 0.256292, -0.091078,
		39.311394, 33.763744, 33.752495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836143, 33.894695, 33.183979>,  <38.637787, 33.584339, 33.816250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836143, 33.894695, 33.183979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.189541, 33.733749, 33.279938>,  <39.401577, 33.637184, 33.337513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.189541, 33.733749, 33.279938>,  <38.836143, 33.894695, 33.183979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189541, 33.733749, 33.279938> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054574, -0.420222, -0.905779,
		0.465262, 0.813338, -0.349303,
		0.883489, -0.402361, 0.239901,
		39.454586, 33.613041, 33.351910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229942, 33.980782, 32.570293>,  <38.836143, 33.894695, 33.183979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229942, 33.980782, 32.570293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.411385, 33.694656, 32.782925>,  <39.520248, 33.522984, 32.910503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.411385, 33.694656, 32.782925>,  <39.229942, 33.980782, 32.570293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411385, 33.694656, 32.782925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148121, -0.527668, -0.836437,
		0.878809, 0.458147, -0.133399,
		0.453602, -0.715309, 0.531581,
		39.547466, 33.480064, 32.942398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.933174, 33.984924, 32.338741>,  <39.229942, 33.980782, 32.570293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.933174, 33.984924, 32.338741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.855789, 33.619663, 32.482254>,  <39.809361, 33.400505, 32.568359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.855789, 33.619663, 32.482254>,  <39.933174, 33.984924, 32.338741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855789, 33.619663, 32.482254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308551, -0.403760, -0.861263,
		0.931327, -0.055917, 0.359866,
		-0.193459, -0.913155, 0.358779,
		39.797752, 33.345718, 32.589890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370453, 33.560108, 32.046902>,  <39.933174, 33.984924, 32.338741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370453, 33.560108, 32.046902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.103619, 33.290588, 32.174023>,  <39.943520, 33.128876, 32.250298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.103619, 33.290588, 32.174023>,  <40.370453, 33.560108, 32.046902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103619, 33.290588, 32.174023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063170, -0.476216, -0.877057,
		0.742302, -0.564992, 0.360238,
		-0.667081, -0.673797, 0.317805,
		39.903496, 33.088448, 32.269363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594490, 32.851788, 31.884113>,  <40.370453, 33.560108, 32.046902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594490, 32.851788, 31.884113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.203857, 32.792439, 31.946424>,  <39.969479, 32.756828, 31.983810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.203857, 32.792439, 31.946424>,  <40.594490, 32.851788, 31.884113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203857, 32.792439, 31.946424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059934, -0.507785, -0.859396,
		0.206617, -0.848610, 0.487002,
		-0.976585, -0.148378, 0.155777,
		39.910881, 32.747925, 31.993158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529358, 32.189617, 31.599689>,  <40.594490, 32.851788, 31.884113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529358, 32.189617, 31.599689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.159660, 32.338634, 31.633131>,  <39.937843, 32.428043, 31.653196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.159660, 32.338634, 31.633131>,  <40.529358, 32.189617, 31.599689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159660, 32.338634, 31.633131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211683, -0.317751, -0.924243,
		-0.317751, -0.871922, 0.372540,
		0.924243, -0.372540, -0.083605,
		39.882389, 32.450397, 31.658213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115894, 31.669989, 31.500418>,  <40.529358, 32.189617, 31.599689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115894, 31.669989, 31.500418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.914436, 32.000648, 31.400021>,  <39.793564, 32.199043, 31.339783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.914436, 32.000648, 31.400021>,  <40.115894, 31.669989, 31.500418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914436, 32.000648, 31.400021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232139, -0.409337, -0.882357,
		-0.832140, -0.386127, 0.398057,
		-0.503641, 0.826649, -0.250990,
		39.763344, 32.248642, 31.324724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566776, 31.366600, 31.152752>,  <40.115894, 31.669989, 31.500418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566776, 31.366600, 31.152752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.586739, 31.748938, 31.036911>,  <39.598717, 31.978340, 30.967405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.586739, 31.748938, 31.036911>,  <39.566776, 31.366600, 31.152752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.586739, 31.748938, 31.036911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216532, -0.272715, -0.937412,
		-0.974999, 0.109488, 0.193362,
		0.049902, 0.955845, -0.289604,
		39.601707, 32.035690, 30.950029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020908, 31.468023, 30.747561>,  <39.566776, 31.366600, 31.152752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020908, 31.468023, 30.747561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.236584, 31.780344, 30.621304>,  <39.365990, 31.967735, 30.545549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.236584, 31.780344, 30.621304>,  <39.020908, 31.468023, 30.747561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236584, 31.780344, 30.621304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283998, -0.184269, -0.940952,
		-0.792858, 0.596989, 0.122391,
		0.539185, 0.780800, -0.315643,
		39.398338, 32.014584, 30.526611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559860, 31.911871, 30.377220>,  <39.020908, 31.468023, 30.747561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559860, 31.911871, 30.377220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.941063, 31.971497, 30.271730>,  <39.169785, 32.007271, 30.208437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.941063, 31.971497, 30.271730>,  <38.559860, 31.911871, 30.377220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941063, 31.971497, 30.271730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212786, -0.290242, -0.932996,
		-0.215620, 0.945272, -0.244885,
		0.953011, 0.149065, -0.263723,
		39.226967, 32.016216, 30.192614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536060, 32.305779, 29.743492>,  <38.559860, 31.911871, 30.377220>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536060, 32.305779, 29.743492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.886436, 32.113056, 29.753202>,  <39.096661, 31.997421, 29.759029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.886436, 32.113056, 29.753202>,  <38.536060, 32.305779, 29.743492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886436, 32.113056, 29.753202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180615, -0.374193, -0.909592,
		0.447335, 0.792363, -0.414793,
		0.875939, -0.481811, 0.024277,
		39.149220, 31.968513, 29.760485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678368, 32.261238, 29.106794>,  <38.536060, 32.305779, 29.743492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678368, 32.261238, 29.106794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.957821, 32.006489, 29.237211>,  <39.125492, 31.853640, 29.315462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.957821, 32.006489, 29.237211>,  <38.678368, 32.261238, 29.106794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957821, 32.006489, 29.237211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078711, -0.521345, -0.849708,
		0.711139, 0.567969, -0.414357,
		0.698631, -0.636875, 0.326044,
		39.167412, 31.815426, 29.335024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.161186, 32.082790, 28.506977>,  <38.678368, 32.261238, 29.106794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.161186, 32.082790, 28.506977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.172928, 31.792854, 28.782293>,  <39.179974, 31.618893, 28.947483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.172928, 31.792854, 28.782293>,  <39.161186, 32.082790, 28.506977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172928, 31.792854, 28.782293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037572, -0.688899, -0.723883,
		0.998863, -0.004611, -0.047457,
		0.029355, -0.724843, 0.688289,
		39.181736, 31.575401, 28.988779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612167, 31.668339, 28.229506>,  <39.161186, 32.082790, 28.506977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612167, 31.668339, 28.229506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.416519, 31.448729, 28.500603>,  <39.299129, 31.316963, 28.663261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.416519, 31.448729, 28.500603>,  <39.612167, 31.668339, 28.229506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416519, 31.448729, 28.500603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030421, -0.787301, -0.615818,
		0.871688, -0.280589, 0.401783,
		-0.489116, -0.549024, 0.677745,
		39.269783, 31.284021, 28.703926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953415, 31.065893, 28.277103>,  <39.612167, 31.668339, 28.229506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953415, 31.065893, 28.277103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.591602, 30.966619, 28.415798>,  <39.374516, 30.907055, 28.499014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.591602, 30.966619, 28.415798>,  <39.953415, 31.065893, 28.277103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591602, 30.966619, 28.415798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019260, -0.836113, -0.548220,
		0.425969, -0.489204, 0.761071,
		-0.904533, -0.248183, 0.346736,
		39.320244, 30.892164, 28.519819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977943, 30.379272, 28.424433>,  <39.953415, 31.065893, 28.277103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977943, 30.379272, 28.424433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.580032, 30.417965, 28.411379>,  <39.341286, 30.441181, 28.403547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.580032, 30.417965, 28.411379>,  <39.977943, 30.379272, 28.424433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580032, 30.417965, 28.411379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068978, -0.872520, -0.483684,
		-0.075261, -0.478906, 0.874634,
		-0.994775, 0.096733, -0.032633,
		39.281601, 30.446985, 28.401588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666573, 29.797413, 28.369015>,  <39.977943, 30.379272, 28.424433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666573, 29.797413, 28.369015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.348728, 29.988348, 28.218952>,  <39.158020, 30.102909, 28.128914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.348728, 29.988348, 28.218952>,  <39.666573, 29.797413, 28.369015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348728, 29.988348, 28.218952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272006, -0.832345, -0.482923,
		-0.542778, -0.281690, 0.791229,
		-0.794610, 0.477339, -0.375157,
		39.110344, 30.131550, 28.106405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.108955, 29.191093, 28.212332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.997028, 29.521673, 28.016911>,  <38.929871, 29.720020, 27.899658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.997028, 29.521673, 28.016911>,  <39.108955, 29.191093, 28.212332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997028, 29.521673, 28.016911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491882, -0.560430, -0.666311,
		-0.824472, 0.053866, 0.563333,
		-0.279817, 0.826448, -0.488555,
		38.913082, 29.769608, 27.870344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380203, 29.262384, 28.138014>,  <39.108955, 29.191093, 28.212332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380203, 29.262384, 28.138014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.542881, 29.472345, 27.838928>,  <38.640488, 29.598322, 27.659477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.542881, 29.472345, 27.838928>,  <38.380203, 29.262384, 28.138014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542881, 29.472345, 27.838928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465444, -0.585215, -0.663991,
		-0.786103, 0.618063, 0.006305,
		0.406699, 0.524901, -0.747714,
		38.664890, 29.629816, 27.614614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877430, 29.413982, 27.657017>,  <38.380203, 29.262384, 28.138014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877430, 29.413982, 27.657017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.221714, 29.430395, 27.454041>,  <38.428284, 29.440243, 27.332254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.221714, 29.430395, 27.454041>,  <37.877430, 29.413982, 27.657017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221714, 29.430395, 27.454041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434931, -0.458797, -0.774816,
		-0.264604, 0.887594, -0.377045,
		0.860709, 0.041030, -0.507442,
		38.479927, 29.442705, 27.301807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656254, 29.510004, 26.913889>,  <37.877430, 29.413982, 27.657017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656254, 29.510004, 26.913889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.049267, 29.451204, 26.868238>,  <38.285072, 29.415924, 26.840849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.049267, 29.451204, 26.868238>,  <37.656254, 29.510004, 26.913889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049267, 29.451204, 26.868238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178750, -0.574792, -0.798538,
		0.051787, 0.804987, -0.591027,
		0.982531, -0.147000, -0.114125,
		38.344025, 29.407104, 26.834002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828384, 29.583244, 26.201727>,  <37.656254, 29.510004, 26.913889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828384, 29.583244, 26.201727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.138142, 29.370543, 26.338869>,  <38.323997, 29.242922, 26.421154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.138142, 29.370543, 26.338869>,  <37.828384, 29.583244, 26.201727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138142, 29.370543, 26.338869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045287, -0.587087, -0.808256,
		0.631080, 0.610383, -0.478718,
		0.774395, -0.531754, 0.342856,
		38.370461, 29.211016, 26.441727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399513, 29.565229, 25.644199>,  <37.828384, 29.583244, 26.201727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399513, 29.565229, 25.644199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.465500, 29.251791, 25.883787>,  <38.505093, 29.063728, 26.027540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.465500, 29.251791, 25.883787>,  <38.399513, 29.565229, 25.644199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465500, 29.251791, 25.883787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031066, -0.611116, -0.790932,
		0.985810, 0.111870, -0.125157,
		0.164966, -0.783596, 0.598968,
		38.514988, 29.016712, 26.063478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071121, 29.155622, 25.435474>,  <38.399513, 29.565229, 25.644199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071121, 29.155622, 25.435474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.869221, 28.887146, 25.652628>,  <38.748081, 28.726059, 25.782921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.869221, 28.887146, 25.652628>,  <39.071121, 29.155622, 25.435474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869221, 28.887146, 25.652628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198900, -0.702377, -0.683451,
		0.840037, -0.236995, 0.488027,
		-0.504754, -0.671193, 0.542884,
		38.717796, 28.685787, 25.815493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472126, 28.593233, 25.347919>,  <39.071121, 29.155622, 25.435474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472126, 28.593233, 25.347919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.126633, 28.443968, 25.483397>,  <38.919338, 28.354408, 25.564682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.126633, 28.443968, 25.483397>,  <39.472126, 28.593233, 25.347919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126633, 28.443968, 25.483397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157348, -0.838176, -0.522210,
		0.478753, -0.397758, 0.782677,
		-0.863734, -0.373162, 0.338693,
		38.867512, 28.332020, 25.585005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667980, 28.016029, 25.417423>,  <39.472126, 28.593233, 25.347919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667980, 28.016029, 25.417423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.271400, 27.964220, 25.423756>,  <39.033451, 27.933134, 25.427555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.271400, 27.964220, 25.423756>,  <39.667980, 28.016029, 25.417423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271400, 27.964220, 25.423756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088154, -0.754292, -0.650594,
		0.096208, -0.643636, 0.759261,
		-0.991450, -0.129524, 0.015830,
		38.973965, 27.925364, 25.428505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582500, 27.249577, 25.285883>,  <39.667980, 28.016029, 25.417423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582500, 27.249577, 25.285883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.226547, 27.419998, 25.220652>,  <39.012978, 27.522251, 25.181513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.226547, 27.419998, 25.220652>,  <39.582500, 27.249577, 25.285883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.226547, 27.419998, 25.220652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086677, -0.508865, -0.856472,
		-0.447885, -0.748022, 0.489757,
		-0.889880, 0.426052, -0.163077,
		38.959583, 27.547813, 25.171728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091408, 26.642664, 25.247799>,  <39.582500, 27.249577, 25.285883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091408, 26.642664, 25.247799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.922878, 26.955156, 25.063555>,  <38.821758, 27.142653, 24.953009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.922878, 26.955156, 25.063555>,  <39.091408, 26.642664, 25.247799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922878, 26.955156, 25.063555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204997, -0.576785, -0.790756,
		-0.883437, -0.238742, 0.403165,
		-0.421327, 0.781230, -0.460611,
		38.796482, 27.189526, 24.925371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522156, 26.456352, 24.920620>,  <39.091408, 26.642664, 25.247799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522156, 26.456352, 24.920620> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.582020, 26.783751, 24.698750>,  <38.617939, 26.980190, 24.565628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.582020, 26.783751, 24.698750>,  <38.522156, 26.456352, 24.920620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582020, 26.783751, 24.698750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245814, -0.512579, -0.822702,
		-0.957694, 0.259472, 0.124485,
		0.149659, 0.818497, -0.554676,
		38.626919, 27.029299, 24.532347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931164, 26.653614, 24.499247>,  <38.522156, 26.456352, 24.920620>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931164, 26.653614, 24.499247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.233315, 26.817276, 24.294506>,  <38.414604, 26.915474, 24.171661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.233315, 26.817276, 24.294506>,  <37.931164, 26.653614, 24.499247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233315, 26.817276, 24.294506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384933, -0.355076, -0.851908,
		-0.530310, 0.840543, -0.110719,
		0.755379, 0.409156, -0.511853,
		38.459927, 26.940023, 24.140949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565617, 26.968863, 23.959511>,  <37.931164, 26.653614, 24.499247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565617, 26.968863, 23.959511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.954742, 26.968117, 23.866873>,  <38.188217, 26.967669, 23.811289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.954742, 26.968117, 23.866873>,  <37.565617, 26.968863, 23.959511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954742, 26.968117, 23.866873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228263, -0.176943, -0.957385,
		-0.039194, 0.984219, -0.172558,
		0.972810, -0.001865, -0.231596,
		38.246586, 26.967558, 23.797394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588196, 27.139105, 23.207655>,  <37.565617, 26.968863, 23.959511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588196, 27.139105, 23.207655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.959297, 27.005209, 23.273653>,  <38.181957, 26.924871, 23.313251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.959297, 27.005209, 23.273653>,  <37.588196, 27.139105, 23.207655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959297, 27.005209, 23.273653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007175, -0.426033, -0.904679,
		0.373127, 0.840502, -0.392852,
		0.927752, -0.334742, 0.164995,
		38.237621, 26.904787, 23.323153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965618, 27.354013, 22.689987>,  <37.588196, 27.139105, 23.207655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965618, 27.354013, 22.689987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.179680, 27.047327, 22.831837>,  <38.308117, 26.863316, 22.916946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.179680, 27.047327, 22.831837>,  <37.965618, 27.354013, 22.689987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179680, 27.047327, 22.831837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015411, -0.410864, -0.911566,
		0.844613, 0.493295, -0.208061,
		0.535156, -0.766714, 0.354624,
		38.340225, 26.817312, 22.938223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429028, 27.298864, 22.269751>,  <37.965618, 27.354013, 22.689987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429028, 27.298864, 22.269751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.390736, 26.929636, 22.418762>,  <38.367760, 26.708099, 22.508169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.390736, 26.929636, 22.418762>,  <38.429028, 27.298864, 22.269751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390736, 26.929636, 22.418762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243662, -0.384595, -0.890346,
		0.965124, 0.005537, 0.261735,
		-0.095732, -0.923069, 0.372531,
		38.362015, 26.652716, 22.530521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991245, 26.986513, 22.128357>,  <38.429028, 27.298864, 22.269751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991245, 26.986513, 22.128357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.738171, 26.682690, 22.188723>,  <38.586327, 26.500395, 22.224941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.738171, 26.682690, 22.188723>,  <38.991245, 26.986513, 22.128357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738171, 26.682690, 22.188723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304140, -0.422935, -0.853595,
		0.712183, -0.494160, 0.498599,
		-0.632688, -0.759560, 0.150913,
		38.548363, 26.454823, 22.233997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372272, 26.412294, 21.889557>,  <38.991245, 26.986513, 22.128357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372272, 26.412294, 21.889557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.004101, 26.256002, 21.884855>,  <38.783199, 26.162228, 21.882034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.004101, 26.256002, 21.884855>,  <39.372272, 26.412294, 21.889557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004101, 26.256002, 21.884855> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162778, -0.355770, -0.920289,
		0.355403, -0.848975, 0.391064,
		-0.920431, -0.390730, -0.011752,
		38.727970, 26.138784, 21.881329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459297, 25.825741, 21.559566>,  <39.372272, 26.412294, 21.889557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459297, 25.825741, 21.559566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.062466, 25.872234, 21.540480>,  <38.824368, 25.900131, 21.529028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.062466, 25.872234, 21.540480>,  <39.459297, 25.825741, 21.559566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062466, 25.872234, 21.540480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012606, -0.285769, -0.958216,
		-0.125014, -0.951223, 0.282039,
		-0.992075, 0.116235, -0.047717,
		38.764843, 25.907104, 21.526165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237377, 25.321640, 21.122393>,  <39.459297, 25.825741, 21.559566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237377, 25.321640, 21.122393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.911472, 25.553560, 21.123037>,  <38.715931, 25.692713, 21.123425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.911472, 25.553560, 21.123037>,  <39.237377, 25.321640, 21.122393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911472, 25.553560, 21.123037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118289, -0.163505, -0.979425,
		-0.567607, -0.798185, 0.201801,
		-0.814758, 0.579799, 0.001610,
		38.667046, 25.727499, 21.123520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779640, 24.981651, 20.630783>,  <39.237377, 25.321640, 21.122393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779640, 24.981651, 20.630783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.652241, 25.359129, 20.666569>,  <38.575802, 25.585615, 20.688040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.652241, 25.359129, 20.666569>,  <38.779640, 24.981651, 20.630783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652241, 25.359129, 20.666569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161118, 0.039111, -0.986160,
		-0.934131, -0.328503, 0.139589,
		-0.318497, 0.943693, 0.089462,
		38.556690, 25.642237, 20.693407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036701, 25.073748, 20.538494>,  <38.779640, 24.981651, 20.630783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.036701, 25.073748, 20.538494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.258717, 25.386093, 20.423826>,  <38.391926, 25.573502, 20.355026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.258717, 25.386093, 20.423826>,  <38.036701, 25.073748, 20.538494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258717, 25.386093, 20.423826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427580, -0.027786, -0.903551,
		-0.713516, 0.624082, 0.318460,
		0.555041, 0.780865, -0.286670,
		38.425228, 25.620352, 20.337826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604454, 25.588379, 20.249777>,  <38.036701, 25.073748, 20.538494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604454, 25.588379, 20.249777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.955864, 25.600277, 20.059069>,  <38.166710, 25.607416, 19.944645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.955864, 25.600277, 20.059069>,  <37.604454, 25.588379, 20.249777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955864, 25.600277, 20.059069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456382, -0.242540, -0.856090,
		-0.141101, 0.969685, -0.199502,
		0.878525, 0.029746, -0.476769,
		38.219421, 25.609201, 19.916039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257679, 26.216133, 19.973965>,  <37.604454, 25.588379, 20.249777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257679, 26.216133, 19.973965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.863316, 26.171074, 19.924507>,  <36.626698, 26.144039, 19.894833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.863316, 26.171074, 19.924507>,  <37.257679, 26.216133, 19.973965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863316, 26.171074, 19.924507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145462, 0.212521, 0.966269,
		-0.082570, 0.970642, -0.225913,
		-0.985912, -0.112646, -0.123644,
		36.567543, 26.137280, 19.887415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892338, 26.924627, 20.208395>,  <37.257679, 26.216133, 19.973965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892338, 26.924627, 20.208395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.597614, 26.654205, 20.211363>,  <36.420780, 26.491951, 20.213144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.597614, 26.654205, 20.211363>,  <36.892338, 26.924627, 20.208395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597614, 26.654205, 20.211363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257902, 0.291193, 0.921245,
		-0.624974, 0.676872, -0.388911,
		-0.736813, -0.676056, 0.007421,
		36.376572, 26.451389, 20.213589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324753, 27.236185, 20.588642>,  <36.892338, 26.924627, 20.208395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324753, 27.236185, 20.588642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.222481, 26.849754, 20.603186>,  <36.161118, 26.617895, 20.611912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.222481, 26.849754, 20.603186>,  <36.324753, 27.236185, 20.588642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222481, 26.849754, 20.603186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318897, 0.119782, 0.940190,
		-0.912652, 0.228790, -0.338705,
		-0.255677, -0.966078, 0.036359,
		36.145779, 26.559931, 20.614094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628925, 27.191616, 20.893488>,  <36.324753, 27.236185, 20.588642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628925, 27.191616, 20.893488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.788670, 26.835932, 20.982761>,  <35.884518, 26.622520, 21.036325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.788670, 26.835932, 20.982761>,  <35.628925, 27.191616, 20.893488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788670, 26.835932, 20.982761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312841, 0.096652, 0.944875,
		-0.861764, -0.447171, -0.239583,
		0.399365, -0.889211, 0.223185,
		35.908478, 26.569168, 21.049717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104454, 26.767544, 21.338552>,  <35.628925, 27.191616, 20.893488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104454, 26.767544, 21.338552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.434242, 26.557507, 21.422953>,  <35.632114, 26.431484, 21.473593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.434242, 26.557507, 21.422953>,  <35.104454, 26.767544, 21.338552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434242, 26.557507, 21.422953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251777, -0.006442, 0.967764,
		-0.506808, -0.851020, -0.137517,
		0.824472, -0.525094, 0.211002,
		35.681583, 26.399979, 21.486254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894665, 26.342903, 21.810944>,  <35.104454, 26.767544, 21.338552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894665, 26.342903, 21.810944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.291042, 26.389723, 21.837255>,  <35.528870, 26.417814, 21.853043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.291042, 26.389723, 21.837255>,  <34.894665, 26.342903, 21.810944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291042, 26.389723, 21.837255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096939, 0.284760, 0.953685,
		0.092894, -0.951426, 0.293528,
		0.990946, 0.117046, 0.065778,
		35.588326, 26.424837, 21.856989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957306, 25.956200, 22.407032>,  <34.894665, 26.342903, 21.810944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957306, 25.956200, 22.407032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.273575, 26.193651, 22.347109>,  <35.463337, 26.336123, 22.311155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.273575, 26.193651, 22.347109>,  <34.957306, 25.956200, 22.407032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273575, 26.193651, 22.347109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150059, 0.425127, 0.892608,
		0.593569, -0.683278, 0.425215,
		0.790670, 0.593632, -0.149810,
		35.510777, 26.371740, 22.302166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377720, 25.799320, 22.856377>,  <34.957306, 25.956200, 22.407032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377720, 25.799320, 22.856377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.516937, 26.161396, 22.758808>,  <35.600468, 26.378641, 22.700266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.516937, 26.161396, 22.758808>,  <35.377720, 25.799320, 22.856377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516937, 26.161396, 22.758808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008652, 0.263281, 0.964680,
		0.937439, -0.333638, 0.099464,
		0.348041, 0.905190, -0.243924,
		35.621349, 26.432953, 22.685631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869457, 26.030098, 23.262432>,  <35.377720, 25.799320, 22.856377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869457, 26.030098, 23.262432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.771702, 26.391756, 23.122265>,  <35.713047, 26.608751, 23.038164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.771702, 26.391756, 23.122265>,  <35.869457, 26.030098, 23.262432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771702, 26.391756, 23.122265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021012, 0.366228, 0.930288,
		0.969449, 0.219991, -0.108501,
		-0.244391, 0.904147, -0.350417,
		35.698383, 26.663000, 23.017139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426693, 26.459112, 23.337246>,  <35.869457, 26.030098, 23.262432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426693, 26.459112, 23.337246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.134533, 26.729372, 23.297222>,  <35.959236, 26.891527, 23.273209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.134533, 26.729372, 23.297222>,  <36.426693, 26.459112, 23.337246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134533, 26.729372, 23.297222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223024, 0.374389, 0.900052,
		0.645581, 0.635083, -0.424140,
		-0.730401, 0.675650, -0.100059,
		35.915413, 26.932068, 23.267204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737827, 27.075689, 23.391150>,  <36.426693, 26.459112, 23.337246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737827, 27.075689, 23.391150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.351307, 27.158602, 23.452204>,  <36.119396, 27.208349, 23.488836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.351307, 27.158602, 23.452204>,  <36.737827, 27.075689, 23.391150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351307, 27.158602, 23.452204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226731, 0.404583, 0.885949,
		0.121889, 0.890700, -0.437946,
		-0.966300, 0.207283, 0.152635,
		36.061417, 27.220787, 23.497993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728786, 27.629042, 23.805124>,  <36.737827, 27.075689, 23.391150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728786, 27.629042, 23.805124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.336922, 27.562998, 23.850731>,  <36.101803, 27.523371, 23.878096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.336922, 27.562998, 23.850731>,  <36.728786, 27.629042, 23.805124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336922, 27.562998, 23.850731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071359, 0.244392, 0.967047,
		-0.187536, 0.955516, -0.227639,
		-0.979662, -0.165112, 0.114017,
		36.043022, 27.513464, 23.884935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433319, 28.270700, 23.975691>,  <36.728786, 27.629042, 23.805124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433319, 28.270700, 23.975691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.238605, 27.954901, 24.125214>,  <36.121777, 27.765421, 24.214928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.238605, 27.954901, 24.125214>,  <36.433319, 28.270700, 23.975691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238605, 27.954901, 24.125214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089739, 0.380471, 0.920429,
		-0.868900, 0.481596, -0.114359,
		-0.486785, -0.789498, 0.373809,
		36.092571, 27.718052, 24.237356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058823, 28.527164, 24.463512>,  <36.433319, 28.270700, 23.975691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058823, 28.527164, 24.463512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.058411, 28.139742, 24.563032>,  <36.058163, 27.907290, 24.622744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.058411, 28.139742, 24.563032>,  <36.058823, 28.527164, 24.463512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058411, 28.139742, 24.563032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042623, 0.248530, 0.967686,
		-0.999091, 0.011605, 0.041025,
		-0.001034, -0.968554, 0.248799,
		36.058102, 27.849176, 24.637672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530872, 28.456793, 24.828352>,  <36.058823, 28.527164, 24.463512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530872, 28.456793, 24.828352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.731640, 28.136419, 24.958937>,  <35.852100, 27.944195, 25.037289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.731640, 28.136419, 24.958937>,  <35.530872, 28.456793, 24.828352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731640, 28.136419, 24.958937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059832, 0.344396, 0.936916,
		-0.862840, -0.489792, 0.124939,
		0.501923, -0.800934, 0.326464,
		35.882217, 27.896139, 25.056875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189957, 28.091484, 25.361357>,  <35.530872, 28.456793, 24.828352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189957, 28.091484, 25.361357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.563431, 27.958429, 25.414398>,  <35.787514, 27.878595, 25.446224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.563431, 27.958429, 25.414398>,  <35.189957, 28.091484, 25.361357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563431, 27.958429, 25.414398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075731, 0.178509, 0.981020,
		-0.349997, -0.926005, 0.141480,
		0.933685, -0.332640, 0.132605,
		35.843536, 27.858637, 25.454180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151539, 27.674341, 25.929451>,  <35.189957, 28.091484, 25.361357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151539, 27.674341, 25.929451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.539833, 27.769527, 25.916553>,  <35.772812, 27.826639, 25.908815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.539833, 27.769527, 25.916553>,  <35.151539, 27.674341, 25.929451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539833, 27.769527, 25.916553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028981, 0.017196, 0.999432,
		0.238383, -0.971122, 0.009796,
		0.970739, 0.237964, -0.032243,
		35.831055, 27.840918, 25.906881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414268, 27.319738, 26.422583>,  <35.151539, 27.674341, 25.929451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414268, 27.319738, 26.422583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.666214, 27.619844, 26.342207>,  <35.817383, 27.799908, 26.293982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.666214, 27.619844, 26.342207>,  <35.414268, 27.319738, 26.422583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666214, 27.619844, 26.342207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034525, 0.285495, 0.957758,
		0.775938, -0.596319, 0.205726,
		0.629864, 0.750264, -0.200939,
		35.855175, 27.844923, 26.281925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933704, 27.210312, 26.949741>,  <35.414268, 27.319738, 26.422583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933704, 27.210312, 26.949741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.001198, 27.586222, 26.830845>,  <36.041695, 27.811768, 26.759508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.001198, 27.586222, 26.830845>,  <35.933704, 27.210312, 26.949741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001198, 27.586222, 26.830845> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194851, 0.263810, 0.944689,
		0.966211, -0.217315, -0.138604,
		0.168730, 0.939776, -0.297240,
		36.051815, 27.868155, 26.741673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565559, 27.514273, 27.370962>,  <35.933704, 27.210312, 26.949741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565559, 27.514273, 27.370962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.370651, 27.831751, 27.225296>,  <36.253708, 28.022238, 27.137896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.370651, 27.831751, 27.225296>,  <36.565559, 27.514273, 27.370962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370651, 27.831751, 27.225296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008545, 0.412669, 0.910841,
		0.873209, 0.446939, -0.194300,
		-0.487271, 0.793694, -0.364165,
		36.224468, 28.069859, 27.116047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.364632, 31.564148, 29.903723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.991238, 31.695160, 29.845303>,  <39.767200, 31.773767, 29.810251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.991238, 31.695160, 29.845303>,  <40.364632, 31.564148, 29.903723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991238, 31.695160, 29.845303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129849, 0.688321, 0.713690,
		0.334283, 0.647255, -0.685066,
		-0.933485, 0.327529, -0.146049,
		39.711193, 31.793419, 29.801489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424267, 32.294258, 29.832546>,  <40.364632, 31.564148, 29.903723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424267, 32.294258, 29.832546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.063168, 32.184727, 29.965254>,  <39.846508, 32.119007, 30.044878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.063168, 32.184727, 29.965254>,  <40.424267, 32.294258, 29.832546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063168, 32.184727, 29.965254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105344, 0.607037, 0.787660,
		-0.417081, 0.746005, -0.519153,
		-0.902744, -0.273828, 0.331771,
		39.792343, 32.102577, 30.064785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282928, 32.906380, 30.326885>,  <40.424267, 32.294258, 29.832546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282928, 32.906380, 30.326885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.002228, 32.628548, 30.390257>,  <39.833809, 32.461849, 30.428280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.002228, 32.628548, 30.390257>,  <40.282928, 32.906380, 30.326885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002228, 32.628548, 30.390257> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230878, 0.432102, 0.871770,
		-0.673975, 0.575187, -0.463592,
		-0.701750, -0.694585, 0.158429,
		39.791702, 32.420174, 30.437786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689682, 33.294884, 30.580711>,  <40.282928, 32.906380, 30.326885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689682, 33.294884, 30.580711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.665329, 32.914623, 30.702402>,  <39.650715, 32.686466, 30.775417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.665329, 32.914623, 30.702402>,  <39.689682, 33.294884, 30.580711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665329, 32.914623, 30.702402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077335, 0.308371, 0.948117,
		-0.995144, 0.034199, -0.092294,
		-0.060885, -0.950651, 0.304229,
		39.647064, 32.629429, 30.793671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125278, 33.344212, 31.039286>,  <39.689682, 33.294884, 30.580711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125278, 33.344212, 31.039286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.323284, 33.006641, 31.121986>,  <39.442089, 32.804100, 31.171606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.323284, 33.006641, 31.121986>,  <39.125278, 33.344212, 31.039286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323284, 33.006641, 31.121986> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088747, 0.187598, 0.978229,
		-0.864342, -0.502584, 0.017968,
		0.495013, -0.843929, 0.206752,
		39.471786, 32.753464, 31.184011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759308, 33.098808, 31.586174>,  <39.125278, 33.344212, 31.039286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759308, 33.098808, 31.586174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.110336, 32.907261, 31.595669>,  <39.320953, 32.792332, 31.601366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.110336, 32.907261, 31.595669>,  <38.759308, 33.098808, 31.586174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110336, 32.907261, 31.595669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103567, 0.237669, 0.965809,
		-0.468135, -0.845104, 0.258165,
		0.877567, -0.478867, 0.023737,
		39.373608, 32.763599, 31.602791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653824, 32.760803, 32.216030>,  <38.759308, 33.098808, 31.586174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653824, 32.760803, 32.216030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.046188, 32.757542, 32.138313>,  <39.281609, 32.755585, 32.091682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.046188, 32.757542, 32.138313>,  <38.653824, 32.760803, 32.216030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046188, 32.757542, 32.138313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194400, 0.066477, 0.978667,
		0.004936, -0.997755, 0.066793,
		0.980910, -0.008154, -0.194292,
		39.340462, 32.755096, 32.080025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024578, 32.219028, 32.663952>,  <38.653824, 32.760803, 32.216030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024578, 32.219028, 32.663952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.294399, 32.491615, 32.550404>,  <39.456291, 32.655167, 32.482273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.294399, 32.491615, 32.550404>,  <39.024578, 32.219028, 32.663952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294399, 32.491615, 32.550404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224401, 0.177054, 0.958278,
		0.703298, -0.710105, -0.033491,
		0.674549, 0.681471, -0.283870,
		39.496765, 32.696056, 32.465244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670708, 32.243206, 33.224289>,  <39.024578, 32.219028, 32.663952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670708, 32.243206, 33.224289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.703495, 32.592060, 33.031349>,  <39.723167, 32.801373, 32.915585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.703495, 32.592060, 33.031349>,  <39.670708, 32.243206, 33.224289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703495, 32.592060, 33.031349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009934, 0.483240, 0.875432,
		0.996586, -0.076548, 0.030946,
		0.081967, 0.872136, -0.482350,
		39.728085, 32.853703, 32.886642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175133, 32.567024, 33.656025>,  <39.670708, 32.243206, 33.224289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175133, 32.567024, 33.656025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.015118, 32.855167, 33.429379>,  <39.919109, 33.028053, 33.293388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.015118, 32.855167, 33.429379>,  <40.175133, 32.567024, 33.656025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015118, 32.855167, 33.429379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126210, 0.655652, 0.744441,
		0.907769, 0.226288, -0.353199,
		-0.400033, 0.720357, -0.566620,
		39.895107, 33.071274, 33.259392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581055, 33.258358, 33.799984>,  <40.175133, 32.567024, 33.656025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581055, 33.258358, 33.799984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.226051, 33.367046, 33.651123>,  <40.013050, 33.432259, 33.561806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.226051, 33.367046, 33.651123>,  <40.581055, 33.258358, 33.799984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226051, 33.367046, 33.651123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004251, 0.812425, 0.583050,
		0.460771, 0.515880, -0.722190,
		-0.887509, 0.271722, -0.372149,
		39.959797, 33.448563, 33.539478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564816, 33.917896, 33.682770>,  <40.581055, 33.258358, 33.799984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564816, 33.917896, 33.682770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.168465, 33.866482, 33.698948>,  <39.930653, 33.835632, 33.708656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.168465, 33.866482, 33.698948>,  <40.564816, 33.917896, 33.682770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168465, 33.866482, 33.698948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089733, 0.853331, 0.513589,
		-0.100531, 0.505275, -0.857082,
		-0.990879, -0.128540, 0.040446,
		39.871201, 33.827919, 33.711082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335548, 34.448906, 33.343407>,  <40.564816, 33.917896, 33.682770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335548, 34.448906, 33.343407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.084545, 34.305538, 33.619892>,  <39.933945, 34.219517, 33.785782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.084545, 34.305538, 33.619892>,  <40.335548, 34.448906, 33.343407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084545, 34.305538, 33.619892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049217, 0.904233, 0.424193,
		-0.777053, 0.232165, -0.585054,
		-0.627508, -0.358415, 0.691211,
		39.896294, 34.198013, 33.827255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726742, 34.969887, 33.337311>,  <40.335548, 34.448906, 33.343407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726742, 34.969887, 33.337311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.846111, 34.766800, 33.660587>,  <39.917732, 34.644947, 33.854553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.846111, 34.766800, 33.660587>,  <39.726742, 34.969887, 33.337311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846111, 34.766800, 33.660587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173910, 0.861524, 0.477004,
		-0.938455, -0.001798, 0.345396,
		0.298424, -0.507714, 0.808189,
		39.935638, 34.614487, 33.903046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433220, 35.518898, 33.633221>,  <39.726742, 34.969887, 33.337311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433220, 35.518898, 33.633221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.426224, 35.851074, 33.410488>,  <39.422028, 36.050381, 33.276848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.426224, 35.851074, 33.410488>,  <39.433220, 35.518898, 33.633221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.426224, 35.851074, 33.410488> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560188, -0.469435, -0.682510,
		-0.828181, 0.299994, 0.473413,
		-0.017487, 0.830442, -0.556830,
		39.420979, 36.100208, 33.243439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842682, 35.515209, 33.217644>,  <39.433220, 35.518898, 33.633221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842682, 35.515209, 33.217644> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.058632, 35.784901, 33.016071>,  <39.188202, 35.946716, 32.895126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.058632, 35.784901, 33.016071>,  <38.842682, 35.515209, 33.217644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058632, 35.784901, 33.016071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441181, -0.283208, -0.851559,
		-0.716865, 0.682061, 0.144560,
		0.539875, 0.674230, -0.503934,
		39.220592, 35.987171, 32.864891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356422, 35.958336, 32.850296>,  <38.842682, 35.515209, 33.217644>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356422, 35.958336, 32.850296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.695972, 35.947937, 32.639111>,  <38.899700, 35.941696, 32.512402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.695972, 35.947937, 32.639111>,  <38.356422, 35.958336, 32.850296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695972, 35.947937, 32.639111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515219, -0.263999, -0.815386,
		-0.118183, 0.964173, -0.237495,
		0.848871, -0.025997, -0.527960,
		38.950634, 35.940136, 32.480724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040977, 36.084393, 32.312954>,  <38.356422, 35.958336, 32.850296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040977, 36.084393, 32.312954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.414444, 36.005634, 32.193283>,  <38.638523, 35.958378, 32.121483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.414444, 36.005634, 32.193283>,  <38.040977, 36.084393, 32.312954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414444, 36.005634, 32.193283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348668, -0.308730, -0.884939,
		0.081878, 0.930547, -0.356901,
		0.933663, -0.196897, -0.299174,
		38.694542, 35.946564, 32.103531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143269, 36.535160, 31.703741>,  <38.040977, 36.084393, 32.312954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143269, 36.535160, 31.703741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.368118, 36.204990, 31.682993>,  <38.503029, 36.006889, 31.670544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.368118, 36.204990, 31.682993>,  <38.143269, 36.535160, 31.703741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368118, 36.204990, 31.682993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232769, -0.097714, -0.967611,
		0.793622, 0.555990, -0.247061,
		0.562123, -0.825425, -0.051870,
		38.536755, 35.957363, 31.667433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617840, 36.542366, 31.077742>,  <38.143269, 36.535160, 31.703741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617840, 36.542366, 31.077742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.614685, 36.152824, 31.168554>,  <38.612793, 35.919098, 31.223042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.614685, 36.152824, 31.168554>,  <38.617840, 36.542366, 31.077742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614685, 36.152824, 31.168554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029310, -0.226718, -0.973520,
		0.999539, -0.014329, -0.026756,
		-0.007883, -0.973855, 0.227033,
		38.612320, 35.860668, 31.236664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046749, 36.313271, 30.640770>,  <38.617840, 36.542366, 31.077742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046749, 36.313271, 30.640770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.908962, 35.951965, 30.743103>,  <38.826290, 35.735180, 30.804502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.908962, 35.951965, 30.743103>,  <39.046749, 36.313271, 30.640770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908962, 35.951965, 30.743103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212202, -0.340373, -0.916033,
		0.914500, -0.261258, 0.308923,
		-0.344470, -0.903266, 0.255832,
		38.805622, 35.680984, 30.819853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594646, 35.862228, 30.416328>,  <39.046749, 36.313271, 30.640770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594646, 35.862228, 30.416328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.243092, 35.676407, 30.459688>,  <39.032158, 35.564915, 30.485704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.243092, 35.676407, 30.459688>,  <39.594646, 35.862228, 30.416328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243092, 35.676407, 30.459688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159006, -0.499526, -0.851581,
		0.449754, -0.731206, 0.512893,
		-0.878885, -0.464555, 0.108398,
		38.979427, 35.537041, 30.492207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715256, 35.139599, 30.271572>,  <39.594646, 35.862228, 30.416328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715256, 35.139599, 30.271572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.319599, 35.186253, 30.235807>,  <39.082207, 35.214245, 30.214348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.319599, 35.186253, 30.235807>,  <39.715256, 35.139599, 30.271572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319599, 35.186253, 30.235807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015686, -0.521146, -0.853323,
		-0.146120, -0.845461, 0.513659,
		-0.989143, 0.116631, -0.089412,
		39.022858, 35.221241, 30.208984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453346, 34.519444, 30.133739>,  <39.715256, 35.139599, 30.271572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453346, 34.519444, 30.133739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.173901, 34.775337, 30.005560>,  <39.006233, 34.928871, 29.928652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.173901, 34.775337, 30.005560>,  <39.453346, 34.519444, 30.133739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173901, 34.775337, 30.005560> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036782, -0.479383, -0.876834,
		-0.714556, -0.600779, 0.358433,
		-0.698610, 0.639732, -0.320449,
		38.964317, 34.967258, 29.909426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827744, 34.126186, 29.828108>,  <39.453346, 34.519444, 30.133739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827744, 34.126186, 29.828108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.829025, 34.494408, 29.671862>,  <38.829796, 34.715340, 29.578114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.829025, 34.494408, 29.671862>,  <38.827744, 34.126186, 29.828108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829025, 34.494408, 29.671862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002739, -0.390622, -0.920547,
		-0.999991, 0.001880, -0.003773,
		0.003204, 0.920549, -0.390614,
		38.829987, 34.770573, 29.554678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354443, 34.069420, 29.258186>,  <38.827744, 34.126186, 29.828108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354443, 34.069420, 29.258186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.560905, 34.403839, 29.183771>,  <38.684784, 34.604488, 29.139122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.560905, 34.403839, 29.183771>,  <38.354443, 34.069420, 29.258186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560905, 34.403839, 29.183771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041379, -0.192613, -0.980402,
		-0.855493, 0.513741, -0.064824,
		0.516158, 0.836045, -0.186038,
		38.715752, 34.654652, 29.127960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027145, 34.509521, 28.665228>,  <38.354443, 34.069420, 29.258186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027145, 34.509521, 28.665228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.413239, 34.614063, 28.663542>,  <38.644894, 34.676788, 28.662531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.413239, 34.614063, 28.663542>,  <38.027145, 34.509521, 28.665228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413239, 34.614063, 28.663542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075778, -0.295216, -0.952421,
		-0.250168, 0.918988, -0.304757,
		0.965232, 0.261359, -0.004215,
		38.702808, 34.692471, 28.662277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105537, 34.916340, 28.123198>,  <38.027145, 34.509521, 28.665228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105537, 34.916340, 28.123198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.471443, 34.786331, 28.219173>,  <38.690987, 34.708328, 28.276758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.471443, 34.786331, 28.219173>,  <38.105537, 34.916340, 28.123198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471443, 34.786331, 28.219173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091206, -0.412437, -0.906409,
		0.393561, 0.851033, -0.347639,
		0.914763, -0.325020, 0.239938,
		38.745872, 34.688824, 28.291155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341503, 35.554466, 28.089022>,  <38.105537, 34.916340, 28.123198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341503, 35.554466, 28.089022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.058346, 35.755119, 27.890125>,  <37.888451, 35.875511, 27.770786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.058346, 35.755119, 27.890125>,  <38.341503, 35.554466, 28.089022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058346, 35.755119, 27.890125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393152, 0.305010, 0.867410,
		0.586783, 0.809528, -0.018699,
		-0.707896, 0.501630, -0.497242,
		37.845978, 35.905609, 27.740953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169525, 36.219372, 28.434292>,  <38.341503, 35.554466, 28.089022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169525, 36.219372, 28.434292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.842529, 36.157532, 28.212372>,  <37.646332, 36.120430, 28.079220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.842529, 36.157532, 28.212372>,  <38.169525, 36.219372, 28.434292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842529, 36.157532, 28.212372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549941, 0.495681, 0.672209,
		0.171082, 0.854634, -0.490236,
		-0.817494, -0.154598, -0.554800,
		37.597282, 36.111153, 28.045931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785477, 36.858253, 28.546120>,  <38.169525, 36.219372, 28.434292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785477, 36.858253, 28.546120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.551632, 36.567238, 28.402504>,  <37.411324, 36.392628, 28.316334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.551632, 36.567238, 28.402504>,  <37.785477, 36.858253, 28.546120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551632, 36.567238, 28.402504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768528, 0.354794, 0.532435,
		-0.259984, 0.587200, -0.766553,
		-0.584614, -0.727542, -0.359039,
		37.376247, 36.348976, 28.294792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180122, 37.233719, 28.466948>,  <37.785477, 36.858253, 28.546120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180122, 37.233719, 28.466948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.100403, 36.844761, 28.515497>,  <37.052570, 36.611385, 28.544626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.100403, 36.844761, 28.515497>,  <37.180122, 37.233719, 28.466948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100403, 36.844761, 28.515497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627655, 0.221786, 0.746230,
		-0.752548, 0.072544, -0.654529,
		-0.199300, -0.972393, 0.121372,
		37.040611, 36.553043, 28.551908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500771, 37.104450, 28.263441>,  <37.180122, 37.233719, 28.466948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500771, 37.104450, 28.263441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.603523, 36.820980, 28.526285>,  <36.665176, 36.650898, 28.683992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.603523, 36.820980, 28.526285>,  <36.500771, 37.104450, 28.263441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603523, 36.820980, 28.526285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781000, 0.248267, 0.573063,
		-0.569253, -0.660415, -0.489697,
		0.256884, -0.708672, 0.657111,
		36.680588, 36.608379, 28.723419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791271, 36.894909, 28.334576>,  <36.500771, 37.104450, 28.263441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791271, 36.894909, 28.334576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.014027, 36.712975, 28.612568>,  <36.147678, 36.603813, 28.779364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.014027, 36.712975, 28.612568>,  <35.791271, 36.894909, 28.334576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014027, 36.712975, 28.612568> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767787, 0.037269, 0.639620,
		-0.316825, -0.889794, -0.328465,
		0.556888, -0.454839, 0.694980,
		36.181091, 36.576523, 28.821062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400887, 36.342232, 28.635979>,  <35.791271, 36.894909, 28.334576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400887, 36.342232, 28.635979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.672779, 36.422726, 28.918104>,  <35.835915, 36.471024, 29.087379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.672779, 36.422726, 28.918104>,  <35.400887, 36.342232, 28.635979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672779, 36.422726, 28.918104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711494, -0.052663, 0.700716,
		0.178153, -0.978126, 0.107381,
		0.679734, 0.201236, 0.705313,
		35.876698, 36.483097, 29.129698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322601, 35.830158, 29.066446>,  <35.400887, 36.342232, 28.635979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322601, 35.830158, 29.066446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.516468, 36.097679, 29.291946>,  <35.632786, 36.258190, 29.427246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.516468, 36.097679, 29.291946>,  <35.322601, 35.830158, 29.066446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516468, 36.097679, 29.291946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620327, -0.191582, 0.760586,
		0.616682, -0.718336, 0.322021,
		0.484663, 0.668798, 0.563748,
		35.661865, 36.298317, 29.461071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589111, 35.426426, 29.630899>,  <35.322601, 35.830158, 29.066446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589111, 35.426426, 29.630899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.558132, 35.808178, 29.746252>,  <35.539543, 36.037228, 29.815464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.558132, 35.808178, 29.746252>,  <35.589111, 35.426426, 29.630899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558132, 35.808178, 29.746252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553822, -0.281702, 0.783534,
		0.829025, -0.099028, 0.550373,
		-0.077449, 0.954378, 0.288382,
		35.534897, 36.094490, 29.832767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835411, 35.476681, 30.348621>,  <35.589111, 35.426426, 29.630899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835411, 35.476681, 30.348621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.599525, 35.795387, 30.295868>,  <35.457993, 35.986610, 30.264215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.599525, 35.795387, 30.295868>,  <35.835411, 35.476681, 30.348621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599525, 35.795387, 30.295868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390926, -0.138724, 0.909908,
		0.706692, 0.588144, 0.393286,
		-0.589715, 0.796770, -0.131886,
		35.422611, 36.034420, 30.256302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805553, 35.932758, 31.026382>,  <35.835411, 35.476681, 30.348621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805553, 35.932758, 31.026382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.475266, 36.026680, 30.821232>,  <35.277092, 36.083035, 30.698141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.475266, 36.026680, 30.821232>,  <35.805553, 35.932758, 31.026382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475266, 36.026680, 30.821232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551613, -0.146074, 0.821210,
		0.117908, 0.961003, 0.250139,
		-0.825724, 0.234807, -0.512879,
		35.227547, 36.097122, 30.667368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412502, 36.454712, 31.360840>,  <35.805553, 35.932758, 31.026382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412502, 36.454712, 31.360840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.137672, 36.268158, 31.137980>,  <34.972775, 36.156227, 31.004263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.137672, 36.268158, 31.137980>,  <35.412502, 36.454712, 31.360840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137672, 36.268158, 31.137980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662365, 0.086846, 0.744130,
		-0.298662, 0.880310, -0.368585,
		-0.687076, -0.466381, -0.557149,
		34.931549, 36.128242, 30.970835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.019539, 35.010918, 23.717361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653374, 34.994469, 23.877527>,  <37.433674, 34.984600, 23.973627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653374, 34.994469, 23.877527>,  <38.019539, 35.010918, 23.717361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653374, 34.994469, 23.877527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290351, 0.621504, 0.727619,
		-0.278780, 0.782331, -0.556992,
		-0.915411, -0.041123, 0.400413,
		37.378750, 34.982132, 23.997652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894753, 35.670517, 23.929005>,  <38.019539, 35.010918, 23.717361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894753, 35.670517, 23.929005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654964, 35.445065, 24.156324>,  <37.511093, 35.309795, 24.292717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654964, 35.445065, 24.156324>,  <37.894753, 35.670517, 23.929005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654964, 35.445065, 24.156324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196489, 0.584663, 0.787122,
		-0.775907, 0.583518, -0.239739,
		-0.599467, -0.563627, 0.568300,
		37.475124, 35.275978, 24.326815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514217, 36.112255, 24.316238>,  <37.894753, 35.670517, 23.929005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514217, 36.112255, 24.316238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482815, 35.776093, 24.530733>,  <37.463974, 35.574394, 24.659430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482815, 35.776093, 24.530733>,  <37.514217, 36.112255, 24.316238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482815, 35.776093, 24.530733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163741, 0.519724, 0.838496,
		-0.983374, 0.153633, 0.096806,
		-0.078508, -0.840407, 0.536239,
		37.459263, 35.523972, 24.691605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214035, 36.268665, 24.952126>,  <37.514217, 36.112255, 24.316238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214035, 36.268665, 24.952126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358505, 35.913403, 25.065777>,  <37.445187, 35.700245, 25.133968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358505, 35.913403, 25.065777>,  <37.214035, 36.268665, 24.952126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.358505, 35.913403, 25.065777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102544, 0.340677, 0.934572,
		-0.926842, -0.308411, 0.214120,
		0.361178, -0.888157, 0.284128,
		37.466858, 35.646957, 25.151014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899151, 36.086433, 25.566498>,  <37.214035, 36.268665, 24.952126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899151, 36.086433, 25.566498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219437, 35.846851, 25.562302>,  <37.411610, 35.703102, 25.559784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219437, 35.846851, 25.562302>,  <36.899151, 36.086433, 25.566498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219437, 35.846851, 25.562302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096902, 0.112223, 0.988947,
		-0.591153, -0.792884, 0.147898,
		0.800717, -0.598951, -0.010491,
		37.459652, 35.667168, 25.559155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767220, 35.524128, 26.059919>,  <36.899151, 36.086433, 25.566498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767220, 35.524128, 26.059919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162270, 35.567883, 26.014956>,  <37.399300, 35.594135, 25.987978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162270, 35.567883, 26.014956>,  <36.767220, 35.524128, 26.059919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162270, 35.567883, 26.014956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098019, 0.129071, 0.986779,
		0.122417, -0.985587, 0.116755,
		0.987627, 0.109354, -0.112406,
		37.458557, 35.600697, 25.981232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020889, 35.054119, 26.417067>,  <36.767220, 35.524128, 26.059919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020889, 35.054119, 26.417067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316494, 35.322571, 26.393549>,  <37.493855, 35.483643, 26.379438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316494, 35.322571, 26.393549>,  <37.020889, 35.054119, 26.417067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316494, 35.322571, 26.393549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141708, -0.069536, 0.987463,
		0.658623, -0.738076, -0.146492,
		0.739009, 0.671125, -0.058793,
		37.538197, 35.523907, 26.375912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448463, 34.892738, 26.871126>,  <37.020889, 35.054119, 26.417067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448463, 34.892738, 26.871126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572002, 35.271366, 26.833981>,  <37.646126, 35.498543, 26.811693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572002, 35.271366, 26.833981>,  <37.448463, 34.892738, 26.871126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572002, 35.271366, 26.833981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018760, 0.103679, 0.994434,
		0.950928, -0.305382, 0.049778,
		0.308843, 0.946569, -0.092862,
		37.664654, 35.555336, 26.806122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963341, 34.902603, 27.369722>,  <37.448463, 34.892738, 26.871126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963341, 34.902603, 27.369722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812584, 35.260910, 27.275440>,  <37.722130, 35.475895, 27.218872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812584, 35.260910, 27.275440>,  <37.963341, 34.902603, 27.369722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812584, 35.260910, 27.275440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315649, 0.115028, 0.941878,
		0.870814, 0.429388, 0.239394,
		-0.376894, 0.895765, -0.235703,
		37.699516, 35.529640, 27.204729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734161, 35.255325, 27.490559>,  <37.963341, 34.902603, 27.369722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734161, 35.255325, 27.490559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890079, 34.950504, 27.697374>,  <38.983631, 34.767612, 27.821465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890079, 34.950504, 27.697374>,  <38.734161, 35.255325, 27.490559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890079, 34.950504, 27.697374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301865, -0.424696, -0.853528,
		0.870020, 0.488780, 0.064491,
		0.389799, -0.762054, 0.517040,
		39.007019, 34.721889, 27.852486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334301, 35.151421, 27.251446>,  <38.734161, 35.255325, 27.490559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334301, 35.151421, 27.251446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244633, 34.793423, 27.405706>,  <39.190830, 34.578625, 27.498262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244633, 34.793423, 27.405706>,  <39.334301, 35.151421, 27.251446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244633, 34.793423, 27.405706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304332, -0.440222, -0.844741,
		0.925813, -0.072002, 0.371062,
		-0.224173, -0.894997, 0.385651,
		39.177380, 34.524925, 27.521402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.872299, 34.609890, 26.918795>,  <39.334301, 35.151421, 27.251446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.872299, 34.609890, 26.918795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589905, 34.379993, 27.084330>,  <39.420467, 34.242054, 27.183651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589905, 34.379993, 27.084330>,  <39.872299, 34.609890, 26.918795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589905, 34.379993, 27.084330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025548, -0.604614, -0.796109,
		0.707769, -0.551465, 0.441530,
		-0.705981, -0.574742, 0.413838,
		39.378109, 34.207569, 27.208481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152588, 33.962990, 26.752655>,  <39.872299, 34.609890, 26.918795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152588, 33.962990, 26.752655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780346, 33.880547, 26.873646>,  <39.556999, 33.831081, 26.946239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780346, 33.880547, 26.873646>,  <40.152588, 33.962990, 26.752655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780346, 33.880547, 26.873646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003011, -0.830673, -0.556753,
		0.366010, -0.517207, 0.773650,
		-0.930606, -0.206107, 0.302477,
		39.501163, 33.818714, 26.964390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091198, 33.233822, 27.117466>,  <40.152588, 33.962990, 26.752655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091198, 33.233822, 27.117466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743542, 33.341679, 26.951628>,  <39.534946, 33.406391, 26.852125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743542, 33.341679, 26.951628>,  <40.091198, 33.233822, 27.117466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743542, 33.341679, 26.951628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085262, -0.744058, -0.662652,
		-0.487158, -0.611288, 0.623703,
		-0.869142, 0.269638, -0.414593,
		39.482800, 33.422569, 26.827250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823959, 32.635818, 26.971252>,  <40.091198, 33.233822, 27.117466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823959, 32.635818, 26.971252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622066, 32.898006, 26.746536>,  <39.500931, 33.055321, 26.611708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622066, 32.898006, 26.746536>,  <39.823959, 32.635818, 26.971252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622066, 32.898006, 26.746536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068752, -0.679218, -0.730710,
		-0.860535, -0.330187, 0.387887,
		-0.504730, 0.655469, -0.561789,
		39.470646, 33.094646, 26.577999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228176, 32.343746, 26.858244>,  <39.823959, 32.635818, 26.971252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228176, 32.343746, 26.858244> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279003, 32.603413, 26.558260>,  <39.309498, 32.759212, 26.378269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279003, 32.603413, 26.558260>,  <39.228176, 32.343746, 26.858244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279003, 32.603413, 26.558260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038847, -0.752251, -0.657731,
		-0.991133, 0.112709, -0.070368,
		0.127067, 0.649166, -0.749959,
		39.317123, 32.798161, 26.333273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930305, 31.973843, 26.322470>,  <39.228176, 32.343746, 26.858244>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930305, 31.973843, 26.322470> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107212, 32.268528, 26.117859>,  <39.213356, 32.445339, 25.995092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107212, 32.268528, 26.117859>,  <38.930305, 31.973843, 26.322470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107212, 32.268528, 26.117859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139865, -0.620010, -0.772027,
		-0.885912, 0.269895, -0.377249,
		0.442265, 0.736712, -0.511525,
		39.239891, 32.489540, 25.964401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557968, 32.073879, 25.614870>,  <38.930305, 31.973843, 26.322470>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557968, 32.073879, 25.614870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931889, 32.211040, 25.577845>,  <39.156239, 32.293339, 25.555630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931889, 32.211040, 25.577845>,  <38.557968, 32.073879, 25.614870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931889, 32.211040, 25.577845> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097651, -0.498699, -0.861257,
		-0.341489, 0.796064, -0.499668,
		0.934799, 0.342903, -0.092564,
		39.212330, 32.313911, 25.550076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625713, 32.250107, 24.856052>,  <38.557968, 32.073879, 25.614870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625713, 32.250107, 24.856052> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998905, 32.231083, 24.998760>,  <39.222820, 32.219669, 25.084385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998905, 32.231083, 24.998760>,  <38.625713, 32.250107, 24.856052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998905, 32.231083, 24.998760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288500, -0.493869, -0.820281,
		0.215208, 0.868235, -0.447050,
		0.932981, -0.047557, 0.356770,
		39.278801, 32.216816, 25.105791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038799, 32.455994, 24.305162>,  <38.625713, 32.250107, 24.856052>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038799, 32.455994, 24.305162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263042, 32.248852, 24.563633>,  <39.397587, 32.124565, 24.718716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263042, 32.248852, 24.563633>,  <39.038799, 32.455994, 24.305162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263042, 32.248852, 24.563633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157731, -0.699266, -0.697244,
		0.812920, 0.492803, -0.310332,
		0.560608, -0.517854, 0.646178,
		39.431225, 32.093494, 24.757486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552773, 32.210014, 23.915012>,  <39.038799, 32.455994, 24.305162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552773, 32.210014, 23.915012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555275, 31.972902, 24.237150>,  <39.556774, 31.830637, 24.430433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555275, 31.972902, 24.237150>,  <39.552773, 32.210014, 23.915012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555275, 31.972902, 24.237150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011650, -0.805348, -0.592688,
		0.999913, -0.005677, -0.011941,
		0.006252, -0.592775, 0.805344,
		39.557152, 31.795069, 24.478754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124863, 31.739784, 23.831705>,  <39.552773, 32.210014, 23.915012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124863, 31.739784, 23.831705> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903030, 31.556271, 24.109396>,  <39.769932, 31.446161, 24.276011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903030, 31.556271, 24.109396>,  <40.124863, 31.739784, 23.831705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903030, 31.556271, 24.109396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162829, -0.758321, -0.631218,
		0.816041, -0.463104, 0.345850,
		-0.554585, -0.458785, 0.694227,
		39.736656, 31.418634, 24.317665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422810, 31.117495, 23.934013>,  <40.124863, 31.739784, 23.831705>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422810, 31.117495, 23.934013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065994, 31.053589, 24.103125>,  <39.851906, 31.015245, 24.204592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065994, 31.053589, 24.103125>,  <40.422810, 31.117495, 23.934013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065994, 31.053589, 24.103125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153307, -0.773016, -0.615584,
		0.425160, -0.613940, 0.665069,
		-0.892040, -0.159762, 0.422776,
		39.798382, 31.005661, 24.229958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.418980, 29.749596, 25.281425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.796635, 29.862392, 25.213203>,  <34.023228, 29.930071, 25.172270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.796635, 29.862392, 25.213203>,  <33.418980, 29.749596, 25.281425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796635, 29.862392, 25.213203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129497, 0.158450, 0.978838,
		0.303048, -0.946243, 0.113081,
		0.944136, 0.281991, -0.170554,
		34.079876, 29.946989, 25.162037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802601, 29.441332, 25.752081>,  <33.418980, 29.749596, 25.281425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802601, 29.441332, 25.752081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.020138, 29.750250, 25.620749>,  <34.150661, 29.935600, 25.541950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.020138, 29.750250, 25.620749>,  <33.802601, 29.441332, 25.752081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.020138, 29.750250, 25.620749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173592, 0.279254, 0.944396,
		0.821037, -0.570597, 0.017806,
		0.543841, 0.772293, -0.328329,
		34.183289, 29.981937, 25.522249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245895, 29.564684, 26.166225>,  <33.802601, 29.441332, 25.752081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245895, 29.564684, 26.166225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.280079, 29.923485, 25.992752>,  <34.300591, 30.138765, 25.888668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.280079, 29.923485, 25.992752>,  <34.245895, 29.564684, 26.166225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.280079, 29.923485, 25.992752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149489, 0.418805, 0.895687,
		0.985063, -0.141374, -0.098303,
		0.085457, 0.897004, -0.433684,
		34.305717, 30.192585, 25.862646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966763, 29.817490, 26.304745>,  <34.245895, 29.564684, 26.166225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966763, 29.817490, 26.304745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.723522, 30.124901, 26.225172>,  <34.577576, 30.309347, 26.177429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.723522, 30.124901, 26.225172>,  <34.966763, 29.817490, 26.304745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723522, 30.124901, 26.225172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159822, 0.363977, 0.917593,
		0.777602, 0.526199, -0.344164,
		-0.608105, 0.768528, -0.198931,
		34.541092, 30.355459, 26.165493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305958, 30.463236, 26.627773>,  <34.966763, 29.817490, 26.304745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305958, 30.463236, 26.627773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.926769, 30.572609, 26.562553>,  <34.699257, 30.638233, 26.523422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.926769, 30.572609, 26.562553>,  <35.305958, 30.463236, 26.627773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926769, 30.572609, 26.562553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030343, 0.432221, 0.901257,
		0.316907, 0.859313, -0.401436,
		-0.947971, 0.273434, -0.163048,
		34.642380, 30.654638, 26.513639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356220, 31.122019, 26.608559>,  <35.305958, 30.463236, 26.627773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356220, 31.122019, 26.608559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.975792, 31.030317, 26.691423>,  <34.747536, 30.975296, 26.741142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.975792, 31.030317, 26.691423>,  <35.356220, 31.122019, 26.608559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975792, 31.030317, 26.691423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012873, 0.699270, 0.714742,
		-0.308717, 0.677101, -0.668003,
		-0.951067, -0.229253, 0.207160,
		34.690472, 30.961542, 26.753571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945560, 31.763830, 26.715826>,  <35.356220, 31.122019, 26.608559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945560, 31.763830, 26.715826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.716991, 31.492285, 26.900267>,  <34.579849, 31.329357, 27.010931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.716991, 31.492285, 26.900267>,  <34.945560, 31.763830, 26.715826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716991, 31.492285, 26.900267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040275, 0.584392, 0.810471,
		-0.819665, 0.444554, -0.361278,
		-0.571426, -0.678865, 0.461101,
		34.545563, 31.288626, 27.038597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428825, 32.176422, 27.033316>,  <34.945560, 31.763830, 26.715826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428825, 32.176422, 27.033316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.445328, 31.825294, 27.224199>,  <34.455231, 31.614618, 27.338730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.445328, 31.825294, 27.224199>,  <34.428825, 32.176422, 27.033316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445328, 31.825294, 27.224199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065410, 0.478963, 0.875395,
		-0.997005, -0.004900, 0.077178,
		0.041254, -0.877821, 0.477208,
		34.457703, 31.561949, 27.367361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129986, 32.333778, 27.643301>,  <34.428825, 32.176422, 27.033316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129986, 32.333778, 27.643301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.261990, 31.973236, 27.755484>,  <34.341190, 31.756910, 27.822792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.261990, 31.973236, 27.755484>,  <34.129986, 32.333778, 27.643301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261990, 31.973236, 27.755484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008571, 0.299948, 0.953917,
		-0.943940, -0.312394, 0.106710,
		0.330005, -0.901356, 0.280456,
		34.360992, 31.702829, 27.839621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665424, 32.038757, 28.153574>,  <34.129986, 32.333778, 27.643301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665424, 32.038757, 28.153574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.021309, 31.866608, 28.214495>,  <34.234840, 31.763319, 28.251047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.021309, 31.866608, 28.214495>,  <33.665424, 32.038757, 28.153574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021309, 31.866608, 28.214495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098397, 0.144988, 0.984529,
		-0.445795, -0.890932, 0.086651,
		0.889711, -0.430371, 0.152300,
		34.288223, 31.737495, 28.260185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577423, 31.524868, 28.707703>,  <33.665424, 32.038757, 28.153574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577423, 31.524868, 28.707703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.975445, 31.561609, 28.692530>,  <34.214256, 31.583654, 28.683426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.975445, 31.561609, 28.692530>,  <33.577423, 31.524868, 28.707703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975445, 31.561609, 28.692530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043950, -0.064400, 0.996956,
		0.089132, -0.993688, -0.068118,
		0.995050, 0.091854, -0.037933,
		34.273960, 31.589165, 28.681150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912766, 31.044283, 29.188036>,  <33.577423, 31.524868, 28.707703>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912766, 31.044283, 29.188036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.196426, 31.321501, 29.136196>,  <34.366623, 31.487831, 29.105093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.196426, 31.321501, 29.136196>,  <33.912766, 31.044283, 29.188036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196426, 31.321501, 29.136196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108274, 0.074587, 0.991319,
		0.696695, -0.717026, -0.022146,
		0.709149, 0.693045, -0.129600,
		34.409172, 31.529413, 29.097317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514965, 30.882746, 29.660072>,  <33.912766, 31.044283, 29.188036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514965, 30.882746, 29.660072> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.543701, 31.271503, 29.570395>,  <34.560944, 31.504757, 29.516588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.543701, 31.271503, 29.570395>,  <34.514965, 30.882746, 29.660072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543701, 31.271503, 29.570395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039939, 0.221793, 0.974275,
		0.996617, -0.078942, -0.022883,
		0.071836, 0.971893, -0.224196,
		34.565250, 31.563072, 29.503136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032608, 31.117517, 29.986126>,  <34.514965, 30.882746, 29.660072>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032608, 31.117517, 29.986126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.834251, 31.462099, 29.942326>,  <34.715237, 31.668848, 29.916046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.834251, 31.462099, 29.942326>,  <35.032608, 31.117517, 29.986126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834251, 31.462099, 29.942326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044717, 0.151260, 0.987482,
		0.867235, 0.484783, -0.113530,
		-0.495887, 0.861456, -0.109500,
		34.685486, 31.720535, 29.909475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837681, 31.024067, 30.129587>,  <35.032608, 31.117517, 29.986126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837681, 31.024067, 30.129587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.975567, 30.679811, 30.279503>,  <36.058300, 30.473257, 30.369453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.975567, 30.679811, 30.279503>,  <35.837681, 31.024067, 30.129587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975567, 30.679811, 30.279503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028736, -0.408751, -0.912193,
		0.938266, 0.303679, -0.165635,
		0.344718, -0.860640, 0.374791,
		36.078983, 30.421619, 30.391941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406193, 30.846802, 29.666538>,  <35.837681, 31.024067, 30.129587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406193, 30.846802, 29.666538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.263214, 30.533844, 29.870533>,  <36.177425, 30.346069, 29.992929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.263214, 30.533844, 29.870533>,  <36.406193, 30.846802, 29.666538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263214, 30.533844, 29.870533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010537, -0.542652, -0.839891,
		0.933875, -0.305589, 0.185724,
		-0.357445, -0.782396, 0.509989,
		36.155979, 30.299126, 30.023529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787109, 30.232038, 29.427990>,  <36.406193, 30.846802, 29.666538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787109, 30.232038, 29.427990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.459408, 30.061111, 29.580952>,  <36.262787, 29.958555, 29.672728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.459408, 30.061111, 29.580952>,  <36.787109, 30.232038, 29.427990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459408, 30.061111, 29.580952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041050, -0.621448, -0.782379,
		0.571967, -0.656661, 0.491580,
		-0.819249, -0.427316, 0.382403,
		36.213634, 29.932917, 29.695673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869171, 29.549644, 29.430235>,  <36.787109, 30.232038, 29.427990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869171, 29.549644, 29.430235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.470383, 29.579391, 29.421173>,  <36.231110, 29.597239, 29.415735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.470383, 29.579391, 29.421173>,  <36.869171, 29.549644, 29.430235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470383, 29.579391, 29.421173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028459, -0.620338, -0.783818,
		-0.072344, -0.780802, 0.620577,
		-0.996973, 0.074365, -0.022656,
		36.171291, 29.601702, 29.414375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771099, 28.991539, 29.039543>,  <36.869171, 29.549644, 29.430235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771099, 28.991539, 29.039543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.398617, 29.136253, 29.057299>,  <36.175129, 29.223082, 29.067953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.398617, 29.136253, 29.057299>,  <36.771099, 28.991539, 29.039543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398617, 29.136253, 29.057299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246751, -0.536058, -0.807314,
		-0.268278, -0.762728, 0.588450,
		-0.931204, 0.361785, 0.044391,
		36.119255, 29.244789, 29.070616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288025, 28.390436, 29.113461>,  <36.771099, 28.991539, 29.039543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288025, 28.390436, 29.113461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.098801, 28.691750, 28.930693>,  <35.985264, 28.872538, 28.821032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.098801, 28.691750, 28.930693>,  <36.288025, 28.390436, 29.113461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098801, 28.691750, 28.930693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241846, -0.609727, -0.754813,
		-0.847184, -0.246571, 0.470619,
		-0.473064, 0.753283, -0.456919,
		35.956882, 28.917734, 28.793617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560783, 28.164848, 28.805780>,  <36.288025, 28.390436, 29.113461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560783, 28.164848, 28.805780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.683365, 28.499884, 28.624882>,  <35.756916, 28.700905, 28.516342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.683365, 28.499884, 28.624882>,  <35.560783, 28.164848, 28.805780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683365, 28.499884, 28.624882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196521, -0.409199, -0.891031,
		-0.931377, 0.361938, 0.039202,
		0.306457, 0.837590, -0.452247,
		35.775303, 28.751162, 28.489208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990730, 28.453123, 28.300823>,  <35.560783, 28.164848, 28.805780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990730, 28.453123, 28.300823> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.348785, 28.593800, 28.191246>,  <35.563618, 28.678205, 28.125500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.348785, 28.593800, 28.191246>,  <34.990730, 28.453123, 28.300823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348785, 28.593800, 28.191246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096001, -0.448019, -0.888855,
		-0.435333, 0.821945, -0.367276,
		0.895136, 0.351689, -0.273945,
		35.617325, 28.699306, 28.109062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012897, 28.314013, 27.526613>,  <34.990730, 28.453123, 28.300823>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012897, 28.314013, 27.526613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.383518, 28.438643, 27.610916>,  <35.605892, 28.513420, 27.661497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.383518, 28.438643, 27.610916>,  <35.012897, 28.314013, 27.526613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383518, 28.438643, 27.610916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309199, -0.311754, -0.898446,
		-0.214228, 0.897625, -0.385195,
		0.926554, 0.311574, 0.210758,
		35.661484, 28.532114, 27.674143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095512, 28.749672, 27.015600>,  <35.012897, 28.314013, 27.526613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095512, 28.749672, 27.015600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.450199, 28.639711, 27.164282>,  <35.663010, 28.573734, 27.253490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.450199, 28.639711, 27.164282>,  <35.095512, 28.749672, 27.015600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450199, 28.639711, 27.164282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259704, -0.368970, -0.892421,
		0.382476, 0.887857, -0.255778,
		0.886716, -0.274903, 0.371702,
		35.716213, 28.557240, 27.275793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582550, 29.078714, 26.579233>,  <35.095512, 28.749672, 27.015600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582550, 29.078714, 26.579233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.749767, 28.758684, 26.751335>,  <35.850098, 28.566666, 26.854597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.749767, 28.758684, 26.751335>,  <35.582550, 29.078714, 26.579233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749767, 28.758684, 26.751335> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342377, -0.299937, -0.890402,
		0.841438, 0.519536, 0.148540,
		0.418043, -0.800075, 0.430255,
		35.875179, 28.518661, 26.880411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275921, 29.059528, 26.393923>,  <35.582550, 29.078714, 26.579233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275921, 29.059528, 26.393923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.158070, 28.687826, 26.483076>,  <36.087360, 28.464804, 26.536568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.158070, 28.687826, 26.483076>,  <36.275921, 29.059528, 26.393923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158070, 28.687826, 26.483076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239367, -0.297564, -0.924207,
		0.925148, -0.218945, 0.310103,
		-0.294626, -0.929257, 0.222883,
		36.069683, 28.409050, 26.549940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753494, 28.677717, 26.060497>,  <36.275921, 29.059528, 26.393923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753494, 28.677717, 26.060497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.459942, 28.419168, 26.144049>,  <36.283810, 28.264040, 26.194180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.459942, 28.419168, 26.144049>,  <36.753494, 28.677717, 26.060497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459942, 28.419168, 26.144049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282461, -0.570029, -0.771546,
		0.617770, -0.507220, 0.600906,
		-0.733878, -0.646370, 0.208877,
		36.239780, 28.225258, 26.206711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118366, 28.087259, 25.901115>,  <36.753494, 28.677717, 26.060497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118366, 28.087259, 25.901115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.725250, 28.013628, 25.894890>,  <36.489380, 27.969448, 25.891155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.725250, 28.013628, 25.894890>,  <37.118366, 28.087259, 25.901115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725250, 28.013628, 25.894890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049413, -0.180767, -0.982284,
		0.178007, -0.966146, 0.186752,
		-0.982788, -0.184081, -0.015562,
		36.430412, 27.958405, 25.890221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806133, 27.845919, 26.092373>,  <37.118366, 28.087259, 25.901115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806133, 27.845919, 26.092373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.134430, 27.994247, 25.918533>,  <38.331409, 28.083244, 25.814230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.134430, 27.994247, 25.918533>,  <37.806133, 27.845919, 26.092373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134430, 27.994247, 25.918533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205305, 0.518456, 0.830092,
		0.533148, -0.770511, 0.349380,
		0.820733, 0.370833, -0.434603,
		38.380653, 28.105494, 25.788153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214390, 27.762238, 26.570602>,  <37.806133, 27.845919, 26.092373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214390, 27.762238, 26.570602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.365448, 28.038927, 26.324383>,  <38.456081, 28.204941, 26.176651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.365448, 28.038927, 26.324383>,  <38.214390, 27.762238, 26.570602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365448, 28.038927, 26.324383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221547, 0.577967, 0.785411,
		0.899057, -0.432977, 0.065014,
		0.377641, 0.691726, -0.615550,
		38.478741, 28.246445, 26.139717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767723, 28.089123, 26.956179>,  <38.214390, 27.762238, 26.570602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767723, 28.089123, 26.956179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.682262, 28.364313, 26.678751>,  <38.630985, 28.529428, 26.512295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.682262, 28.364313, 26.678751>,  <38.767723, 28.089123, 26.956179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682262, 28.364313, 26.678751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274743, 0.723623, 0.633156,
		0.937481, -0.055282, -0.343617,
		-0.213647, 0.687978, -0.693571,
		38.618168, 28.570707, 26.470680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375454, 28.529400, 26.823608>,  <38.767723, 28.089123, 26.956179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375454, 28.529400, 26.823608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.054348, 28.738403, 26.708683>,  <38.861683, 28.863806, 26.639729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.054348, 28.738403, 26.708683>,  <39.375454, 28.529400, 26.823608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.054348, 28.738403, 26.708683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290729, 0.763651, 0.576467,
		0.520616, 0.379238, -0.764942,
		-0.802767, 0.522509, -0.287313,
		38.813519, 28.895157, 26.622490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613430, 29.081810, 26.727787>,  <39.375454, 28.529400, 26.823608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613430, 29.081810, 26.727787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.230518, 29.195602, 26.748499>,  <39.000771, 29.263878, 26.760925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.230518, 29.195602, 26.748499>,  <39.613430, 29.081810, 26.727787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230518, 29.195602, 26.748499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267359, 0.802612, 0.533228,
		0.110134, 0.524294, -0.844385,
		-0.957282, 0.284481, 0.051779,
		38.943333, 29.280947, 26.764032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580967, 29.779285, 26.704990>,  <39.613430, 29.081810, 26.727787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580967, 29.779285, 26.704990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.213688, 29.702684, 26.843691>,  <38.993320, 29.656725, 26.926910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.213688, 29.702684, 26.843691>,  <39.580967, 29.779285, 26.704990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213688, 29.702684, 26.843691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087344, 0.755948, 0.648779,
		-0.386367, 0.625995, -0.677385,
		-0.918200, -0.191501, 0.346750,
		38.938229, 29.645233, 26.947716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225487, 30.485762, 26.805916>,  <39.580967, 29.779285, 26.704990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225487, 30.485762, 26.805916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.016220, 30.222836, 27.022890>,  <38.890659, 30.065081, 27.153074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.016220, 30.222836, 27.022890>,  <39.225487, 30.485762, 26.805916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016220, 30.222836, 27.022890> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053436, 0.609937, 0.790646,
		-0.850555, 0.442623, -0.283972,
		-0.523163, -0.657314, 0.542437,
		38.859272, 30.025640, 27.185621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553783, 30.880478, 27.178362>,  <39.225487, 30.485762, 26.805916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553783, 30.880478, 27.178362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.679012, 30.537909, 27.342567>,  <38.754150, 30.332367, 27.441092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.679012, 30.537909, 27.342567>,  <38.553783, 30.880478, 27.178362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679012, 30.537909, 27.342567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033813, 0.421919, 0.906003,
		-0.949128, -0.297524, 0.103132,
		0.313071, -0.856425, 0.410515,
		38.772934, 30.280981, 27.465721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140266, 30.838825, 27.715101>,  <38.553783, 30.880478, 27.178362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140266, 30.838825, 27.715101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.467480, 30.634624, 27.821095>,  <38.663807, 30.512104, 27.884689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.467480, 30.634624, 27.821095>,  <38.140266, 30.838825, 27.715101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467480, 30.634624, 27.821095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042731, 0.513363, 0.857107,
		-0.573586, -0.689817, 0.441761,
		0.818030, -0.510501, 0.264982,
		38.712891, 30.481474, 27.900589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003025, 30.491968, 28.360376>,  <38.140266, 30.838825, 27.715101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003025, 30.491968, 28.360376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.402939, 30.500128, 28.361586>,  <38.642887, 30.505024, 28.362310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.402939, 30.500128, 28.361586>,  <38.003025, 30.491968, 28.360376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402939, 30.500128, 28.361586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013794, 0.552509, 0.833393,
		0.015332, -0.833257, 0.552673,
		0.999787, 0.020401, 0.003023,
		38.702873, 30.506248, 28.362492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162636, 30.521515, 28.997574>,  <38.003025, 30.491968, 28.360376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162636, 30.521515, 28.997574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.518276, 30.627710, 28.848436>,  <38.731659, 30.691427, 28.758953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.518276, 30.627710, 28.848436>,  <38.162636, 30.521515, 28.997574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518276, 30.627710, 28.848436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156373, 0.589383, 0.792575,
		0.430168, -0.762983, 0.482506,
		0.889102, 0.265490, -0.372844,
		38.785007, 30.707357, 28.736584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601440, 30.443937, 29.472223>,  <38.162636, 30.521515, 28.997574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601440, 30.443937, 29.472223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.798077, 30.704029, 29.240520>,  <38.916058, 30.860085, 29.101498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.798077, 30.704029, 29.240520>,  <38.601440, 30.443937, 29.472223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798077, 30.704029, 29.240520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180811, 0.574473, 0.798303,
		0.851848, -0.497176, 0.164838,
		0.491592, 0.650229, -0.579258,
		38.945553, 30.899097, 29.066744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205315, 30.617128, 29.891571>,  <38.601440, 30.443937, 29.472223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205315, 30.617128, 29.891571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.185059, 30.912394, 29.622482>,  <39.172905, 31.089552, 29.461029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.185059, 30.912394, 29.622482>,  <39.205315, 30.617128, 29.891571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185059, 30.912394, 29.622482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319790, 0.650105, 0.689274,
		0.946134, -0.180222, -0.268980,
		-0.050643, 0.738163, -0.672719,
		39.169865, 31.133842, 29.420666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906281, 30.901880, 29.795837>,  <39.205315, 30.617128, 29.891571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906281, 30.901880, 29.795837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.636951, 31.180069, 29.695469>,  <39.475353, 31.346983, 29.635248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.636951, 31.180069, 29.695469>,  <39.906281, 30.901880, 29.795837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636951, 31.180069, 29.695469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374827, 0.613623, 0.694962,
		0.637296, 0.373880, -0.673846,
		-0.673319, 0.695471, -0.250919,
		39.434956, 31.388710, 29.620193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.357292, 30.333485, 24.142298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.981640, 30.463926, 24.099041>,  <39.756248, 30.542192, 24.073088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.981640, 30.463926, 24.099041>,  <40.357292, 30.333485, 24.142298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981640, 30.463926, 24.099041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195533, -0.766123, -0.612227,
		-0.282499, -0.553815, 0.783252,
		-0.939128, 0.326105, -0.108140,
		39.699902, 30.561758, 24.066599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866043, 29.736462, 24.176069>,  <40.357292, 30.333485, 24.142298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866043, 29.736462, 24.176069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.662113, 30.021875, 23.983843>,  <39.539753, 30.193125, 23.868507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.662113, 30.021875, 23.983843>,  <39.866043, 29.736462, 24.176069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662113, 30.021875, 23.983843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320447, -0.675930, -0.663651,
		-0.798367, -0.184352, 0.573258,
		-0.509827, 0.713536, -0.480565,
		39.509163, 30.235935, 23.839674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381870, 29.324940, 23.803862>,  <39.866043, 29.736462, 24.176069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381870, 29.324940, 23.803862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.344070, 29.688931, 23.642361>,  <39.321392, 29.907324, 23.545460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.344070, 29.688931, 23.642361>,  <39.381870, 29.324940, 23.803862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344070, 29.688931, 23.642361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198327, -0.414645, -0.888107,
		-0.975569, -0.003852, 0.219657,
		-0.094501, 0.909975, -0.403751,
		39.315720, 29.961924, 23.521235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722130, 29.404306, 23.499584>,  <39.381870, 29.324940, 23.803862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722130, 29.404306, 23.499584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.962215, 29.663141, 23.311533>,  <39.106266, 29.818443, 23.198702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.962215, 29.663141, 23.311533>,  <38.722130, 29.404306, 23.499584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962215, 29.663141, 23.311533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188681, -0.456641, -0.869412,
		-0.777267, 0.610536, -0.151988,
		0.600212, 0.647089, -0.470129,
		39.142281, 29.857267, 23.170494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327477, 29.787804, 23.047722>,  <38.722130, 29.404306, 23.499584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327477, 29.787804, 23.047722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.696682, 29.785358, 22.893837>,  <38.918205, 29.783892, 22.801506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.696682, 29.785358, 22.893837>,  <38.327477, 29.787804, 23.047722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696682, 29.785358, 22.893837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377806, -0.203672, -0.903206,
		-0.072835, 0.979020, -0.190302,
		0.923016, -0.006112, -0.384714,
		38.973587, 29.783525, 22.778423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188557, 30.008926, 22.289892>,  <38.327477, 29.787804, 23.047722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188557, 30.008926, 22.289892> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.560413, 29.863132, 22.311483>,  <38.783527, 29.775656, 22.324438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.560413, 29.863132, 22.311483>,  <38.188557, 30.008926, 22.289892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560413, 29.863132, 22.311483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096501, -0.382229, -0.919015,
		0.355600, 0.849147, -0.390510,
		0.929643, -0.364487, 0.053977,
		38.839306, 29.753786, 22.327677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550240, 30.155045, 21.612835>,  <38.188557, 30.008926, 22.289892>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550240, 30.155045, 21.612835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.778301, 29.858646, 21.754732>,  <38.915138, 29.680807, 21.839870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.778301, 29.858646, 21.754732>,  <38.550240, 30.155045, 21.612835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778301, 29.858646, 21.754732> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002552, -0.433402, -0.901197,
		0.821531, 0.512920, -0.248999,
		0.570159, -0.740996, 0.354744,
		38.949348, 29.636347, 21.861155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028091, 30.001247, 21.124506>,  <38.550240, 30.155045, 21.612835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028091, 30.001247, 21.124506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.986149, 29.667088, 21.340326>,  <38.960983, 29.466593, 21.469818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.986149, 29.667088, 21.340326>,  <39.028091, 30.001247, 21.124506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986149, 29.667088, 21.340326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063450, -0.547056, -0.834688,
		0.992461, -0.053285, 0.110367,
		-0.104853, -0.835398, 0.539551,
		38.954693, 29.416468, 21.502192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590935, 29.619593, 20.910353>,  <39.028091, 30.001247, 21.124506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590935, 29.619593, 20.910353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.344028, 29.352472, 21.076742>,  <39.195885, 29.192200, 21.176575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.344028, 29.352472, 21.076742>,  <39.590935, 29.619593, 20.910353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.344028, 29.352472, 21.076742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071655, -0.478802, -0.874994,
		0.783488, -0.569907, 0.247695,
		-0.617262, -0.667799, 0.415972,
		39.158852, 29.152132, 21.201534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894268, 28.969891, 20.801275>,  <39.590935, 29.619593, 20.910353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894268, 28.969891, 20.801275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.505341, 28.914675, 20.876690>,  <39.271984, 28.881546, 20.921938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.505341, 28.914675, 20.876690>,  <39.894268, 28.969891, 20.801275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505341, 28.914675, 20.876690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060601, -0.630285, -0.773995,
		0.225674, -0.763993, 0.604471,
		-0.972316, -0.138039, 0.188537,
		39.213646, 28.873262, 20.933250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912056, 28.279383, 20.841373>,  <39.894268, 28.969891, 20.801275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912056, 28.279383, 20.841373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.546963, 28.420906, 20.759647>,  <39.327908, 28.505819, 20.710611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.546963, 28.420906, 20.759647>,  <39.912056, 28.279383, 20.841373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546963, 28.420906, 20.759647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076174, -0.638678, -0.765695,
		-0.401398, -0.683309, 0.609891,
		-0.912731, 0.353806, -0.204313,
		39.273144, 28.527048, 20.698353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762840, 27.782146, 20.339933>,  <39.912056, 28.279383, 20.841373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762840, 27.782146, 20.339933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.459713, 28.042656, 20.324173>,  <39.277836, 28.198961, 20.314716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.459713, 28.042656, 20.324173>,  <39.762840, 27.782146, 20.339933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459713, 28.042656, 20.324173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330407, -0.435134, -0.837550,
		-0.562619, -0.621694, 0.544938,
		-0.757820, 0.651273, -0.039403,
		39.232368, 28.238037, 20.312353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179153, 27.333460, 20.403038>,  <39.762840, 27.782146, 20.339933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179153, 27.333460, 20.403038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.120747, 27.685898, 20.223104>,  <39.085701, 27.897360, 20.115145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.120747, 27.685898, 20.223104>,  <39.179153, 27.333460, 20.403038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120747, 27.685898, 20.223104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191163, -0.471267, -0.861025,
		-0.970637, -0.039732, 0.237245,
		-0.146016, 0.881095, -0.449834,
		39.076942, 27.950226, 20.088154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050301, 26.669550, 20.308512>,  <39.179153, 27.333460, 20.403038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050301, 26.669550, 20.308512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.710255, 26.460285, 20.284512>,  <38.506226, 26.334726, 20.270111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.710255, 26.460285, 20.284512>,  <39.050301, 26.669550, 20.308512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710255, 26.460285, 20.284512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030819, -0.064316, 0.997454,
		-0.525687, 0.849804, 0.038553,
		-0.850120, -0.523160, -0.060000,
		38.455219, 26.303337, 20.266512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465912, 26.886131, 20.719046>,  <39.050301, 26.669550, 20.308512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465912, 26.886131, 20.719046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.434643, 26.487530, 20.707251>,  <38.415882, 26.248369, 20.700172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.434643, 26.487530, 20.707251>,  <38.465912, 26.886131, 20.719046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434643, 26.487530, 20.707251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183737, -0.014671, 0.982866,
		-0.979862, 0.082256, -0.181947,
		-0.078177, -0.996503, -0.029489,
		38.411190, 26.188580, 20.698404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925350, 26.753416, 21.100731>,  <38.465912, 26.886131, 20.719046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925350, 26.753416, 21.100731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.148445, 26.421503, 21.092793>,  <38.282303, 26.222355, 21.088030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.148445, 26.421503, 21.092793>,  <37.925350, 26.753416, 21.100731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148445, 26.421503, 21.092793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014572, -0.014119, 0.999794,
		-0.829891, -0.557909, 0.004217,
		0.557735, -0.829782, -0.019847,
		38.315765, 26.172569, 21.086838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488365, 26.254675, 21.461916>,  <37.925350, 26.753416, 21.100731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488365, 26.254675, 21.461916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.869095, 26.132355, 21.470991>,  <38.097534, 26.058962, 21.476437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.869095, 26.132355, 21.470991>,  <37.488365, 26.254675, 21.461916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869095, 26.132355, 21.470991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030357, -0.020351, 0.999332,
		-0.305137, -0.951877, -0.028654,
		0.951825, -0.305803, 0.022686,
		38.154644, 26.040613, 21.477797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525803, 25.681469, 21.934122>,  <37.488365, 26.254675, 21.461916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525803, 25.681469, 21.934122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.898899, 25.823570, 21.909477>,  <38.122757, 25.908831, 21.894690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.898899, 25.823570, 21.909477>,  <37.525803, 25.681469, 21.934122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898899, 25.823570, 21.909477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029951, 0.246639, 0.968645,
		0.359310, -0.901646, 0.240689,
		0.932738, 0.355253, -0.061615,
		38.178719, 25.930145, 21.890993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763966, 25.465605, 22.549038>,  <37.525803, 25.681469, 21.934122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763966, 25.465605, 22.549038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.991688, 25.777802, 22.445717>,  <38.128323, 25.965120, 22.383724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.991688, 25.777802, 22.445717>,  <37.763966, 25.465605, 22.549038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991688, 25.777802, 22.445717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168971, 0.196395, 0.965856,
		0.804574, -0.593513, -0.020072,
		0.569306, 0.780494, -0.258301,
		38.162479, 26.011950, 22.368227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278439, 25.479244, 23.091085>,  <37.763966, 25.465605, 22.549038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278439, 25.479244, 23.091085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.331074, 25.839155, 22.924669>,  <38.362656, 26.055101, 22.824820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.331074, 25.839155, 22.924669>,  <38.278439, 25.479244, 23.091085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331074, 25.839155, 22.924669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291065, 0.366120, 0.883876,
		0.947611, -0.237399, -0.213717,
		0.131585, 0.899776, -0.416038,
		38.370548, 26.109089, 22.799858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964333, 25.752964, 23.341349>,  <38.278439, 25.479244, 23.091085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964333, 25.752964, 23.341349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.772358, 26.084997, 23.227768>,  <38.657173, 26.284218, 23.159620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.772358, 26.084997, 23.227768>,  <38.964333, 25.752964, 23.341349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772358, 26.084997, 23.227768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417864, 0.500878, 0.757965,
		0.771398, 0.245119, -0.587249,
		-0.479932, 0.830083, -0.283950,
		38.628380, 26.334023, 23.142584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401497, 26.322002, 23.548059>,  <38.964333, 25.752964, 23.341349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401497, 26.322002, 23.548059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.050793, 26.503580, 23.484539>,  <38.840370, 26.612528, 23.446426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.050793, 26.503580, 23.484539>,  <39.401497, 26.322002, 23.548059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050793, 26.503580, 23.484539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218142, 0.669665, 0.709903,
		0.428601, 0.587777, -0.686163,
		-0.876764, 0.453946, -0.158801,
		38.787762, 26.639765, 23.436899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505447, 27.014797, 23.529779>,  <39.401497, 26.322002, 23.548059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505447, 27.014797, 23.529779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.111897, 27.014360, 23.601318>,  <38.875767, 27.014099, 23.644241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.111897, 27.014360, 23.601318>,  <39.505447, 27.014797, 23.529779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111897, 27.014360, 23.601318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109539, 0.786803, 0.607406,
		-0.141380, 0.617203, -0.773998,
		-0.983876, -0.001093, 0.178846,
		38.816734, 27.014032, 23.654972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372849, 27.772495, 23.666679>,  <39.505447, 27.014797, 23.529779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372849, 27.772495, 23.666679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.071503, 27.557993, 23.818924>,  <38.890694, 27.429291, 23.910271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.071503, 27.557993, 23.818924>,  <39.372849, 27.772495, 23.666679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071503, 27.557993, 23.818924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006739, 0.585055, 0.810966,
		-0.657564, 0.608391, -0.444376,
		-0.753369, -0.536257, 0.380611,
		38.845493, 27.397116, 23.933107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736000, 28.154526, 23.960451>,  <39.372849, 27.772495, 23.666679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736000, 28.154526, 23.960451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.709747, 27.801447, 24.146585>,  <38.693996, 27.589600, 24.258266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.709747, 27.801447, 24.146585>,  <38.736000, 28.154526, 23.960451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709747, 27.801447, 24.146585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153284, 0.469725, 0.869404,
		-0.986000, -0.014266, -0.166133,
		-0.065634, -0.882698, 0.465335,
		38.690056, 27.536638, 24.286186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192715, 28.187809, 24.338758>,  <38.736000, 28.154526, 23.960451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192715, 28.187809, 24.338758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.384331, 27.880169, 24.507996>,  <38.499298, 27.695585, 24.609539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.384331, 27.880169, 24.507996>,  <38.192715, 28.187809, 24.338758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384331, 27.880169, 24.507996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212836, 0.365846, 0.906012,
		-0.851600, -0.524064, 0.011562,
		0.479038, -0.769099, 0.423094,
		38.528042, 27.649439, 24.634924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770748, 27.957928, 24.833939>,  <38.192715, 28.187809, 24.338758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770748, 27.957928, 24.833939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.137192, 27.833092, 24.934618>,  <38.357056, 27.758190, 24.995026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.137192, 27.833092, 24.934618>,  <37.770748, 27.957928, 24.833939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137192, 27.833092, 24.934618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062134, 0.509677, 0.858119,
		-0.396093, -0.801767, 0.447527,
		0.916105, -0.312089, 0.251697,
		38.412022, 27.739466, 25.010128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700298, 27.643759, 25.400122>,  <37.770748, 27.957928, 24.833939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700298, 27.643759, 25.400122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.085052, 27.752682, 25.390125>,  <38.315907, 27.818035, 25.384129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.085052, 27.752682, 25.390125>,  <37.700298, 27.643759, 25.400122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085052, 27.752682, 25.390125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131497, 0.540736, 0.830850,
		0.239760, -0.795897, 0.555934,
		0.961885, 0.272309, -0.024989,
		38.373619, 27.834375, 25.382629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031052, 27.386114, 25.547367>,  <37.700298, 27.643759, 25.400122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031052, 27.386114, 25.547367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.664322, 27.545504, 25.537146>,  <36.444283, 27.641136, 25.531013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.664322, 27.545504, 25.537146>,  <37.031052, 27.386114, 25.547367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664322, 27.545504, 25.537146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126095, -0.349659, -0.928353,
		-0.378860, -0.847913, 0.370821,
		-0.916823, 0.398474, -0.025555,
		36.389275, 27.665045, 25.529480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501823, 26.827965, 25.474258>,  <37.031052, 27.386114, 25.547367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501823, 26.827965, 25.474258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.337791, 27.161367, 25.326151>,  <36.239372, 27.361410, 25.237286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.337791, 27.161367, 25.326151>,  <36.501823, 26.827965, 25.474258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337791, 27.161367, 25.326151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118023, -0.451057, -0.884657,
		-0.904382, -0.319078, 0.283342,
		-0.410078, 0.833509, -0.370269,
		36.214767, 27.411421, 25.215071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100590, 26.552176, 24.944189>,  <36.501823, 26.827965, 25.474258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100590, 26.552176, 24.944189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.079624, 26.945236, 24.873032>,  <36.067043, 27.181072, 24.830338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.079624, 26.945236, 24.873032>,  <36.100590, 26.552176, 24.944189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079624, 26.945236, 24.873032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283379, -0.185450, -0.940906,
		-0.957574, 0.001090, 0.288184,
		-0.052418, 0.982653, -0.177891,
		36.063900, 27.240032, 24.819664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417885, 26.631737, 24.646456>,  <36.100590, 26.552176, 24.944189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417885, 26.631737, 24.646456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.594856, 26.972654, 24.534849>,  <35.701038, 27.177204, 24.467886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.594856, 26.972654, 24.534849>,  <35.417885, 26.631737, 24.646456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594856, 26.972654, 24.534849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335345, -0.131321, -0.932898,
		-0.831743, 0.506311, 0.227711,
		0.442433, 0.852293, -0.279014,
		35.727585, 27.228342, 24.451145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914486, 27.025669, 24.176651>,  <35.417885, 26.631737, 24.646456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914486, 27.025669, 24.176651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.278339, 27.160721, 24.079838>,  <35.496651, 27.241753, 24.021749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.278339, 27.160721, 24.079838>,  <34.914486, 27.025669, 24.176651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278339, 27.160721, 24.079838> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169656, -0.229894, -0.958314,
		-0.379196, 0.912773, -0.151837,
		0.909630, 0.337629, -0.242033,
		35.551228, 27.262009, 24.007229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824066, 27.538057, 23.716745>,  <34.914486, 27.025669, 24.176651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824066, 27.538057, 23.716745> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.198326, 27.408867, 23.659834>,  <35.422882, 27.331352, 23.625687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.198326, 27.408867, 23.659834>,  <34.824066, 27.538057, 23.716745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198326, 27.408867, 23.659834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224032, -0.232034, -0.946557,
		0.272700, 0.917523, -0.289459,
		0.935652, -0.322974, -0.142279,
		35.479023, 27.311975, 23.617149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042667, 27.798262, 23.023228>,  <34.824066, 27.538057, 23.716745>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042667, 27.798262, 23.023228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.310490, 27.515583, 23.114681>,  <35.471184, 27.345976, 23.169554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.310490, 27.515583, 23.114681>,  <35.042667, 27.798262, 23.023228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310490, 27.515583, 23.114681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066835, -0.363889, -0.929041,
		0.739747, 0.606766, -0.290877,
		0.669558, -0.706696, 0.228632,
		35.511356, 27.303574, 23.183271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010799, 28.528093, 22.710579>,  <35.042667, 27.798262, 23.023228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010799, 28.528093, 22.710579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.732250, 28.773651, 22.561876>,  <34.565121, 28.920986, 22.472654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.732250, 28.773651, 22.561876>,  <35.010799, 28.528093, 22.710579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732250, 28.773651, 22.561876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045086, 0.554395, 0.831032,
		0.716266, 0.561944, -0.413742,
		-0.696370, 0.613893, -0.371758,
		34.523338, 28.957819, 22.450348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371925, 29.211920, 22.797409>,  <35.010799, 28.528093, 22.710579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371925, 29.211920, 22.797409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.973732, 29.242483, 22.774889>,  <34.734814, 29.260822, 22.761377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.973732, 29.242483, 22.774889>,  <35.371925, 29.211920, 22.797409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973732, 29.242483, 22.774889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011042, 0.495919, 0.868298,
		0.094266, 0.865000, -0.492837,
		-0.995486, 0.076410, -0.056300,
		34.675087, 29.265406, 22.757999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164883, 29.934214, 22.945574>,  <35.371925, 29.211920, 22.797409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164883, 29.934214, 22.945574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.841846, 29.709320, 23.016771>,  <34.648026, 29.574383, 23.059490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.841846, 29.709320, 23.016771>,  <35.164883, 29.934214, 22.945574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841846, 29.709320, 23.016771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046061, 0.361028, 0.931417,
		-0.587936, 0.744009, -0.317461,
		-0.807595, -0.562236, 0.177992,
		34.599567, 29.540649, 23.070169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805843, 30.337029, 23.324886>,  <35.164883, 29.934214, 22.945574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805843, 30.337029, 23.324886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.631924, 29.984285, 23.397858>,  <34.527573, 29.772640, 23.441641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.631924, 29.984285, 23.397858>,  <34.805843, 30.337029, 23.324886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631924, 29.984285, 23.397858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168074, 0.278486, 0.945620,
		-0.884704, 0.380494, -0.269303,
		-0.434799, -0.881856, 0.182426,
		34.501484, 29.719728, 23.452585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157417, 30.504660, 23.599905>,  <34.805843, 30.337029, 23.324886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157417, 30.504660, 23.599905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.253044, 30.138395, 23.729158>,  <34.310421, 29.918636, 23.806709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.253044, 30.138395, 23.729158>,  <34.157417, 30.504660, 23.599905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253044, 30.138395, 23.729158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248031, 0.264155, 0.932042,
		-0.938790, -0.302969, -0.163961,
		0.239069, -0.915659, 0.323132,
		34.324764, 29.863697, 23.826097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612408, 30.383501, 24.083088>,  <34.157417, 30.504660, 23.599905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612408, 30.383501, 24.083088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.895351, 30.122341, 24.191437>,  <34.065117, 29.965645, 24.256445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.895351, 30.122341, 24.191437>,  <33.612408, 30.383501, 24.083088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895351, 30.122341, 24.191437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141881, 0.244262, 0.959274,
		-0.692472, -0.716979, 0.080146,
		0.707356, -0.652899, 0.270870,
		34.107559, 29.926472, 24.272697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361938, 30.194862, 24.672047>,  <33.612408, 30.383501, 24.083088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361938, 30.194862, 24.672047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.739269, 30.064226, 24.695587>,  <33.965668, 29.985844, 24.709711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.739269, 30.064226, 24.695587>,  <33.361938, 30.194862, 24.672047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739269, 30.064226, 24.695587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012854, 0.141250, 0.989891,
		-0.331604, -0.934551, 0.129048,
		0.943331, -0.326593, 0.058852,
		34.022270, 29.966248, 24.713243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.510906, 30.627655, 19.156561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.719227, 30.448774, 19.447430>,  <37.844219, 30.341446, 19.621952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.719227, 30.448774, 19.447430>,  <37.510906, 30.627655, 19.156561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719227, 30.448774, 19.447430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384914, 0.637298, 0.667603,
		-0.761977, -0.627586, 0.159771,
		0.520799, -0.447200, 0.727173,
		37.875465, 30.314615, 19.665581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043320, 30.319483, 19.587597>,  <37.510906, 30.627655, 19.156561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043320, 30.319483, 19.587597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.379162, 30.391672, 19.792532>,  <37.580666, 30.434986, 19.915493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.379162, 30.391672, 19.792532>,  <37.043320, 30.319483, 19.587597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379162, 30.391672, 19.792532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498314, 0.631326, 0.594231,
		-0.216210, -0.754226, 0.619997,
		0.839605, 0.180475, 0.512340,
		37.631042, 30.445814, 19.946234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876518, 30.210569, 20.256649>,  <37.043320, 30.319483, 19.587597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876518, 30.210569, 20.256649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.218510, 30.418037, 20.256819>,  <37.423702, 30.542519, 20.256922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.218510, 30.418037, 20.256819>,  <36.876518, 30.210569, 20.256649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.218510, 30.418037, 20.256819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355509, 0.585424, 0.728623,
		0.377664, -0.623107, 0.684915,
		0.854976, 0.518668, 0.000427,
		37.475002, 30.573637, 20.256947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998146, 30.413895, 20.928101>,  <36.876518, 30.210569, 20.256649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998146, 30.413895, 20.928101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.233315, 30.689177, 20.758055>,  <37.374416, 30.854345, 20.656027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.233315, 30.689177, 20.758055>,  <36.998146, 30.413895, 20.928101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233315, 30.689177, 20.758055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292954, 0.671008, 0.681122,
		0.754008, -0.275904, 0.596111,
		0.587919, 0.688205, -0.425118,
		37.409691, 30.895638, 20.630520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256439, 30.834721, 21.525822>,  <36.998146, 30.413895, 20.928101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256439, 30.834721, 21.525822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.306885, 31.046808, 21.190451>,  <37.337151, 31.174061, 20.989227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.306885, 31.046808, 21.190451>,  <37.256439, 30.834721, 21.525822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306885, 31.046808, 21.190451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250419, 0.834820, 0.490272,
		0.959889, 0.148131, 0.238056,
		0.126109, 0.530220, -0.838429,
		37.344719, 31.205873, 20.938923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771206, 31.404688, 21.646372>,  <37.256439, 30.834721, 21.525822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771206, 31.404688, 21.646372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.523533, 31.523859, 21.355759>,  <37.374928, 31.595362, 21.181391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.523533, 31.523859, 21.355759>,  <37.771206, 31.404688, 21.646372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523533, 31.523859, 21.355759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232330, 0.814299, 0.531920,
		0.750091, 0.498151, -0.434981,
		-0.619181, 0.297930, -0.726534,
		37.337780, 31.613237, 21.137798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968906, 32.180019, 21.585974>,  <37.771206, 31.404688, 21.646372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968906, 32.180019, 21.585974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.620163, 32.136070, 21.395063>,  <37.410919, 32.109703, 21.280518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.620163, 32.136070, 21.395063>,  <37.968906, 32.180019, 21.585974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620163, 32.136070, 21.395063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264083, 0.926170, 0.269201,
		0.412462, 0.360746, -0.836503,
		-0.871857, -0.109871, -0.477277,
		37.358604, 32.103107, 21.251881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955879, 32.804379, 21.281740>,  <37.968906, 32.180019, 21.585974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955879, 32.804379, 21.281740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.583843, 32.661701, 21.316853>,  <37.360622, 32.576096, 21.337919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.583843, 32.661701, 21.316853>,  <37.955879, 32.804379, 21.281740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583843, 32.661701, 21.316853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331231, 0.917690, 0.219386,
		-0.158808, 0.174973, -0.971681,
		-0.930089, -0.356692, 0.087780,
		37.304817, 32.554695, 21.343187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534473, 33.393185, 21.100477>,  <37.955879, 32.804379, 21.281740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534473, 33.393185, 21.100477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.261372, 33.158611, 21.274805>,  <37.097511, 33.017868, 21.379402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.261372, 33.158611, 21.274805>,  <37.534473, 33.393185, 21.100477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261372, 33.158611, 21.274805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464286, 0.808797, 0.360950,
		-0.564162, 0.044097, -0.824485,
		-0.682759, -0.586432, 0.435820,
		37.056545, 32.982681, 21.405552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819050, 33.534569, 20.786970>,  <37.534473, 33.393185, 21.100477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819050, 33.534569, 20.786970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.774769, 33.350212, 21.139179>,  <36.748199, 33.239597, 21.350504>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.774769, 33.350212, 21.139179>,  <36.819050, 33.534569, 20.786970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774769, 33.350212, 21.139179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557940, 0.762006, 0.328710,
		-0.822464, -0.454889, -0.341508,
		-0.110705, -0.460894, 0.880523,
		36.741558, 33.211945, 21.403336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124035, 33.666542, 20.997044>,  <36.819050, 33.534569, 20.786970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124035, 33.666542, 20.997044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.286453, 33.555649, 21.345358>,  <36.383904, 33.489113, 21.554346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.286453, 33.555649, 21.345358>,  <36.124035, 33.666542, 20.997044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286453, 33.555649, 21.345358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484727, 0.742446, 0.462401,
		-0.774703, -0.609850, 0.167087,
		0.406048, -0.277232, 0.870785,
		36.408268, 33.472481, 21.606594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572369, 33.814720, 21.463020>,  <36.124035, 33.666542, 20.997044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572369, 33.814720, 21.463020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.889996, 33.773357, 21.702606>,  <36.080574, 33.748539, 21.846357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.889996, 33.773357, 21.702606>,  <35.572369, 33.814720, 21.463020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889996, 33.773357, 21.702606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152382, 0.920084, 0.360868,
		-0.588416, -0.377826, 0.714853,
		0.794070, -0.103410, 0.598966,
		36.128216, 33.742336, 21.882296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263538, 33.578926, 21.992476>,  <35.572369, 33.814720, 21.463020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263538, 33.578926, 21.992476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.887600, 33.546921, 21.859634>,  <34.662037, 33.527718, 21.779930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.887600, 33.546921, 21.859634>,  <35.263538, 33.578926, 21.992476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887600, 33.546921, 21.859634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269904, -0.769860, -0.578331,
		-0.209399, -0.633177, 0.745143,
		-0.939842, -0.080015, -0.332105,
		34.605648, 33.522915, 21.760002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140438, 32.830204, 21.901407>,  <35.263538, 33.578926, 21.992476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140438, 32.830204, 21.901407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.870239, 33.010174, 21.667734>,  <34.708118, 33.118156, 21.527531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.870239, 33.010174, 21.667734>,  <35.140438, 32.830204, 21.901407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870239, 33.010174, 21.667734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093431, -0.733646, -0.673078,
		-0.731402, -0.509255, 0.453554,
		-0.675517, 0.449914, -0.584170,
		34.667591, 33.145153, 21.492479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585754, 32.315899, 21.647675>,  <35.140438, 32.830204, 21.901407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585754, 32.315899, 21.647675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.584290, 32.626064, 21.395098>,  <34.583412, 32.812164, 21.243551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.584290, 32.626064, 21.395098>,  <34.585754, 32.315899, 21.647675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584290, 32.626064, 21.395098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029032, -0.631097, -0.775160,
		-0.999572, -0.021167, -0.020203,
		-0.003658, 0.775414, -0.631442,
		34.583191, 32.858688, 21.205666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215073, 32.018307, 21.146799>,  <34.585754, 32.315899, 21.647675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215073, 32.018307, 21.146799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.369232, 32.333675, 20.955025>,  <34.461727, 32.522896, 20.839960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.369232, 32.333675, 20.955025>,  <34.215073, 32.018307, 21.146799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369232, 32.333675, 20.955025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127011, -0.469300, -0.873857,
		-0.913967, 0.397676, -0.080729,
		0.385398, 0.788423, -0.479434,
		34.484852, 32.570202, 20.811193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668774, 32.257053, 20.665783>,  <34.215073, 32.018307, 21.146799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668774, 32.257053, 20.665783> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.027481, 32.365627, 20.525999>,  <34.242706, 32.430771, 20.442129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.027481, 32.365627, 20.525999>,  <33.668774, 32.257053, 20.665783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027481, 32.365627, 20.525999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225651, -0.398826, -0.888830,
		-0.380634, 0.875934, -0.296406,
		0.896772, 0.271435, -0.349462,
		34.296513, 32.447060, 20.421160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548042, 32.454025, 19.949770>,  <33.668774, 32.257053, 20.665783>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548042, 32.454025, 19.949770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.945595, 32.409924, 19.952654>,  <34.184124, 32.383461, 19.954384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.945595, 32.409924, 19.952654>,  <33.548042, 32.454025, 19.949770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945595, 32.409924, 19.952654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062556, -0.615256, -0.785841,
		0.091079, 0.780579, -0.618386,
		0.993877, -0.110257, 0.007208,
		34.243759, 32.376846, 19.954817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818920, 32.579601, 19.262722>,  <33.548042, 32.454025, 19.949770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818920, 32.579601, 19.262722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.114182, 32.369171, 19.431658>,  <34.291340, 32.242912, 19.533020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.114182, 32.369171, 19.431658>,  <33.818920, 32.579601, 19.262722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.114182, 32.369171, 19.431658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123012, -0.720491, -0.682467,
		0.663324, 0.451812, -0.596547,
		0.738153, -0.526079, 0.422340,
		34.335629, 32.211346, 19.558359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197418, 32.358231, 18.690514>,  <33.818920, 32.579601, 19.262722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197418, 32.358231, 18.690514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.342426, 32.134995, 18.989075>,  <34.429432, 32.001053, 19.168211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.342426, 32.134995, 18.989075>,  <34.197418, 32.358231, 18.690514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.342426, 32.134995, 18.989075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095290, -0.774489, -0.625370,
		0.927092, 0.297834, -0.227587,
		0.362520, -0.558088, 0.746403,
		34.451183, 31.967567, 19.212996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764984, 31.995806, 18.406130>,  <34.197418, 32.358231, 18.690514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764984, 31.995806, 18.406130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.692581, 31.775822, 18.732265>,  <34.649139, 31.643831, 18.927946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.692581, 31.775822, 18.732265>,  <34.764984, 31.995806, 18.406130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692581, 31.775822, 18.732265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100445, -0.835036, -0.540948,
		0.978338, -0.016021, 0.206392,
		-0.181011, -0.549961, 0.815339,
		34.638279, 31.610834, 18.976868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248852, 31.473972, 18.397318>,  <34.764984, 31.995806, 18.406130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248852, 31.473972, 18.397318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.951591, 31.340191, 18.629131>,  <34.773235, 31.259922, 18.768219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.951591, 31.340191, 18.629131>,  <35.248852, 31.473972, 18.397318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951591, 31.340191, 18.629131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001198, -0.866780, -0.498689,
		0.669119, -0.369909, 0.644552,
		-0.743154, -0.334454, 0.579536,
		34.728645, 31.239855, 18.802992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501656, 30.800993, 18.572998>,  <35.248852, 31.473972, 18.397318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501656, 30.800993, 18.572998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.104641, 30.805422, 18.621578>,  <34.866432, 30.808079, 18.650726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.104641, 30.805422, 18.621578>,  <35.501656, 30.800993, 18.572998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104641, 30.805422, 18.621578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064188, -0.894187, -0.443069,
		0.103692, -0.447558, 0.888223,
		-0.992536, 0.011071, 0.121448,
		34.806881, 30.808743, 18.658012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.319550, 30.155758, 18.815603>,  <35.501656, 30.800993, 18.572998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.319550, 30.155758, 18.815603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.979813, 30.307405, 18.668692>,  <34.775970, 30.398394, 18.580545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.979813, 30.307405, 18.668692>,  <35.319550, 30.155758, 18.815603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979813, 30.307405, 18.668692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210361, -0.881269, -0.423217,
		-0.484122, -0.282193, 0.828247,
		-0.849338, 0.379119, -0.367279,
		34.725010, 30.421141, 18.558508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893543, 29.606358, 18.825737>,  <35.319550, 30.155758, 18.815603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893543, 29.606358, 18.825737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.736378, 29.869186, 18.568405>,  <34.642078, 30.026884, 18.414005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.736378, 29.869186, 18.568405>,  <34.893543, 29.606358, 18.825737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736378, 29.869186, 18.568405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236851, -0.748303, -0.619633,
		-0.888550, -0.091089, 0.449646,
		-0.392913, 0.657074, -0.643330,
		34.618504, 30.066309, 18.375406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514923, 29.384842, 19.312422>,  <34.893543, 29.606358, 18.825737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.514923, 29.384842, 19.312422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.184258, 29.174131, 19.233284>,  <34.985859, 29.047705, 19.185802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.184258, 29.174131, 19.233284>,  <35.514923, 29.384842, 19.312422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184258, 29.174131, 19.233284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285833, 0.090250, 0.954020,
		-0.484698, 0.845201, -0.225176,
		-0.826660, -0.526774, -0.197843,
		34.936260, 29.016100, 19.173931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917278, 29.751131, 19.630234>,  <35.514923, 29.384842, 19.312422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917278, 29.751131, 19.630234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.807671, 29.370197, 19.576611>,  <34.741905, 29.141638, 19.544437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.807671, 29.370197, 19.576611>,  <34.917278, 29.751131, 19.630234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807671, 29.370197, 19.576611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309947, -0.044505, 0.949712,
		-0.910409, 0.301794, -0.282978,
		-0.274023, -0.952334, -0.134058,
		34.725464, 29.084497, 19.536392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178841, 29.612541, 19.918257>,  <34.917278, 29.751131, 19.630234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178841, 29.612541, 19.918257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.329525, 29.242516, 19.898901>,  <34.419937, 29.020500, 19.887287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.329525, 29.242516, 19.898901>,  <34.178841, 29.612541, 19.918257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329525, 29.242516, 19.898901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145694, -0.110758, 0.983110,
		-0.914800, -0.363302, -0.176501,
		0.376715, -0.925064, -0.048390,
		34.442539, 28.964996, 19.884384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683765, 29.168411, 20.146002>,  <34.178841, 29.612541, 19.918257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683765, 29.168411, 20.146002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.027126, 28.977247, 20.220558>,  <34.233143, 28.862549, 20.265291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.027126, 28.977247, 20.220558>,  <33.683765, 29.168411, 20.146002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027126, 28.977247, 20.220558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241168, -0.055291, 0.968907,
		-0.452745, -0.876667, -0.162719,
		0.858405, -0.477911, 0.186391,
		34.284649, 28.833874, 20.276476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467201, 28.552109, 20.609619>,  <33.683765, 29.168411, 20.146002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467201, 28.552109, 20.609619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.854813, 28.645119, 20.642897>,  <34.087379, 28.700924, 20.662863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.854813, 28.645119, 20.642897>,  <33.467201, 28.552109, 20.609619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.854813, 28.645119, 20.642897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069946, -0.064674, 0.995452,
		0.236846, -0.970438, -0.046407,
		0.969026, 0.232523, 0.083196,
		34.145519, 28.714876, 20.667856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658749, 28.112549, 21.177412>,  <33.467201, 28.552109, 20.609619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658749, 28.112549, 21.177412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.981834, 28.348377, 21.177607>,  <34.175686, 28.489874, 21.177723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.981834, 28.348377, 21.177607>,  <33.658749, 28.112549, 21.177412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981834, 28.348377, 21.177607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006496, -0.009721, 0.999932,
		0.589534, -0.807659, -0.011681,
		0.807718, 0.589569, 0.000484,
		34.224152, 28.525248, 21.177752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067802, 27.959585, 21.792681>,  <33.658749, 28.112549, 21.177412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067802, 27.959585, 21.792681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.186596, 28.327654, 21.690636>,  <34.257874, 28.548494, 21.629410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.186596, 28.327654, 21.690636>,  <34.067802, 27.959585, 21.792681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186596, 28.327654, 21.690636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015591, 0.262457, 0.964818,
		0.954754, -0.290516, 0.063600,
		0.296987, 0.920172, -0.255112,
		34.275692, 28.603706, 21.614101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712643, 28.122282, 22.148996>,  <34.067802, 27.959585, 21.792681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712643, 28.122282, 22.148996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.549080, 28.479803, 22.075340>,  <34.450943, 28.694317, 22.031147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.549080, 28.479803, 22.075340>,  <34.712643, 28.122282, 22.148996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549080, 28.479803, 22.075340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193959, 0.282292, 0.939517,
		0.891725, 0.348461, -0.288793,
		-0.408909, 0.893804, -0.184139,
		34.426407, 28.747944, 22.020098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396835, 27.811287, 22.427000>,  <34.712643, 28.122282, 22.148996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396835, 27.811287, 22.427000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.510502, 27.473759, 22.609083>,  <35.578701, 27.271242, 22.718334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.510502, 27.473759, 22.609083>,  <35.396835, 27.811287, 22.427000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510502, 27.473759, 22.609083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067737, -0.455927, -0.887436,
		0.956380, 0.283013, -0.072401,
		0.284166, -0.843821, 0.455210,
		35.595753, 27.220612, 22.745646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032330, 27.621189, 22.242905>,  <35.396835, 27.811287, 22.427000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032330, 27.621189, 22.242905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.929829, 27.261736, 22.385334>,  <35.868328, 27.046062, 22.470791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.929829, 27.261736, 22.385334>,  <36.032330, 27.621189, 22.242905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929829, 27.261736, 22.385334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329370, -0.427505, -0.841876,
		0.908762, -0.098457, 0.405534,
		-0.256256, -0.898635, 0.356072,
		35.852951, 26.992146, 22.492155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614960, 27.176632, 22.132881>,  <36.032330, 27.621189, 22.242905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614960, 27.176632, 22.132881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.297386, 26.937029, 22.174557>,  <36.106842, 26.793266, 22.199562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.297386, 26.937029, 22.174557>,  <36.614960, 27.176632, 22.132881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297386, 26.937029, 22.174557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252889, -0.481180, -0.839353,
		0.552913, -0.640044, 0.533508,
		-0.793936, -0.599007, 0.104190,
		36.059204, 26.757326, 22.205814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874249, 26.546816, 21.976719>,  <36.614960, 27.176632, 22.132881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874249, 26.546816, 21.976719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.479931, 26.501690, 21.926950>,  <36.243340, 26.474615, 21.897089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.479931, 26.501690, 21.926950>,  <36.874249, 26.546816, 21.976719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479931, 26.501690, 21.926950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162664, -0.456867, -0.874536,
		0.041817, -0.882352, 0.468728,
		-0.985795, -0.112815, -0.124422,
		36.184193, 26.467846, 21.889624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720158, 25.741663, 21.816278>,  <36.874249, 26.546816, 21.976719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720158, 25.741663, 21.816278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.410961, 25.957052, 21.682093>,  <36.225445, 26.086287, 21.601582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.410961, 25.957052, 21.682093>,  <36.720158, 25.741663, 21.816278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410961, 25.957052, 21.682093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168532, -0.335486, -0.926848,
		-0.611628, -0.772977, 0.168576,
		-0.772986, 0.538476, -0.335464,
		36.179066, 26.118595, 21.581453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379013, 25.359896, 21.290237>,  <36.720158, 25.741663, 21.816278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379013, 25.359896, 21.290237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.236271, 25.727510, 21.223270>,  <36.150627, 25.948080, 21.183090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.236271, 25.727510, 21.223270>,  <36.379013, 25.359896, 21.290237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236271, 25.727510, 21.223270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006525, -0.181665, -0.983339,
		-0.934139, -0.349813, 0.070824,
		-0.356851, 0.919037, -0.167418,
		36.129215, 26.003222, 21.173044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870155, 25.301756, 20.740108>,  <36.379013, 25.359896, 21.290237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870155, 25.301756, 20.740108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.971672, 25.687492, 20.710079>,  <36.032581, 25.918934, 20.692062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.971672, 25.687492, 20.710079>,  <35.870155, 25.301756, 20.740108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971672, 25.687492, 20.710079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005928, -0.079163, -0.996844,
		-0.967241, 0.252544, -0.025808,
		0.253790, 0.964341, -0.075073,
		36.047810, 25.976795, 20.687557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415520, 25.614574, 20.307417>,  <35.870155, 25.301756, 20.740108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415520, 25.614574, 20.307417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.730305, 25.858557, 20.270231>,  <35.919178, 26.004946, 20.247919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.730305, 25.858557, 20.270231>,  <35.415520, 25.614574, 20.307417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730305, 25.858557, 20.270231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064877, -0.068036, -0.995571,
		-0.613577, 0.789511, -0.013970,
		0.786965, 0.609953, -0.092966,
		35.966393, 26.041542, 20.242342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282227, 26.099197, 19.721457>,  <35.415520, 25.614574, 20.307417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282227, 26.099197, 19.721457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.679649, 26.091253, 19.766088>,  <35.918102, 26.086487, 19.792868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.679649, 26.091253, 19.766088>,  <35.282227, 26.099197, 19.721457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679649, 26.091253, 19.766088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107712, -0.140804, -0.984161,
		0.035254, 0.989838, -0.137757,
		0.993557, -0.019858, 0.111581,
		35.977715, 26.085297, 19.799562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.037922, 33.696587, 33.743546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.393845, 33.516514, 33.773449>,  <37.607399, 33.408470, 33.791389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.393845, 33.516514, 33.773449>,  <37.037922, 33.696587, 33.743546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393845, 33.516514, 33.773449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176945, -0.491353, -0.852797,
		0.420644, 0.745594, -0.516865,
		0.889803, -0.450180, 0.074755,
		37.660786, 33.381458, 33.795876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185081, 33.692280, 33.056595>,  <37.037922, 33.696587, 33.743546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185081, 33.692280, 33.056595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.432503, 33.424847, 33.221706>,  <37.580956, 33.264385, 33.320774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.432503, 33.424847, 33.221706>,  <37.185081, 33.692280, 33.056595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432503, 33.424847, 33.221706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221008, -0.652168, -0.725143,
		0.754018, 0.357315, -0.551165,
		0.618556, -0.668583, 0.412777,
		37.618069, 33.224270, 33.345539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565861, 33.453636, 32.551334>,  <37.185081, 33.692280, 33.056595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565861, 33.453636, 32.551334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.613132, 33.158600, 32.817265>,  <37.641495, 32.981579, 32.976822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.613132, 33.158600, 32.817265>,  <37.565861, 33.453636, 32.551334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613132, 33.158600, 32.817265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129209, -0.675246, -0.726187,
		0.984549, -0.000078, -0.175107,
		0.118184, -0.737593, 0.664823,
		37.648586, 32.937321, 33.016712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861877, 32.839634, 32.147366>,  <37.565861, 33.453636, 32.551334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861877, 32.839634, 32.147366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.689873, 32.704735, 32.482353>,  <37.586670, 32.623795, 32.683346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.689873, 32.704735, 32.482353>,  <37.861877, 32.839634, 32.147366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689873, 32.704735, 32.482353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438423, -0.732889, -0.520249,
		0.789223, -0.590880, 0.167298,
		-0.430015, -0.337245, 0.837468,
		37.560867, 32.603561, 32.733593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985012, 32.176197, 32.198170>,  <37.861877, 32.839634, 32.147366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985012, 32.176197, 32.198170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.660557, 32.155079, 32.431160>,  <37.465885, 32.142406, 32.570953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.660557, 32.155079, 32.431160>,  <37.985012, 32.176197, 32.198170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660557, 32.155079, 32.431160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309275, -0.806558, -0.503799,
		0.496398, -0.588793, 0.637897,
		-0.811134, -0.052800, 0.582472,
		37.417217, 32.139240, 32.605900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979984, 31.500792, 32.484898>,  <37.985012, 32.176197, 32.198170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979984, 31.500792, 32.484898> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.610546, 31.653627, 32.497372>,  <37.388882, 31.745329, 32.504856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.610546, 31.653627, 32.497372>,  <37.979984, 31.500792, 32.484898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610546, 31.653627, 32.497372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355686, -0.823745, -0.441511,
		-0.143006, -0.418872, 0.896714,
		-0.923600, 0.382087, 0.031186,
		37.333466, 31.768253, 32.506729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536514, 31.000610, 32.595695>,  <37.979984, 31.500792, 32.484898>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536514, 31.000610, 32.595695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.260853, 31.256960, 32.460434>,  <37.095455, 31.410769, 32.379276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.260853, 31.256960, 32.460434>,  <37.536514, 31.000610, 32.595695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.260853, 31.256960, 32.460434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537304, -0.765065, -0.354937,
		-0.486177, -0.062917, 0.871593,
		-0.689156, 0.640872, -0.338151,
		37.054108, 31.449221, 32.358990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853188, 30.843529, 32.839367>,  <37.536514, 31.000610, 32.595695>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853188, 30.843529, 32.839367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.828995, 31.038549, 32.490967>,  <36.814480, 31.155561, 32.281929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.828995, 31.038549, 32.490967>,  <36.853188, 30.843529, 32.839367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828995, 31.038549, 32.490967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569250, -0.733631, -0.371135,
		-0.819937, 0.473369, 0.321909,
		-0.060478, 0.487553, -0.870996,
		36.810852, 31.184816, 32.229668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246918, 30.639688, 32.590183>,  <36.853188, 30.843529, 32.839367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246918, 30.639688, 32.590183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.350185, 30.825129, 32.251144>,  <36.412148, 30.936392, 32.047722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.350185, 30.825129, 32.251144>,  <36.246918, 30.639688, 32.590183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350185, 30.825129, 32.251144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553663, -0.647974, -0.523056,
		-0.791710, 0.604322, 0.089388,
		0.258173, 0.463599, -0.847598,
		36.427639, 30.964209, 31.996864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644043, 30.652729, 32.038761>,  <36.246918, 30.639688, 32.590183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644043, 30.652729, 32.038761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.968155, 30.707939, 31.810940>,  <36.162624, 30.741066, 31.674248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.968155, 30.707939, 31.810940>,  <35.644043, 30.652729, 32.038761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968155, 30.707939, 31.810940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398000, -0.583752, -0.707693,
		-0.430157, 0.800114, -0.418070,
		0.810284, 0.138028, -0.569551,
		36.211239, 30.749348, 31.640074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405361, 30.738195, 31.395676>,  <35.644043, 30.652729, 32.038761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405361, 30.738195, 31.395676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.786221, 30.650597, 31.310402>,  <36.014736, 30.598038, 31.259237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.786221, 30.650597, 31.310402>,  <35.405361, 30.738195, 31.395676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786221, 30.650597, 31.310402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305498, -0.661635, -0.684770,
		0.008912, 0.717132, -0.696880,
		0.952151, -0.218999, -0.213186,
		36.071865, 30.584896, 31.246447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455723, 30.871956, 30.716835>,  <35.405361, 30.738195, 31.395676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455723, 30.871956, 30.716835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.751339, 30.618513, 30.808365>,  <35.928707, 30.466448, 30.863283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.751339, 30.618513, 30.808365>,  <35.455723, 30.871956, 30.716835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751339, 30.618513, 30.808365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205241, -0.535296, -0.819350,
		0.641635, 0.558568, -0.525648,
		0.739040, -0.633608, 0.228824,
		35.973049, 30.428431, 30.877012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201046, 31.645502, 30.594908>,  <35.455723, 30.871956, 30.716835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201046, 31.645502, 30.594908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.885025, 31.813908, 30.416666>,  <34.695412, 31.914951, 30.309721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.885025, 31.813908, 30.416666>,  <35.201046, 31.645502, 30.594908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885025, 31.813908, 30.416666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358873, 0.271689, 0.892970,
		0.497020, 0.865408, -0.063557,
		-0.790052, 0.421015, -0.445606,
		34.648010, 31.940212, 30.282984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182468, 32.252930, 30.873428>,  <35.201046, 31.645502, 30.594908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182468, 32.252930, 30.873428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.818897, 32.194569, 30.717194>,  <34.600754, 32.159550, 30.623453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.818897, 32.194569, 30.717194>,  <35.182468, 32.252930, 30.873428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818897, 32.194569, 30.717194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415323, 0.399498, 0.817256,
		0.036798, 0.905049, -0.423713,
		-0.908929, -0.145904, -0.390588,
		34.546219, 32.150799, 30.600018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866646, 32.882690, 30.701155>,  <35.182468, 32.252930, 30.873428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866646, 32.882690, 30.701155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.583996, 32.610893, 30.780119>,  <34.414406, 32.447815, 30.827497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.583996, 32.610893, 30.780119>,  <34.866646, 32.882690, 30.701155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583996, 32.610893, 30.780119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411869, 0.621831, 0.666101,
		-0.575367, 0.389376, -0.719263,
		-0.706624, -0.679494, 0.197409,
		34.372009, 32.407043, 30.839342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249020, 33.221008, 30.795528>,  <34.866646, 32.882690, 30.701155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249020, 33.221008, 30.795528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.113430, 32.876961, 30.947996>,  <34.032078, 32.670532, 31.039476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.113430, 32.876961, 30.947996>,  <34.249020, 33.221008, 30.795528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113430, 32.876961, 30.947996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534735, 0.509494, 0.674148,
		-0.774051, 0.024695, -0.632641,
		-0.338975, -0.860120, 0.381169,
		34.011738, 32.618923, 31.062347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508408, 33.103287, 30.630337>,  <34.249020, 33.221008, 30.795528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508408, 33.103287, 30.630337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.651806, 32.948715, 30.970255>,  <33.737843, 32.855972, 31.174206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.651806, 32.948715, 30.970255>,  <33.508408, 33.103287, 30.630337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651806, 32.948715, 30.970255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642778, 0.557970, 0.524887,
		-0.676993, -0.734399, -0.048361,
		0.358493, -0.386430, 0.849797,
		33.759354, 32.832787, 31.225195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181034, 33.419132, 31.123569>,  <33.508408, 33.103287, 30.630337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181034, 33.419132, 31.123569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.391468, 33.199242, 31.383120>,  <33.517727, 33.067307, 31.538849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.391468, 33.199242, 31.383120>,  <33.181034, 33.419132, 31.123569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391468, 33.199242, 31.383120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246816, 0.631458, 0.735080,
		-0.813831, -0.546864, 0.196517,
		0.526081, -0.549727, 0.648875,
		33.549294, 33.034325, 31.577782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741165, 33.149837, 31.577951>,  <33.181034, 33.419132, 31.123569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741165, 33.149837, 31.577951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.100964, 33.180584, 31.749996>,  <33.316841, 33.199032, 31.853224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.100964, 33.180584, 31.749996>,  <32.741165, 33.149837, 31.577951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100964, 33.180584, 31.749996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376191, 0.636935, 0.672900,
		-0.222230, -0.767076, 0.601837,
		0.899497, 0.076868, 0.430113,
		33.370811, 33.203644, 31.879030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571381, 33.046230, 32.226566>,  <32.741165, 33.149837, 31.577951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571381, 33.046230, 32.226566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.924145, 33.234440, 32.214996>,  <33.135803, 33.347366, 32.208054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.924145, 33.234440, 32.214996>,  <32.571381, 33.046230, 32.226566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924145, 33.234440, 32.214996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356107, 0.705144, 0.613155,
		0.308899, -0.530450, 0.789433,
		0.881912, 0.470526, -0.028922,
		33.188717, 33.375599, 32.206322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737289, 33.167675, 33.001034>,  <32.571381, 33.046230, 32.226566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737289, 33.167675, 33.001034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.960606, 33.383022, 32.748535>,  <33.094597, 33.512230, 32.597038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.960606, 33.383022, 32.748535>,  <32.737289, 33.167675, 33.001034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960606, 33.383022, 32.748535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247196, 0.834246, 0.492877,
		0.791961, -0.119130, 0.598837,
		0.558294, 0.538370, -0.631242,
		33.128094, 33.544533, 32.559162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245087, 33.547405, 33.345646>,  <32.737289, 33.167675, 33.001034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245087, 33.547405, 33.345646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.205925, 33.757881, 33.007759>,  <33.182426, 33.884167, 32.805027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.205925, 33.757881, 33.007759>,  <33.245087, 33.547405, 33.345646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205925, 33.757881, 33.007759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230659, 0.813681, 0.533590,
		0.968097, 0.247082, 0.041707,
		-0.097904, 0.526187, -0.844714,
		33.176556, 33.915737, 32.754345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438576, 34.109398, 33.652824>,  <33.245087, 33.547405, 33.345646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438576, 34.109398, 33.652824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.263271, 34.178535, 33.299995>,  <33.158089, 34.220016, 33.088299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.263271, 34.178535, 33.299995>,  <33.438576, 34.109398, 33.652824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263271, 34.178535, 33.299995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350327, 0.870889, 0.344708,
		0.827769, 0.460086, -0.321123,
		-0.438258, 0.172841, -0.882075,
		33.131794, 34.230389, 33.035374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661217, 34.850693, 33.553574>,  <33.438576, 34.109398, 33.652824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661217, 34.850693, 33.553574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.363758, 34.772884, 33.297714>,  <33.185284, 34.726200, 33.144199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.363758, 34.772884, 33.297714>,  <33.661217, 34.850693, 33.553574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363758, 34.772884, 33.297714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278521, 0.959900, 0.031888,
		0.607800, 0.201870, -0.768002,
		-0.743643, -0.194524, -0.639653,
		33.140667, 34.714527, 33.105820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661518, 35.187248, 32.906155>,  <33.661217, 34.850693, 33.553574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661518, 35.187248, 32.906155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.272144, 35.100166, 32.934540>,  <33.038521, 35.047916, 32.951572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.272144, 35.100166, 32.934540>,  <33.661518, 35.187248, 32.906155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272144, 35.100166, 32.934540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217186, 0.976014, 0.015043,
		-0.072539, -0.000770, -0.997365,
		-0.973431, -0.217705, 0.070967,
		32.980114, 35.034855, 32.955830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303749, 35.736904, 32.536160>,  <33.661518, 35.187248, 32.906155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303749, 35.736904, 32.536160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.033802, 35.563728, 32.775196>,  <32.871834, 35.459824, 32.918617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.033802, 35.563728, 32.775196>,  <33.303749, 35.736904, 32.536160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033802, 35.563728, 32.775196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325080, 0.901421, 0.285941,
		-0.662481, -0.001295, -0.749078,
		-0.674864, -0.432941, 0.597596,
		32.831345, 35.433846, 32.954475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622883, 35.955193, 32.410011>,  <33.303749, 35.736904, 32.536160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622883, 35.955193, 32.410011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.750622, 35.881760, 32.781883>,  <32.827267, 35.837700, 33.005009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.750622, 35.881760, 32.781883>,  <32.622883, 35.955193, 32.410011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750622, 35.881760, 32.781883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157458, 0.957139, 0.243089,
		-0.934464, -0.224017, 0.276757,
		0.319351, -0.183581, 0.929684,
		32.846428, 35.826687, 33.060787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575817, 36.481895, 31.762028>,  <32.622883, 35.955193, 32.410011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575817, 36.481895, 31.762028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.816120, 36.634785, 31.481173>,  <32.960300, 36.726517, 31.312660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.816120, 36.634785, 31.481173>,  <32.575817, 36.481895, 31.762028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816120, 36.634785, 31.481173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325458, -0.685279, -0.651514,
		-0.730183, 0.619918, -0.287289,
		0.600758, 0.382224, -0.702136,
		32.996349, 36.749451, 31.270533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237228, 36.736534, 31.133184>,  <32.575817, 36.481895, 31.762028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237228, 36.736534, 31.133184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.609699, 36.649036, 31.016518>,  <32.833179, 36.596539, 30.946518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.609699, 36.649036, 31.016518>,  <32.237228, 36.736534, 31.133184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609699, 36.649036, 31.016518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361840, -0.456632, -0.812747,
		0.044596, 0.862346, -0.504353,
		0.931173, -0.218740, -0.291668,
		32.889050, 36.583416, 30.929018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319778, 37.031750, 30.469593>,  <32.237228, 36.736534, 31.133184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319778, 37.031750, 30.469593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.597523, 36.743942, 30.474697>,  <32.764168, 36.571259, 30.477760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.597523, 36.743942, 30.474697>,  <32.319778, 37.031750, 30.469593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597523, 36.743942, 30.474697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359524, -0.362208, -0.859970,
		0.623383, 0.592540, -0.510185,
		0.694360, -0.719515, 0.012762,
		32.805832, 36.528088, 30.478525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521702, 36.989384, 29.764353>,  <32.319778, 37.031750, 30.469593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521702, 36.989384, 29.764353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.652172, 36.653107, 29.937252>,  <32.730453, 36.451340, 30.040991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.652172, 36.653107, 29.937252>,  <32.521702, 36.989384, 29.764353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652172, 36.653107, 29.937252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241512, -0.516192, -0.821716,
		0.913936, 0.163634, -0.371409,
		0.326180, -0.840696, 0.432247,
		32.750027, 36.400898, 30.066927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967842, 36.691967, 29.302828>,  <32.521702, 36.989384, 29.764353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967842, 36.691967, 29.302828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.838688, 36.383118, 29.521761>,  <32.761196, 36.197807, 29.653122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.838688, 36.383118, 29.521761>,  <32.967842, 36.691967, 29.302828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838688, 36.383118, 29.521761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051922, -0.562987, -0.824833,
		0.945013, -0.294744, 0.141689,
		-0.322884, -0.772122, 0.547334,
		32.741821, 36.151482, 29.685961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302521, 36.184967, 29.115900>,  <32.967842, 36.691967, 29.302828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302521, 36.184967, 29.115900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.977879, 36.004520, 29.264381>,  <32.783092, 35.896252, 29.353470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.977879, 36.004520, 29.264381>,  <33.302521, 36.184967, 29.115900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977879, 36.004520, 29.264381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031693, -0.600463, -0.799025,
		0.583343, -0.660259, 0.473042,
		-0.811607, -0.451113, 0.371202,
		32.734398, 35.869186, 29.375742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345100, 35.498062, 28.887768>,  <33.302521, 36.184967, 29.115900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345100, 35.498062, 28.887768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.965485, 35.559860, 28.997646>,  <32.737717, 35.596939, 29.063574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.965485, 35.559860, 28.997646>,  <33.345100, 35.498062, 28.887768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965485, 35.559860, 28.997646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309867, -0.298326, -0.902764,
		-0.057527, -0.941877, 0.330997,
		-0.949038, 0.154498, 0.274695,
		32.680775, 35.606209, 29.080055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020012, 34.856457, 28.783501>,  <33.345100, 35.498062, 28.887768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020012, 34.856457, 28.783501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.725506, 35.127129, 28.781719>,  <32.548801, 35.289532, 28.780651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.725506, 35.127129, 28.781719>,  <33.020012, 34.856457, 28.783501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725506, 35.127129, 28.781719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338622, -0.374125, -0.863346,
		-0.585873, -0.634144, 0.504593,
		-0.736267, 0.676677, -0.004455,
		32.504627, 35.330132, 28.780382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300812, 34.554539, 28.489489>,  <33.020012, 34.856457, 28.783501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300812, 34.554539, 28.489489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.293232, 34.952778, 28.452766>,  <32.288685, 35.191723, 28.430733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.293232, 34.952778, 28.452766>,  <32.300812, 34.554539, 28.489489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293232, 34.952778, 28.452766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207536, -0.093737, -0.973726,
		-0.978044, 0.000604, 0.208398,
		-0.018946, 0.995597, -0.091804,
		32.287548, 35.251457, 28.425224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.134041, 34.603661, 27.834726>,  <32.300812, 34.554539, 28.489489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.134041, 34.603661, 27.834726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.222839, 34.988083, 27.900553>,  <32.276119, 35.218739, 27.940048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.222839, 34.988083, 27.900553>,  <32.134041, 34.603661, 27.834726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222839, 34.988083, 27.900553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214433, 0.116524, -0.969763,
		-0.951176, 0.250574, -0.180214,
		0.221998, 0.961059, 0.164566,
		32.289440, 35.276402, 27.949923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622021, 35.092548, 27.525202>,  <32.134041, 34.603661, 27.834726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622021, 35.092548, 27.525202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.960709, 35.301098, 27.567600>,  <32.163921, 35.426228, 27.593039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.960709, 35.301098, 27.567600>,  <31.622021, 35.092548, 27.525202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960709, 35.301098, 27.567600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048680, 0.274306, -0.960409,
		-0.529807, 0.808038, 0.257641,
		0.846720, 0.521374, 0.105994,
		32.214725, 35.457512, 27.599398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582094, 35.674236, 27.042234>,  <31.622021, 35.092548, 27.525202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582094, 35.674236, 27.042234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.973772, 35.635593, 27.113619>,  <32.208778, 35.612408, 27.156448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.973772, 35.635593, 27.113619>,  <31.582094, 35.674236, 27.042234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973772, 35.635593, 27.113619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194361, 0.193597, -0.961636,
		0.058354, 0.976313, 0.208346,
		0.979193, -0.096609, 0.178460,
		32.267529, 35.606609, 27.167156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842766, 36.242298, 26.716444>,  <31.582094, 35.674236, 27.042234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842766, 36.242298, 26.716444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.116692, 35.953747, 26.757719>,  <32.281048, 35.780617, 26.782484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.116692, 35.953747, 26.757719>,  <31.842766, 36.242298, 26.716444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116692, 35.953747, 26.757719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279805, 0.129547, -0.951277,
		0.672860, 0.680319, 0.290560,
		0.684813, -0.721376, 0.103189,
		32.322136, 35.737335, 26.788675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226974, 36.339169, 26.159492>,  <31.842766, 36.242298, 26.716444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226974, 36.339169, 26.159492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.399036, 35.997849, 26.277376>,  <32.502274, 35.793056, 26.348106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.399036, 35.997849, 26.277376>,  <32.226974, 36.339169, 26.159492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399036, 35.997849, 26.277376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408364, -0.107224, -0.906500,
		0.805114, 0.510281, 0.302333,
		0.430152, -0.853297, 0.294708,
		32.528084, 35.741859, 26.365789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990055, 36.368881, 26.034369>,  <32.226974, 36.339169, 26.159492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990055, 36.368881, 26.034369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.877541, 35.985031, 26.033457>,  <32.810032, 35.754723, 26.032909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.877541, 35.985031, 26.033457>,  <32.990055, 36.368881, 26.034369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877541, 35.985031, 26.033457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471317, -0.136085, -0.871402,
		0.835906, -0.246188, 0.490564,
		-0.281287, -0.959621, -0.002279,
		32.793156, 35.697144, 26.032774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613029, 36.005219, 25.786144>,  <32.990055, 36.368881, 26.034369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613029, 36.005219, 25.786144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.358871, 35.696980, 25.766335>,  <33.206375, 35.512035, 25.754448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.358871, 35.696980, 25.766335>,  <33.613029, 36.005219, 25.786144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358871, 35.696980, 25.766335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498547, -0.360406, -0.788390,
		0.589682, -0.525630, 0.613179,
		-0.635394, -0.770598, -0.049526,
		33.168255, 35.465801, 25.751476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025951, 35.448479, 25.731388>,  <33.613029, 36.005219, 25.786144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025951, 35.448479, 25.731388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.670822, 35.326935, 25.593145>,  <33.457745, 35.254009, 25.510201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.670822, 35.326935, 25.593145>,  <34.025951, 35.448479, 25.731388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670822, 35.326935, 25.593145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442250, -0.355711, -0.823337,
		0.127245, -0.883820, 0.450190,
		-0.887820, -0.303862, -0.345607,
		33.404476, 35.235775, 25.489464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019482, 34.745560, 25.600721>,  <34.025951, 35.448479, 25.731388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019482, 34.745560, 25.600721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.711166, 34.881149, 25.384947>,  <33.526176, 34.962502, 25.255482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.711166, 34.881149, 25.384947>,  <34.019482, 34.745560, 25.600721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711166, 34.881149, 25.384947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398006, -0.404956, -0.823166,
		-0.497479, -0.849181, 0.177219,
		-0.770782, 0.338973, -0.539436,
		33.479931, 34.982841, 25.223116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982956, 34.342976, 25.148848>,  <34.019482, 34.745560, 25.600721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982956, 34.342976, 25.148848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.758877, 34.622440, 24.970837>,  <33.624428, 34.790119, 24.864029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.758877, 34.622440, 24.970837>,  <33.982956, 34.342976, 25.148848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758877, 34.622440, 24.970837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307805, -0.323208, -0.894871,
		-0.769049, -0.638285, -0.033992,
		-0.560197, 0.698662, -0.445030,
		33.590816, 34.832039, 24.837328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608425, 34.011883, 24.658070>,  <33.982956, 34.342976, 25.148848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608425, 34.011883, 24.658070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.622112, 34.389103, 24.525715>,  <33.630325, 34.615437, 24.446302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.622112, 34.389103, 24.525715>,  <33.608425, 34.011883, 24.658070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622112, 34.389103, 24.525715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079433, -0.332602, -0.939716,
		-0.996253, 0.005875, -0.086291,
		0.034222, 0.943049, -0.330889,
		33.632378, 34.672016, 24.426449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257946, 34.007153, 24.006849>,  <33.608425, 34.011883, 24.658070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257946, 34.007153, 24.006849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.470997, 34.345482, 23.994913>,  <33.598827, 34.548481, 23.987751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.470997, 34.345482, 23.994913>,  <33.257946, 34.007153, 24.006849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470997, 34.345482, 23.994913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078163, -0.084268, -0.993373,
		-0.842731, 0.526767, -0.110995,
		0.532630, 0.845822, -0.029842,
		33.630787, 34.599228, 23.985960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940662, 34.439133, 23.538712>,  <33.257946, 34.007153, 24.006849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940662, 34.439133, 23.538712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.327446, 34.539516, 23.556665>,  <33.559517, 34.599747, 23.567438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.327446, 34.539516, 23.556665>,  <32.940662, 34.439133, 23.538712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327446, 34.539516, 23.556665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115402, -0.273876, -0.954816,
		-0.227329, 0.928445, -0.293788,
		0.966956, 0.250961, 0.044885,
		33.617535, 34.614803, 23.570131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027195, 34.695248, 22.903288>,  <32.940662, 34.439133, 23.538712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027195, 34.695248, 22.903288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.397182, 34.619743, 23.035229>,  <33.619175, 34.574440, 23.114393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.397182, 34.619743, 23.035229>,  <33.027195, 34.695248, 22.903288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.397182, 34.619743, 23.035229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277794, -0.256487, -0.925767,
		0.259355, 0.947936, -0.184804,
		0.924968, -0.188765, 0.329852,
		33.674671, 34.563114, 23.134184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357594, 35.078465, 22.488640>,  <33.027195, 34.695248, 22.903288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357594, 35.078465, 22.488640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.607098, 34.804554, 22.639372>,  <33.756802, 34.640205, 22.729811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.607098, 34.804554, 22.639372>,  <33.357594, 35.078465, 22.488640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.607098, 34.804554, 22.639372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399573, -0.134987, -0.906708,
		0.671763, 0.716139, 0.189421,
		0.623759, -0.684780, 0.376829,
		33.794224, 34.599121, 22.752420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902126, 35.155197, 22.034851>,  <33.357594, 35.078465, 22.488640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902126, 35.155197, 22.034851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.940132, 34.798882, 22.212601>,  <33.962936, 34.585091, 22.319250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.940132, 34.798882, 22.212601>,  <33.902126, 35.155197, 22.034851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940132, 34.798882, 22.212601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331594, -0.392578, -0.857863,
		0.938625, 0.228862, 0.258079,
		0.095017, -0.890789, 0.444373,
		33.968636, 34.531647, 22.345913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668045, 34.815674, 22.127388>,  <33.902126, 35.155197, 22.034851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668045, 34.815674, 22.127388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.411770, 34.510769, 22.164200>,  <34.258003, 34.327827, 22.186287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.411770, 34.510769, 22.164200>,  <34.668045, 34.815674, 22.127388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411770, 34.510769, 22.164200> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383517, -0.421560, -0.821707,
		0.665153, -0.491165, 0.562431,
		-0.640692, -0.762263, 0.092031,
		34.219563, 34.282089, 22.191809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088852, 34.254581, 21.888670>,  <34.668045, 34.815674, 22.127388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088852, 34.254581, 21.888670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.732777, 34.074982, 21.919577>,  <34.519131, 33.967224, 21.938120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.732777, 34.074982, 21.919577>,  <35.088852, 34.254581, 21.888670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732777, 34.074982, 21.919577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248034, -0.619866, -0.744476,
		0.382161, -0.643559, 0.663163,
		-0.890187, -0.448997, 0.077265,
		34.465721, 33.940281, 21.942757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348850, 34.167072, 22.578835>,  <35.088852, 34.254581, 21.888670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348850, 34.167072, 22.578835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.744492, 34.110149, 22.563713>,  <35.981876, 34.075996, 22.554640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.744492, 34.110149, 22.563713>,  <35.348850, 34.167072, 22.578835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744492, 34.110149, 22.563713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087910, 0.364772, 0.926938,
		-0.118118, -0.920158, 0.373306,
		0.989101, -0.142305, -0.037805,
		36.041222, 34.067459, 22.552372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639183, 33.730881, 23.173492>,  <35.348850, 34.167072, 22.578835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639183, 33.730881, 23.173492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.941074, 33.962528, 23.050194>,  <36.122208, 34.101517, 22.976213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.941074, 33.962528, 23.050194>,  <35.639183, 33.730881, 23.173492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941074, 33.962528, 23.050194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144768, 0.311262, 0.939233,
		0.639871, -0.753485, 0.151079,
		0.754723, 0.579116, -0.308248,
		36.167492, 34.136265, 22.957720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306522, 33.697197, 23.671957>,  <35.639183, 33.730881, 23.173492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306522, 33.697197, 23.671957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.367332, 34.033245, 23.463696>,  <36.403816, 34.234875, 23.338739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.367332, 34.033245, 23.463696>,  <36.306522, 33.697197, 23.671957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367332, 34.033245, 23.463696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504452, 0.387048, 0.771830,
		0.849952, -0.379979, -0.364963,
		0.152021, 0.840125, -0.520653,
		36.412937, 34.285282, 23.307499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056633, 33.704872, 23.671238>,  <36.306522, 33.697197, 23.671957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056633, 33.704872, 23.671238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.912434, 34.074902, 23.623425>,  <36.825916, 34.296917, 23.594736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.912434, 34.074902, 23.623425>,  <37.056633, 33.704872, 23.671238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912434, 34.074902, 23.623425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580518, 0.322817, 0.747522,
		0.730098, 0.200085, -0.653393,
		-0.360495, 0.925070, -0.119535,
		36.804287, 34.352421, 23.587564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646797, 34.186260, 23.544043>,  <37.056633, 33.704872, 23.671238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.646797, 34.186260, 23.544043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.342152, 34.397438, 23.694359>,  <37.159363, 34.524143, 23.784548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.342152, 34.397438, 23.694359>,  <37.646797, 34.186260, 23.544043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342152, 34.397438, 23.694359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628134, 0.458838, 0.628423,
		0.159346, 0.714662, -0.681078,
		-0.761615, 0.527945, 0.375789,
		37.113667, 34.555820, 23.807096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
