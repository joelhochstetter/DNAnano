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
	<24.596478, 35.116379, 35.158768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.287521, 34.967834, 34.952660>,  <24.102148, 34.878708, 34.828995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.287521, 34.967834, 34.952660>,  <24.596478, 35.116379, 35.158768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.287521, 34.967834, 34.952660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612876, -0.648725, -0.451153,
		-0.166730, -0.664264, 0.728666,
		-0.772388, -0.371361, -0.515273,
		24.055805, 34.856426, 34.798077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.861380, 34.612938, 35.025337>,  <24.596478, 35.116379, 35.158768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.861380, 34.612938, 35.025337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.545151, 34.595734, 34.780994>,  <24.355413, 34.585411, 34.634388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.545151, 34.595734, 34.780994>,  <24.861380, 34.612938, 35.025337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.545151, 34.595734, 34.780994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540657, -0.517444, -0.663281,
		-0.287553, -0.854635, 0.432333,
		-0.790571, -0.043016, -0.610857,
		24.307980, 34.582829, 34.597736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.745840, 33.916328, 34.669247>,  <24.861380, 34.612938, 35.025337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.745840, 33.916328, 34.669247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.646004, 34.242630, 34.460533>,  <24.586102, 34.438412, 34.335304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.646004, 34.242630, 34.460533>,  <24.745840, 33.916328, 34.669247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.646004, 34.242630, 34.460533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464183, -0.372104, -0.803786,
		-0.849846, -0.442819, -0.285784,
		-0.249591, 0.815751, -0.521780,
		24.571127, 34.487354, 34.304001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.535595, 33.834290, 34.025421>,  <24.745840, 33.916328, 34.669247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.535595, 33.834290, 34.025421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.719225, 34.184509, 33.965210>,  <24.829403, 34.394642, 33.929085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.719225, 34.184509, 33.965210>,  <24.535595, 33.834290, 34.025421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.719225, 34.184509, 33.965210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410475, -0.359311, -0.838096,
		-0.787883, 0.322962, -0.524343,
		0.459076, 0.875552, -0.150527,
		24.856947, 34.447174, 33.920052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.199135, 33.988941, 33.384079>,  <24.535595, 33.834290, 34.025421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.199135, 33.988941, 33.384079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.550079, 34.170071, 33.447556>,  <24.760647, 34.278748, 33.485641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.550079, 34.170071, 33.447556>,  <24.199135, 33.988941, 33.384079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.550079, 34.170071, 33.447556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272641, -0.198313, -0.941456,
		-0.394845, 0.869264, -0.297451,
		0.877362, 0.452826, 0.158694,
		24.813288, 34.305920, 33.495163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.211779, 34.495316, 32.894234>,  <24.199135, 33.988941, 33.384079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.211779, 34.495316, 32.894234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.577297, 34.361980, 32.987068>,  <24.796608, 34.281979, 33.042767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.577297, 34.361980, 32.987068>,  <24.211779, 34.495316, 32.894234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.577297, 34.361980, 32.987068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177827, -0.185393, -0.966440,
		0.365174, 0.924401, -0.110136,
		0.913797, -0.333334, 0.232084,
		24.851437, 34.261982, 33.056694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.616362, 34.772507, 32.451298>,  <24.211779, 34.495316, 32.894234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.616362, 34.772507, 32.451298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.805721, 34.446487, 32.584915>,  <24.919336, 34.250874, 32.665085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.805721, 34.446487, 32.584915>,  <24.616362, 34.772507, 32.451298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.805721, 34.446487, 32.584915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347603, -0.175595, -0.921053,
		0.809362, 0.552139, 0.200188,
		0.473397, -0.815051, 0.334046,
		24.947741, 34.201973, 32.685127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.309984, 34.741184, 32.192673>,  <24.616362, 34.772507, 32.451298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.309984, 34.741184, 32.192673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.250422, 34.362553, 32.307091>,  <25.214684, 34.135376, 32.375740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.250422, 34.362553, 32.307091>,  <25.309984, 34.741184, 32.192673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.250422, 34.362553, 32.307091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402729, -0.322243, -0.856720,
		0.903126, -0.012375, 0.429198,
		-0.148908, -0.946576, 0.286042,
		25.205750, 34.078579, 32.392902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.858883, 34.444553, 32.080940>,  <25.309984, 34.741184, 32.192673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.858883, 34.444553, 32.080940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.587944, 34.150299, 32.078190>,  <25.425381, 33.973747, 32.076538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.587944, 34.150299, 32.078190>,  <25.858883, 34.444553, 32.080940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.587944, 34.150299, 32.078190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412843, -0.372361, -0.831209,
		0.608903, -0.565856, 0.555918,
		-0.677346, -0.735632, -0.006878,
		25.384741, 33.929611, 32.076126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.281698, 33.743156, 31.977409>,  <25.858883, 34.444553, 32.080940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.281698, 33.743156, 31.977409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.905514, 33.651375, 31.877100>,  <25.679804, 33.596306, 31.816916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.905514, 33.651375, 31.877100>,  <26.281698, 33.743156, 31.977409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.905514, 33.651375, 31.877100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336423, -0.523004, -0.783127,
		0.048539, -0.820864, 0.569058,
		-0.940460, -0.229456, -0.250771,
		25.623377, 33.582539, 31.801868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.403929, 33.052967, 31.656376>,  <26.281698, 33.743156, 31.977409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.403929, 33.052967, 31.656376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.036711, 33.176315, 31.556696>,  <25.816380, 33.250324, 31.496889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.036711, 33.176315, 31.556696>,  <26.403929, 33.052967, 31.656376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.036711, 33.176315, 31.556696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110532, -0.404553, -0.907810,
		-0.380746, -0.860959, 0.337316,
		-0.918050, 0.308361, -0.249195,
		25.761297, 33.268826, 31.481936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.032328, 32.431210, 31.454041>,  <26.403929, 33.052967, 31.656376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.032328, 32.431210, 31.454041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.859652, 32.743076, 31.272596>,  <25.756046, 32.930195, 31.163731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.859652, 32.743076, 31.272596>,  <26.032328, 32.431210, 31.454041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.859652, 32.743076, 31.272596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118678, -0.449417, -0.885404,
		-0.894180, -0.436054, 0.101480,
		-0.431691, 0.779667, -0.453610,
		25.730145, 32.976978, 31.136513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.599312, 32.073303, 30.932360>,  <26.032328, 32.431210, 31.454041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.599312, 32.073303, 30.932360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.648092, 32.455772, 30.825884>,  <25.677361, 32.685253, 30.761999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.648092, 32.455772, 30.825884>,  <25.599312, 32.073303, 30.932360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.648092, 32.455772, 30.825884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027445, -0.271337, -0.962093,
		-0.992156, 0.110025, -0.059333,
		0.121953, 0.956175, -0.266189,
		25.684679, 32.742626, 30.746027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.400229, 32.054138, 30.360668>,  <25.599312, 32.073303, 30.932360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.400229, 32.054138, 30.360668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.582724, 32.408939, 30.332199>,  <25.692221, 32.621822, 30.315117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.582724, 32.408939, 30.332199>,  <25.400229, 32.054138, 30.360668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.582724, 32.408939, 30.332199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231524, -0.195554, -0.952972,
		-0.859210, 0.418305, -0.294583,
		0.456240, 0.887006, -0.071175,
		25.719595, 32.675041, 30.310846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.125214, 32.427040, 29.773138>,  <25.400229, 32.054138, 30.360668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.125214, 32.427040, 29.773138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.482899, 32.587975, 29.851633>,  <25.697510, 32.684536, 29.898729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.482899, 32.587975, 29.851633>,  <25.125214, 32.427040, 29.773138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.482899, 32.587975, 29.851633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258905, -0.107230, -0.959932,
		-0.365175, 0.909189, -0.200054,
		0.894212, 0.402339, 0.196236,
		25.751162, 32.708675, 29.910503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.177258, 32.956081, 29.354218>,  <25.125214, 32.427040, 29.773138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.177258, 32.956081, 29.354218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.562330, 32.886860, 29.437450>,  <25.793373, 32.845325, 29.487391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.562330, 32.886860, 29.437450>,  <25.177258, 32.956081, 29.354218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.562330, 32.886860, 29.437450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214925, 0.021581, -0.976392,
		0.164479, 0.984676, 0.057969,
		0.962681, -0.173055, 0.208082,
		25.851135, 32.834942, 29.499874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.525581, 33.358013, 28.733210>,  <25.177258, 32.956081, 29.354218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.525581, 33.358013, 28.733210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799250, 33.113918, 28.892973>,  <25.963451, 32.967461, 28.988831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799250, 33.113918, 28.892973>,  <25.525581, 33.358013, 28.733210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.799250, 33.113918, 28.892973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403689, -0.139238, -0.904239,
		0.607410, 0.779889, 0.151082,
		0.684170, -0.610234, 0.399407,
		26.004501, 32.930847, 29.012794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.158581, 33.596355, 28.578987>,  <25.525581, 33.358013, 28.733210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.158581, 33.596355, 28.578987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.190948, 33.203026, 28.644138>,  <26.210369, 32.967030, 28.683229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.190948, 33.203026, 28.644138>,  <26.158581, 33.596355, 28.578987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.190948, 33.203026, 28.644138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517839, -0.098151, -0.849829,
		0.851643, 0.153113, 0.501260,
		0.080920, -0.983322, 0.162877,
		26.215225, 32.908028, 28.693001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.800665, 33.447426, 28.267342>,  <26.158581, 33.596355, 28.578987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.800665, 33.447426, 28.267342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.646982, 33.081738, 28.318855>,  <26.554773, 32.862324, 28.349764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.646982, 33.081738, 28.318855>,  <26.800665, 33.447426, 28.267342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.646982, 33.081738, 28.318855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480524, -0.317123, -0.817637,
		0.788341, -0.252257, 0.561146,
		-0.384207, -0.914221, 0.128786,
		26.531719, 32.807472, 28.357491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.365967, 32.955055, 28.267395>,  <26.800665, 33.447426, 28.267342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.365967, 32.955055, 28.267395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049805, 32.724609, 28.184118>,  <26.860107, 32.586342, 28.134151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049805, 32.724609, 28.184118>,  <27.365967, 32.955055, 28.267395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.049805, 32.724609, 28.184118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525919, -0.463928, -0.712868,
		0.314110, -0.672948, 0.669684,
		-0.790407, -0.576119, -0.208192,
		26.812683, 32.551773, 28.121660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.656860, 32.368340, 28.144215>,  <27.365967, 32.955055, 28.267395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.656860, 32.368340, 28.144215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.321798, 32.305080, 27.935093>,  <27.120760, 32.267124, 27.809620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.321798, 32.305080, 27.935093>,  <27.656860, 32.368340, 28.144215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.321798, 32.305080, 27.935093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511038, -0.564794, -0.647957,
		-0.192802, -0.809937, 0.553923,
		-0.837656, -0.158148, -0.522802,
		27.070501, 32.257637, 27.778252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.495026, 31.594751, 27.968225>,  <27.656860, 32.368340, 28.144215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.495026, 31.594751, 27.968225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.250853, 31.769121, 27.703697>,  <27.104349, 31.873743, 27.544981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.250853, 31.769121, 27.703697>,  <27.495026, 31.594751, 27.968225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.250853, 31.769121, 27.703697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401968, -0.548926, -0.732873,
		-0.682494, -0.713196, 0.159853,
		-0.610430, 0.435925, -0.661321,
		27.067724, 31.899899, 27.505301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.343290, 31.048738, 27.400957>,  <27.495026, 31.594751, 27.968225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.343290, 31.048738, 27.400957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238913, 31.385687, 27.212353>,  <27.176285, 31.587856, 27.099190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.238913, 31.385687, 27.212353>,  <27.343290, 31.048738, 27.400957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.238913, 31.385687, 27.212353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439932, -0.330996, -0.834806,
		-0.859283, -0.425272, -0.284213,
		-0.260947, 0.842369, -0.471510,
		27.160629, 31.638397, 27.070900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.106262, 30.804113, 26.741245>,  <27.343290, 31.048738, 27.400957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.106262, 30.804113, 26.741245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.221889, 31.185549, 26.707529>,  <27.291265, 31.414410, 26.687300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.221889, 31.185549, 26.707529>,  <27.106262, 30.804113, 26.741245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.221889, 31.185549, 26.707529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509430, -0.227777, -0.829818,
		-0.810506, 0.196934, -0.551631,
		0.289068, 0.953591, -0.084291,
		27.308609, 31.471626, 26.682241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.812057, 31.201832, 26.146061>,  <27.106262, 30.804113, 26.741245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.812057, 31.201832, 26.146061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.189322, 31.300537, 26.235107>,  <27.415680, 31.359760, 26.288534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.189322, 31.300537, 26.235107>,  <26.812057, 31.201832, 26.146061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.189322, 31.300537, 26.235107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313789, -0.440552, -0.841101,
		-0.109479, 0.863147, -0.492943,
		0.943160, 0.246762, 0.222615,
		27.472269, 31.374565, 26.301891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.188829, 31.517080, 25.598633>,  <26.812057, 31.201832, 26.146061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.188829, 31.517080, 25.598633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.443665, 31.335045, 25.847475>,  <27.596565, 31.225822, 25.996780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.443665, 31.335045, 25.847475>,  <27.188829, 31.517080, 25.598633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.443665, 31.335045, 25.847475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494552, -0.377722, -0.782780,
		0.591218, 0.806362, -0.015576,
		0.637087, -0.455090, 0.622104,
		27.634790, 31.198519, 26.034107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.878155, 31.650713, 25.355171>,  <27.188829, 31.517080, 25.598633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.878155, 31.650713, 25.355171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.853157, 31.301855, 25.549267>,  <27.838158, 31.092541, 25.665724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.853157, 31.301855, 25.549267>,  <27.878155, 31.650713, 25.355171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.853157, 31.301855, 25.549267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231783, -0.485580, -0.842905,
		0.970758, 0.059794, 0.232494,
		-0.062494, -0.872145, 0.485239,
		27.834410, 31.040211, 25.694839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.936781, 32.401798, 25.147360>,  <27.878155, 31.650713, 25.355171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.936781, 32.401798, 25.147360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547031, 32.348648, 25.219961>,  <27.313183, 32.316757, 25.263521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547031, 32.348648, 25.219961>,  <27.936781, 32.401798, 25.147360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.547031, 32.348648, 25.219961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218419, 0.751801, -0.622164,
		-0.053783, -0.645863, -0.761557,
		-0.974372, -0.132877, 0.181503,
		27.254721, 32.308784, 25.274412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552401, 32.917389, 24.675564>,  <27.936781, 32.401798, 25.147360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.552401, 32.917389, 24.675564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.733805, 32.771091, 24.350464>,  <27.842648, 32.683311, 24.155405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.733805, 32.771091, 24.350464>,  <27.552401, 32.917389, 24.675564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.733805, 32.771091, 24.350464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801420, 0.231633, -0.551428,
		0.389940, 0.901431, -0.188065,
		0.453512, -0.365742, -0.812748,
		27.869858, 32.661369, 24.106640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.044920, 33.508457, 24.827524>,  <27.552401, 32.917389, 24.675564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.044920, 33.508457, 24.827524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.881081, 33.820023, 24.637569>,  <27.782778, 34.006962, 24.523596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.881081, 33.820023, 24.637569>,  <28.044920, 33.508457, 24.827524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.881081, 33.820023, 24.637569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747215, -0.012185, -0.664471,
		-0.523355, -0.627008, -0.577028,
		-0.409598, 0.778917, -0.474887,
		27.758202, 34.053699, 24.495104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398932, 33.009762, 25.352249>,  <28.044920, 33.508457, 24.827524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.398932, 33.009762, 25.352249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.470310, 33.240246, 25.671284>,  <28.513138, 33.378536, 25.862703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.470310, 33.240246, 25.671284>,  <28.398932, 33.009762, 25.352249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.470310, 33.240246, 25.671284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783581, -0.573483, 0.238993,
		0.595112, 0.582325, -0.553841,
		0.178447, 0.576207, 0.797585,
		28.523844, 33.413109, 25.910559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.014902, 33.349735, 25.190924>,  <28.398932, 33.009762, 25.352249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.014902, 33.349735, 25.190924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.930071, 33.272160, 25.574051>,  <28.879173, 33.225613, 25.803926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.930071, 33.272160, 25.574051>,  <29.014902, 33.349735, 25.190924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.930071, 33.272160, 25.574051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726302, -0.687033, 0.021705,
		0.653842, 0.700266, 0.286561,
		-0.212077, -0.193938, 0.957816,
		28.866447, 33.213978, 25.861395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518206, 33.444344, 25.503538>,  <29.014902, 33.349735, 25.190924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518206, 33.444344, 25.503538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.329927, 33.191654, 25.749910>,  <29.216961, 33.040039, 25.897734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.329927, 33.191654, 25.749910>,  <29.518206, 33.444344, 25.503538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.329927, 33.191654, 25.749910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699019, -0.692968, -0.176544,
		0.538347, 0.347449, 0.767764,
		-0.470695, -0.631724, 0.615931,
		29.188719, 33.002136, 25.934690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129471, 33.557743, 25.944214>,  <29.518206, 33.444344, 25.503538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129471, 33.557743, 25.944214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394732, 33.817783, 26.092592>,  <30.553888, 33.973808, 26.181620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394732, 33.817783, 26.092592>,  <30.129471, 33.557743, 25.944214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394732, 33.817783, 26.092592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570685, 0.118491, 0.812576,
		0.484303, -0.750552, 0.449580,
		0.663151, 0.650101, 0.370943,
		30.593678, 34.012814, 26.203875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434410, 33.349377, 26.656633>,  <30.129471, 33.557743, 25.944214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434410, 33.349377, 26.656633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452631, 33.746330, 26.610853>,  <30.463564, 33.984501, 26.583385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452631, 33.746330, 26.610853>,  <30.434410, 33.349377, 26.656633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452631, 33.746330, 26.610853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563497, 0.120128, 0.817338,
		0.824861, 0.027260, 0.564678,
		0.045553, 0.992384, -0.114449,
		30.466297, 34.044044, 26.576519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839758, 33.699593, 27.185871>,  <30.434410, 33.349377, 26.656633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839758, 33.699593, 27.185871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.550722, 33.951550, 27.071959>,  <30.377300, 34.102722, 27.003611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.550722, 33.951550, 27.071959>,  <30.839758, 33.699593, 27.185871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550722, 33.951550, 27.071959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395117, -0.038304, 0.917832,
		0.567227, 0.775738, 0.276559,
		-0.722590, 0.629892, -0.284780,
		30.333944, 34.140518, 26.986525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815851, 34.297848, 27.620768>,  <30.839758, 33.699593, 27.185871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815851, 34.297848, 27.620768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448950, 34.269672, 27.463959>,  <30.228809, 34.252766, 27.369873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448950, 34.269672, 27.463959>,  <30.815851, 34.297848, 27.620768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448950, 34.269672, 27.463959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398240, 0.179502, 0.899546,
		0.007004, 0.981232, -0.192701,
		-0.917254, -0.070441, -0.392024,
		30.173773, 34.248539, 27.346352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555931, 34.870251, 27.749964>,  <30.815851, 34.297848, 27.620768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555931, 34.870251, 27.749964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248795, 34.617321, 27.708809>,  <30.064512, 34.465565, 27.684116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.248795, 34.617321, 27.708809>,  <30.555931, 34.870251, 27.749964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.248795, 34.617321, 27.708809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250536, 0.148575, 0.956638,
		-0.589617, 0.760325, -0.272502,
		-0.767843, -0.632322, -0.102887,
		30.018442, 34.427624, 27.677942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977358, 35.315865, 28.014284>,  <30.555931, 34.870251, 27.749964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.977358, 35.315865, 28.014284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.870861, 34.931007, 28.037622>,  <29.806963, 34.700092, 28.051626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.870861, 34.931007, 28.037622>,  <29.977358, 35.315865, 28.014284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870861, 34.931007, 28.037622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376204, 0.159451, 0.912714,
		-0.887461, 0.221052, -0.404413,
		-0.266242, -0.962139, 0.058346,
		29.790989, 34.642365, 28.055126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323713, 35.343246, 28.380350>,  <29.977358, 35.315865, 28.014284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.323713, 35.343246, 28.380350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446568, 34.962582, 28.379440>,  <29.520281, 34.734184, 28.378895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446568, 34.962582, 28.379440>,  <29.323713, 35.343246, 28.380350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.446568, 34.962582, 28.379440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447801, -0.146630, 0.882028,
		-0.839727, -0.269883, -0.471191,
		0.307136, -0.951663, -0.002275,
		29.538708, 34.677082, 28.378757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.774988, 35.064201, 28.583469>,  <29.323713, 35.343246, 28.380350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.774988, 35.064201, 28.583469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072140, 34.804604, 28.649117>,  <29.250431, 34.648846, 28.688505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072140, 34.804604, 28.649117>,  <28.774988, 35.064201, 28.583469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072140, 34.804604, 28.649117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344561, -0.160504, 0.924941,
		-0.573942, -0.743667, -0.342854,
		0.742878, -0.648997, 0.164119,
		29.295004, 34.609905, 28.698353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.490622, 34.659466, 28.944773>,  <28.774988, 35.064201, 28.583469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.490622, 34.659466, 28.944773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.871719, 34.559700, 29.014139>,  <29.100378, 34.499840, 29.055759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.871719, 34.559700, 29.014139>,  <28.490622, 34.659466, 28.944773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871719, 34.559700, 29.014139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235396, -0.245313, 0.940431,
		-0.192014, -0.936811, -0.292431,
		0.952743, -0.249413, 0.173418,
		29.157541, 34.484875, 29.066164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.530848, 33.951160, 29.174402>,  <28.490622, 34.659466, 28.944773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.530848, 33.951160, 29.174402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855585, 34.141296, 29.310024>,  <29.050426, 34.255379, 29.391397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855585, 34.141296, 29.310024>,  <28.530848, 33.951160, 29.174402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855585, 34.141296, 29.310024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289828, -0.176028, 0.940752,
		0.506864, -0.862011, -0.005139,
		0.811843, 0.475344, 0.339057,
		29.099138, 34.283901, 29.411741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939556, 33.493401, 29.629002>,  <28.530848, 33.951160, 29.174402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.939556, 33.493401, 29.629002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029938, 33.864937, 29.746435>,  <29.084166, 34.087860, 29.816896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029938, 33.864937, 29.746435>,  <28.939556, 33.493401, 29.629002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029938, 33.864937, 29.746435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328081, -0.211212, 0.920735,
		0.917229, -0.304362, 0.257013,
		0.225952, 0.928845, 0.293585,
		29.097723, 34.143589, 29.834511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361828, 33.476288, 30.244904>,  <28.939556, 33.493401, 29.629002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361828, 33.476288, 30.244904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.217144, 33.848431, 30.268919>,  <29.130335, 34.071716, 30.283329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.217144, 33.848431, 30.268919>,  <29.361828, 33.476288, 30.244904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217144, 33.848431, 30.268919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118443, -0.109735, 0.986879,
		0.924737, 0.349851, 0.149887,
		-0.361708, 0.930356, 0.060039,
		29.108631, 34.127537, 30.286930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595873, 33.725674, 30.880762>,  <29.361828, 33.476288, 30.244904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595873, 33.725674, 30.880762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311655, 33.991272, 30.787611>,  <29.141125, 34.150631, 30.731720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311655, 33.991272, 30.787611>,  <29.595873, 33.725674, 30.880762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311655, 33.991272, 30.787611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417240, -0.131088, 0.899292,
		0.566601, 0.736153, 0.370191,
		-0.710544, 0.663999, -0.232879,
		29.098492, 34.190472, 30.717747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540052, 34.069431, 31.488436>,  <29.595873, 33.725674, 30.880762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540052, 34.069431, 31.488436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.204739, 34.156357, 31.288416>,  <29.003550, 34.208511, 31.168404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.204739, 34.156357, 31.288416>,  <29.540052, 34.069431, 31.488436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204739, 34.156357, 31.288416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514390, -0.011135, 0.857484,
		0.180772, 0.976039, 0.121117,
		-0.838287, 0.217311, -0.500052,
		28.953253, 34.221550, 31.138401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217722, 34.760933, 31.657761>,  <29.540052, 34.069431, 31.488436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217722, 34.760933, 31.657761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.899538, 34.548409, 31.541176>,  <28.708628, 34.420895, 31.471226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.899538, 34.548409, 31.541176>,  <29.217722, 34.760933, 31.657761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.899538, 34.548409, 31.541176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502001, 0.308303, 0.808050,
		-0.339470, 0.789084, -0.511962,
		-0.795459, -0.531315, -0.291462,
		28.660900, 34.389015, 31.453737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.712582, 35.185204, 31.863199>,  <29.217722, 34.760933, 31.657761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.712582, 35.185204, 31.863199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.560438, 34.826733, 31.771814>,  <28.469152, 34.611649, 31.716984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.560438, 34.826733, 31.771814>,  <28.712582, 35.185204, 31.863199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.560438, 34.826733, 31.771814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655360, 0.086875, 0.750303,
		-0.652557, 0.435110, -0.620362,
		-0.380359, -0.896176, -0.228463,
		28.446331, 34.557880, 31.703276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.998650, 35.195442, 31.883667>,  <28.712582, 35.185204, 31.863199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.998650, 35.195442, 31.883667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.050402, 34.799568, 31.908289>,  <28.081453, 34.562046, 31.923061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.050402, 34.799568, 31.908289>,  <27.998650, 35.195442, 31.883667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.050402, 34.799568, 31.908289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601719, -0.029018, 0.798181,
		-0.788159, -0.140307, -0.599265,
		0.129380, -0.989683, 0.061555,
		28.089216, 34.502663, 31.926756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342508, 34.854992, 32.006199>,  <27.998650, 35.195442, 31.883667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342508, 34.854992, 32.006199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.605150, 34.578236, 32.126305>,  <27.762735, 34.412182, 32.198368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.605150, 34.578236, 32.126305>,  <27.342508, 34.854992, 32.006199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.605150, 34.578236, 32.126305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491642, -0.090719, 0.866059,
		-0.571980, -0.716279, -0.399730,
		0.656602, -0.691892, 0.300264,
		27.802132, 34.370667, 32.216385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.916197, 34.338146, 32.222691>,  <27.342508, 34.854992, 32.006199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.916197, 34.338146, 32.222691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.275667, 34.259174, 32.379356>,  <27.491350, 34.211792, 32.473354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.275667, 34.259174, 32.379356>,  <26.916197, 34.338146, 32.222691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.275667, 34.259174, 32.379356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438569, -0.392317, 0.808545,
		-0.005973, -0.898393, -0.439152,
		0.898678, -0.197428, 0.391664,
		27.545271, 34.199947, 32.496857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.954014, 33.558838, 32.544266>,  <26.916197, 34.338146, 32.222691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.954014, 33.558838, 32.544266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258492, 33.760735, 32.707153>,  <27.441177, 33.881870, 32.804886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258492, 33.760735, 32.707153>,  <26.954014, 33.558838, 32.544266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258492, 33.760735, 32.707153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288513, -0.298796, 0.909660,
		0.580814, -0.809914, -0.081819,
		0.761194, 0.504737, 0.407216,
		27.486849, 33.912155, 32.829319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.310665, 33.166454, 33.053780>,  <26.954014, 33.558838, 32.544266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.310665, 33.166454, 33.053780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376146, 33.548611, 33.152107>,  <27.415436, 33.777905, 33.211105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376146, 33.548611, 33.152107>,  <27.310665, 33.166454, 33.053780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376146, 33.548611, 33.152107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268573, -0.196606, 0.942981,
		0.949246, -0.220391, 0.224408,
		0.163705, 0.955392, 0.245818,
		27.425259, 33.835228, 33.225853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398439, 33.156418, 33.819153>,  <27.310665, 33.166454, 33.053780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398439, 33.156418, 33.819153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.332569, 33.541023, 33.731171>,  <27.293047, 33.771786, 33.678383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.332569, 33.541023, 33.731171>,  <27.398439, 33.156418, 33.819153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.332569, 33.541023, 33.731171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377433, 0.144600, 0.914678,
		0.911277, 0.233644, 0.339094,
		-0.164676, 0.961510, -0.219956,
		27.283167, 33.829475, 33.665184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615908, 33.454933, 34.452930>,  <27.398439, 33.156418, 33.819153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.615908, 33.454933, 34.452930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365046, 33.697628, 34.257565>,  <27.214529, 33.843246, 34.140347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365046, 33.697628, 34.257565>,  <27.615908, 33.454933, 34.452930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365046, 33.697628, 34.257565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355996, 0.334447, 0.872589,
		0.692780, 0.721122, 0.006246,
		-0.627154, 0.606736, -0.488415,
		27.176899, 33.879650, 34.111038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.718567, 34.211185, 34.712322>,  <27.615908, 33.454933, 34.452930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.718567, 34.211185, 34.712322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376657, 34.226585, 34.505295>,  <27.171513, 34.235825, 34.381077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376657, 34.226585, 34.505295>,  <27.718567, 34.211185, 34.712322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376657, 34.226585, 34.505295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435039, 0.490673, 0.754971,
		0.283027, 0.870492, -0.402664,
		-0.854773, 0.038502, -0.517572,
		27.120226, 34.238136, 34.350025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.122797, 33.585205, 34.952122>,  <27.718567, 34.211185, 34.712322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.122797, 33.585205, 34.952122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.297956, 33.782368, 34.651379>,  <28.403051, 33.900665, 34.470932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.297956, 33.782368, 34.651379>,  <28.122797, 33.585205, 34.952122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297956, 33.782368, 34.651379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821387, 0.120617, 0.557472,
		0.365469, -0.861680, -0.352050,
		0.437899, 0.492908, -0.751855,
		28.429327, 33.930241, 34.425823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807199, 33.366032, 34.867462>,  <28.122797, 33.585205, 34.952122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.807199, 33.366032, 34.867462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822056, 33.751156, 34.760422>,  <28.830969, 33.982231, 34.696198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.822056, 33.751156, 34.760422>,  <28.807199, 33.366032, 34.867462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822056, 33.751156, 34.760422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851339, 0.109741, 0.513011,
		0.523300, -0.246869, -0.815606,
		0.037141, 0.962815, -0.267597,
		28.833199, 34.040001, 34.680141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.395971, 33.648815, 34.397057>,  <28.807199, 33.366032, 34.867462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.395971, 33.648815, 34.397057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278837, 33.931492, 34.654690>,  <29.208557, 34.101097, 34.809269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278837, 33.931492, 34.654690>,  <29.395971, 33.648815, 34.397057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278837, 33.931492, 34.654690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789713, -0.201021, 0.579607,
		0.539075, 0.678367, -0.499215,
		-0.292834, 0.706688, 0.644081,
		29.190987, 34.143497, 34.847916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993620, 34.138313, 34.605431>,  <29.395971, 33.648815, 34.397057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993620, 34.138313, 34.605431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.716768, 34.145454, 34.894054>,  <29.550657, 34.149738, 35.067226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.716768, 34.145454, 34.894054>,  <29.993620, 34.138313, 34.605431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.716768, 34.145454, 34.894054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712943, -0.139006, 0.687306,
		0.112570, 0.990131, 0.083482,
		-0.692127, 0.017853, 0.721555,
		29.509130, 34.150810, 35.110519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297653, 34.562416, 35.093067>,  <29.993620, 34.138313, 34.605431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297653, 34.562416, 35.093067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005341, 34.337952, 35.248531>,  <29.829954, 34.203274, 35.341812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.005341, 34.337952, 35.248531>,  <30.297653, 34.562416, 35.093067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005341, 34.337952, 35.248531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534706, -0.116654, 0.836948,
		-0.424322, 0.819446, 0.385304,
		-0.730781, -0.561159, 0.388664,
		29.786106, 34.169605, 35.365131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.173420, 34.805412, 35.788849>,  <30.297653, 34.562416, 35.093067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.173420, 34.805412, 35.788849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008196, 34.441242, 35.797909>,  <29.909061, 34.222740, 35.803345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.008196, 34.441242, 35.797909>,  <30.173420, 34.805412, 35.788849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.008196, 34.441242, 35.797909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346223, -0.133987, 0.928535,
		-0.842324, 0.391383, 0.370553,
		-0.413063, -0.910421, 0.022646,
		29.884277, 34.168118, 35.804703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962496, 34.671181, 36.515259>,  <30.173420, 34.805412, 35.788849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962496, 34.671181, 36.515259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.194233, 34.374992, 36.378990>,  <30.333275, 34.197277, 36.297230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.194233, 34.374992, 36.378990>,  <29.962496, 34.671181, 36.515259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194233, 34.374992, 36.378990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287038, -0.205840, 0.935542,
		-0.762869, -0.639787, 0.093293,
		0.579345, -0.740474, -0.340672,
		30.368036, 34.152851, 36.276787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.770384, 33.946590, 36.657249>,  <29.962496, 34.671181, 36.515259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.770384, 33.946590, 36.657249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165701, 33.975849, 36.603691>,  <30.402891, 33.993404, 36.571556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165701, 33.975849, 36.603691>,  <29.770384, 33.946590, 36.657249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165701, 33.975849, 36.603691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151342, -0.358587, 0.921147,
		0.019369, -0.930626, -0.365459,
		0.988292, 0.073151, -0.133897,
		30.462189, 33.997795, 36.563522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085848, 33.445332, 37.056541>,  <29.770384, 33.946590, 36.657249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085848, 33.445332, 37.056541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.399920, 33.687019, 37.002254>,  <30.588362, 33.832031, 36.969685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.399920, 33.687019, 37.002254>,  <30.085848, 33.445332, 37.056541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.399920, 33.687019, 37.002254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259986, -0.122722, 0.957782,
		0.562053, -0.787313, -0.253446,
		0.785178, 0.604217, -0.135714,
		30.635473, 33.868286, 36.961540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652376, 33.109539, 37.416233>,  <30.085848, 33.445332, 37.056541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652376, 33.109539, 37.416233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.756762, 33.493977, 37.380024>,  <30.819393, 33.724640, 37.358299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.756762, 33.493977, 37.380024>,  <30.652376, 33.109539, 37.416233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.756762, 33.493977, 37.380024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487135, -0.050153, 0.871885,
		0.833425, -0.271628, -0.481271,
		0.260965, 0.961095, -0.090521,
		30.835051, 33.782307, 37.352867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375124, 33.140739, 37.408539>,  <30.652376, 33.109539, 37.416233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375124, 33.140739, 37.408539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243462, 33.496395, 37.535713>,  <31.164463, 33.709789, 37.612019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243462, 33.496395, 37.535713>,  <31.375124, 33.140739, 37.408539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243462, 33.496395, 37.535713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576811, -0.077255, 0.813216,
		0.747626, 0.451067, -0.487437,
		-0.329158, 0.889140, 0.317939,
		31.144714, 33.763138, 37.631096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008144, 33.414944, 37.681438>,  <31.375124, 33.140739, 37.408539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008144, 33.414944, 37.681438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700052, 33.629654, 37.819199>,  <31.515198, 33.758480, 37.901855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700052, 33.629654, 37.819199>,  <32.008144, 33.414944, 37.681438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700052, 33.629654, 37.819199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370798, -0.062456, 0.926611,
		0.518896, 0.841407, -0.150931,
		-0.770231, 0.536780, 0.344400,
		31.468983, 33.790688, 37.922520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.420597, 33.833447, 38.171898>,  <32.008144, 33.414944, 37.681438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.420597, 33.833447, 38.171898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033669, 33.858189, 38.270256>,  <31.801512, 33.873035, 38.329273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033669, 33.858189, 38.270256>,  <32.420597, 33.833447, 38.171898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033669, 33.858189, 38.270256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246063, -0.005048, 0.969241,
		0.061197, 0.998072, -0.010339,
		-0.967320, 0.061859, 0.245898,
		31.743473, 33.876747, 38.344025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357273, 34.384827, 38.729309>,  <32.420597, 33.833447, 38.171898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357273, 34.384827, 38.729309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035126, 34.147953, 38.739925>,  <31.841837, 34.005829, 38.746296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035126, 34.147953, 38.739925>,  <32.357273, 34.384827, 38.729309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035126, 34.147953, 38.739925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209518, -0.242483, 0.947261,
		-0.554514, 0.768455, 0.319361,
		-0.805367, -0.592181, 0.026545,
		31.793516, 33.970299, 38.747890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178364, 34.361778, 39.392849>,  <32.357273, 34.384827, 38.729309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178364, 34.361778, 39.392849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994127, 34.041744, 39.239117>,  <31.883585, 33.849724, 39.146877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994127, 34.041744, 39.239117>,  <32.178364, 34.361778, 39.392849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994127, 34.041744, 39.239117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002457, -0.431843, 0.901945,
		-0.887608, 0.416375, 0.196938,
		-0.460594, -0.800090, -0.384331,
		31.855949, 33.801716, 39.123817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809237, 34.313980, 39.951393>,  <32.178364, 34.361778, 39.392849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809237, 34.313980, 39.951393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789349, 33.980148, 39.731937>,  <31.777416, 33.779850, 39.600266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.789349, 33.980148, 39.731937>,  <31.809237, 34.313980, 39.951393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789349, 33.980148, 39.731937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010981, -0.548830, 0.835862,
		-0.998703, 0.047585, 0.018124,
		-0.049721, -0.834579, -0.548640,
		31.774433, 33.729774, 39.567345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233074, 33.900627, 40.222073>,  <31.809237, 34.313980, 39.951393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233074, 33.900627, 40.222073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463428, 33.645813, 40.017120>,  <31.601641, 33.492924, 39.894150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463428, 33.645813, 40.017120>,  <31.233074, 33.900627, 40.222073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463428, 33.645813, 40.017120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050040, -0.653035, 0.755673,
		-0.815996, -0.409543, -0.407952,
		0.575887, -0.637040, -0.512380,
		31.636194, 33.454700, 39.863407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923157, 33.323151, 40.283104>,  <31.233074, 33.900627, 40.222073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923157, 33.323151, 40.283104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291723, 33.185467, 40.210976>,  <31.512863, 33.102856, 40.167698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291723, 33.185467, 40.210976>,  <30.923157, 33.323151, 40.283104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291723, 33.185467, 40.210976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145221, -0.735458, 0.661825,
		-0.360419, -0.583631, -0.727649,
		0.921416, -0.344205, -0.180317,
		31.568148, 33.082207, 40.156879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885647, 32.601143, 40.152630>,  <30.923157, 33.323151, 40.283104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885647, 32.601143, 40.152630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262209, 32.676003, 40.264870>,  <31.488146, 32.720917, 40.332214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262209, 32.676003, 40.264870>,  <30.885647, 32.601143, 40.152630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262209, 32.676003, 40.264870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047461, -0.750159, 0.659552,
		0.333928, -0.634222, -0.697320,
		0.941403, 0.187147, 0.280599,
		31.544630, 32.732147, 40.349049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165047, 31.958122, 40.364902>,  <30.885647, 32.601143, 40.152630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165047, 31.958122, 40.364902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423424, 32.217434, 40.526142>,  <31.578451, 32.373020, 40.622887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423424, 32.217434, 40.526142>,  <31.165047, 31.958122, 40.364902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423424, 32.217434, 40.526142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040110, -0.498494, 0.865965,
		0.762330, -0.575534, -0.295996,
		0.645944, 0.648279, 0.403102,
		31.617207, 32.411919, 40.647072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455727, 31.607269, 40.937340>,  <31.165047, 31.958122, 40.364902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455727, 31.607269, 40.937340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546585, 31.987350, 41.022678>,  <31.601101, 32.215401, 41.073879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.546585, 31.987350, 41.022678>,  <31.455727, 31.607269, 40.937340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.546585, 31.987350, 41.022678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012868, -0.216123, 0.976281,
		0.973775, -0.224506, -0.036865,
		0.227148, 0.950204, 0.213344,
		31.614729, 32.272411, 41.086681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090897, 31.691671, 41.354355>,  <31.455727, 31.607269, 40.937340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090897, 31.691671, 41.354355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868687, 32.016926, 41.423874>,  <31.735361, 32.212078, 41.465588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868687, 32.016926, 41.423874>,  <32.090897, 31.691671, 41.354355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868687, 32.016926, 41.423874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075584, -0.158775, 0.984418,
		0.828060, 0.560002, 0.026742,
		-0.555521, 0.813135, 0.173802,
		31.702030, 32.260868, 41.476013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520378, 31.824785, 41.802956>,  <32.090897, 31.691671, 41.354355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520378, 31.824785, 41.802956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164471, 32.005676, 41.827637>,  <31.950928, 32.114212, 41.842445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164471, 32.005676, 41.827637>,  <32.520378, 31.824785, 41.802956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164471, 32.005676, 41.827637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113708, -0.350555, 0.929614,
		0.442027, 0.820122, 0.363334,
		-0.889765, 0.452229, 0.061701,
		31.897541, 32.141346, 41.846146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400539, 31.822346, 42.519558>,  <32.520378, 31.824785, 41.802956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400539, 31.822346, 42.519558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031853, 31.916790, 42.396473>,  <31.810640, 31.973457, 42.322620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031853, 31.916790, 42.396473>,  <32.400539, 31.822346, 42.519558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031853, 31.916790, 42.396473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358139, -0.213501, 0.908930,
		0.148910, 0.947982, 0.281348,
		-0.921717, 0.236111, -0.307716,
		31.755337, 31.987623, 42.304157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169193, 32.362141, 42.930298>,  <32.400539, 31.822346, 42.519558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169193, 32.362141, 42.930298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841698, 32.177238, 42.794075>,  <31.645201, 32.066296, 42.712341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841698, 32.177238, 42.794075>,  <32.169193, 32.362141, 42.930298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841698, 32.177238, 42.794075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240853, -0.261920, 0.934552,
		-0.521205, 0.847180, 0.103108,
		-0.818740, -0.462259, -0.340560,
		31.596075, 32.038559, 42.691906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552748, 32.580853, 43.283424>,  <32.169193, 32.362141, 42.930298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552748, 32.580853, 43.283424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459669, 32.221546, 43.134308>,  <31.403822, 32.005962, 43.044838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459669, 32.221546, 43.134308>,  <31.552748, 32.580853, 43.283424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459669, 32.221546, 43.134308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284493, -0.303676, 0.909310,
		-0.930008, 0.317651, -0.184885,
		-0.232698, -0.898264, -0.372791,
		31.389860, 31.952066, 43.022472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828941, 32.501530, 43.546337>,  <31.552748, 32.580853, 43.283424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828941, 32.501530, 43.546337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959097, 32.138374, 43.440613>,  <31.037191, 31.920481, 43.377178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.959097, 32.138374, 43.440613>,  <30.828941, 32.501530, 43.546337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.959097, 32.138374, 43.440613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529669, -0.406557, 0.744420,
		-0.783308, -0.102229, -0.613170,
		0.325390, -0.907888, -0.264312,
		31.056713, 31.866009, 43.361320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432005, 32.124241, 43.977551>,  <30.828941, 32.501530, 43.546337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432005, 32.124241, 43.977551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696276, 31.861940, 43.831402>,  <30.854839, 31.704561, 43.743713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.696276, 31.861940, 43.831402>,  <30.432005, 32.124241, 43.977551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.696276, 31.861940, 43.831402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137410, -0.584149, 0.799930,
		-0.737986, -0.478291, -0.476041,
		0.660678, -0.655750, -0.365372,
		30.894480, 31.665215, 43.721790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.181932, 31.459684, 44.137302>,  <30.432005, 32.124241, 43.977551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.181932, 31.459684, 44.137302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.579916, 31.439857, 44.102432>,  <30.818707, 31.427961, 44.081509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.579916, 31.439857, 44.102432>,  <30.181932, 31.459684, 44.137302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579916, 31.439857, 44.102432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041268, -0.589938, 0.806393,
		-0.091399, -0.805926, -0.584919,
		0.994959, -0.049565, -0.087178,
		30.878405, 31.424988, 44.076279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231775, 30.877892, 44.400120>,  <30.181932, 31.459684, 44.137302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.231775, 30.877892, 44.400120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605799, 31.019468, 44.408062>,  <30.830212, 31.104414, 44.412827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605799, 31.019468, 44.408062>,  <30.231775, 30.877892, 44.400120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605799, 31.019468, 44.408062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148199, -0.441179, 0.885098,
		0.322035, -0.824673, -0.464981,
		0.935057, 0.353942, 0.019859,
		30.886316, 31.125650, 44.414021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764263, 30.287964, 44.569351>,  <30.231775, 30.877892, 44.400120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764263, 30.287964, 44.569351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.933960, 30.637966, 44.662636>,  <31.035778, 30.847967, 44.718605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.933960, 30.637966, 44.662636>,  <30.764263, 30.287964, 44.569351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933960, 30.637966, 44.662636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322248, -0.386552, 0.864138,
		0.846271, -0.291452, -0.445960,
		0.424241, 0.875005, 0.233208,
		31.061232, 30.900467, 44.732597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305651, 30.124866, 44.684765>,  <30.764263, 30.287964, 44.569351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305651, 30.124866, 44.684765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313635, 30.475304, 44.877457>,  <31.318424, 30.685566, 44.993073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313635, 30.475304, 44.877457>,  <31.305651, 30.124866, 44.684765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313635, 30.475304, 44.877457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476666, -0.431875, 0.765685,
		0.878858, 0.214340, -0.426224,
		0.019959, 0.876095, 0.481725,
		31.319622, 30.738132, 45.021973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876694, 30.060482, 45.066170>,  <31.305651, 30.124866, 44.684765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876694, 30.060482, 45.066170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700390, 30.372192, 45.244366>,  <31.594608, 30.559217, 45.351284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700390, 30.372192, 45.244366>,  <31.876694, 30.060482, 45.066170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700390, 30.372192, 45.244366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195125, -0.401251, 0.894943,
		0.876160, 0.481382, 0.024799,
		-0.440760, 0.779275, 0.445490,
		31.568161, 30.605974, 45.378014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337589, 30.264921, 45.546589>,  <31.876694, 30.060482, 45.066170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337589, 30.264921, 45.546589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001133, 30.426281, 45.690674>,  <31.799259, 30.523096, 45.777126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.001133, 30.426281, 45.690674>,  <32.337589, 30.264921, 45.546589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001133, 30.426281, 45.690674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094147, -0.546662, 0.832044,
		0.532559, 0.733778, 0.421841,
		-0.841140, 0.403397, 0.360213,
		31.748791, 30.547300, 45.798737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465881, 30.441845, 46.282207>,  <32.337589, 30.264921, 45.546589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465881, 30.441845, 46.282207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075333, 30.367897, 46.237450>,  <31.841003, 30.323528, 46.210594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.075333, 30.367897, 46.237450>,  <32.465881, 30.441845, 46.282207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075333, 30.367897, 46.237450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019375, -0.440825, 0.897384,
		-0.215227, 0.878348, 0.426827,
		-0.976372, -0.184872, -0.111896,
		31.782421, 30.312435, 46.203880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204891, 30.833075, 46.821953>,  <32.465881, 30.441845, 46.282207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204891, 30.833075, 46.821953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944355, 30.547207, 46.719967>,  <31.788034, 30.375687, 46.658775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944355, 30.547207, 46.719967>,  <32.204891, 30.833075, 46.821953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944355, 30.547207, 46.719967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088074, -0.262535, 0.960894,
		-0.753658, 0.648324, 0.108055,
		-0.651339, -0.714669, -0.254962,
		31.748953, 30.332806, 46.643478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791330, 30.807779, 47.345337>,  <32.204891, 30.833075, 46.821953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791330, 30.807779, 47.345337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749565, 30.453196, 47.164986>,  <31.724506, 30.240446, 47.056774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749565, 30.453196, 47.164986>,  <31.791330, 30.807779, 47.345337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749565, 30.453196, 47.164986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243629, -0.462341, 0.852576,
		-0.964232, -0.020828, 0.264241,
		-0.104412, -0.886458, -0.450878,
		31.718241, 30.187258, 47.029724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531387, 30.436251, 47.890110>,  <31.791330, 30.807779, 47.345337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531387, 30.436251, 47.890110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689280, 30.166597, 47.640396>,  <31.784016, 30.004807, 47.490566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689280, 30.166597, 47.640396>,  <31.531387, 30.436251, 47.890110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689280, 30.166597, 47.640396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113875, -0.638328, 0.761294,
		-0.911713, -0.371596, -0.175201,
		0.394730, -0.674131, -0.624288,
		31.807699, 29.964357, 47.453110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224194, 29.816090, 48.132435>,  <31.531387, 30.436251, 47.890110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224194, 29.816090, 48.132435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560780, 29.732088, 47.933304>,  <31.762732, 29.681686, 47.813824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560780, 29.732088, 47.933304>,  <31.224194, 29.816090, 48.132435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560780, 29.732088, 47.933304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257824, -0.653647, 0.711528,
		-0.474827, -0.727080, -0.495878,
		0.841467, -0.210003, -0.497828,
		31.813219, 29.669086, 47.783955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387226, 29.104048, 48.357269>,  <31.224194, 29.816090, 48.132435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387226, 29.104048, 48.357269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727343, 29.236416, 48.193562>,  <31.931412, 29.315838, 48.095337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727343, 29.236416, 48.193562>,  <31.387226, 29.104048, 48.357269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727343, 29.236416, 48.193562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526303, -0.539991, 0.656822,
		-0.003644, -0.773887, -0.633314,
		0.850289, 0.330921, -0.409266,
		31.982430, 29.335691, 48.070782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874329, 28.487682, 48.290398>,  <31.387226, 29.104048, 48.357269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874329, 28.487682, 48.290398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087402, 28.825556, 48.269398>,  <32.215248, 29.028280, 48.256798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.087402, 28.825556, 48.269398>,  <31.874329, 28.487682, 48.290398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087402, 28.825556, 48.269398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724872, -0.423352, 0.543446,
		0.436814, -0.327541, -0.837801,
		0.532686, 0.844683, -0.052499,
		32.247208, 29.078960, 48.253647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471611, 28.327475, 48.013741>,  <31.874329, 28.487682, 48.290398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471611, 28.327475, 48.013741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518261, 28.639269, 48.259930>,  <32.546249, 28.826345, 48.407642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518261, 28.639269, 48.259930>,  <32.471611, 28.327475, 48.013741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518261, 28.639269, 48.259930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739006, -0.482119, 0.470565,
		0.663528, 0.399958, -0.632270,
		0.116623, 0.779484, 0.615471,
		32.553249, 28.873114, 48.444572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149475, 28.400002, 48.003059>,  <32.471611, 28.327475, 48.013741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149475, 28.400002, 48.003059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961464, 28.528008, 48.332100>,  <32.848660, 28.604811, 48.529522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961464, 28.528008, 48.332100>,  <33.149475, 28.400002, 48.003059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961464, 28.528008, 48.332100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625846, -0.536347, 0.566259,
		0.622410, 0.780975, 0.051816,
		-0.470025, 0.320016, 0.822597,
		32.820457, 28.624012, 48.578880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638222, 28.612719, 48.577709>,  <33.149475, 28.400002, 48.003059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638222, 28.612719, 48.577709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286808, 28.523279, 48.746552>,  <33.075958, 28.469616, 48.847858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286808, 28.523279, 48.746552>,  <33.638222, 28.612719, 48.577709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286808, 28.523279, 48.746552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476893, -0.360146, 0.801790,
		-0.027261, 0.905703, 0.423035,
		-0.878538, -0.223600, 0.422106,
		33.023247, 28.456200, 48.873184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727829, 28.675207, 49.284431>,  <33.638222, 28.612719, 48.577709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727829, 28.675207, 49.284431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391441, 28.458792, 49.287354>,  <33.189610, 28.328943, 49.289104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.391441, 28.458792, 49.287354>,  <33.727829, 28.675207, 49.284431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391441, 28.458792, 49.287354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303127, -0.459907, 0.834626,
		-0.448205, 0.704106, 0.550769,
		-0.840967, -0.541037, 0.007301,
		33.139153, 28.296480, 49.289543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426929, 28.671886, 50.013542>,  <33.727829, 28.675207, 49.284431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426929, 28.671886, 50.013542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273827, 28.348097, 49.835442>,  <33.181965, 28.153822, 49.728580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273827, 28.348097, 49.835442>,  <33.426929, 28.671886, 50.013542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273827, 28.348097, 49.835442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111384, -0.518868, 0.847567,
		-0.917109, 0.274821, 0.288764,
		-0.382759, -0.809475, -0.445248,
		33.159000, 28.105255, 49.701866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968544, 28.453352, 50.457817>,  <33.426929, 28.671886, 50.013542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968544, 28.453352, 50.457817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026722, 28.124430, 50.237759>,  <33.061630, 27.927076, 50.105724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026722, 28.124430, 50.237759>,  <32.968544, 28.453352, 50.457817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026722, 28.124430, 50.237759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031036, -0.559577, 0.828197,
		-0.988879, -0.103384, -0.106909,
		0.145446, -0.822305, -0.550145,
		33.070354, 27.877739, 50.072716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633690, 27.907490, 50.851505>,  <32.968544, 28.453352, 50.457817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633690, 27.907490, 50.851505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851410, 27.702276, 50.586014>,  <32.982040, 27.579149, 50.426720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851410, 27.702276, 50.586014>,  <32.633690, 27.907490, 50.851505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851410, 27.702276, 50.586014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137445, -0.725969, 0.673853,
		-0.827556, -0.458003, -0.324630,
		0.544298, -0.513032, -0.663730,
		33.014698, 27.548367, 50.386894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415936, 27.194016, 50.960403>,  <32.633690, 27.907490, 50.851505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415936, 27.194016, 50.960403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768967, 27.230415, 50.775890>,  <32.980785, 27.252254, 50.665184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768967, 27.230415, 50.775890>,  <32.415936, 27.194016, 50.960403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768967, 27.230415, 50.775890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417766, -0.601906, 0.680573,
		-0.215717, -0.793365, -0.569243,
		0.882574, 0.090999, -0.461283,
		33.033737, 27.257715, 50.637505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765511, 26.546751, 51.052219>,  <32.415936, 27.194016, 50.960403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765511, 26.546751, 51.052219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070530, 26.784010, 50.948914>,  <33.253540, 26.926365, 50.886929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070530, 26.784010, 50.948914>,  <32.765511, 26.546751, 51.052219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070530, 26.784010, 50.948914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642244, -0.646091, 0.412419,
		0.077761, -0.480358, -0.873619,
		0.762546, 0.593147, -0.258266,
		33.299294, 26.961954, 50.871433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203514, 26.292742, 50.558865>,  <32.765511, 26.546751, 51.052219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203514, 26.292742, 50.558865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439316, 26.486599, 50.817356>,  <33.580795, 26.602913, 50.972450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.439316, 26.486599, 50.817356>,  <33.203514, 26.292742, 50.558865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439316, 26.486599, 50.817356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490786, -0.850313, 0.189993,
		0.641573, 0.205156, -0.739118,
		0.589503, 0.484643, 0.646225,
		33.616165, 26.631992, 51.011223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905521, 26.174290, 50.488419>,  <33.203514, 26.292742, 50.558865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905521, 26.174290, 50.488419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862400, 26.251905, 50.878441>,  <33.836529, 26.298475, 51.112453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862400, 26.251905, 50.878441>,  <33.905521, 26.174290, 50.488419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862400, 26.251905, 50.878441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512035, -0.829847, 0.221753,
		0.852173, 0.523167, -0.009893,
		-0.107804, 0.194037, 0.975053,
		33.830059, 26.310116, 51.170956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562519, 26.300871, 50.884239>,  <33.905521, 26.174290, 50.488419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562519, 26.300871, 50.884239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294685, 26.125069, 51.123737>,  <34.133987, 26.019587, 51.267437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294685, 26.125069, 51.123737>,  <34.562519, 26.300871, 50.884239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294685, 26.125069, 51.123737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644898, -0.743938, 0.175109,
		0.368468, 0.503379, 0.781563,
		-0.669580, -0.439506, 0.598746,
		34.093811, 25.993217, 51.303360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669151, 26.153463, 51.687725>,  <34.562519, 26.300871, 50.884239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669151, 26.153463, 51.687725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524918, 25.841743, 51.482719>,  <34.438377, 25.654713, 51.359715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524918, 25.841743, 51.482719>,  <34.669151, 26.153463, 51.687725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524918, 25.841743, 51.482719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845558, -0.505056, 0.173060,
		-0.393716, -0.370961, 0.841056,
		-0.360582, -0.779298, -0.512518,
		34.416744, 25.607954, 51.328964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462368, 26.828928, 51.642296>,  <34.669151, 26.153463, 51.687725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462368, 26.828928, 51.642296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803970, 26.670303, 51.777000>,  <35.008934, 26.575129, 51.857822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803970, 26.670303, 51.777000>,  <34.462368, 26.828928, 51.642296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803970, 26.670303, 51.777000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272905, -0.209620, -0.938926,
		0.442934, 0.893755, -0.070794,
		0.854010, -0.396562, 0.336758,
		35.060173, 26.551334, 51.878029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112907, 27.157394, 51.294167>,  <34.462368, 26.828928, 51.642296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112907, 27.157394, 51.294167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165070, 26.780725, 51.418266>,  <35.196365, 26.554724, 51.492725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165070, 26.780725, 51.418266>,  <35.112907, 27.157394, 51.294167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165070, 26.780725, 51.418266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215347, -0.278545, -0.935969,
		0.967792, 0.188861, 0.166463,
		0.130401, -0.941671, 0.310245,
		35.204189, 26.498224, 51.511341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748646, 26.977423, 51.111469>,  <35.112907, 27.157394, 51.294167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748646, 26.977423, 51.111469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519241, 26.651373, 51.078819>,  <35.381599, 26.455744, 51.059231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.519241, 26.651373, 51.078819>,  <35.748646, 26.977423, 51.111469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519241, 26.651373, 51.078819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190928, -0.036107, -0.980940,
		0.796641, -0.578160, 0.176337,
		-0.573507, -0.815124, -0.081623,
		35.347191, 26.406836, 51.054333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131866, 26.280489, 50.823063>,  <35.748646, 26.977423, 51.111469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131866, 26.280489, 50.823063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742573, 26.298676, 50.732948>,  <35.508999, 26.309587, 50.678879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742573, 26.298676, 50.732948>,  <36.131866, 26.280489, 50.823063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742573, 26.298676, 50.732948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224599, -0.019861, -0.974249,
		-0.048767, -0.998769, 0.009118,
		-0.973231, 0.045464, -0.225291,
		35.450603, 26.312315, 50.665359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913528, 25.792154, 50.238335>,  <36.131866, 26.280489, 50.823063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913528, 25.792154, 50.238335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645428, 26.089001, 50.236145>,  <35.484566, 26.267109, 50.234833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.645428, 26.089001, 50.236145>,  <35.913528, 25.792154, 50.238335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645428, 26.089001, 50.236145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032802, 0.022261, -0.999214,
		-0.741409, -0.669904, -0.039263,
		-0.670252, 0.742114, -0.005470,
		35.444351, 26.311634, 50.234505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457745, 25.628777, 49.665302>,  <35.913528, 25.792154, 50.238335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457745, 25.628777, 49.665302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393761, 26.019131, 49.724720>,  <35.355370, 26.253344, 49.760372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393761, 26.019131, 49.724720>,  <35.457745, 25.628777, 49.665302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393761, 26.019131, 49.724720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105688, 0.132687, -0.985507,
		-0.981450, -0.173337, 0.081916,
		-0.159956, 0.975883, 0.148546,
		35.345776, 26.311895, 49.769283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751320, 25.790751, 49.257240>,  <35.457745, 25.628777, 49.665302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751320, 25.790751, 49.257240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930794, 26.138388, 49.340538>,  <35.038479, 26.346970, 49.390518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930794, 26.138388, 49.340538>,  <34.751320, 25.790751, 49.257240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930794, 26.138388, 49.340538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177161, 0.314887, -0.932449,
		-0.875956, 0.381481, 0.295253,
		0.448682, 0.869091, 0.208243,
		35.065399, 26.399115, 49.403011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320354, 26.375425, 49.113850>,  <34.751320, 25.790751, 49.257240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320354, 26.375425, 49.113850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680733, 26.543016, 49.068676>,  <34.896961, 26.643570, 49.041573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680733, 26.543016, 49.068676>,  <34.320354, 26.375425, 49.113850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680733, 26.543016, 49.068676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296303, 0.403849, -0.865512,
		-0.317018, 0.813243, 0.487990,
		0.900946, 0.418976, -0.112939,
		34.951015, 26.668709, 49.034794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212063, 27.076405, 49.006561>,  <34.320354, 26.375425, 49.113850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212063, 27.076405, 49.006561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587616, 27.019522, 48.881168>,  <34.812950, 26.985392, 48.805931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587616, 27.019522, 48.881168>,  <34.212063, 27.076405, 49.006561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587616, 27.019522, 48.881168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218873, 0.456269, -0.862504,
		0.265688, 0.878405, 0.397258,
		0.938885, -0.142208, -0.313484,
		34.869282, 26.976860, 48.787125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453102, 27.654991, 48.821194>,  <34.212063, 27.076405, 49.006561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453102, 27.654991, 48.821194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693375, 27.419193, 48.605164>,  <34.837540, 27.277716, 48.475548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.693375, 27.419193, 48.605164>,  <34.453102, 27.654991, 48.821194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693375, 27.419193, 48.605164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207848, 0.537150, -0.817477,
		0.771998, 0.603296, 0.200131,
		0.600682, -0.589494, -0.540073,
		34.873581, 27.242346, 48.443142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744175, 28.040127, 48.401550>,  <34.453102, 27.654991, 48.821194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744175, 28.040127, 48.401550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818092, 27.697447, 48.208920>,  <34.862442, 27.491838, 48.093342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818092, 27.697447, 48.208920>,  <34.744175, 28.040127, 48.401550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818092, 27.697447, 48.208920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185814, 0.450719, -0.873112,
		0.965051, 0.250831, -0.075896,
		0.184796, -0.856701, -0.481575,
		34.873531, 27.440437, 48.064445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199230, 28.207806, 47.949780>,  <34.744175, 28.040127, 48.401550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199230, 28.207806, 47.949780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030449, 27.876434, 47.802448>,  <34.929180, 27.677612, 47.714050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030449, 27.876434, 47.802448>,  <35.199230, 28.207806, 47.949780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030449, 27.876434, 47.802448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168171, 0.470731, -0.866101,
		0.890884, -0.303512, -0.337944,
		-0.421952, -0.828428, -0.368325,
		34.903862, 27.627907, 47.691952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375835, 28.216473, 47.316841>,  <35.199230, 28.207806, 47.949780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375835, 28.216473, 47.316841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080269, 27.947081, 47.308609>,  <34.902927, 27.785446, 47.303669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080269, 27.947081, 47.308609>,  <35.375835, 28.216473, 47.316841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080269, 27.947081, 47.308609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329998, 0.388349, -0.860399,
		0.587453, -0.628974, -0.509205,
		-0.738918, -0.673481, -0.020577,
		34.858593, 27.745037, 47.302437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457451, 27.973843, 46.640709>,  <35.375835, 28.216473, 47.316841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457451, 27.973843, 46.640709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093372, 27.897223, 46.787598>,  <34.874924, 27.851252, 46.875732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093372, 27.897223, 46.787598>,  <35.457451, 27.973843, 46.640709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093372, 27.897223, 46.787598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407705, 0.570531, -0.712932,
		-0.072951, -0.798626, -0.597390,
		-0.910195, -0.191549, 0.367224,
		34.820312, 27.839758, 46.897766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075218, 27.596792, 46.027115>,  <35.457451, 27.973843, 46.640709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075218, 27.596792, 46.027115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810402, 27.754614, 46.281998>,  <34.651512, 27.849306, 46.434925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810402, 27.754614, 46.281998>,  <35.075218, 27.596792, 46.027115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810402, 27.754614, 46.281998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170685, 0.748492, -0.640801,
		-0.729771, -0.532999, -0.428191,
		-0.662044, 0.394552, 0.637203,
		34.611790, 27.872980, 46.473160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522675, 27.611425, 45.598000>,  <35.075218, 27.596792, 46.027115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522675, 27.611425, 45.598000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436363, 27.843073, 45.912468>,  <34.384575, 27.982061, 46.101147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.436363, 27.843073, 45.912468>,  <34.522675, 27.611425, 45.598000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436363, 27.843073, 45.912468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275263, 0.736405, -0.618012,
		-0.936840, -0.349759, 0.000507,
		-0.215782, 0.579117, 0.786169,
		34.371628, 28.016808, 46.148319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929504, 27.932676, 45.459942>,  <34.522675, 27.611425, 45.598000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929504, 27.932676, 45.459942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049976, 28.169249, 45.759140>,  <34.122261, 28.311192, 45.938660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049976, 28.169249, 45.759140>,  <33.929504, 27.932676, 45.459942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049976, 28.169249, 45.759140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191707, 0.805959, -0.560071,
		-0.934098, 0.025287, 0.356121,
		0.301181, 0.591431, 0.747996,
		34.140331, 28.346678, 45.983540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391418, 28.421659, 45.545570>,  <33.929504, 27.932676, 45.459942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391418, 28.421659, 45.545570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698055, 28.623158, 45.704853>,  <33.882038, 28.744057, 45.800423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698055, 28.623158, 45.704853>,  <33.391418, 28.421659, 45.545570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698055, 28.623158, 45.704853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157006, 0.748360, -0.644443,
		-0.622642, 0.431505, 0.652779,
		0.766594, 0.503747, 0.398211,
		33.928032, 28.774282, 45.824318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172417, 29.060356, 45.596859>,  <33.391418, 28.421659, 45.545570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172417, 29.060356, 45.596859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570751, 29.096468, 45.591694>,  <33.809750, 29.118135, 45.588593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570751, 29.096468, 45.591694>,  <33.172417, 29.060356, 45.596859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570751, 29.096468, 45.591694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077829, 0.767425, -0.636397,
		-0.047542, 0.634750, 0.771254,
		0.995833, 0.090282, -0.012917,
		33.869499, 29.123552, 45.587818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312168, 29.828045, 45.731274>,  <33.172417, 29.060356, 45.596859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312168, 29.828045, 45.731274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638084, 29.681883, 45.551231>,  <33.833633, 29.594185, 45.443207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638084, 29.681883, 45.551231>,  <33.312168, 29.828045, 45.731274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638084, 29.681883, 45.551231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097621, 0.678811, -0.727795,
		0.571477, 0.636940, 0.517418,
		0.814791, -0.365407, -0.450104,
		33.882523, 29.572260, 45.416199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833069, 30.371161, 45.575947>,  <33.312168, 29.828045, 45.731274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833069, 30.371161, 45.575947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910759, 30.064089, 45.331669>,  <33.957371, 29.879847, 45.185101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910759, 30.064089, 45.331669>,  <33.833069, 30.371161, 45.575947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910759, 30.064089, 45.331669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026333, 0.626406, -0.779052,
		0.980604, 0.135228, 0.141877,
		0.194223, -0.767678, -0.610695,
		33.969025, 29.833786, 45.148460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493019, 30.578529, 45.159927>,  <33.833069, 30.371161, 45.575947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493019, 30.578529, 45.159927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271042, 30.308029, 44.966133>,  <34.137856, 30.145729, 44.849857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271042, 30.308029, 44.966133>,  <34.493019, 30.578529, 45.159927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271042, 30.308029, 44.966133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147813, 0.492965, -0.857401,
		0.818652, -0.547421, -0.173608,
		-0.554942, -0.676252, -0.484482,
		34.104561, 30.105154, 44.820789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914207, 30.376633, 44.455818>,  <34.493019, 30.578529, 45.159927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914207, 30.376633, 44.455818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.534386, 30.257658, 44.416061>,  <34.306492, 30.186274, 44.392208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.534386, 30.257658, 44.416061>,  <34.914207, 30.376633, 44.455818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534386, 30.257658, 44.416061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029546, 0.230674, -0.972582,
		0.312206, -0.926457, -0.210249,
		-0.949555, -0.297434, -0.099391,
		34.249519, 30.168428, 44.386246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.990517, 30.227421, 43.814369>,  <34.914207, 30.376633, 44.455818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.990517, 30.227421, 43.814369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596115, 30.224321, 43.880985>,  <34.359474, 30.222462, 43.920956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.596115, 30.224321, 43.880985>,  <34.990517, 30.227421, 43.814369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596115, 30.224321, 43.880985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158979, 0.344582, -0.925197,
		-0.050217, -0.938724, -0.340991,
		-0.986004, -0.007750, 0.166541,
		34.300312, 30.221996, 43.930946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673977, 29.738106, 43.358009>,  <34.990517, 30.227421, 43.814369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673977, 29.738106, 43.358009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389523, 30.000526, 43.459110>,  <34.218849, 30.157978, 43.519772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389523, 30.000526, 43.459110>,  <34.673977, 29.738106, 43.358009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389523, 30.000526, 43.459110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260980, 0.087490, -0.961371,
		-0.652823, -0.749628, 0.109000,
		-0.711134, 0.656052, 0.252753,
		34.176182, 30.197342, 43.534935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030125, 29.496008, 42.988708>,  <34.673977, 29.738106, 43.358009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030125, 29.496008, 42.988708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944988, 29.873646, 43.089413>,  <33.893906, 30.100227, 43.149837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944988, 29.873646, 43.089413>,  <34.030125, 29.496008, 42.988708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944988, 29.873646, 43.089413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355112, 0.165302, -0.920093,
		-0.910270, -0.285242, 0.300075,
		-0.212845, 0.944093, 0.251763,
		33.881134, 30.156874, 43.164940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358917, 29.564779, 42.872883>,  <34.030125, 29.496008, 42.988708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358917, 29.564779, 42.872883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544491, 29.919081, 42.878586>,  <33.655834, 30.131662, 42.882008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544491, 29.919081, 42.878586>,  <33.358917, 29.564779, 42.872883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544491, 29.919081, 42.878586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306351, 0.175520, -0.935597,
		-0.831212, 0.429689, 0.352781,
		0.463936, 0.885754, 0.014259,
		33.683670, 30.184807, 42.882862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868946, 30.012672, 42.632225>,  <33.358917, 29.564779, 42.872883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868946, 30.012672, 42.632225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215393, 30.204653, 42.576397>,  <33.423264, 30.319841, 42.542900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215393, 30.204653, 42.576397>,  <32.868946, 30.012672, 42.632225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215393, 30.204653, 42.576397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245381, 0.165012, -0.955280,
		-0.435458, 0.861636, 0.260691,
		0.866120, 0.479953, -0.139573,
		33.475227, 30.348639, 42.534527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707859, 30.441864, 42.187191>,  <32.868946, 30.012672, 42.632225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707859, 30.441864, 42.187191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098885, 30.525373, 42.175968>,  <33.333500, 30.575480, 42.169235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098885, 30.525373, 42.175968>,  <32.707859, 30.441864, 42.187191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098885, 30.525373, 42.175968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078676, 0.238294, -0.968001,
		-0.195409, 0.948488, 0.249372,
		0.977561, 0.208776, -0.028058,
		33.392155, 30.588007, 42.167549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812199, 31.184612, 41.896744>,  <32.707859, 30.441864, 42.187191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812199, 31.184612, 41.896744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146591, 30.975283, 41.830696>,  <33.347229, 30.849686, 41.791065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146591, 30.975283, 41.830696>,  <32.812199, 31.184612, 41.896744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146591, 30.975283, 41.830696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062036, 0.208847, -0.975979,
		0.545236, 0.826146, 0.142128,
		0.835984, -0.523322, -0.165122,
		33.397385, 30.818287, 41.781158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182480, 31.585356, 41.498753>,  <32.812199, 31.184612, 41.896744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182480, 31.585356, 41.498753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333847, 31.221626, 41.429558>,  <33.424667, 31.003387, 41.388042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333847, 31.221626, 41.429558>,  <33.182480, 31.585356, 41.498753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333847, 31.221626, 41.429558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034159, 0.173037, -0.984323,
		0.925002, 0.378399, 0.034419,
		0.378423, -0.909325, -0.172985,
		33.447372, 30.948828, 41.377663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816227, 31.700535, 41.185905>,  <33.182480, 31.585356, 41.498753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816227, 31.700535, 41.185905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674393, 31.343172, 41.075565>,  <33.589291, 31.128756, 41.009361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674393, 31.343172, 41.075565>,  <33.816227, 31.700535, 41.185905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674393, 31.343172, 41.075565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010663, 0.298867, -0.954235,
		0.934961, -0.335420, -0.115501,
		-0.354589, -0.893405, -0.275852,
		33.568016, 31.075151, 40.992809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105236, 31.677834, 40.585388>,  <33.816227, 31.700535, 41.185905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105236, 31.677834, 40.585388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833252, 31.385956, 40.556538>,  <33.670063, 31.210829, 40.539227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833252, 31.385956, 40.556538>,  <34.105236, 31.677834, 40.585388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833252, 31.385956, 40.556538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130660, -0.023784, -0.991142,
		0.721518, -0.683357, 0.111515,
		-0.679956, -0.729697, -0.072127,
		33.629265, 31.167048, 40.534901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379410, 31.272789, 40.094566>,  <34.105236, 31.677834, 40.585388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379410, 31.272789, 40.094566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991047, 31.177370, 40.102901>,  <33.758030, 31.120119, 40.107903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.991047, 31.177370, 40.102901>,  <34.379410, 31.272789, 40.094566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991047, 31.177370, 40.102901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005763, -0.063724, -0.997951,
		0.239386, -0.969038, 0.060496,
		-0.970907, -0.238546, 0.020840,
		33.699776, 31.105806, 40.109154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309361, 30.741930, 39.674076>,  <34.379410, 31.272789, 40.094566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309361, 30.741930, 39.674076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927994, 30.862148, 39.684395>,  <33.699173, 30.934280, 39.690586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927994, 30.862148, 39.684395>,  <34.309361, 30.741930, 39.674076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927994, 30.862148, 39.684395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008799, 0.057768, -0.998291,
		-0.301525, -0.952015, -0.052432,
		-0.953418, 0.300549, 0.025795,
		33.641968, 30.952312, 39.692135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973656, 30.336607, 39.110813>,  <34.309361, 30.741930, 39.674076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973656, 30.336607, 39.110813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749588, 30.658621, 39.188923>,  <33.615147, 30.851830, 39.235790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749588, 30.658621, 39.188923>,  <33.973656, 30.336607, 39.110813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749588, 30.658621, 39.188923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026101, 0.252770, -0.967174,
		-0.827970, -0.536680, -0.162605,
		-0.560164, 0.805036, 0.195278,
		33.581539, 30.900131, 39.247505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563057, 30.365133, 38.543304>,  <33.973656, 30.336607, 39.110813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563057, 30.365133, 38.543304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520618, 30.727903, 38.706390>,  <33.495155, 30.945564, 38.804241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520618, 30.727903, 38.706390>,  <33.563057, 30.365133, 38.543304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520618, 30.727903, 38.706390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161656, 0.388844, -0.907010,
		-0.981128, -0.162140, 0.105355,
		-0.106096, 0.906924, 0.407717,
		33.488789, 30.999981, 38.828705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948627, 30.759693, 38.280739>,  <33.563057, 30.365133, 38.543304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948627, 30.759693, 38.280739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193943, 31.035786, 38.434338>,  <33.341133, 31.201441, 38.526497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193943, 31.035786, 38.434338>,  <32.948627, 30.759693, 38.280739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193943, 31.035786, 38.434338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211315, 0.611822, -0.762247,
		-0.761066, 0.386333, 0.521080,
		0.613290, 0.690233, 0.383999,
		33.377930, 31.242855, 38.549538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657444, 31.469957, 38.131508>,  <32.948627, 30.759693, 38.280739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657444, 31.469957, 38.131508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051514, 31.513468, 38.184578>,  <33.287956, 31.539574, 38.216419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051514, 31.513468, 38.184578>,  <32.657444, 31.469957, 38.131508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051514, 31.513468, 38.184578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057152, 0.521091, -0.851586,
		-0.161772, 0.846541, 0.507147,
		0.985172, 0.108778, 0.132679,
		33.347065, 31.546101, 38.224380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773422, 32.128437, 38.151894>,  <32.657444, 31.469957, 38.131508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773422, 32.128437, 38.151894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138077, 31.998249, 38.051510>,  <33.356869, 31.920135, 37.991280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138077, 31.998249, 38.051510>,  <32.773422, 32.128437, 38.151894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138077, 31.998249, 38.051510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054351, 0.509786, -0.858583,
		0.407382, 0.796358, 0.447051,
		0.911639, -0.325473, -0.250960,
		33.411568, 31.900608, 37.976223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082054, 32.702206, 37.840630>,  <32.773422, 32.128437, 38.151894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082054, 32.702206, 37.840630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296757, 32.388042, 37.717323>,  <33.425579, 32.199543, 37.643341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296757, 32.388042, 37.717323>,  <33.082054, 32.702206, 37.840630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296757, 32.388042, 37.717323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045717, 0.391893, -0.918874,
		0.842498, 0.479118, 0.246257,
		0.536756, -0.785408, -0.308265,
		33.457783, 32.152420, 37.624844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606003, 32.901958, 37.342678>,  <33.082054, 32.702206, 37.840630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606003, 32.901958, 37.342678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519245, 32.518982, 37.266510>,  <33.467190, 32.289196, 37.220810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519245, 32.518982, 37.266510>,  <33.606003, 32.901958, 37.342678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519245, 32.518982, 37.266510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116146, 0.168371, -0.978857,
		0.969262, -0.234422, 0.074685,
		-0.216891, -0.957443, -0.190423,
		33.454178, 32.231750, 37.209385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084213, 32.624107, 36.828117>,  <33.606003, 32.901958, 37.342678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084213, 32.624107, 36.828117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770214, 32.376472, 36.819118>,  <33.581814, 32.227894, 36.813721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770214, 32.376472, 36.819118>,  <34.084213, 32.624107, 36.828117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770214, 32.376472, 36.819118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048878, 0.098096, -0.993976,
		0.617562, -0.779174, -0.107265,
		-0.785002, -0.619085, -0.022496,
		33.534714, 32.190746, 36.812370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576290, 33.135300, 37.348549>,  <34.084213, 32.624107, 36.828117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576290, 33.135300, 37.348549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760109, 33.330879, 37.645130>,  <34.870399, 33.448227, 37.823078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760109, 33.330879, 37.645130>,  <34.576290, 33.135300, 37.348549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760109, 33.330879, 37.645130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284826, -0.871860, 0.398414,
		0.841244, 0.028096, -0.539925,
		0.459545, 0.488948, 0.741450,
		34.897972, 33.477562, 37.867565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514549, 32.274372, 37.272865>,  <34.576290, 33.135300, 37.348549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514549, 32.274372, 37.272865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758652, 32.577183, 37.179482>,  <34.905113, 32.758869, 37.123451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758652, 32.577183, 37.179482>,  <34.514549, 32.274372, 37.272865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758652, 32.577183, 37.179482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355069, 0.002059, 0.934838,
		0.708174, -0.653385, -0.267539,
		0.610258, 0.757023, -0.233455,
		34.941730, 32.804291, 37.109444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069324, 32.124504, 37.552261>,  <34.514549, 32.274372, 37.272865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069324, 32.124504, 37.552261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165600, 32.506432, 37.482529>,  <35.223366, 32.735588, 37.440689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.165600, 32.506432, 37.482529>,  <35.069324, 32.124504, 37.552261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165600, 32.506432, 37.482529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640406, -0.021261, 0.767742,
		0.729348, -0.296428, -0.616589,
		0.240690, 0.954818, -0.174328,
		35.237808, 32.792877, 37.430229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749096, 32.155632, 37.529758>,  <35.069324, 32.124504, 37.552261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749096, 32.155632, 37.529758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629684, 32.523842, 37.630566>,  <35.558037, 32.744766, 37.691051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629684, 32.523842, 37.630566>,  <35.749096, 32.155632, 37.529758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629684, 32.523842, 37.630566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554798, -0.047484, 0.830629,
		0.776582, 0.387786, -0.496530,
		-0.298529, 0.920525, 0.252018,
		35.540127, 32.799999, 37.706173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298855, 32.506798, 37.751472>,  <35.749096, 32.155632, 37.529758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298855, 32.506798, 37.751472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997452, 32.723553, 37.900379>,  <35.816608, 32.853603, 37.989723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.997452, 32.723553, 37.900379>,  <36.298855, 32.506798, 37.751472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997452, 32.723553, 37.900379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415904, -0.045634, 0.908263,
		0.509160, 0.839214, -0.190986,
		-0.753512, 0.541883, 0.372267,
		35.771397, 32.886116, 38.012058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663124, 33.047153, 38.175144>,  <36.298855, 32.506798, 37.751472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663124, 33.047153, 38.175144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285027, 33.006790, 38.299297>,  <36.058170, 32.982571, 38.373791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285027, 33.006790, 38.299297>,  <36.663124, 33.047153, 38.175144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285027, 33.006790, 38.299297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312078, -0.001069, 0.950056,
		-0.095539, 0.994895, 0.032502,
		-0.945241, -0.100910, 0.310383,
		36.001453, 32.976517, 38.392414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566010, 33.459724, 38.723267>,  <36.663124, 33.047153, 38.175144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566010, 33.459724, 38.723267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244625, 33.228909, 38.781898>,  <36.051796, 33.090420, 38.817078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.244625, 33.228909, 38.781898>,  <36.566010, 33.459724, 38.723267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244625, 33.228909, 38.781898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288992, -0.162752, 0.943396,
		-0.520520, 0.800337, 0.297523,
		-0.803457, -0.577038, 0.146576,
		36.003590, 33.055798, 38.825871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319683, 33.635921, 39.290604>,  <36.566010, 33.459724, 38.723267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319683, 33.635921, 39.290604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181530, 33.264275, 39.237759>,  <36.098637, 33.041286, 39.206051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181530, 33.264275, 39.237759>,  <36.319683, 33.635921, 39.290604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181530, 33.264275, 39.237759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255381, -0.228515, 0.939447,
		-0.903044, 0.290734, 0.316205,
		-0.345387, -0.929115, -0.132111,
		36.077915, 32.985538, 39.198124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033218, 33.520416, 39.863163>,  <36.319683, 33.635921, 39.290604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033218, 33.520416, 39.863163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076038, 33.146645, 39.727291>,  <36.101730, 32.922382, 39.645767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.076038, 33.146645, 39.727291>,  <36.033218, 33.520416, 39.863163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076038, 33.146645, 39.727291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157070, -0.321463, 0.933805,
		-0.981768, -0.153319, 0.112358,
		0.107051, -0.934428, -0.339684,
		36.108154, 32.866318, 39.625385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852875, 33.120346, 40.423832>,  <36.033218, 33.520416, 39.863163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852875, 33.120346, 40.423832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041508, 32.856594, 40.189629>,  <36.154690, 32.698341, 40.049107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041508, 32.856594, 40.189629>,  <35.852875, 33.120346, 40.423832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041508, 32.856594, 40.189629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472467, -0.371695, 0.799135,
		-0.744568, -0.653494, 0.136251,
		0.471587, -0.659384, -0.585507,
		36.182983, 32.658779, 40.013977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648079, 32.447910, 40.588955>,  <35.852875, 33.120346, 40.423832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648079, 32.447910, 40.588955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023617, 32.463074, 40.452057>,  <36.248940, 32.472172, 40.369919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023617, 32.463074, 40.452057>,  <35.648079, 32.447910, 40.588955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023617, 32.463074, 40.452057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317011, -0.483198, 0.816103,
		-0.134435, -0.874690, -0.465665,
		0.938846, 0.037908, -0.342245,
		36.305271, 32.474445, 40.349384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907375, 31.817347, 40.791592>,  <35.648079, 32.447910, 40.588955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907375, 31.817347, 40.791592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246799, 31.982046, 40.658684>,  <36.450455, 32.080868, 40.578938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246799, 31.982046, 40.658684>,  <35.907375, 31.817347, 40.791592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246799, 31.982046, 40.658684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481169, -0.339365, 0.808275,
		0.220045, -0.845751, -0.486093,
		0.848562, 0.411749, -0.332273,
		36.501369, 32.105572, 40.559002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321194, 31.327858, 40.820660>,  <35.907375, 31.817347, 40.791592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321194, 31.327858, 40.820660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580166, 31.632708, 40.821369>,  <36.735550, 31.815619, 40.821796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580166, 31.632708, 40.821369>,  <36.321194, 31.327858, 40.820660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580166, 31.632708, 40.821369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454717, -0.388149, 0.801606,
		0.611613, -0.518175, -0.597850,
		0.647427, 0.762125, 0.001774,
		36.774395, 31.861345, 40.821899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003773, 31.088211, 40.788448>,  <36.321194, 31.327858, 40.820660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003773, 31.088211, 40.788448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033306, 31.446804, 40.963203>,  <37.051025, 31.661961, 41.068054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033306, 31.446804, 40.963203>,  <37.003773, 31.088211, 40.788448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033306, 31.446804, 40.963203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500053, -0.412308, 0.761544,
		0.862842, 0.162239, -0.478730,
		0.073832, 0.896482, 0.436884,
		37.055454, 31.715748, 41.094269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672577, 31.109627, 41.150898>,  <37.003773, 31.088211, 40.788448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672577, 31.109627, 41.150898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474304, 31.411690, 41.322495>,  <37.355343, 31.592928, 41.425453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474304, 31.411690, 41.322495>,  <37.672577, 31.109627, 41.150898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474304, 31.411690, 41.322495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292450, -0.319975, 0.901160,
		0.817786, 0.572146, -0.062241,
		-0.495680, 0.755159, 0.428995,
		37.325600, 31.638237, 41.451195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080582, 31.305798, 41.773224>,  <37.672577, 31.109627, 41.150898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080582, 31.305798, 41.773224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724216, 31.477053, 41.833843>,  <37.510395, 31.579805, 41.870216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724216, 31.477053, 41.833843>,  <38.080582, 31.305798, 41.773224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724216, 31.477053, 41.833843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052860, -0.233667, 0.970879,
		0.451084, 0.872981, 0.185546,
		-0.890915, 0.428140, 0.151549,
		37.456944, 31.605495, 41.879307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145042, 31.836391, 42.347904>,  <38.080582, 31.305798, 41.773224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145042, 31.836391, 42.347904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753868, 31.757957, 42.319065>,  <37.519165, 31.710897, 42.301762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753868, 31.757957, 42.319065>,  <38.145042, 31.836391, 42.347904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753868, 31.757957, 42.319065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049292, -0.118804, 0.991693,
		-0.203021, 0.973363, 0.106516,
		-0.977933, -0.196084, -0.072099,
		37.460487, 31.699133, 42.297436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817581, 32.170673, 42.965927>,  <38.145042, 31.836391, 42.347904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817581, 32.170673, 42.965927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558857, 31.893644, 42.838196>,  <37.403622, 31.727427, 42.761559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558857, 31.893644, 42.838196>,  <37.817581, 32.170673, 42.965927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558857, 31.893644, 42.838196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233937, -0.218350, 0.947416,
		-0.725884, 0.687503, -0.020788,
		-0.646813, -0.692577, -0.319329,
		37.364815, 31.685871, 42.742397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165745, 32.278900, 43.450062>,  <37.817581, 32.170673, 42.965927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165745, 32.278900, 43.450062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112820, 31.932993, 43.256290>,  <37.081066, 31.725449, 43.140030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112820, 31.932993, 43.256290>,  <37.165745, 32.278900, 43.450062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112820, 31.932993, 43.256290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234194, -0.447610, 0.863017,
		-0.963145, 0.227634, -0.143302,
		-0.132309, -0.864770, -0.484424,
		37.073128, 31.673561, 43.110962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445477, 32.019947, 43.674232>,  <37.165745, 32.278900, 43.450062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445477, 32.019947, 43.674232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683300, 31.723541, 43.549397>,  <36.825993, 31.545698, 43.474495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683300, 31.723541, 43.549397>,  <36.445477, 32.019947, 43.674232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683300, 31.723541, 43.549397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173776, -0.497391, 0.849943,
		-0.785051, -0.451106, -0.424498,
		0.594556, -0.741016, -0.312086,
		36.861668, 31.501236, 43.455772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083969, 31.408134, 43.779419>,  <36.445477, 32.019947, 43.674232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083969, 31.408134, 43.779419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454483, 31.262579, 43.740257>,  <36.676792, 31.175245, 43.716763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454483, 31.262579, 43.740257>,  <36.083969, 31.408134, 43.779419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454483, 31.262579, 43.740257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174123, -0.643715, 0.745193,
		-0.334188, -0.673212, -0.659624,
		0.926283, -0.363890, -0.097901,
		36.732368, 31.153412, 43.710888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993492, 30.602741, 43.852787>,  <36.083969, 31.408134, 43.779419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993492, 30.602741, 43.852787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367546, 30.705097, 43.950806>,  <36.591976, 30.766510, 44.009617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367546, 30.705097, 43.950806>,  <35.993492, 30.602741, 43.852787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367546, 30.705097, 43.950806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081621, -0.517452, 0.851811,
		0.344770, -0.816557, -0.463000,
		0.935132, 0.255888, 0.245050,
		36.648087, 30.781864, 44.024319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269382, 29.890680, 44.202934>,  <35.993492, 30.602741, 43.852787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269382, 29.890680, 44.202934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484016, 30.211451, 44.307999>,  <36.612797, 30.403912, 44.371037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484016, 30.211451, 44.307999>,  <36.269382, 29.890680, 44.202934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484016, 30.211451, 44.307999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044765, -0.337881, 0.940124,
		0.842656, -0.492701, -0.217201,
		0.536588, 0.801924, 0.262662,
		36.644993, 30.452028, 44.386799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.790001, 29.600698, 44.456581>,  <36.269382, 29.890680, 44.202934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.790001, 29.600698, 44.456581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757629, 29.970295, 44.606083>,  <36.738205, 30.192053, 44.695782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757629, 29.970295, 44.606083>,  <36.790001, 29.600698, 44.456581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757629, 29.970295, 44.606083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010996, -0.374132, 0.927310,
		0.996659, 0.079158, 0.020119,
		-0.080931, 0.923991, 0.373752,
		36.733349, 30.247492, 44.718208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013180, 29.528904, 45.127800>,  <36.790001, 29.600698, 44.456581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013180, 29.528904, 45.127800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832291, 29.884398, 45.157864>,  <36.723759, 30.097692, 45.175903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832291, 29.884398, 45.157864>,  <37.013180, 29.528904, 45.127800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832291, 29.884398, 45.157864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036689, -0.102733, 0.994032,
		0.891150, 0.446766, 0.079065,
		-0.452222, 0.888733, 0.075159,
		36.696625, 30.151018, 45.180412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409016, 29.981256, 45.657558>,  <37.013180, 29.528904, 45.127800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409016, 29.981256, 45.657558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023361, 30.083445, 45.628792>,  <36.791969, 30.144758, 45.611534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023361, 30.083445, 45.628792>,  <37.409016, 29.981256, 45.657558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023361, 30.083445, 45.628792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105883, -0.121791, 0.986892,
		0.243363, 0.959115, 0.144474,
		-0.964138, 0.255470, -0.071915,
		36.734119, 30.160086, 45.607216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332729, 30.450422, 46.189663>,  <37.409016, 29.981256, 45.657558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332729, 30.450422, 46.189663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970623, 30.305273, 46.101288>,  <36.753357, 30.218184, 46.048264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.970623, 30.305273, 46.101288>,  <37.332729, 30.450422, 46.189663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970623, 30.305273, 46.101288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248230, 0.029745, 0.968244,
		-0.344777, 0.931364, -0.117003,
		-0.905268, -0.362872, -0.220937,
		36.699043, 30.196411, 46.035007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954212, 30.897600, 46.608295>,  <37.332729, 30.450422, 46.189663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954212, 30.897600, 46.608295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763546, 30.551561, 46.545815>,  <36.649147, 30.343939, 46.508324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763546, 30.551561, 46.545815>,  <36.954212, 30.897600, 46.608295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763546, 30.551561, 46.545815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107837, -0.118807, 0.987044,
		-0.872448, 0.487330, -0.036659,
		-0.476661, -0.865098, -0.156205,
		36.620548, 30.292032, 46.498955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464314, 30.879744, 47.097466>,  <36.954212, 30.897600, 46.608295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464314, 30.879744, 47.097466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425476, 30.501049, 46.974655>,  <36.402172, 30.273832, 46.900967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425476, 30.501049, 46.974655>,  <36.464314, 30.879744, 47.097466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425476, 30.501049, 46.974655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149739, -0.318871, 0.935895,
		-0.983947, 0.044894, 0.172723,
		-0.097093, -0.946734, -0.307030,
		36.396347, 30.217030, 46.882545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001793, 30.591265, 47.574360>,  <36.464314, 30.879744, 47.097466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001793, 30.591265, 47.574360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195961, 30.281818, 47.411442>,  <36.312462, 30.096151, 47.313690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195961, 30.281818, 47.411442>,  <36.001793, 30.591265, 47.574360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195961, 30.281818, 47.411442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074760, -0.427430, 0.900952,
		-0.871080, -0.467787, -0.149647,
		0.485417, -0.773614, -0.407297,
		36.341587, 30.049734, 47.289253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624969, 29.967093, 47.753784>,  <36.001793, 30.591265, 47.574360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624969, 29.967093, 47.753784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996216, 29.847685, 47.664803>,  <36.218964, 29.776039, 47.611412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996216, 29.847685, 47.664803>,  <35.624969, 29.967093, 47.753784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996216, 29.847685, 47.664803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084564, -0.412868, 0.906857,
		-0.362556, -0.860481, -0.357946,
		0.928118, -0.298517, -0.222453,
		36.274651, 29.758129, 47.598064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649685, 29.313036, 48.023548>,  <35.624969, 29.967093, 47.753784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649685, 29.313036, 48.023548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018871, 29.463974, 47.993233>,  <36.240383, 29.554537, 47.975044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.018871, 29.463974, 47.993233>,  <35.649685, 29.313036, 48.023548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018871, 29.463974, 47.993233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216115, -0.345171, 0.913319,
		0.318478, -0.859341, -0.400131,
		0.922965, 0.377346, -0.075787,
		36.295761, 29.577177, 47.970497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098030, 28.640219, 48.272049>,  <35.649685, 29.313036, 48.023548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098030, 28.640219, 48.272049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311924, 28.978107, 48.281025>,  <36.440262, 29.180841, 48.286411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311924, 28.978107, 48.281025>,  <36.098030, 28.640219, 48.272049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311924, 28.978107, 48.281025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328429, -0.232223, 0.915537,
		0.778584, -0.482200, -0.401609,
		0.534735, 0.844722, 0.022437,
		36.472343, 29.231524, 48.287754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920547, 28.521851, 48.368389>,  <36.098030, 28.640219, 48.272049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920547, 28.521851, 48.368389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828857, 28.885574, 48.507305>,  <36.773846, 29.103809, 48.590656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828857, 28.885574, 48.507305>,  <36.920547, 28.521851, 48.368389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828857, 28.885574, 48.507305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397644, -0.238180, 0.886087,
		0.888447, 0.341207, -0.306986,
		-0.229221, 0.909312, 0.347289,
		36.760090, 29.158367, 48.611492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484470, 28.677662, 48.862213>,  <36.920547, 28.521851, 48.368389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484470, 28.677662, 48.862213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221741, 28.969337, 48.939011>,  <37.064102, 29.144342, 48.985088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221741, 28.969337, 48.939011>,  <37.484470, 28.677662, 48.862213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221741, 28.969337, 48.939011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268192, -0.012049, 0.963290,
		0.704734, 0.684206, -0.187649,
		-0.656828, 0.729189, 0.191990,
		37.024693, 29.188095, 48.996609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876240, 29.167780, 49.196949>,  <37.484470, 28.677662, 48.862213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876240, 29.167780, 49.196949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506802, 29.233400, 49.335548>,  <37.285141, 29.272772, 49.418709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.506802, 29.233400, 49.335548>,  <37.876240, 29.167780, 49.196949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506802, 29.233400, 49.335548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331618, -0.111648, 0.936784,
		0.192365, 0.980114, 0.048715,
		-0.923594, 0.164050, 0.346500,
		37.229725, 29.282616, 49.439499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016201, 29.646507, 49.835728>,  <37.876240, 29.167780, 49.196949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016201, 29.646507, 49.835728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641987, 29.513477, 49.883331>,  <37.417458, 29.433659, 49.911896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641987, 29.513477, 49.883331>,  <38.016201, 29.646507, 49.835728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641987, 29.513477, 49.883331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131888, -0.016323, 0.991130,
		-0.327685, 0.942935, 0.059133,
		-0.935536, -0.332577, 0.119014,
		37.361324, 29.413704, 49.919037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758793, 30.067429, 50.366566>,  <38.016201, 29.646507, 49.835728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758793, 30.067429, 50.366566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560787, 29.720715, 50.342419>,  <37.441982, 29.512686, 50.327930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560787, 29.720715, 50.342419>,  <37.758793, 30.067429, 50.366566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560787, 29.720715, 50.342419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034991, -0.089312, 0.995389,
		-0.868179, 0.490620, 0.074540,
		-0.495016, -0.866784, -0.060372,
		37.412281, 29.460680, 50.324306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497257, 29.956963, 51.008488>,  <37.758793, 30.067429, 50.366566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497257, 29.956963, 51.008488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491371, 29.594934, 50.838482>,  <37.487839, 29.377718, 50.736481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491371, 29.594934, 50.838482>,  <37.497257, 29.956963, 51.008488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491371, 29.594934, 50.838482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306675, -0.408656, 0.859622,
		-0.951701, -0.117692, 0.283574,
		-0.014713, -0.905068, -0.425012,
		37.486958, 29.323414, 50.710979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918415, 30.427563, 50.985691>,  <37.497257, 29.956963, 51.008488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918415, 30.427563, 50.985691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055397, 30.763796, 51.153572>,  <37.137585, 30.965536, 51.254299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.055397, 30.763796, 51.153572>,  <36.918415, 30.427563, 50.985691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055397, 30.763796, 51.153572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048794, 0.430198, -0.901415,
		-0.938268, 0.329169, 0.106306,
		0.342450, 0.840582, 0.419703,
		37.158131, 31.015970, 51.279484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527897, 30.979517, 50.684376>,  <36.918415, 30.427563, 50.985691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527897, 30.979517, 50.684376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869465, 31.121464, 50.836632>,  <37.074406, 31.206633, 50.927986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869465, 31.121464, 50.836632>,  <36.527897, 30.979517, 50.684376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869465, 31.121464, 50.836632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161031, 0.515351, -0.841714,
		-0.494860, 0.780053, 0.382925,
		0.853922, 0.354867, 0.380639,
		37.125641, 31.227924, 50.950825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534283, 31.698132, 50.634319>,  <36.527897, 30.979517, 50.684376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534283, 31.698132, 50.634319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923256, 31.605856, 50.620747>,  <37.156639, 31.550491, 50.612602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923256, 31.605856, 50.620747>,  <36.534283, 31.698132, 50.634319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923256, 31.605856, 50.620747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145366, 0.713586, -0.685320,
		0.182310, 0.661498, 0.727451,
		0.972436, -0.230687, -0.033935,
		37.214985, 31.536650, 50.610565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886837, 32.351254, 50.511791>,  <36.534283, 31.698132, 50.634319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886837, 32.351254, 50.511791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174122, 32.082138, 50.440769>,  <37.346493, 31.920670, 50.398155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174122, 32.082138, 50.440769>,  <36.886837, 32.351254, 50.511791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174122, 32.082138, 50.440769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256645, 0.493315, -0.831128,
		0.646762, 0.551360, 0.526973,
		0.718214, -0.672787, -0.177553,
		37.389587, 31.880302, 50.387505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580013, 32.653301, 50.342468>,  <36.886837, 32.351254, 50.511791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580013, 32.653301, 50.342468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577160, 32.291840, 50.171185>,  <37.575447, 32.074963, 50.068417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577160, 32.291840, 50.171185>,  <37.580013, 32.653301, 50.342468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577160, 32.291840, 50.171185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085290, 0.426108, -0.900643,
		0.996331, -0.042943, 0.074034,
		-0.007130, -0.903653, -0.428207,
		37.575020, 32.020744, 50.042721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977715, 32.717659, 49.837265>,  <37.580013, 32.653301, 50.342468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977715, 32.717659, 49.837265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804237, 32.378334, 49.715759>,  <37.700150, 32.174740, 49.642857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804237, 32.378334, 49.715759>,  <37.977715, 32.717659, 49.837265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804237, 32.378334, 49.715759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241404, 0.215407, -0.946216,
		0.868120, -0.483699, 0.111365,
		-0.433695, -0.848313, -0.303766,
		37.674129, 32.123840, 49.624630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423359, 32.521317, 49.339447>,  <37.977715, 32.717659, 49.837265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423359, 32.521317, 49.339447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073677, 32.331959, 49.296246>,  <37.863869, 32.218342, 49.270325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073677, 32.331959, 49.296246>,  <38.423359, 32.521317, 49.339447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073677, 32.331959, 49.296246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083956, 0.071712, -0.993886,
		0.478250, -0.877924, -0.022946,
		-0.874202, -0.473399, -0.108003,
		37.811417, 32.189938, 49.263844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566193, 32.181713, 48.755322>,  <38.423359, 32.521317, 49.339447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566193, 32.181713, 48.755322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168240, 32.153904, 48.784637>,  <37.929466, 32.137218, 48.802227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168240, 32.153904, 48.784637>,  <38.566193, 32.181713, 48.755322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168240, 32.153904, 48.784637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079135, 0.085404, -0.993199,
		0.062782, -0.993919, -0.090468,
		-0.994885, -0.069514, 0.073292,
		37.869774, 32.133045, 48.806625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385208, 31.770714, 48.103081>,  <38.566193, 32.181713, 48.755322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385208, 31.770714, 48.103081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055264, 31.943441, 48.249035>,  <37.857296, 32.047077, 48.336605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055264, 31.943441, 48.249035>,  <38.385208, 31.770714, 48.103081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055264, 31.943441, 48.249035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301886, 0.209259, -0.930094,
		-0.477986, -0.877350, -0.042249,
		-0.824859, 0.431818, 0.364883,
		37.807804, 32.072987, 48.358501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849796, 31.545937, 47.658195>,  <38.385208, 31.770714, 48.103081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849796, 31.545937, 47.658195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766285, 31.889919, 47.844479>,  <37.716179, 32.096310, 47.956249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.766285, 31.889919, 47.844479>,  <37.849796, 31.545937, 47.658195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.766285, 31.889919, 47.844479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213683, 0.424585, -0.879811,
		-0.954332, -0.283203, 0.095112,
		-0.208782, 0.859955, 0.465711,
		37.703651, 32.147907, 47.984192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303886, 31.765917, 47.198174>,  <37.849796, 31.545937, 47.658195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303886, 31.765917, 47.198174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398777, 32.080822, 47.425838>,  <37.455711, 32.269764, 47.562439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398777, 32.080822, 47.425838>,  <37.303886, 31.765917, 47.198174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398777, 32.080822, 47.425838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122340, 0.605432, -0.786438,
		-0.963721, 0.116929, 0.239935,
		0.237222, 0.787261, 0.569163,
		37.469944, 32.317001, 47.596588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809319, 32.228680, 47.181946>,  <37.303886, 31.765917, 47.198174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809319, 32.228680, 47.181946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140980, 32.434299, 47.269814>,  <37.339977, 32.557671, 47.322533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.140980, 32.434299, 47.269814>,  <36.809319, 32.228680, 47.181946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140980, 32.434299, 47.269814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146627, 0.579187, -0.801900,
		-0.539444, 0.632691, 0.555610,
		0.829157, 0.514047, 0.219669,
		37.389729, 32.588512, 47.335712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633137, 32.851070, 46.977821>,  <36.809319, 32.228680, 47.181946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633137, 32.851070, 46.977821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033020, 32.851860, 46.987530>,  <37.272949, 32.852333, 46.993355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033020, 32.851860, 46.987530>,  <36.633137, 32.851070, 46.977821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033020, 32.851860, 46.987530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019784, 0.515263, -0.856804,
		-0.014193, 0.857030, 0.515071,
		0.999704, 0.001970, 0.024269,
		37.332932, 32.852451, 46.994812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795227, 33.505028, 46.923233>,  <36.633137, 32.851070, 46.977821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795227, 33.505028, 46.923233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105003, 33.278511, 46.810413>,  <37.290871, 33.142601, 46.742722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105003, 33.278511, 46.810413>,  <36.795227, 33.505028, 46.923233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105003, 33.278511, 46.810413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038741, 0.487436, -0.872299,
		0.631459, 0.664617, 0.399429,
		0.774440, -0.566296, -0.282048,
		37.337334, 33.108624, 46.725800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194077, 33.970634, 46.400227>,  <36.795227, 33.505028, 46.923233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194077, 33.970634, 46.400227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341099, 33.602299, 46.348141>,  <37.429314, 33.381298, 46.316891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341099, 33.602299, 46.348141>,  <37.194077, 33.970634, 46.400227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341099, 33.602299, 46.348141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316120, 0.255385, -0.913700,
		0.874625, 0.294676, 0.384965,
		0.367560, -0.920839, -0.130213,
		37.451366, 33.326046, 46.309078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870541, 34.128273, 46.011784>,  <37.194077, 33.970634, 46.400227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870541, 34.128273, 46.011784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796387, 33.740414, 45.948017>,  <37.751892, 33.507698, 45.909756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796387, 33.740414, 45.948017>,  <37.870541, 34.128273, 46.011784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796387, 33.740414, 45.948017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226270, 0.115750, -0.967163,
		0.956260, -0.215373, 0.197943,
		-0.185389, -0.969648, -0.159419,
		37.740768, 33.449520, 45.900192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493332, 33.823902, 45.765095>,  <37.870541, 34.128273, 46.011784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493332, 33.823902, 45.765095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179821, 33.611801, 45.635769>,  <37.991714, 33.484543, 45.558174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179821, 33.611801, 45.635769>,  <38.493332, 33.823902, 45.765095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179821, 33.611801, 45.635769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199004, 0.278716, -0.939529,
		0.588298, -0.800720, -0.112929,
		-0.783775, -0.530249, -0.323315,
		37.944687, 33.452728, 45.538776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809929, 33.548592, 45.165348>,  <38.493332, 33.823902, 45.765095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809929, 33.548592, 45.165348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414692, 33.518745, 45.111534>,  <38.177547, 33.500835, 45.079247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414692, 33.518745, 45.111534>,  <38.809929, 33.548592, 45.165348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414692, 33.518745, 45.111534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104210, 0.318650, -0.942127,
		0.113167, -0.944931, -0.307081,
		-0.988096, -0.074617, -0.134532,
		38.118263, 33.496361, 45.071175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679974, 33.006081, 44.602127>,  <38.809929, 33.548592, 45.165348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679974, 33.006081, 44.602127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351402, 33.233738, 44.616745>,  <38.154259, 33.370331, 44.625515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351402, 33.233738, 44.616745>,  <38.679974, 33.006081, 44.602127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351402, 33.233738, 44.616745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041471, 0.123517, -0.991476,
		-0.568806, -0.812908, -0.125063,
		-0.821426, 0.569143, 0.036545,
		38.104973, 33.404480, 44.627708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172855, 32.737328, 44.108181>,  <38.679974, 33.006081, 44.602127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172855, 32.737328, 44.108181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061043, 33.115528, 44.174980>,  <37.993954, 33.342449, 44.215061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061043, 33.115528, 44.174980>,  <38.172855, 32.737328, 44.108181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061043, 33.115528, 44.174980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099681, 0.144415, -0.984484,
		-0.954948, -0.291842, 0.053880,
		-0.279533, 0.945501, 0.167000,
		37.977184, 33.399178, 44.225079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629623, 32.850544, 43.666500>,  <38.172855, 32.737328, 44.108181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629623, 32.850544, 43.666500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744034, 33.218105, 43.775162>,  <37.812679, 33.438644, 43.840359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.744034, 33.218105, 43.775162>,  <37.629623, 32.850544, 43.666500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744034, 33.218105, 43.775162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095395, 0.309399, -0.946135,
		-0.953461, 0.244708, 0.176156,
		0.286030, 0.918907, 0.271656,
		37.829842, 33.493778, 43.856659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140648, 33.252048, 43.340393>,  <37.629623, 32.850544, 43.666500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140648, 33.252048, 43.340393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447853, 33.499596, 43.406315>,  <37.632175, 33.648125, 43.445866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.447853, 33.499596, 43.406315>,  <37.140648, 33.252048, 43.340393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447853, 33.499596, 43.406315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049538, 0.199149, -0.978716,
		-0.638519, 0.759827, 0.122291,
		0.768010, 0.618871, 0.164801,
		37.678257, 33.685257, 43.455753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032616, 33.843433, 42.905964>,  <37.140648, 33.252048, 43.340393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032616, 33.843433, 42.905964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420273, 33.883087, 42.996239>,  <37.652866, 33.906879, 43.050404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420273, 33.883087, 42.996239>,  <37.032616, 33.843433, 42.905964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420273, 33.883087, 42.996239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161401, 0.436809, -0.884956,
		-0.186312, 0.894075, 0.407330,
		0.969143, 0.099134, 0.225688,
		37.711014, 33.912827, 43.063946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226322, 34.453709, 42.581112>,  <37.032616, 33.843433, 42.905964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226322, 34.453709, 42.581112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563133, 34.248062, 42.646439>,  <37.765221, 34.124672, 42.685635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563133, 34.248062, 42.646439>,  <37.226322, 34.453709, 42.581112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563133, 34.248062, 42.646439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326516, 0.244763, -0.912951,
		0.429391, 0.822055, 0.373964,
		0.842028, -0.514118, 0.163315,
		37.815742, 34.093826, 42.695435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797718, 34.979763, 42.570011>,  <37.226322, 34.453709, 42.581112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797718, 34.979763, 42.570011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923107, 34.611225, 42.478039>,  <37.998341, 34.390102, 42.422855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923107, 34.611225, 42.478039>,  <37.797718, 34.979763, 42.570011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923107, 34.611225, 42.478039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343563, 0.335771, -0.877053,
		0.885269, 0.195933, 0.421792,
		0.313469, -0.921340, -0.229933,
		38.017147, 34.334824, 42.409058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449654, 35.070316, 42.152676>,  <37.797718, 34.979763, 42.570011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449654, 35.070316, 42.152676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385792, 34.685551, 42.063927>,  <38.347477, 34.454689, 42.010677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385792, 34.685551, 42.063927>,  <38.449654, 35.070316, 42.152676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385792, 34.685551, 42.063927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493436, 0.116907, -0.861890,
		0.855004, -0.247084, 0.455979,
		-0.159652, -0.961916, -0.221876,
		38.337894, 34.396976, 41.997364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039658, 34.836254, 41.919994>,  <38.449654, 35.070316, 42.152676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039658, 34.836254, 41.919994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768444, 34.588802, 41.761215>,  <38.605717, 34.440331, 41.665947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768444, 34.588802, 41.761215>,  <39.039658, 34.836254, 41.919994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768444, 34.588802, 41.761215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342355, 0.212086, -0.915321,
		0.650430, -0.756518, 0.067989,
		-0.678037, -0.618628, -0.396945,
		38.565033, 34.403214, 41.642132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385792, 34.477215, 41.347134>,  <39.039658, 34.836254, 41.919994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385792, 34.477215, 41.347134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992882, 34.436905, 41.283924>,  <38.757133, 34.412720, 41.245998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992882, 34.436905, 41.283924>,  <39.385792, 34.477215, 41.347134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992882, 34.436905, 41.283924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146954, 0.109213, -0.983096,
		0.116343, -0.988896, -0.092467,
		-0.982277, -0.100788, -0.158028,
		38.698196, 34.406673, 41.236515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409035, 33.953415, 40.839035>,  <39.385792, 34.477215, 41.347134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409035, 33.953415, 40.839035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061066, 34.150642, 40.834759>,  <38.852283, 34.268978, 40.832191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.061066, 34.150642, 40.834759>,  <39.409035, 33.953415, 40.839035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061066, 34.150642, 40.834759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105221, 0.164372, -0.980770,
		-0.481829, -0.854322, -0.194872,
		-0.869925, 0.493068, -0.010693,
		38.800087, 34.298561, 40.831551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036381, 33.678383, 40.262959>,  <39.409035, 33.953415, 40.839035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036381, 33.678383, 40.262959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907898, 34.048782, 40.342308>,  <38.830811, 34.271023, 40.389919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907898, 34.048782, 40.342308>,  <39.036381, 33.678383, 40.262959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907898, 34.048782, 40.342308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052977, 0.226717, -0.972519,
		-0.945527, -0.301866, -0.121879,
		-0.321203, 0.926000, 0.198375,
		38.811539, 34.326584, 40.401821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731792, 33.862595, 39.676537>,  <39.036381, 33.678383, 40.262959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731792, 33.862595, 39.676537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768578, 34.214905, 39.862343>,  <38.790649, 34.426292, 39.973827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.768578, 34.214905, 39.862343>,  <38.731792, 33.862595, 39.676537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768578, 34.214905, 39.862343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020734, 0.464697, -0.885227,
		-0.995546, 0.091043, 0.024474,
		0.091967, 0.880777, 0.464515,
		38.796169, 34.479137, 40.001698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302658, 34.291279, 39.384815>,  <38.731792, 33.862595, 39.676537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302658, 34.291279, 39.384815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550159, 34.564400, 39.540215>,  <38.698658, 34.728271, 39.633453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550159, 34.564400, 39.540215>,  <38.302658, 34.291279, 39.384815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550159, 34.564400, 39.540215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037400, 0.468365, -0.882743,
		-0.784698, 0.560727, 0.264263,
		0.618749, 0.682803, 0.388496,
		38.735783, 34.769241, 39.656765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055325, 34.982594, 39.128311>,  <38.302658, 34.291279, 39.384815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055325, 34.982594, 39.128311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444622, 34.977123, 39.220055>,  <38.678200, 34.973843, 39.275101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.444622, 34.977123, 39.220055>,  <38.055325, 34.982594, 39.128311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444622, 34.977123, 39.220055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222308, 0.308293, -0.924951,
		-0.058064, 0.951193, 0.303084,
		0.973246, -0.013671, 0.229358,
		38.736595, 34.973022, 39.288860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293125, 35.597694, 38.816010>,  <38.055325, 34.982594, 39.128311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293125, 35.597694, 38.816010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628498, 35.389839, 38.881756>,  <38.829720, 35.265125, 38.921204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628498, 35.389839, 38.881756>,  <38.293125, 35.597694, 38.816010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628498, 35.389839, 38.881756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353006, 0.287992, -0.890195,
		0.415238, 0.804389, 0.424895,
		0.838429, -0.519634, 0.164369,
		38.880028, 35.233948, 38.931065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898731, 36.088314, 38.852631>,  <38.293125, 35.597694, 38.816010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898731, 36.088314, 38.852631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043858, 35.735508, 38.732357>,  <39.130936, 35.523823, 38.660194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043858, 35.735508, 38.732357>,  <38.898731, 36.088314, 38.852631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043858, 35.735508, 38.732357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416857, 0.442207, -0.794155,
		0.833422, 0.162794, 0.528116,
		0.362820, -0.882015, -0.300684,
		39.152702, 35.470901, 38.642151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359478, 36.352810, 38.404015>,  <38.898731, 36.088314, 38.852631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359478, 36.352810, 38.404015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384327, 35.962360, 38.320763>,  <39.399235, 35.728088, 38.270813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.384327, 35.962360, 38.320763>,  <39.359478, 36.352810, 38.404015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384327, 35.962360, 38.320763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119803, 0.214319, -0.969389,
		0.990852, 0.035284, 0.130256,
		0.062120, -0.976126, -0.208131,
		39.402962, 35.669521, 38.258324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885929, 36.317451, 37.939159>,  <39.359478, 36.352810, 38.404015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885929, 36.317451, 37.939159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655697, 35.994797, 37.885422>,  <39.517559, 35.801205, 37.853180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.655697, 35.994797, 37.885422>,  <39.885929, 36.317451, 37.939159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655697, 35.994797, 37.885422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002688, 0.162423, -0.986717,
		0.817743, -0.568293, -0.091319,
		-0.575577, -0.806636, -0.134348,
		39.483025, 35.752808, 37.845116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069431, 35.974499, 37.206619>,  <39.885929, 36.317451, 37.939159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069431, 35.974499, 37.206619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707623, 35.837646, 37.308437>,  <39.490540, 35.755535, 37.369530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.707623, 35.837646, 37.308437>,  <40.069431, 35.974499, 37.206619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707623, 35.837646, 37.308437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263242, -0.021623, -0.964487,
		0.335487, -0.939402, -0.070506,
		-0.904517, -0.342133, 0.254545,
		39.436268, 35.735008, 37.384800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903305, 35.496162, 36.628162>,  <40.069431, 35.974499, 37.206619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903305, 35.496162, 36.628162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551292, 35.544865, 36.811779>,  <39.340084, 35.574085, 36.921951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551292, 35.544865, 36.811779>,  <39.903305, 35.496162, 36.628162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551292, 35.544865, 36.811779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448605, 0.104151, -0.887641,
		-0.155883, -0.987081, -0.037037,
		-0.880031, 0.121753, 0.459045,
		39.287285, 35.581390, 36.949493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813766, 34.953835, 36.196972>,  <39.903305, 35.496162, 36.628162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813766, 34.953835, 36.196972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070930, 34.989285, 35.892654>,  <40.225231, 35.010555, 35.710064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070930, 34.989285, 35.892654>,  <39.813766, 34.953835, 36.196972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070930, 34.989285, 35.892654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729346, 0.232506, 0.643425,
		0.233990, -0.968538, 0.084752,
		0.642886, 0.088741, -0.760803,
		40.263805, 35.015869, 35.664417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392971, 34.615845, 36.373924>,  <39.813766, 34.953835, 36.196972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392971, 34.615845, 36.373924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.500809, 34.900940, 36.114902>,  <40.565510, 35.071995, 35.959488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.500809, 34.900940, 36.114902>,  <40.392971, 34.615845, 36.373924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500809, 34.900940, 36.114902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840453, 0.154104, 0.519510,
		0.470063, -0.684296, -0.557475,
		0.269590, 0.712735, -0.647558,
		40.581684, 35.114761, 35.920635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031605, 34.638153, 35.850449>,  <40.392971, 34.615845, 36.373924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031605, 34.638153, 35.850449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910919, 34.985905, 36.006985>,  <40.838509, 35.194557, 36.100906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910919, 34.985905, 36.006985>,  <41.031605, 34.638153, 35.850449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910919, 34.985905, 36.006985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672900, -0.096599, 0.733399,
		0.675405, 0.484610, -0.555860,
		-0.301717, 0.869380, 0.391338,
		40.820404, 35.246719, 36.124386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549271, 34.825344, 36.180408>,  <41.031605, 34.638153, 35.850449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549271, 34.825344, 36.180408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293106, 35.091446, 36.333931>,  <41.139408, 35.251106, 36.426044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293106, 35.091446, 36.333931>,  <41.549271, 34.825344, 36.180408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.293106, 35.091446, 36.333931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548672, 0.046596, 0.834738,
		0.537433, 0.745158, -0.394849,
		-0.640410, 0.665258, 0.383805,
		41.100983, 35.291023, 36.449074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.090080, 34.540600, 36.599968>,  <41.549271, 34.825344, 36.180408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.090080, 34.540600, 36.599968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815208, 34.292515, 36.448647>,  <41.650284, 34.143661, 36.357853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.815208, 34.292515, 36.448647>,  <42.090080, 34.540600, 36.599968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.815208, 34.292515, 36.448647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626504, -0.242284, -0.740805,
		0.367802, -0.746076, 0.555061,
		-0.687179, -0.620218, -0.378306,
		41.609055, 34.106449, 36.335155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418530, 33.930336, 36.383785>,  <42.090080, 34.540600, 36.599968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418530, 33.930336, 36.383785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074070, 33.904118, 36.182140>,  <41.867393, 33.888386, 36.061153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.074070, 33.904118, 36.182140>,  <42.418530, 33.930336, 36.383785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.074070, 33.904118, 36.182140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496256, -0.323452, -0.805673,
		-0.110244, -0.943971, 0.311069,
		-0.861148, -0.065549, -0.504110,
		41.815727, 33.884453, 36.030907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469185, 33.366215, 35.967522>,  <42.418530, 33.930336, 36.383785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469185, 33.366215, 35.967522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.201702, 33.586552, 35.767757>,  <42.041214, 33.718754, 35.647900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.201702, 33.586552, 35.767757>,  <42.469185, 33.366215, 35.967522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.201702, 33.586552, 35.767757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447861, -0.237749, -0.861914,
		-0.593513, -0.800030, -0.087719,
		-0.668702, 0.550843, -0.499409,
		42.001091, 33.751804, 35.617935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114105, 32.879108, 35.632095>,  <42.469185, 33.366215, 35.967522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114105, 32.879108, 35.632095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123295, 33.246914, 35.475147>,  <42.128811, 33.467598, 35.380978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123295, 33.246914, 35.475147>,  <42.114105, 32.879108, 35.632095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123295, 33.246914, 35.475147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229255, -0.386866, -0.893183,
		-0.973095, -0.069431, -0.219693,
		0.022977, 0.919518, -0.392375,
		42.130188, 33.522770, 35.357433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600639, 33.084248, 35.148632>,  <42.114105, 32.879108, 35.632095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600639, 33.084248, 35.148632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.951401, 33.244026, 35.041683>,  <42.161858, 33.339893, 34.977516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.951401, 33.244026, 35.041683>,  <41.600639, 33.084248, 35.148632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.951401, 33.244026, 35.041683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112266, -0.711059, -0.694112,
		-0.467378, 0.578650, -0.668373,
		0.876900, 0.399448, -0.267370,
		42.214470, 33.363861, 34.961472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624054, 33.265709, 34.384472>,  <41.600639, 33.084248, 35.148632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624054, 33.265709, 34.384472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996136, 33.184906, 34.507057>,  <42.219383, 33.136425, 34.580608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.996136, 33.184906, 34.507057>,  <41.624054, 33.265709, 34.384472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.996136, 33.184906, 34.507057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119470, -0.622846, -0.773169,
		0.347066, 0.755815, -0.555237,
		0.930200, -0.202007, 0.306466,
		42.275196, 33.124306, 34.598995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827766, 33.112011, 33.793091>,  <41.624054, 33.265709, 34.384472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827766, 33.112011, 33.793091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.090176, 32.952610, 34.049473>,  <42.247623, 32.856968, 34.203304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.090176, 32.952610, 34.049473>,  <41.827766, 33.112011, 33.793091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.090176, 32.952610, 34.049473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210874, -0.718646, -0.662632,
		0.724681, 0.569864, -0.387416,
		0.656025, -0.398501, 0.640958,
		42.286983, 32.833061, 34.241760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.419033, 32.994446, 33.416866>,  <41.827766, 33.112011, 33.793091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.419033, 32.994446, 33.416866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429127, 32.740112, 33.725430>,  <42.435184, 32.587513, 33.910568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.429127, 32.740112, 33.725430>,  <42.419033, 32.994446, 33.416866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.429127, 32.740112, 33.725430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343366, -0.719196, -0.604034,
		0.938862, 0.280120, 0.200175,
		0.025237, -0.635838, 0.771410,
		42.436699, 32.549362, 33.956852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.140003, 32.728775, 33.490929>,  <42.419033, 32.994446, 33.416866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.140003, 32.728775, 33.490929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.879971, 32.474937, 33.658108>,  <42.723949, 32.322636, 33.758415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.879971, 32.474937, 33.658108>,  <43.140003, 32.728775, 33.490929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.879971, 32.474937, 33.658108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386249, -0.749643, -0.537445,
		0.654370, -0.187954, 0.732444,
		-0.650086, -0.634593, 0.417946,
		42.684944, 32.284561, 33.783493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.545258, 32.144924, 33.535435>,  <43.140003, 32.728775, 33.490929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.545258, 32.144924, 33.535435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.175385, 32.010536, 33.607098>,  <42.953461, 31.929905, 33.650097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.175385, 32.010536, 33.607098>,  <43.545258, 32.144924, 33.535435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.175385, 32.010536, 33.607098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233285, -0.871786, -0.430775,
		0.300911, -0.356535, 0.884497,
		-0.924679, -0.335965, 0.179156,
		42.897980, 31.909746, 33.660843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.750664, 31.487173, 33.759048>,  <43.545258, 32.144924, 33.535435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.750664, 31.487173, 33.759048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371799, 31.493586, 33.630905>,  <43.144482, 31.497433, 33.554020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371799, 31.493586, 33.630905>,  <43.750664, 31.487173, 33.759048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.371799, 31.493586, 33.630905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130648, -0.892869, -0.430948,
		-0.292950, -0.450031, 0.843594,
		-0.947160, 0.016033, -0.320362,
		43.087650, 31.498396, 33.534798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.419575, 30.818649, 33.826981>,  <43.750664, 31.487173, 33.759048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.419575, 30.818649, 33.826981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.145615, 30.969587, 33.577656>,  <42.981239, 31.060150, 33.428062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.145615, 30.969587, 33.577656>,  <43.419575, 30.818649, 33.826981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.145615, 30.969587, 33.577656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028062, -0.868477, -0.494934,
		-0.728092, -0.321491, 0.605413,
		-0.684905, 0.377347, -0.623310,
		42.940144, 31.082792, 33.390663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.019897, 30.363588, 33.835915>,  <43.419575, 30.818649, 33.826981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.019897, 30.363588, 33.835915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924324, 30.557709, 33.499489>,  <42.866982, 30.674181, 33.297634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924324, 30.557709, 33.499489>,  <43.019897, 30.363588, 33.835915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924324, 30.557709, 33.499489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038520, -0.870209, -0.491175,
		-0.970272, -0.084959, 0.226614,
		-0.238931, 0.485303, -0.841067,
		42.852646, 30.703300, 33.247169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.497902, 29.969324, 33.576328>,  <43.019897, 30.363588, 33.835915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.497902, 29.969324, 33.576328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582558, 30.193089, 33.255760>,  <42.633350, 30.327347, 33.063419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.582558, 30.193089, 33.255760>,  <42.497902, 29.969324, 33.576328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582558, 30.193089, 33.255760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121757, -0.798511, -0.589538,
		-0.969735, 0.222345, -0.100881,
		0.211635, 0.559413, -0.801416,
		42.646049, 30.360912, 33.015335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.932541, 29.788885, 33.050785>,  <42.497902, 29.969324, 33.576328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.932541, 29.788885, 33.050785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.219936, 29.963676, 32.834332>,  <42.392376, 30.068550, 32.704460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.219936, 29.963676, 32.834332>,  <41.932541, 29.788885, 33.050785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.219936, 29.963676, 32.834332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027072, -0.794984, -0.606026,
		-0.695009, 0.420775, -0.583018,
		0.718491, 0.436977, -0.541130,
		42.435482, 30.094770, 32.671993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708336, 29.900967, 32.278950>,  <41.932541, 29.788885, 33.050785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708336, 29.900967, 32.278950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108070, 29.888544, 32.286552>,  <42.347912, 29.881090, 32.291115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.108070, 29.888544, 32.286552>,  <41.708336, 29.900967, 32.278950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108070, 29.888544, 32.286552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012420, -0.781436, -0.623861,
		0.034227, 0.623212, -0.781304,
		0.999337, -0.031057, 0.019006,
		42.407871, 29.879227, 32.292255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.862488, 29.736883, 31.593588>,  <41.708336, 29.900967, 32.278950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.862488, 29.736883, 31.593588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.189491, 29.637426, 31.801382>,  <42.385693, 29.577753, 31.926058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.189491, 29.637426, 31.801382>,  <41.862488, 29.736883, 31.593588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.189491, 29.637426, 31.801382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097893, -0.828888, -0.550783,
		0.567540, 0.501122, -0.653280,
		0.817505, -0.248640, 0.519483,
		42.434742, 29.562834, 31.957228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504269, 29.737194, 31.218073>,  <41.862488, 29.736883, 31.593588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504269, 29.737194, 31.218073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581966, 29.482388, 31.516464>,  <42.628586, 29.329504, 31.695499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.581966, 29.482388, 31.516464>,  <42.504269, 29.737194, 31.218073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581966, 29.482388, 31.516464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266495, -0.697593, -0.665090,
		0.944060, 0.327988, 0.034258,
		0.194243, -0.637014, 0.745977,
		42.640240, 29.291283, 31.740257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.952473, 29.249132, 30.870470>,  <42.504269, 29.737194, 31.218073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.952473, 29.249132, 30.870470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.903790, 29.053795, 31.216120>,  <42.874580, 28.936592, 31.423510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.903790, 29.053795, 31.216120>,  <42.952473, 29.249132, 30.870470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.903790, 29.053795, 31.216120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229078, -0.860912, -0.454261,
		0.965769, 0.142662, 0.216652,
		-0.121713, -0.488341, 0.864123,
		42.867275, 28.907293, 31.475357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.607594, 28.877340, 31.102295>,  <42.952473, 29.249132, 30.870470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.607594, 28.877340, 31.102295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315842, 28.690933, 31.302626>,  <43.140789, 28.579088, 31.422823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315842, 28.690933, 31.302626>,  <43.607594, 28.877340, 31.102295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.315842, 28.690933, 31.302626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343674, -0.882612, -0.320757,
		0.591513, -0.061834, 0.803921,
		-0.729384, -0.466019, 0.500825,
		43.097027, 28.551128, 31.452873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.897308, 28.331314, 31.460814>,  <43.607594, 28.877340, 31.102295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.897308, 28.331314, 31.460814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.507683, 28.266779, 31.397360>,  <43.273907, 28.228058, 31.359287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.507683, 28.266779, 31.397360>,  <43.897308, 28.331314, 31.460814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.507683, 28.266779, 31.397360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223609, -0.793491, -0.566014,
		-0.034554, -0.586807, 0.808989,
		-0.974066, -0.161339, -0.158634,
		43.215462, 28.218378, 31.349770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.905899, 27.670937, 31.531860>,  <43.897308, 28.331314, 31.460814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.905899, 27.670937, 31.531860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.555977, 27.738045, 31.350058>,  <43.346024, 27.778309, 31.240976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.555977, 27.738045, 31.350058>,  <43.905899, 27.670937, 31.531860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.555977, 27.738045, 31.350058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155992, -0.790634, -0.592085,
		-0.458683, -0.588856, 0.665476,
		-0.874801, 0.167770, -0.454507,
		43.293537, 27.788376, 31.213705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.539825, 27.124107, 31.633799>,  <43.905899, 27.670937, 31.531860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.539825, 27.124107, 31.633799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.317760, 27.246719, 31.324520>,  <43.184521, 27.320286, 31.138952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.317760, 27.246719, 31.324520>,  <43.539825, 27.124107, 31.633799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.317760, 27.246719, 31.324520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054183, -0.914309, -0.401376,
		-0.829976, -0.264723, 0.490981,
		-0.555162, 0.306529, -0.773198,
		43.151211, 27.338678, 31.092560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.244308, 26.563078, 31.497171>,  <43.539825, 27.124107, 31.633799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.244308, 26.563078, 31.497171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.214668, 26.782938, 31.164331>,  <43.196884, 26.914854, 30.964626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.214668, 26.782938, 31.164331>,  <43.244308, 26.563078, 31.497171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.214668, 26.782938, 31.164331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043064, -0.831853, -0.553323,
		-0.996320, -0.076837, 0.037973,
		-0.074104, 0.549652, -0.832101,
		43.192436, 26.947834, 30.914701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782299, 26.222244, 31.131363>,  <43.244308, 26.563078, 31.497171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.782299, 26.222244, 31.131363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.959934, 26.453833, 30.857843>,  <43.066517, 26.592787, 30.693731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.959934, 26.453833, 30.857843>,  <42.782299, 26.222244, 31.131363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.959934, 26.453833, 30.857843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195095, -0.807352, -0.556884,
		-0.874486, 0.113899, -0.471489,
		0.444086, 0.578973, -0.683797,
		43.093159, 26.627525, 30.652704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.470879, 26.210846, 30.435266>,  <42.782299, 26.222244, 31.131363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.470879, 26.210846, 30.435266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856125, 26.306175, 30.385277>,  <43.087273, 26.363373, 30.355282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856125, 26.306175, 30.385277>,  <42.470879, 26.210846, 30.435266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856125, 26.306175, 30.385277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050507, -0.616252, -0.785927,
		-0.264321, 0.750623, -0.605557,
		0.963111, 0.238322, -0.124976,
		43.145058, 26.377672, 30.347784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.763676, 25.716761, 29.953281>,  <42.470879, 26.210846, 30.435266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.763676, 25.716761, 29.953281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.379890, 25.678305, 29.847313>,  <42.149620, 25.655231, 29.783731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.379890, 25.678305, 29.847313>,  <42.763676, 25.716761, 29.953281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.379890, 25.678305, 29.847313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139974, -0.978438, -0.151873,
		-0.244608, -0.182799, 0.952235,
		-0.959465, -0.096139, -0.264921,
		42.092052, 25.649464, 29.767836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.311588, 25.304245, 30.365993>,  <42.763676, 25.716761, 29.953281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.311588, 25.304245, 30.365993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155453, 25.276451, 29.998775>,  <42.061771, 25.259775, 29.778444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.155453, 25.276451, 29.998775>,  <42.311588, 25.304245, 30.365993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.155453, 25.276451, 29.998775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133903, -0.990830, 0.018062,
		-0.910880, -0.115878, 0.396068,
		-0.390343, -0.069486, -0.918043,
		42.038349, 25.255606, 29.723362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.981495, 25.427891, 30.793179>,  <42.311588, 25.304245, 30.365993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.981495, 25.427891, 30.793179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.376003, 25.409264, 30.729797>,  <43.612709, 25.398087, 30.691769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.376003, 25.409264, 30.729797>,  <42.981495, 25.427891, 30.793179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.376003, 25.409264, 30.729797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148329, -0.172143, 0.973840,
		-0.072626, -0.983971, -0.162872,
		0.986268, -0.046568, -0.158454,
		43.671883, 25.395292, 30.682261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.094048, 24.886545, 31.192268>,  <42.981495, 25.427891, 30.793179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.094048, 24.886545, 31.192268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.436237, 25.082266, 31.124439>,  <43.641552, 25.199697, 31.083742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.436237, 25.082266, 31.124439>,  <43.094048, 24.886545, 31.192268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.436237, 25.082266, 31.124439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304298, -0.210019, 0.929136,
		0.419014, -0.846449, -0.328559,
		0.855471, 0.489301, -0.169572,
		43.692879, 25.229055, 31.073568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.675220, 24.431320, 31.353870>,  <43.094048, 24.886545, 31.192268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.675220, 24.431320, 31.353870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.764004, 24.819094, 31.395693>,  <43.817272, 25.051758, 31.420786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.764004, 24.819094, 31.395693>,  <43.675220, 24.431320, 31.353870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.764004, 24.819094, 31.395693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199375, -0.150090, 0.968361,
		0.954456, -0.194085, -0.226594,
		0.221954, 0.969435, 0.104558,
		43.830589, 25.109924, 31.427061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.276661, 24.542511, 31.848253>,  <43.675220, 24.431320, 31.353870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.276661, 24.542511, 31.848253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.114445, 24.907534, 31.827158>,  <44.017117, 25.126547, 31.814501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.114445, 24.907534, 31.827158>,  <44.276661, 24.542511, 31.848253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.114445, 24.907534, 31.827158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193010, 0.141882, 0.970885,
		0.893467, 0.383555, -0.233671,
		-0.405541, 0.912554, -0.052737,
		43.992783, 25.181299, 31.811337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.764736, 25.039074, 31.924929>,  <44.276661, 24.542511, 31.848253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.764736, 25.039074, 31.924929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.415104, 25.173985, 32.064774>,  <44.205326, 25.254930, 32.148682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.415104, 25.173985, 32.064774>,  <44.764736, 25.039074, 31.924929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.415104, 25.173985, 32.064774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415171, 0.144982, 0.898117,
		0.252227, 0.930174, -0.266753,
		-0.874080, 0.337277, 0.349613,
		44.152882, 25.275167, 32.169659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.872040, 25.698666, 32.255905>,  <44.764736, 25.039074, 31.924929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.872040, 25.698666, 32.255905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.553474, 25.507469, 32.404095>,  <44.362335, 25.392752, 32.493008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.553474, 25.507469, 32.404095>,  <44.872040, 25.698666, 32.255905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.553474, 25.507469, 32.404095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292600, 0.231571, 0.927772,
		-0.529258, 0.847290, -0.044566,
		-0.796412, -0.477991, 0.370478,
		44.314552, 25.364073, 32.515240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.478279, 26.155146, 32.778595>,  <44.872040, 25.698666, 32.255905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.478279, 26.155146, 32.778595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.398289, 25.772463, 32.863186>,  <44.350296, 25.542852, 32.913940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.398289, 25.772463, 32.863186>,  <44.478279, 26.155146, 32.778595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.398289, 25.772463, 32.863186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137096, 0.186393, 0.972863,
		-0.970162, 0.223540, 0.093887,
		-0.199974, -0.956706, 0.211478,
		44.338295, 25.485451, 32.926628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.623253, 26.345819, 33.457577>,  <44.478279, 26.155146, 32.778595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.623253, 26.345819, 33.457577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.277222, 26.288250, 33.649796>,  <44.069603, 26.253708, 33.765125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.277222, 26.288250, 33.649796>,  <44.623253, 26.345819, 33.457577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.277222, 26.288250, 33.649796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000455, 0.958183, 0.286155,
		-0.501638, 0.247327, -0.828968,
		-0.865077, -0.143924, 0.480548,
		44.017700, 26.245073, 33.793961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.203278, 26.872259, 33.186947>,  <44.623253, 26.345819, 33.457577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.203278, 26.872259, 33.186947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.053265, 26.767426, 33.542622>,  <43.963257, 26.704525, 33.756027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.053265, 26.767426, 33.542622>,  <44.203278, 26.872259, 33.186947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.053265, 26.767426, 33.542622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150185, 0.963709, 0.220703,
		-0.914764, -0.050771, -0.400787,
		-0.375036, -0.262083, 0.889191,
		43.940754, 26.688801, 33.809380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.513168, 27.273754, 33.273182>,  <44.203278, 26.872259, 33.186947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.513168, 27.273754, 33.273182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.655640, 27.152910, 33.626873>,  <43.741123, 27.080404, 33.839088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.655640, 27.152910, 33.626873>,  <43.513168, 27.273754, 33.273182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.655640, 27.152910, 33.626873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210813, 0.895913, 0.391021,
		-0.910326, -0.325682, 0.255418,
		0.356181, -0.302111, 0.884231,
		43.762493, 27.062277, 33.892143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.113335, 27.549709, 33.752731>,  <43.513168, 27.273754, 33.273182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.113335, 27.549709, 33.752731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449959, 27.453588, 33.946239>,  <43.651932, 27.395916, 34.062344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449959, 27.453588, 33.946239>,  <43.113335, 27.549709, 33.752731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.449959, 27.453588, 33.946239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106670, 0.951891, 0.287272,
		-0.529532, -0.190152, 0.826703,
		0.841557, -0.240304, 0.483773,
		43.702427, 27.381496, 34.091370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.159584, 28.158546, 34.121380>,  <43.113335, 27.549709, 33.752731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.159584, 28.158546, 34.121380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.505459, 27.995626, 34.238968>,  <43.712986, 27.897875, 34.309521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.505459, 27.995626, 34.238968>,  <43.159584, 28.158546, 34.121380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.505459, 27.995626, 34.238968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286749, 0.880766, 0.376864,
		-0.412415, -0.241575, 0.878382,
		0.864690, -0.407300, 0.293970,
		43.764866, 27.873436, 34.327160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.156231, 28.215981, 34.883648>,  <43.159584, 28.158546, 34.121380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.156231, 28.215981, 34.883648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.530693, 28.182795, 34.746986>,  <43.755371, 28.162882, 34.664989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.530693, 28.182795, 34.746986>,  <43.156231, 28.215981, 34.883648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.530693, 28.182795, 34.746986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204095, 0.919503, 0.335946,
		0.286277, -0.384228, 0.877732,
		0.936157, -0.082967, -0.341652,
		43.811539, 28.157904, 34.644489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.576412, 28.407543, 35.390079>,  <43.156231, 28.215981, 34.883648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.576412, 28.407543, 35.390079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.785488, 28.469795, 35.054802>,  <43.910934, 28.507147, 34.853634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.785488, 28.469795, 35.054802>,  <43.576412, 28.407543, 35.390079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.785488, 28.469795, 35.054802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344257, 0.860939, 0.374528,
		0.779924, -0.484317, 0.396429,
		0.522691, 0.155629, -0.838197,
		43.942295, 28.516483, 34.803345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.316406, 28.605232, 35.554829>,  <43.576412, 28.407543, 35.390079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.316406, 28.605232, 35.554829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.262779, 28.719465, 35.175259>,  <44.230602, 28.788006, 34.947517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.262779, 28.719465, 35.175259>,  <44.316406, 28.605232, 35.554829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.262779, 28.719465, 35.175259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444112, 0.873343, 0.200090,
		0.885884, -0.394605, -0.243919,
		-0.134068, 0.285584, -0.948930,
		44.222557, 28.805140, 34.890579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.039219, 28.765478, 35.363140>,  <44.316406, 28.605232, 35.554829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.039219, 28.765478, 35.363140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.806595, 28.944088, 35.091137>,  <44.667019, 29.051254, 34.927937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.806595, 28.944088, 35.091137>,  <45.039219, 28.765478, 35.363140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.806595, 28.944088, 35.091137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441711, 0.875267, 0.196978,
		0.683139, -0.185810, -0.706255,
		-0.581560, 0.446523, -0.680003,
		44.632126, 29.078045, 34.887135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.487389, 29.277483, 34.993889>,  <45.039219, 28.765478, 35.363140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.487389, 29.277483, 34.993889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.140621, 29.417141, 34.851589>,  <44.932560, 29.500937, 34.766209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.140621, 29.417141, 34.851589>,  <45.487389, 29.277483, 34.993889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.140621, 29.417141, 34.851589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408414, 0.906693, -0.105388,
		0.285758, -0.236654, -0.928621,
		-0.866914, 0.349147, -0.355747,
		44.880547, 29.521885, 34.744865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.660213, 29.755320, 34.399513>,  <45.487389, 29.277483, 34.993889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.660213, 29.755320, 34.399513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.296043, 29.859346, 34.528187>,  <45.077541, 29.921762, 34.605392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.296043, 29.859346, 34.528187>,  <45.660213, 29.755320, 34.399513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.296043, 29.859346, 34.528187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232147, 0.964868, -0.123036,
		-0.342382, -0.037337, -0.938819,
		-0.910430, 0.260069, 0.321685,
		45.022915, 29.937366, 34.624691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.403358, 30.204775, 33.927258>,  <45.660213, 29.755320, 34.399513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.403358, 30.204775, 33.927258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.174393, 30.304342, 34.239765>,  <45.037014, 30.364082, 34.427269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.174393, 30.304342, 34.239765>,  <45.403358, 30.204775, 33.927258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.174393, 30.304342, 34.239765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206905, 0.965823, -0.156128,
		-0.793432, 0.072279, -0.604352,
		-0.572413, 0.248920, 0.781270,
		45.002670, 30.379019, 34.474148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.072254, 30.840092, 33.685089>,  <45.403358, 30.204775, 33.927258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.072254, 30.840092, 33.685089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.073036, 30.845884, 34.085045>,  <45.073505, 30.849360, 34.325020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.073036, 30.845884, 34.085045>,  <45.072254, 30.840092, 33.685089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.073036, 30.845884, 34.085045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185618, 0.982514, -0.014591,
		-0.982620, 0.185627, -0.000765,
		0.001957, 0.014480, 0.999893,
		45.073624, 30.850229, 34.385014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.688362, 31.424055, 33.825684>,  <45.072254, 30.840092, 33.685089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.688362, 31.424055, 33.825684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.849548, 31.346210, 34.183399>,  <44.946259, 31.299503, 34.398029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.849548, 31.346210, 34.183399>,  <44.688362, 31.424055, 33.825684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.849548, 31.346210, 34.183399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081092, 0.980880, 0.176916,
		-0.911617, 0.001229, 0.411040,
		0.402963, -0.194612, 0.894286,
		44.970436, 31.287827, 34.451683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.366627, 31.868879, 34.341793>,  <44.688362, 31.424055, 33.825684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.366627, 31.868879, 34.341793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.729271, 31.799395, 34.495617>,  <44.946857, 31.757704, 34.587910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.729271, 31.799395, 34.495617>,  <44.366627, 31.868879, 34.341793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.729271, 31.799395, 34.495617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019129, 0.893480, 0.448694,
		-0.421541, -0.414146, 0.806713,
		0.906607, -0.173712, 0.384561,
		45.001255, 31.747282, 34.610985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.203228, 32.122299, 34.971840>,  <44.366627, 31.868879, 34.341793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.203228, 32.122299, 34.971840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.597622, 32.080544, 34.919781>,  <44.834259, 32.055489, 34.888546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.597622, 32.080544, 34.919781>,  <44.203228, 32.122299, 34.971840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.597622, 32.080544, 34.919781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139668, 0.943137, 0.301639,
		0.091259, -0.315589, 0.944498,
		0.985984, -0.104388, -0.130148,
		44.893417, 32.049229, 34.880737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.397568, 32.466179, 35.517292>,  <44.203228, 32.122299, 34.971840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.397568, 32.466179, 35.517292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.741295, 32.442936, 35.314037>,  <44.947529, 32.428989, 35.192085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.741295, 32.442936, 35.314037>,  <44.397568, 32.466179, 35.517292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.741295, 32.442936, 35.314037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323464, 0.831333, 0.451947,
		0.396171, -0.552728, 0.733171,
		0.859313, -0.058105, -0.508138,
		44.999088, 32.425503, 35.161594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.898075, 32.552128, 36.057751>,  <44.397568, 32.466179, 35.517292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.898075, 32.552128, 36.057751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.012619, 32.656742, 35.689056>,  <45.081345, 32.719513, 35.467838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.012619, 32.656742, 35.689056>,  <44.898075, 32.552128, 36.057751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.012619, 32.656742, 35.689056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387814, 0.848054, 0.361116,
		0.876127, -0.460871, 0.141418,
		0.286358, 0.261540, -0.921736,
		45.098526, 32.735203, 35.412537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.520824, 32.817593, 36.104473>,  <44.898075, 32.552128, 36.057751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.520824, 32.817593, 36.104473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.384632, 32.959770, 35.756283>,  <45.302917, 33.045078, 35.547367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.384632, 32.959770, 35.756283>,  <45.520824, 32.817593, 36.104473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.384632, 32.959770, 35.756283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315590, 0.915288, 0.250301,
		0.885706, -0.189491, -0.423814,
		-0.340483, 0.355444, -0.870477,
		45.282486, 33.066402, 35.495140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.044868, 33.204388, 35.857437>,  <45.520824, 32.817593, 36.104473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.044868, 33.204388, 35.857437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.708435, 33.330242, 35.681446>,  <45.506577, 33.405754, 35.575851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.708435, 33.330242, 35.681446>,  <46.044868, 33.204388, 35.857437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.708435, 33.330242, 35.681446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150154, 0.917257, 0.368908,
		0.519645, 0.244218, -0.818735,
		-0.841084, 0.314638, -0.439978,
		45.456108, 33.424633, 35.549454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.681728, 32.938709, 35.432335>,  <46.044868, 33.204388, 35.857437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.681728, 32.938709, 35.432335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.068756, 33.011978, 35.501923>,  <47.300972, 33.055939, 35.543674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.068756, 33.011978, 35.501923>,  <46.681728, 32.938709, 35.432335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.068756, 33.011978, 35.501923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154339, 0.116547, -0.981120,
		-0.199986, 0.976148, 0.084497,
		0.967566, 0.183170, 0.173966,
		47.359028, 33.066929, 35.554111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.826237, 33.523018, 34.965385>,  <46.681728, 32.938709, 35.432335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.826237, 33.523018, 34.965385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.128262, 33.266136, 35.018219>,  <47.309479, 33.112007, 35.049919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.128262, 33.266136, 35.018219>,  <46.826237, 33.523018, 34.965385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.128262, 33.266136, 35.018219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219905, 0.058267, -0.973780,
		0.617674, 0.764312, 0.185220,
		0.755064, -0.642209, 0.132086,
		47.354782, 33.073475, 35.057846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.297619, 33.901974, 34.523182>,  <46.826237, 33.523018, 34.965385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.297619, 33.901974, 34.523182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.332928, 34.047958, 34.152451>,  <47.354111, 34.135551, 33.930012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.332928, 34.047958, 34.152451>,  <47.297619, 33.901974, 34.523182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.332928, 34.047958, 34.152451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702143, 0.682783, 0.201994,
		0.706543, 0.632935, 0.316527,
		0.088270, 0.364965, -0.926827,
		47.359409, 34.157448, 33.874401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.214363, 34.554703, 34.643089>,  <47.297619, 33.901974, 34.523182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.214363, 34.554703, 34.643089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.111313, 34.503597, 34.259983>,  <47.049484, 34.472935, 34.030121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.111313, 34.503597, 34.259983>,  <47.214363, 34.554703, 34.643089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.111313, 34.503597, 34.259983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707901, 0.699607, 0.097090,
		0.657653, 0.703013, -0.270674,
		-0.257621, -0.127759, -0.957762,
		47.034027, 34.465271, 33.972652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.774746, 34.882099, 34.555073>,  <47.214363, 34.554703, 34.643089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.774746, 34.882099, 34.555073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.623131, 34.880131, 34.925220>,  <47.532162, 34.878948, 35.147308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.623131, 34.880131, 34.925220>,  <47.774746, 34.882099, 34.555073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.623131, 34.880131, 34.925220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857294, 0.378348, -0.349141,
		-0.348393, -0.925650, -0.147626,
		-0.379036, -0.004920, 0.925369,
		47.509418, 34.878654, 35.202831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.124882, 34.385815, 45.428185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.818748, 34.128391, 45.424049>,  <32.635071, 33.973938, 45.421566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.818748, 34.128391, 45.424049>,  <33.124882, 34.385815, 45.428185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818748, 34.128391, 45.424049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128860, 0.168946, -0.977165,
		0.630609, -0.746520, -0.212228,
		-0.765328, -0.643557, -0.010342,
		32.589149, 33.935326, 45.420948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214344, 34.053730, 44.740219>,  <33.124882, 34.385815, 45.428185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214344, 34.053730, 44.740219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.835262, 33.995365, 44.853752>,  <32.607811, 33.960346, 44.921871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.835262, 33.995365, 44.853752>,  <33.214344, 34.053730, 44.740219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835262, 33.995365, 44.853752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265832, -0.131209, -0.955048,
		0.176595, -0.980558, 0.085560,
		-0.947706, -0.145912, 0.283834,
		32.550949, 33.951591, 44.938904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975994, 33.481655, 44.369713>,  <33.214344, 34.053730, 44.740219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975994, 33.481655, 44.369713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.648609, 33.685394, 44.476063>,  <32.452179, 33.807636, 44.539871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.648609, 33.685394, 44.476063>,  <32.975994, 33.481655, 44.369713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648609, 33.685394, 44.476063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262521, 0.080105, -0.961595,
		-0.511081, -0.856826, 0.068151,
		-0.818461, 0.509344, 0.265875,
		32.403072, 33.838196, 44.555824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395092, 33.116367, 44.045334>,  <32.975994, 33.481655, 44.369713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395092, 33.116367, 44.045334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.278393, 33.490665, 44.124596>,  <32.208374, 33.715244, 44.172153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.278393, 33.490665, 44.124596>,  <32.395092, 33.116367, 44.045334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278393, 33.490665, 44.124596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347369, 0.089369, -0.933460,
		-0.891189, -0.341168, 0.298976,
		-0.291748, 0.935744, 0.198156,
		32.190868, 33.771389, 44.184044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845570, 33.263119, 43.606445>,  <32.395092, 33.116367, 44.045334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845570, 33.263119, 43.606445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.971119, 33.629627, 43.705994>,  <32.046448, 33.849533, 43.765724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.971119, 33.629627, 43.705994>,  <31.845570, 33.263119, 43.606445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971119, 33.629627, 43.705994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204350, 0.321167, -0.924712,
		-0.927213, 0.239386, 0.288045,
		0.313874, 0.916268, 0.248872,
		32.065281, 33.904507, 43.780655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438869, 33.690331, 43.103729>,  <31.845570, 33.263119, 43.606445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438869, 33.690331, 43.103729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.738564, 33.928997, 43.218716>,  <31.918381, 34.072197, 43.287708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.738564, 33.928997, 43.218716>,  <31.438869, 33.690331, 43.103729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738564, 33.928997, 43.218716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135361, 0.286931, -0.948340,
		-0.648325, 0.749441, 0.134213,
		0.749235, 0.596665, 0.287469,
		31.963333, 34.107998, 43.304955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481848, 34.294415, 42.780369>,  <31.438869, 33.690331, 43.103729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481848, 34.294415, 42.780369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.873194, 34.303349, 42.862637>,  <32.108002, 34.308708, 42.911995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.873194, 34.303349, 42.862637>,  <31.481848, 34.294415, 42.780369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873194, 34.303349, 42.862637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197116, 0.201086, -0.959536,
		-0.062792, 0.979319, 0.192333,
		0.978367, 0.022339, 0.205666,
		32.166702, 34.310051, 42.924335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652042, 34.760815, 42.431782>,  <31.481848, 34.294415, 42.780369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652042, 34.760815, 42.431782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.010349, 34.608074, 42.522816>,  <32.225334, 34.516430, 42.577435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.010349, 34.608074, 42.522816>,  <31.652042, 34.760815, 42.431782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010349, 34.608074, 42.522816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291128, 0.117037, -0.949498,
		0.335931, 0.916784, 0.216005,
		0.895765, -0.381851, 0.227585,
		32.279079, 34.493519, 42.591091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150314, 35.274281, 42.222435>,  <31.652042, 34.760815, 42.431782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150314, 35.274281, 42.222435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.330860, 34.917366, 42.226425>,  <32.439190, 34.703217, 42.228821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.330860, 34.917366, 42.226425>,  <32.150314, 35.274281, 42.222435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330860, 34.917366, 42.226425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341482, 0.162390, -0.925754,
		0.824413, 0.421264, 0.377996,
		0.451369, -0.892282, 0.009977,
		32.466270, 34.649681, 42.229420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851635, 35.376480, 42.209106>,  <32.150314, 35.274281, 42.222435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851635, 35.376480, 42.209106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.762169, 35.018692, 42.054241>,  <32.708488, 34.804020, 41.961323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.762169, 35.018692, 42.054241>,  <32.851635, 35.376480, 42.209106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762169, 35.018692, 42.054241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558720, 0.207815, -0.802898,
		0.798627, -0.395897, 0.453277,
		-0.223667, -0.894471, -0.387162,
		32.695068, 34.750351, 41.938091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419914, 35.170444, 42.021538>,  <32.851635, 35.376480, 42.209106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419914, 35.170444, 42.021538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.215260, 34.898521, 41.811359>,  <33.092468, 34.735367, 41.685253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.215260, 34.898521, 41.811359>,  <33.419914, 35.170444, 42.021538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215260, 34.898521, 41.811359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692731, 0.035399, -0.720327,
		0.508283, -0.732537, 0.452812,
		-0.511637, -0.679807, -0.525443,
		33.061768, 34.694580, 41.653725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948498, 34.799152, 41.662617>,  <33.419914, 35.170444, 42.021538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948498, 34.799152, 41.662617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.614147, 34.720398, 41.457661>,  <33.413536, 34.673145, 41.334686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.614147, 34.720398, 41.457661>,  <33.948498, 34.799152, 41.662617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.614147, 34.720398, 41.457661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502283, 0.102177, -0.858645,
		0.221411, -0.975087, 0.013486,
		-0.835876, -0.196888, -0.512393,
		33.363384, 34.661331, 41.303944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134106, 34.407230, 41.172043>,  <33.948498, 34.799152, 41.662617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134106, 34.407230, 41.172043> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.780884, 34.518711, 41.021027>,  <33.568951, 34.585602, 40.930416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.780884, 34.518711, 41.021027>,  <34.134106, 34.407230, 41.172043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780884, 34.518711, 41.021027> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405906, 0.049899, -0.912552,
		-0.235494, -0.959079, -0.157192,
		-0.883053, 0.278706, -0.377545,
		33.515968, 34.602322, 40.907764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079842, 34.105278, 40.520164>,  <34.134106, 34.407230, 41.172043>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079842, 34.105278, 40.520164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.824783, 34.413406, 40.519009>,  <33.671749, 34.598286, 40.518314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.824783, 34.413406, 40.519009>,  <34.079842, 34.105278, 40.520164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824783, 34.413406, 40.519009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241423, 0.196274, -0.950364,
		-0.731522, -0.606692, -0.311127,
		-0.637644, 0.770326, -0.002890,
		33.633492, 34.644505, 40.518143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610317, 34.062653, 39.930115>,  <34.079842, 34.105278, 40.520164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610317, 34.062653, 39.930115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.626251, 34.450436, 40.026913>,  <33.635811, 34.683105, 40.084991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.626251, 34.450436, 40.026913>,  <33.610317, 34.062653, 39.930115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626251, 34.450436, 40.026913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201824, 0.229394, -0.952179,
		-0.978611, 0.086767, -0.186524,
		0.039831, 0.969459, 0.241999,
		33.638199, 34.741272, 40.099514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559757, 34.409912, 39.223007>,  <33.610317, 34.062653, 39.930115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559757, 34.409912, 39.223007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.713688, 34.697365, 39.454685>,  <33.806046, 34.869839, 39.593693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.713688, 34.697365, 39.454685>,  <33.559757, 34.409912, 39.223007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713688, 34.697365, 39.454685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418822, 0.423241, -0.803402,
		-0.822494, 0.551752, -0.138106,
		0.384827, 0.718635, 0.579199,
		33.829136, 34.912956, 39.628445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607899, 34.928043, 38.776600>,  <33.559757, 34.409912, 39.223007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607899, 34.928043, 38.776600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.853924, 35.051437, 39.066853>,  <34.001537, 35.125473, 39.241005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.853924, 35.051437, 39.066853>,  <33.607899, 34.928043, 38.776600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853924, 35.051437, 39.066853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570607, 0.460982, -0.679634,
		-0.544159, 0.832065, 0.107508,
		0.615060, 0.308484, 0.725630,
		34.038441, 35.143982, 39.284542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720417, 35.610874, 38.586491>,  <33.607899, 34.928043, 38.776600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720417, 35.610874, 38.586491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.011604, 35.509907, 38.841473>,  <34.186317, 35.449326, 38.994461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.011604, 35.509907, 38.841473>,  <33.720417, 35.610874, 38.586491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011604, 35.509907, 38.841473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683322, 0.343076, -0.644491,
		-0.056015, 0.904756, 0.422230,
		0.727965, -0.252418, 0.637458,
		34.229992, 35.434181, 39.032711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168953, 36.165043, 38.548382>,  <33.720417, 35.610874, 38.586491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168953, 36.165043, 38.548382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.398827, 35.896736, 38.735920>,  <34.536751, 35.735752, 38.848442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.398827, 35.896736, 38.735920>,  <34.168953, 36.165043, 38.548382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398827, 35.896736, 38.735920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750576, 0.203690, -0.628606,
		0.326148, 0.713151, 0.620518,
		0.574685, -0.670765, 0.468841,
		34.571232, 35.695507, 38.876572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881561, 36.499664, 38.590862>,  <34.168953, 36.165043, 38.548382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881561, 36.499664, 38.590862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.903442, 36.102898, 38.636677>,  <34.916569, 35.864838, 38.664165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.903442, 36.102898, 38.636677>,  <34.881561, 36.499664, 38.590862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903442, 36.102898, 38.636677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676167, -0.047606, -0.735209,
		0.734715, 0.117662, 0.668094,
		0.054701, -0.991912, 0.114535,
		34.919853, 35.805325, 38.671036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729134, 36.351311, 38.531090>,  <34.881561, 36.499664, 38.590862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729134, 36.351311, 38.531090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.514950, 36.020061, 38.464760>,  <35.386440, 35.821312, 38.424961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.514950, 36.020061, 38.464760>,  <35.729134, 36.351311, 38.531090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514950, 36.020061, 38.464760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415677, -0.087494, -0.905294,
		0.735185, -0.553677, 0.391081,
		-0.535458, -0.828122, -0.165827,
		35.354313, 35.771626, 38.415012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117352, 35.743916, 38.262344>,  <35.729134, 36.351311, 38.531090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117352, 35.743916, 38.262344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.740974, 35.716404, 38.129742>,  <35.515148, 35.699898, 38.050182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.740974, 35.716404, 38.129742>,  <36.117352, 35.743916, 38.262344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740974, 35.716404, 38.129742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335046, -0.048417, -0.940957,
		0.048671, -0.996456, 0.068603,
		-0.940944, -0.068783, -0.331502,
		35.458691, 35.695770, 38.030293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626537, 35.960529, 37.739120>,  <36.117352, 35.743916, 38.262344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626537, 35.960529, 37.739120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.775471, 36.308903, 37.867401>,  <36.864830, 36.517925, 37.944370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.775471, 36.308903, 37.867401>,  <36.626537, 35.960529, 37.739120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775471, 36.308903, 37.867401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301320, -0.213396, 0.929338,
		0.877825, -0.442656, 0.182975,
		0.372331, 0.870929, 0.320705,
		36.887169, 36.570183, 37.963612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907764, 35.822464, 38.397606>,  <36.626537, 35.960529, 37.739120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907764, 35.822464, 38.397606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.852760, 36.218472, 38.409927>,  <36.819756, 36.456078, 38.417320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.852760, 36.218472, 38.409927>,  <36.907764, 35.822464, 38.397606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852760, 36.218472, 38.409927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161943, -0.053149, 0.985368,
		0.977172, 0.130512, 0.167636,
		-0.137512, 0.990021, 0.030801,
		36.811508, 36.515476, 38.419167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249744, 35.991360, 38.997490>,  <36.907764, 35.822464, 38.397606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249744, 35.991360, 38.997490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.036045, 36.326344, 38.951466>,  <36.907825, 36.527336, 38.923851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.036045, 36.326344, 38.951466>,  <37.249744, 35.991360, 38.997490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036045, 36.326344, 38.951466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127586, 0.054669, 0.990320,
		0.835645, 0.543754, 0.077642,
		-0.534246, 0.837462, -0.115059,
		36.875771, 36.577583, 38.916946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563480, 36.463974, 39.363419>,  <37.249744, 35.991360, 38.997490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563480, 36.463974, 39.363419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.189453, 36.596523, 39.313072>,  <36.965038, 36.676052, 39.282864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.189453, 36.596523, 39.313072>,  <37.563480, 36.463974, 39.363419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189453, 36.596523, 39.313072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121357, 0.034353, 0.992014,
		0.333049, 0.942875, 0.008092,
		-0.935067, 0.331371, -0.125866,
		36.908932, 36.695934, 39.275314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421688, 37.036701, 39.839634>,  <37.563480, 36.463974, 39.363419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421688, 37.036701, 39.839634> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.063274, 36.882980, 39.750690>,  <36.848228, 36.790749, 39.697327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.063274, 36.882980, 39.750690>,  <37.421688, 37.036701, 39.839634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063274, 36.882980, 39.750690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268563, 0.070328, 0.960691,
		-0.353554, 0.920527, -0.166225,
		-0.896032, -0.384298, -0.222355,
		36.794464, 36.767693, 39.683983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917221, 37.342026, 40.285526>,  <37.421688, 37.036701, 39.839634>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917221, 37.342026, 40.285526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.711243, 37.031582, 40.139935>,  <36.587654, 36.845314, 40.052578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.711243, 37.031582, 40.139935>,  <36.917221, 37.342026, 40.285526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711243, 37.031582, 40.139935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470606, -0.098944, 0.876778,
		-0.716489, 0.622788, -0.314290,
		-0.514950, -0.776109, -0.363980,
		36.556759, 36.798748, 40.030739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212795, 37.497860, 40.400063>,  <36.917221, 37.342026, 40.285526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212795, 37.497860, 40.400063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.231701, 37.099808, 40.365463>,  <36.243046, 36.860977, 40.344704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.231701, 37.099808, 40.365463>,  <36.212795, 37.497860, 40.400063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231701, 37.099808, 40.365463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474321, -0.098565, 0.874817,
		-0.879082, -0.000324, -0.476670,
		0.047266, -0.995131, -0.086494,
		36.245880, 36.801270, 40.339516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548573, 37.164787, 40.567574>,  <36.212795, 37.497860, 40.400063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548573, 37.164787, 40.567574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.796818, 36.853020, 40.601841>,  <35.945766, 36.665958, 40.622402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.796818, 36.853020, 40.601841>,  <35.548573, 37.164787, 40.567574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796818, 36.853020, 40.601841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432413, -0.249058, 0.866596,
		-0.654104, -0.574870, -0.491601,
		0.620618, -0.779419, 0.085672,
		35.983002, 36.619194, 40.627544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220581, 36.585503, 40.599545>,  <35.548573, 37.164787, 40.567574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220581, 36.585503, 40.599545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.562584, 36.453308, 40.759415>,  <35.767784, 36.373993, 40.855335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.562584, 36.453308, 40.759415>,  <35.220581, 36.585503, 40.599545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562584, 36.453308, 40.759415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513220, -0.428290, 0.743756,
		-0.074624, -0.841039, -0.535803,
		0.855007, -0.330487, 0.399677,
		35.819084, 36.354160, 40.879318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161938, 35.837193, 40.865585>,  <35.220581, 36.585503, 40.599545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161938, 35.837193, 40.865585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.496220, 35.954090, 41.051571>,  <35.696789, 36.024227, 41.163162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.496220, 35.954090, 41.051571>,  <35.161938, 35.837193, 40.865585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496220, 35.954090, 41.051571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378201, -0.307624, 0.873116,
		0.398193, -0.905518, -0.146558,
		0.835707, 0.292240, 0.464962,
		35.746933, 36.041763, 41.191059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180611, 35.477848, 41.559258>,  <35.161938, 35.837193, 40.865585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180611, 35.477848, 41.559258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.458717, 35.751698, 41.646801>,  <35.625580, 35.916008, 41.699326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.458717, 35.751698, 41.646801>,  <35.180611, 35.477848, 41.559258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458717, 35.751698, 41.646801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242871, -0.062810, 0.968023,
		0.676478, -0.726185, 0.122606,
		0.695263, 0.684624, 0.218859,
		35.667297, 35.957085, 41.712460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618256, 35.326416, 42.253410>,  <35.180611, 35.477848, 41.559258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618256, 35.326416, 42.253410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.659714, 35.719662, 42.193100>,  <35.684589, 35.955608, 42.156914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.659714, 35.719662, 42.193100>,  <35.618256, 35.326416, 42.253410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659714, 35.719662, 42.193100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265174, 0.173423, 0.948476,
		0.958613, -0.058327, 0.278673,
		0.103650, 0.983119, -0.150779,
		35.690807, 36.014599, 42.147865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147293, 35.554615, 42.638168>,  <35.618256, 35.326416, 42.253410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147293, 35.554615, 42.638168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.941643, 35.889252, 42.562500>,  <35.818253, 36.090034, 42.517101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.941643, 35.889252, 42.562500>,  <36.147293, 35.554615, 42.638168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941643, 35.889252, 42.562500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278044, 0.046082, 0.959462,
		0.811400, 0.545878, 0.208918,
		-0.514122, 0.836596, -0.189169,
		35.787407, 36.140232, 42.505749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382118, 36.081543, 43.103657>,  <36.147293, 35.554615, 42.638168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382118, 36.081543, 43.103657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.013851, 36.173389, 42.977386>,  <35.792892, 36.228497, 42.901623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.013851, 36.173389, 42.977386>,  <36.382118, 36.081543, 43.103657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013851, 36.173389, 42.977386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331629, -0.033511, 0.942814,
		0.205907, 0.972704, 0.107000,
		-0.920665, 0.229616, -0.315677,
		35.737652, 36.242275, 42.882683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203415, 36.642445, 43.578846>,  <36.382118, 36.081543, 43.103657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203415, 36.642445, 43.578846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.888645, 36.458454, 43.414326>,  <35.699783, 36.348061, 43.315613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.888645, 36.458454, 43.414326>,  <36.203415, 36.642445, 43.578846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888645, 36.458454, 43.414326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461797, -0.003073, 0.886980,
		-0.409251, 0.887927, -0.209996,
		-0.786929, -0.459973, -0.411300,
		35.652565, 36.320461, 43.290936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612629, 36.884804, 43.957600>,  <36.203415, 36.642445, 43.578846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612629, 36.884804, 43.957600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.449501, 36.570873, 43.770954>,  <35.351624, 36.382515, 43.658966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.449501, 36.570873, 43.770954>,  <35.612629, 36.884804, 43.957600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449501, 36.570873, 43.770954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494563, -0.239709, 0.835432,
		-0.767523, 0.571474, -0.290390,
		-0.407818, -0.784830, -0.466612,
		35.327156, 36.335423, 43.630970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991276, 36.861835, 44.270794>,  <35.612629, 36.884804, 43.957600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991276, 36.861835, 44.270794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.981880, 36.500248, 44.100014>,  <34.976242, 36.283295, 43.997547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.981880, 36.500248, 44.100014>,  <34.991276, 36.861835, 44.270794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981880, 36.500248, 44.100014> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355982, -0.391513, 0.848525,
		-0.934197, 0.171921, -0.312599,
		-0.023493, -0.903970, -0.426951,
		34.974831, 36.229057, 43.971928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290283, 36.672382, 44.246349>,  <34.991276, 36.861835, 44.270794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290283, 36.672382, 44.246349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.534927, 36.356033, 44.254841>,  <34.681713, 36.166222, 44.259933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.534927, 36.356033, 44.254841>,  <34.290283, 36.672382, 44.246349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534927, 36.356033, 44.254841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541284, -0.398724, 0.740291,
		-0.577015, -0.464257, -0.671951,
		0.611609, -0.790876, 0.021225,
		34.718410, 36.118771, 44.261208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.781940, 36.037453, 44.290119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.138847, 35.885838, 44.388260>,  <34.352989, 35.794868, 44.447144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.138847, 35.885838, 44.388260>,  <33.781940, 36.037453, 44.290119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138847, 35.885838, 44.388260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426879, -0.531119, 0.731906,
		-0.147111, -0.757787, -0.635702,
		0.892262, -0.379039, 0.245350,
		34.406525, 35.772125, 44.461864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538807, 35.385799, 44.449745>,  <33.781940, 36.037453, 44.290119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538807, 35.385799, 44.449745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.887470, 35.481209, 44.621006>,  <34.096668, 35.538456, 44.723763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.887470, 35.481209, 44.621006>,  <33.538807, 35.385799, 44.449745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887470, 35.481209, 44.621006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294270, -0.443887, 0.846386,
		0.391932, -0.863754, -0.316729,
		0.871662, 0.238522, 0.428150,
		34.148968, 35.552765, 44.749451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678017, 34.817020, 44.892467>,  <33.538807, 35.385799, 44.449745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678017, 34.817020, 44.892467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.930557, 35.093632, 45.032860>,  <34.082081, 35.259598, 45.117096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.930557, 35.093632, 45.032860>,  <33.678017, 34.817020, 44.892467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930557, 35.093632, 45.032860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077166, -0.394324, 0.915726,
		0.771649, -0.605227, -0.195595,
		0.631350, 0.691526, 0.350983,
		34.119961, 35.301090, 45.138153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053898, 34.500168, 45.284348>,  <33.678017, 34.817020, 44.892467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053898, 34.500168, 45.284348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.056496, 34.875885, 45.421570>,  <34.058052, 35.101315, 45.503902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.056496, 34.875885, 45.421570>,  <34.053898, 34.500168, 45.284348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056496, 34.875885, 45.421570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118140, -0.339943, 0.932996,
		0.992976, -0.046586, 0.108761,
		0.006492, 0.939292, 0.343059,
		34.058445, 35.157673, 45.524487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644165, 34.535435, 45.789135>,  <34.053898, 34.500168, 45.284348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644165, 34.535435, 45.789135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.385349, 34.829739, 45.869137>,  <34.230061, 35.006321, 45.917137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.385349, 34.829739, 45.869137>,  <34.644165, 34.535435, 45.789135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385349, 34.829739, 45.869137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064113, -0.208880, 0.975837,
		0.759759, 0.644225, 0.087980,
		-0.647036, 0.735761, 0.200002,
		34.191238, 35.050468, 45.929138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.954365, 34.831669, 46.369556>,  <34.644165, 34.535435, 45.789135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.954365, 34.831669, 46.369556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.574020, 34.955242, 46.377853>,  <34.345814, 35.029385, 46.382832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.574020, 34.955242, 46.377853>,  <34.954365, 34.831669, 46.369556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574020, 34.955242, 46.377853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066802, -0.270109, 0.960509,
		0.302333, 0.911923, 0.277473,
		-0.950859, 0.308929, 0.020745,
		34.288761, 35.047920, 46.384075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924412, 35.048943, 47.006462>,  <34.954365, 34.831669, 46.369556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924412, 35.048943, 47.006462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.534706, 35.028133, 46.918736>,  <34.300884, 35.015648, 46.866100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.534706, 35.028133, 46.918736>,  <34.924412, 35.048943, 47.006462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534706, 35.028133, 46.918736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193526, -0.305799, 0.932220,
		-0.115561, 0.950674, 0.287862,
		-0.974265, -0.052019, -0.219319,
		34.242428, 35.012527, 46.852940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529713, 35.369396, 47.556801>,  <34.924412, 35.048943, 47.006462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529713, 35.369396, 47.556801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.250576, 35.146744, 47.376495>,  <34.083096, 35.013153, 47.268314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.250576, 35.146744, 47.376495>,  <34.529713, 35.369396, 47.556801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250576, 35.146744, 47.376495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317515, -0.323705, 0.891290,
		-0.642029, 0.765102, 0.049157,
		-0.697841, -0.556627, -0.450760,
		34.041225, 34.979755, 47.241268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926102, 35.622208, 47.873417>,  <34.529713, 35.369396, 47.556801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926102, 35.622208, 47.873417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.884499, 35.253113, 47.724968>,  <33.859535, 35.031654, 47.635899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.884499, 35.253113, 47.724968>,  <33.926102, 35.622208, 47.873417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884499, 35.253113, 47.724968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025492, -0.370552, 0.928462,
		-0.994250, 0.106029, 0.015018,
		-0.104009, -0.922740, -0.371124,
		33.853294, 34.976292, 47.613632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282917, 35.251575, 48.270428>,  <33.926102, 35.622208, 47.873417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282917, 35.251575, 48.270428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.519257, 34.969749, 48.113205>,  <33.661060, 34.800655, 48.018871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.519257, 34.969749, 48.113205>,  <33.282917, 35.251575, 48.270428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519257, 34.969749, 48.113205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028323, -0.468771, 0.882865,
		-0.806284, -0.532773, -0.257018,
		0.590849, -0.704561, -0.393052,
		33.696510, 34.758381, 47.995289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986160, 34.678288, 48.484894>,  <33.282917, 35.251575, 48.270428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986160, 34.678288, 48.484894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.353195, 34.556370, 48.382801>,  <33.573414, 34.483219, 48.321545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.353195, 34.556370, 48.382801>,  <32.986160, 34.678288, 48.484894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353195, 34.556370, 48.382801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080677, -0.485885, 0.870291,
		-0.389271, -0.819156, -0.421250,
		0.917584, -0.304794, -0.255228,
		33.628471, 34.464931, 48.306232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952324, 33.943264, 48.631252>,  <32.986160, 34.678288, 48.484894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952324, 33.943264, 48.631252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.334484, 34.061226, 48.637569>,  <33.563778, 34.132004, 48.641361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.334484, 34.061226, 48.637569>,  <32.952324, 33.943264, 48.631252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334484, 34.061226, 48.637569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075532, -0.295695, 0.952292,
		0.285504, -0.908623, -0.304780,
		0.955397, 0.294904, 0.015792,
		33.621101, 34.149696, 48.642307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350315, 33.392010, 48.994640>,  <32.952324, 33.943264, 48.631252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350315, 33.392010, 48.994640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.616322, 33.690495, 49.006756>,  <33.775925, 33.869587, 49.014027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.616322, 33.690495, 49.006756>,  <33.350315, 33.392010, 48.994640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616322, 33.690495, 49.006756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379565, -0.372637, 0.846801,
		0.643181, -0.551641, -0.531047,
		0.665018, 0.746213, 0.030289,
		33.815826, 33.914360, 49.015842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783253, 33.135838, 49.397591>,  <33.350315, 33.392010, 48.994640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783253, 33.135838, 49.397591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.911392, 33.514362, 49.380306>,  <33.988277, 33.741478, 49.369938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.911392, 33.514362, 49.380306>,  <33.783253, 33.135838, 49.397591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911392, 33.514362, 49.380306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556488, -0.151081, 0.817004,
		0.766614, -0.285772, -0.575011,
		0.320350, 0.946313, -0.043208,
		34.007496, 33.798256, 49.367344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517136, 33.165848, 49.422276>,  <33.783253, 33.135838, 49.397591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517136, 33.165848, 49.422276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.439625, 33.535679, 49.553493>,  <34.393120, 33.757576, 49.632225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.439625, 33.535679, 49.553493>,  <34.517136, 33.165848, 49.422276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439625, 33.535679, 49.553493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582043, -0.160827, 0.797095,
		0.789731, 0.345397, -0.506977,
		-0.193778, 0.924573, 0.328046,
		34.381493, 33.813049, 49.651909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261078, 33.464245, 49.570801>,  <34.517136, 33.165848, 49.422276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261078, 33.464245, 49.570801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.990318, 33.673237, 49.778194>,  <34.827862, 33.798634, 49.902630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.990318, 33.673237, 49.778194>,  <35.261078, 33.464245, 49.570801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990318, 33.673237, 49.778194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448686, -0.265512, 0.853337,
		0.583518, 0.810256, -0.054707,
		-0.676896, 0.522484, 0.518481,
		34.787251, 33.829983, 49.933739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611801, 33.885983, 50.110653>,  <35.261078, 33.464245, 49.570801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611801, 33.885983, 50.110653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.249947, 33.796215, 50.255581>,  <35.032833, 33.742355, 50.342537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.249947, 33.796215, 50.255581>,  <35.611801, 33.885983, 50.110653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249947, 33.796215, 50.255581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423729, -0.382370, 0.821125,
		-0.045738, 0.896342, 0.440998,
		-0.904633, -0.224420, 0.362317,
		34.978558, 33.728889, 50.364277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505768, 34.229698, 50.750870>,  <35.611801, 33.885983, 50.110653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505768, 34.229698, 50.750870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.230278, 33.940098, 50.766293>,  <35.064983, 33.766338, 50.775547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.230278, 33.940098, 50.766293>,  <35.505768, 34.229698, 50.750870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230278, 33.940098, 50.766293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330343, -0.266013, 0.905599,
		-0.645395, 0.636445, 0.422377,
		-0.688722, -0.723999, 0.038562,
		35.023663, 33.722897, 50.777863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358002, 34.225559, 51.481785>,  <35.505768, 34.229698, 50.750870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358002, 34.225559, 51.481785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.172356, 33.892860, 51.359940>,  <35.060970, 33.693241, 51.286831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.172356, 33.892860, 51.359940>,  <35.358002, 34.225559, 51.481785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172356, 33.892860, 51.359940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097058, -0.389579, 0.915864,
		-0.880443, 0.395498, 0.261536,
		-0.464111, -0.831751, -0.304616,
		35.033123, 33.643333, 51.268555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920086, 33.998592, 52.121613>,  <35.358002, 34.225559, 51.481785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920086, 33.998592, 52.121613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.932709, 33.675518, 51.886105>,  <34.940281, 33.481674, 51.744801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.932709, 33.675518, 51.886105>,  <34.920086, 33.998592, 52.121613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932709, 33.675518, 51.886105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018573, -0.588484, 0.808296,
		-0.999330, -0.036439, -0.003568,
		0.031553, -0.807688, -0.588766,
		34.942173, 33.433212, 51.709476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390770, 33.549599, 52.358318>,  <34.920086, 33.998592, 52.121613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390770, 33.549599, 52.358318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.655903, 33.303665, 52.187374>,  <34.814983, 33.156105, 52.084808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.655903, 33.303665, 52.187374>,  <34.390770, 33.549599, 52.358318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655903, 33.303665, 52.187374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168790, -0.678746, 0.714712,
		-0.729498, -0.401598, -0.553671,
		0.662829, -0.614836, -0.427358,
		34.854752, 33.119213, 52.059166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049026, 32.872150, 52.437077>,  <34.390770, 33.549599, 52.358318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049026, 32.872150, 52.437077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.440273, 32.826286, 52.367641>,  <34.675022, 32.798767, 52.325981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.440273, 32.826286, 52.367641>,  <34.049026, 32.872150, 52.437077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440273, 32.826286, 52.367641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009612, -0.808616, 0.588258,
		-0.207814, -0.577056, -0.789823,
		0.978121, -0.114657, -0.173588,
		34.733711, 32.791889, 52.315563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218517, 32.142677, 52.324860>,  <34.049026, 32.872150, 52.437077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218517, 32.142677, 52.324860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.546463, 32.315620, 52.475002>,  <34.743229, 32.419388, 52.565090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.546463, 32.315620, 52.475002>,  <34.218517, 32.142677, 52.324860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546463, 32.315620, 52.475002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114523, -0.766162, 0.632362,
		0.560992, -0.475462, -0.677661,
		0.819861, 0.432357, 0.375359,
		34.792423, 32.445328, 52.587608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587864, 31.620321, 52.376087>,  <34.218517, 32.142677, 52.324860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587864, 31.620321, 52.376087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.709801, 31.254719, 52.483166>,  <33.782963, 31.035357, 52.547413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.709801, 31.254719, 52.483166>,  <33.587864, 31.620321, 52.376087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709801, 31.254719, 52.483166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458220, -0.387159, -0.800089,
		0.834929, 0.121236, -0.536839,
		0.304842, -0.914008, 0.267697,
		33.801254, 30.980516, 52.563477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089207, 31.397923, 51.900352>,  <33.587864, 31.620321, 52.376087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089207, 31.397923, 51.900352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.875542, 31.117971, 52.090019>,  <33.747341, 30.950001, 52.203819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.875542, 31.117971, 52.090019>,  <34.089207, 31.397923, 51.900352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875542, 31.117971, 52.090019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451666, -0.237862, -0.859895,
		0.714610, -0.673491, -0.189054,
		-0.534163, -0.699879, 0.474171,
		33.715294, 30.908009, 52.232269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297352, 30.690407, 51.764759>,  <34.089207, 31.397923, 51.900352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297352, 30.690407, 51.764759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.914902, 30.648193, 51.874073>,  <33.685432, 30.622866, 51.939659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.914902, 30.648193, 51.874073>,  <34.297352, 30.690407, 51.764759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914902, 30.648193, 51.874073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214041, -0.385272, -0.897637,
		0.200018, -0.916749, 0.345781,
		-0.956127, -0.105533, 0.273283,
		33.628063, 30.616533, 51.956059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050964, 30.032801, 51.521580>,  <34.297352, 30.690407, 51.764759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050964, 30.032801, 51.521580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.723736, 30.250946, 51.594612>,  <33.527397, 30.381834, 51.638432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.723736, 30.250946, 51.594612>,  <34.050964, 30.032801, 51.521580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723736, 30.250946, 51.594612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268716, -0.081787, -0.959741,
		-0.508476, -0.834199, 0.213455,
		-0.818073, 0.545364, 0.182576,
		33.478313, 30.414555, 51.649384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504818, 29.800936, 51.163918>,  <34.050964, 30.032801, 51.521580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504818, 29.800936, 51.163918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.341084, 30.153961, 51.256458>,  <33.242844, 30.365776, 51.311981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.341084, 30.153961, 51.256458>,  <33.504818, 29.800936, 51.163918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341084, 30.153961, 51.256458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289901, 0.114614, -0.950169,
		-0.865100, -0.456012, 0.208940,
		-0.409341, 0.882563, 0.231351,
		33.218281, 30.418730, 51.325863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866280, 29.744219, 50.927765>,  <33.504818, 29.800936, 51.163918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866280, 29.744219, 50.927765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.982368, 30.126982, 50.931686>,  <33.052021, 30.356640, 50.934040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.982368, 30.126982, 50.931686>,  <32.866280, 29.744219, 50.927765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982368, 30.126982, 50.931686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179062, 0.064367, -0.981730,
		-0.940058, 0.283164, 0.190026,
		0.290222, 0.956909, 0.009805,
		33.069435, 30.414055, 50.934628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301991, 30.083679, 50.709259>,  <32.866280, 29.744219, 50.927765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301991, 30.083679, 50.709259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.577534, 30.370281, 50.665272>,  <32.742859, 30.542242, 50.638878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.577534, 30.370281, 50.665272>,  <32.301991, 30.083679, 50.709259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577534, 30.370281, 50.665272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408032, 0.257869, -0.875793,
		-0.599150, 0.648172, 0.469992,
		0.688861, 0.716503, -0.109973,
		32.784191, 30.585232, 50.632278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898363, 30.585184, 50.463955>,  <32.301991, 30.083679, 50.709259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898363, 30.585184, 50.463955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.275822, 30.697893, 50.394520>,  <32.502296, 30.765518, 50.352859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.275822, 30.697893, 50.394520>,  <31.898363, 30.585184, 50.463955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275822, 30.697893, 50.394520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254130, 0.280935, -0.925470,
		-0.212005, 0.917431, 0.336710,
		0.943648, 0.281773, -0.173587,
		32.558918, 30.782425, 50.342445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841358, 31.334745, 50.206203>,  <31.898363, 30.585184, 50.463955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841358, 31.334745, 50.206203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.190662, 31.198528, 50.066807>,  <32.400246, 31.116798, 49.983170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.190662, 31.198528, 50.066807>,  <31.841358, 31.334745, 50.206203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190662, 31.198528, 50.066807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257465, 0.284730, -0.923386,
		0.413679, 0.896080, 0.160965,
		0.873259, -0.340543, -0.348496,
		32.452641, 31.096365, 49.962257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230793, 31.907818, 49.828476>,  <31.841358, 31.334745, 50.206203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230793, 31.907818, 49.828476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.347393, 31.551342, 49.689449>,  <32.417355, 31.337456, 49.606033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.347393, 31.551342, 49.689449>,  <32.230793, 31.907818, 49.828476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347393, 31.551342, 49.689449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217717, 0.292001, -0.931308,
		0.931464, 0.347150, -0.108908,
		0.291503, -0.891191, -0.347569,
		32.434845, 31.283985, 49.585178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021809, 31.969446, 49.528469>,  <32.230793, 31.907818, 49.828476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021809, 31.969446, 49.528469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.862545, 31.679258, 49.303909>,  <32.766987, 31.505146, 49.169174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.862545, 31.679258, 49.303909>,  <33.021809, 31.969446, 49.528469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862545, 31.679258, 49.303909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044612, 0.595960, -0.801774,
		0.916231, -0.344279, -0.204923,
		-0.398160, -0.725468, -0.561396,
		32.743095, 31.461618, 49.135490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496529, 31.912756, 48.965450>,  <33.021809, 31.969446, 49.528469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496529, 31.912756, 48.965450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.156174, 31.738180, 48.848480>,  <32.951962, 31.633434, 48.778297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.156174, 31.738180, 48.848480>,  <33.496529, 31.912756, 48.965450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156174, 31.738180, 48.848480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099842, 0.412144, -0.905631,
		0.515778, -0.799785, -0.307112,
		-0.850885, -0.436442, -0.292427,
		32.900909, 31.607248, 48.760754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542992, 31.881996, 48.305702>,  <33.496529, 31.912756, 48.965450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542992, 31.881996, 48.305702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.145908, 31.838358, 48.326244>,  <32.907658, 31.812174, 48.338570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.145908, 31.838358, 48.326244>,  <33.542992, 31.881996, 48.305702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145908, 31.838358, 48.326244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102567, 0.540018, -0.835380,
		0.063402, -0.834553, -0.547268,
		-0.992703, -0.109096, 0.051359,
		32.848099, 31.805630, 48.341652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315998, 31.797001, 47.624069>,  <33.542992, 31.881996, 48.305702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315998, 31.797001, 47.624069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.998199, 31.924763, 47.830666>,  <32.807522, 32.001419, 47.954624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.998199, 31.924763, 47.830666>,  <33.315998, 31.797001, 47.624069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998199, 31.924763, 47.830666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169347, 0.700237, -0.693534,
		-0.583185, -0.638473, -0.502242,
		-0.794492, 0.319406, 0.516491,
		32.759853, 32.020584, 47.985611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784264, 31.840073, 47.175240>,  <33.315998, 31.797001, 47.624069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784264, 31.840073, 47.175240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.643776, 32.112225, 47.432526>,  <32.559483, 32.275517, 47.586899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.643776, 32.112225, 47.432526>,  <32.784264, 31.840073, 47.175240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643776, 32.112225, 47.432526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283837, 0.577286, -0.765622,
		-0.892233, -0.451472, -0.009638,
		-0.351221, 0.680378, 0.643219,
		32.538410, 32.316338, 47.625492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025826, 31.918383, 47.012150>,  <32.784264, 31.840073, 47.175240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025826, 31.918383, 47.012150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.148060, 32.236156, 47.222099>,  <32.221401, 32.426823, 47.348068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.148060, 32.236156, 47.222099>,  <32.025826, 31.918383, 47.012150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148060, 32.236156, 47.222099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257588, 0.599659, -0.757666,
		-0.916661, 0.096329, 0.387883,
		0.305583, 0.794437, 0.524871,
		32.239735, 32.474487, 47.379562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581894, 32.409039, 46.858700>,  <32.025826, 31.918383, 47.012150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581894, 32.409039, 46.858700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.857803, 32.649914, 47.019485>,  <32.023350, 32.794441, 47.115955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.857803, 32.649914, 47.019485>,  <31.581894, 32.409039, 46.858700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857803, 32.649914, 47.019485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262339, 0.725331, -0.636454,
		-0.674824, 0.333560, 0.658293,
		0.689776, 0.602191, 0.401965,
		32.064735, 32.830570, 47.140076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294550, 33.069874, 46.758011>,  <31.581894, 32.409039, 46.858700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294550, 33.069874, 46.758011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.679163, 33.167751, 46.807938>,  <31.909931, 33.226479, 46.837894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.679163, 33.167751, 46.807938>,  <31.294550, 33.069874, 46.758011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.679163, 33.167751, 46.807938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052319, 0.609216, -0.791277,
		-0.269661, 0.754309, 0.598583,
		0.961533, 0.244694, 0.124817,
		31.967623, 33.241158, 46.845383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429531, 33.770195, 46.614132>,  <31.294550, 33.069874, 46.758011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429531, 33.770195, 46.614132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.794701, 33.613037, 46.569935>,  <32.013802, 33.518742, 46.543415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.794701, 33.613037, 46.569935>,  <31.429531, 33.770195, 46.614132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794701, 33.613037, 46.569935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159903, 0.593403, -0.788862,
		0.375507, 0.702501, 0.604555,
		0.912921, -0.392893, -0.110495,
		32.068577, 33.495171, 46.536785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901230, 34.301701, 46.457794>,  <31.429531, 33.770195, 46.614132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901230, 34.301701, 46.457794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.039242, 33.966026, 46.289639>,  <32.122047, 33.764622, 46.188744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.039242, 33.966026, 46.289639>,  <31.901230, 34.301701, 46.457794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039242, 33.966026, 46.289639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235889, 0.511050, -0.826550,
		0.908466, 0.186019, 0.374281,
		0.345030, -0.839181, -0.420392,
		32.142750, 33.714272, 46.163521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581997, 34.454853, 46.101582>,  <31.901230, 34.301701, 46.457794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581997, 34.454853, 46.101582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.460480, 34.115795, 45.927593>,  <32.387569, 33.912361, 45.823200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.460480, 34.115795, 45.927593>,  <32.581997, 34.454853, 46.101582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460480, 34.115795, 45.927593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144995, 0.410101, -0.900441,
		0.941640, -0.336617, -0.001682,
		-0.303793, -0.847647, -0.434975,
		32.369343, 33.861500, 45.797100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.626938, 27.383636, 29.755035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.470089, 27.154167, 30.042685>,  <43.375980, 27.016485, 30.215275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.470089, 27.154167, 30.042685>,  <43.626938, 27.383636, 29.755035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.470089, 27.154167, 30.042685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393295, 0.811229, 0.432697,
		-0.831600, -0.113157, -0.543725,
		-0.392122, -0.573675, 0.719122,
		43.352451, 26.982065, 30.258421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.998177, 27.687803, 29.840965>,  <43.626938, 27.383636, 29.755035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.998177, 27.687803, 29.840965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.067543, 27.471611, 30.170282>,  <43.109161, 27.341896, 30.367872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.067543, 27.471611, 30.170282>,  <42.998177, 27.687803, 29.840965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.067543, 27.471611, 30.170282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331168, 0.755275, 0.565586,
		-0.927499, -0.370730, -0.048012,
		0.173417, -0.540480, 0.823291,
		43.119568, 27.309467, 30.417269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.305237, 27.676805, 30.203302>,  <42.998177, 27.687803, 29.840965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.305237, 27.676805, 30.203302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.592125, 27.581593, 30.465277>,  <42.764256, 27.524466, 30.622461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.592125, 27.581593, 30.465277>,  <42.305237, 27.676805, 30.203302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.592125, 27.581593, 30.465277> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287390, 0.755165, 0.589179,
		-0.634829, -0.610791, 0.473208,
		0.717216, -0.238033, 0.654937,
		42.807289, 27.510183, 30.661758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033546, 27.826771, 30.800474>,  <42.305237, 27.676805, 30.203302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.033546, 27.826771, 30.800474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.414738, 27.809242, 30.920422>,  <42.643452, 27.798725, 30.992390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.414738, 27.809242, 30.920422>,  <42.033546, 27.826771, 30.800474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.414738, 27.809242, 30.920422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209630, 0.619249, 0.756694,
		-0.218852, -0.783971, 0.580942,
		0.952974, -0.043820, 0.299868,
		42.700630, 27.796097, 31.010382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.970284, 27.859318, 31.479630>,  <42.033546, 27.826771, 30.800474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.970284, 27.859318, 31.479630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.350800, 27.961054, 31.409945>,  <42.579109, 28.022095, 31.368134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.350800, 27.961054, 31.409945>,  <41.970284, 27.859318, 31.479630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350800, 27.961054, 31.409945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046699, 0.677469, 0.734068,
		0.304726, -0.690179, 0.656350,
		0.951295, 0.254340, -0.174212,
		42.636189, 28.037355, 31.357681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.123413, 28.040863, 32.153217>,  <41.970284, 27.859318, 31.479630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.123413, 28.040863, 32.153217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.415215, 28.202452, 31.932444>,  <42.590294, 28.299404, 31.799978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.415215, 28.202452, 31.932444>,  <42.123413, 28.040863, 32.153217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.415215, 28.202452, 31.932444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017931, 0.817969, 0.574983,
		0.683744, -0.409554, 0.603953,
		0.729502, 0.403971, -0.551938,
		42.634064, 28.323643, 31.766863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.678986, 28.252790, 32.625336>,  <42.123413, 28.040863, 32.153217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.678986, 28.252790, 32.625336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.750957, 28.463554, 32.293072>,  <42.794140, 28.590014, 32.093716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.750957, 28.463554, 32.293072>,  <42.678986, 28.252790, 32.625336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.750957, 28.463554, 32.293072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075157, 0.849333, 0.522480,
		0.980803, -0.031582, 0.192424,
		0.179933, 0.526912, -0.830655,
		42.804939, 28.621628, 32.043877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.221897, 28.710730, 32.772556>,  <42.678986, 28.252790, 32.625336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.221897, 28.710730, 32.772556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.036572, 28.871801, 32.456787>,  <42.925377, 28.968445, 32.267326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.036572, 28.871801, 32.456787>,  <43.221897, 28.710730, 32.772556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036572, 28.871801, 32.456787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017679, 0.894825, 0.446066,
		0.886016, 0.192713, -0.421706,
		-0.463316, 0.402677, -0.789423,
		42.897575, 28.992605, 32.219959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.575558, 29.319395, 32.618385>,  <43.221897, 28.710730, 32.772556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.575558, 29.319395, 32.618385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.242271, 29.392282, 32.409561>,  <43.042301, 29.436014, 32.284267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.242271, 29.392282, 32.409561>,  <43.575558, 29.319395, 32.618385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.242271, 29.392282, 32.409561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086914, 0.975565, 0.201789,
		0.546073, 0.122760, -0.828694,
		-0.833217, 0.182216, -0.522060,
		42.992306, 29.446947, 32.252945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.707787, 29.896925, 32.242538>,  <43.575558, 29.319395, 32.618385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.707787, 29.896925, 32.242538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.309280, 29.886909, 32.275600>,  <43.070179, 29.880899, 32.295437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.309280, 29.886909, 32.275600>,  <43.707787, 29.896925, 32.242538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.309280, 29.886909, 32.275600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002346, 0.964543, 0.263915,
		-0.086335, 0.262735, -0.960998,
		-0.996263, -0.025040, 0.082658,
		43.010403, 29.879398, 32.300396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.539215, 30.554884, 32.014778>,  <43.707787, 29.896925, 32.242538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.539215, 30.554884, 32.014778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.228542, 30.407234, 32.218937>,  <43.042137, 30.318644, 32.341431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.228542, 30.407234, 32.218937>,  <43.539215, 30.554884, 32.014778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.228542, 30.407234, 32.218937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172290, 0.903893, 0.391527,
		-0.605866, 0.216157, -0.765638,
		-0.776686, -0.369125, 0.510396,
		42.995537, 30.296497, 32.372055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.089745, 31.073870, 32.018845>,  <43.539215, 30.554884, 32.014778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.089745, 31.073870, 32.018845> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.947376, 30.839008, 32.309654>,  <42.861954, 30.698092, 32.484142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.947376, 30.839008, 32.309654>,  <43.089745, 31.073870, 32.018845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.947376, 30.839008, 32.309654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254371, 0.809467, 0.529205,
		-0.899230, 0.003422, -0.437464,
		-0.355923, -0.587155, 0.727027,
		42.840599, 30.662863, 32.527763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534790, 31.436447, 32.197201>,  <43.089745, 31.073870, 32.018845>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534790, 31.436447, 32.197201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.634830, 31.214769, 32.514771>,  <42.694855, 31.081762, 32.705315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.634830, 31.214769, 32.514771>,  <42.534790, 31.436447, 32.197201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634830, 31.214769, 32.514771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246446, 0.756542, 0.605730,
		-0.936331, -0.347152, 0.052631,
		0.250098, -0.554193, 0.793928,
		42.709858, 31.048512, 32.752949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021946, 31.612730, 32.664425>,  <42.534790, 31.436447, 32.197201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021946, 31.612730, 32.664425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.310543, 31.447824, 32.886951>,  <42.483704, 31.348881, 33.020466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.310543, 31.447824, 32.886951>,  <42.021946, 31.612730, 32.664425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.310543, 31.447824, 32.886951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216279, 0.629054, 0.746669,
		-0.657776, -0.659036, 0.364695,
		0.721495, -0.412265, 0.556312,
		42.526993, 31.324144, 33.053844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749756, 31.437654, 33.276482>,  <42.021946, 31.612730, 32.664425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.749756, 31.437654, 33.276482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.139900, 31.457733, 33.362408>,  <42.373989, 31.469780, 33.413963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.139900, 31.457733, 33.362408>,  <41.749756, 31.437654, 33.276482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.139900, 31.457733, 33.362408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193691, 0.660942, 0.725010,
		-0.105584, -0.748756, 0.654382,
		0.975364, 0.050198, 0.214812,
		42.432510, 31.472794, 33.426853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692101, 31.558414, 34.023918>,  <41.749756, 31.437654, 33.276482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692101, 31.558414, 34.023918> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.059715, 31.640320, 33.889194>,  <42.280285, 31.689463, 33.808361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.059715, 31.640320, 33.889194>,  <41.692101, 31.558414, 34.023918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059715, 31.640320, 33.889194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083653, 0.733690, 0.674315,
		0.385187, -0.647897, 0.657161,
		0.919039, 0.204764, -0.336806,
		42.335426, 31.701750, 33.788151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128155, 31.366423, 34.532753>,  <41.692101, 31.558414, 34.023918>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.128155, 31.366423, 34.532753> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.267124, 31.654123, 34.292099>,  <42.350506, 31.826744, 34.147705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.267124, 31.654123, 34.292099>,  <42.128155, 31.366423, 34.532753>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267124, 31.654123, 34.292099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058655, 0.623681, 0.779475,
		0.935871, -0.306099, 0.174494,
		0.347425, 0.719254, -0.601640,
		42.371353, 31.869900, 34.111607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491093, 31.764147, 34.992569>,  <42.128155, 31.366423, 34.532753>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.491093, 31.764147, 34.992569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.483452, 32.001007, 34.670330>,  <42.478867, 32.143124, 34.476986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.483452, 32.001007, 34.670330>,  <42.491093, 31.764147, 34.992569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.483452, 32.001007, 34.670330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121927, 0.801113, 0.585963,
		0.992355, -0.087033, -0.087500,
		-0.019100, 0.592152, -0.805600,
		42.477722, 32.178654, 34.428650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.032997, 32.261490, 35.149704>,  <42.491093, 31.764147, 34.992569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.032997, 32.261490, 35.149704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.811810, 32.434883, 34.865082>,  <42.679096, 32.538918, 34.694309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.811810, 32.434883, 34.865082>,  <43.032997, 32.261490, 35.149704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.811810, 32.434883, 34.865082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027873, 0.863153, 0.504173,
		0.832734, 0.258959, -0.489381,
		-0.552971, 0.433483, -0.711559,
		42.645920, 32.564926, 34.651615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.445927, 32.738400, 34.881569>,  <43.032997, 32.261490, 35.149704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.445927, 32.738400, 34.881569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.067867, 32.852901, 34.818642>,  <42.841030, 32.921600, 34.780884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.067867, 32.852901, 34.818642>,  <43.445927, 32.738400, 34.881569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.067867, 32.852901, 34.818642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112580, 0.737617, 0.665768,
		0.306622, 0.611539, -0.729385,
		-0.945150, 0.286253, -0.157323,
		42.784321, 32.938778, 34.771446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.433727, 33.548973, 34.692429>,  <43.445927, 32.738400, 34.881569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.433727, 33.548973, 34.692429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.095448, 33.410065, 34.854519>,  <42.892479, 33.326721, 34.951771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.095448, 33.410065, 34.854519>,  <43.433727, 33.548973, 34.692429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.095448, 33.410065, 34.854519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058777, 0.815310, 0.576034,
		-0.530420, 0.463331, -0.709915,
		-0.845695, -0.347266, 0.405223,
		42.841740, 33.305885, 34.976086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.822540, 34.198563, 34.571789>,  <43.433727, 33.548973, 34.692429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.822540, 34.198563, 34.571789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.608112, 34.328339, 34.260056>,  <43.479454, 34.406204, 34.073013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.608112, 34.328339, 34.260056>,  <43.822540, 34.198563, 34.571789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.608112, 34.328339, 34.260056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840566, 0.119875, -0.528280,
		-0.077974, -0.938278, -0.336978,
		-0.536068, 0.324445, -0.779337,
		43.447292, 34.425671, 34.026253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.344166, 33.732719, 34.831722>,  <43.822540, 34.198563, 34.571789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.344166, 33.732719, 34.831722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.671711, 33.643143, 35.043121>,  <44.868240, 33.589397, 35.169960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.671711, 33.643143, 35.043121>,  <44.344166, 33.732719, 34.831722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.671711, 33.643143, 35.043121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291985, -0.630199, -0.719440,
		0.494168, 0.743439, -0.450663,
		0.818867, -0.223937, 0.528497,
		44.917370, 33.575962, 35.201672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.962849, 33.538807, 34.362991>,  <44.344166, 33.732719, 34.831722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.962849, 33.538807, 34.362991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.074760, 33.389725, 34.716900>,  <45.141907, 33.300278, 34.929245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.074760, 33.389725, 34.716900>,  <44.962849, 33.538807, 34.362991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.074760, 33.389725, 34.716900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155719, -0.891753, -0.424887,
		0.947351, 0.256651, -0.191459,
		0.279782, -0.372703, 0.884768,
		45.158695, 33.277912, 34.982330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.413010, 33.037464, 34.171841>,  <44.962849, 33.538807, 34.362991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.413010, 33.037464, 34.171841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.330490, 32.956760, 34.554825>,  <45.280979, 32.908337, 34.784615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.330490, 32.956760, 34.554825>,  <45.413010, 33.037464, 34.171841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.330490, 32.956760, 34.554825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107622, -0.977252, -0.182746,
		0.972553, 0.065344, 0.223315,
		-0.206294, -0.201764, 0.957462,
		45.268600, 32.896233, 34.842064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.963043, 32.499058, 34.394943>,  <45.413010, 33.037464, 34.171841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.963043, 32.499058, 34.394943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.678623, 32.459778, 34.673443>,  <45.507973, 32.436211, 34.840542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.678623, 32.459778, 34.673443>,  <45.963043, 32.499058, 34.394943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.678623, 32.459778, 34.673443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048789, -0.994704, -0.090467,
		0.701446, -0.030357, 0.712075,
		-0.711051, -0.098199, 0.696250,
		45.465309, 32.430317, 34.882317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.223759, 32.019596, 34.933270>,  <45.963043, 32.499058, 34.394943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.223759, 32.019596, 34.933270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.826580, 32.006683, 34.887630>,  <45.588272, 31.998936, 34.860249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.826580, 32.006683, 34.887630>,  <46.223759, 32.019596, 34.933270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.826580, 32.006683, 34.887630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040670, -0.996578, -0.071960,
		-0.111381, -0.076092, 0.990860,
		-0.992945, -0.032284, -0.114095,
		45.528698, 31.996998, 34.853401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.022530, 31.460873, 35.352306>,  <46.223759, 32.019596, 34.933270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.022530, 31.460873, 35.352306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.704105, 31.538347, 35.122952>,  <45.513050, 31.584831, 34.985336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.704105, 31.538347, 35.122952>,  <46.022530, 31.460873, 35.352306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.704105, 31.538347, 35.122952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262905, -0.964018, 0.039362,
		-0.545136, 0.182082, 0.818335,
		-0.796057, 0.193687, -0.573392,
		45.465286, 31.596453, 34.950935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.605320, 31.027658, 35.575325>,  <46.022530, 31.460873, 35.352306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.605320, 31.027658, 35.575325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.398735, 31.134912, 35.250027>,  <45.274784, 31.199265, 35.054848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.398735, 31.134912, 35.250027>,  <45.605320, 31.027658, 35.575325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.398735, 31.134912, 35.250027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411271, -0.910675, -0.039079,
		-0.751082, 0.314282, 0.580605,
		-0.516461, 0.268137, -0.813247,
		45.243797, 31.215353, 35.006054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.933262, 30.877562, 35.671455>,  <45.605320, 31.027658, 35.575325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.933262, 30.877562, 35.671455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.935112, 30.886227, 35.271553>,  <44.936222, 30.891426, 35.031612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.935112, 30.886227, 35.271553>,  <44.933262, 30.877562, 35.671455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.935112, 30.886227, 35.271553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426177, -0.904383, -0.021568,
		-0.904628, 0.426172, 0.005055,
		0.004620, 0.021665, -0.999754,
		44.936501, 30.892725, 34.971626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.352417, 30.664379, 35.574306>,  <44.933262, 30.877562, 35.671455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.352417, 30.664379, 35.574306> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.540154, 30.579096, 35.231552>,  <44.652794, 30.527925, 35.025898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.540154, 30.579096, 35.231552>,  <44.352417, 30.664379, 35.574306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.540154, 30.579096, 35.231552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404221, -0.914640, 0.006177,
		-0.785063, 0.343474, -0.515463,
		0.469341, -0.213210, -0.856890,
		44.680954, 30.515133, 34.974483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.902023, 30.269003, 35.134205>,  <44.352417, 30.664379, 35.574306>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.902023, 30.269003, 35.134205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.250088, 30.174664, 34.961143>,  <44.458927, 30.118059, 34.857307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.250088, 30.174664, 34.961143>,  <43.902023, 30.269003, 35.134205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.250088, 30.174664, 34.961143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273903, -0.961384, -0.026809,
		-0.409627, 0.141834, -0.901160,
		0.870163, -0.235849, -0.432657,
		44.511135, 30.103909, 34.831345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721760, 29.981955, 34.523582>,  <43.902023, 30.269003, 35.134205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721760, 29.981955, 34.523582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.091774, 29.837410, 34.570446>,  <44.313782, 29.750683, 34.598564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.091774, 29.837410, 34.570446>,  <43.721760, 29.981955, 34.523582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.091774, 29.837410, 34.570446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326226, -0.913687, -0.242390,
		0.194637, 0.185999, -0.963079,
		0.925037, -0.361360, 0.117159,
		44.369286, 29.729002, 34.605595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.759838, 29.536762, 34.004761>,  <43.721760, 29.981955, 34.523582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.759838, 29.536762, 34.004761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.052650, 29.412098, 34.247082>,  <44.228336, 29.337299, 34.392475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.052650, 29.412098, 34.247082>,  <43.759838, 29.536762, 34.004761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.052650, 29.412098, 34.247082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260630, -0.949695, -0.173645,
		0.629449, -0.030778, -0.776432,
		0.732029, -0.311662, 0.605806,
		44.272259, 29.318600, 34.428825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.190166, 29.050051, 33.655819>,  <43.759838, 29.536762, 34.004761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.190166, 29.050051, 33.655819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.217182, 28.974298, 34.047649>,  <44.233391, 28.928846, 34.282749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.217182, 28.974298, 34.047649>,  <44.190166, 29.050051, 33.655819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.217182, 28.974298, 34.047649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253440, -0.952872, -0.166745,
		0.964990, -0.237002, -0.112355,
		0.067541, -0.189383, 0.979577,
		44.237446, 28.917484, 34.341522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.622173, 28.495504, 33.716026>,  <44.190166, 29.050051, 33.655819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.622173, 28.495504, 33.716026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.420841, 28.504181, 34.061554>,  <44.300041, 28.509388, 34.268871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.420841, 28.504181, 34.061554>,  <44.622173, 28.495504, 33.716026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.420841, 28.504181, 34.061554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076010, -0.996921, -0.019254,
		0.860747, -0.075350, 0.503426,
		-0.503327, 0.021692, 0.863824,
		44.269844, 28.510689, 34.320702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.021721, 28.106487, 34.181931>,  <44.622173, 28.495504, 33.716026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.021721, 28.106487, 34.181931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.636101, 28.119144, 34.287460>,  <44.404728, 28.126740, 34.350780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.636101, 28.119144, 34.287460>,  <45.021721, 28.106487, 34.181931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.636101, 28.119144, 34.287460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004043, -0.994515, 0.104514,
		0.265687, 0.099690, 0.958891,
		-0.964051, 0.031645, 0.263827,
		44.346886, 28.128637, 34.366608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.958363, 27.520191, 34.654423>,  <45.021721, 28.106487, 34.181931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.958363, 27.520191, 34.654423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.588417, 27.622759, 34.542080>,  <44.366451, 27.684299, 34.474674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.588417, 27.622759, 34.542080>,  <44.958363, 27.520191, 34.654423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.588417, 27.622759, 34.542080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251241, -0.966364, -0.054939,
		-0.285497, 0.019751, 0.958176,
		-0.924862, 0.256418, -0.280856,
		44.310959, 27.699684, 34.457825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.557396, 27.123749, 35.085838>,  <44.958363, 27.520191, 34.654423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.557396, 27.123749, 35.085838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.303444, 27.200922, 34.786583>,  <44.151073, 27.247225, 34.607029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.303444, 27.200922, 34.786583>,  <44.557396, 27.123749, 35.085838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.303444, 27.200922, 34.786583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337557, -0.940277, 0.043975,
		-0.694970, 0.280457, 0.662088,
		-0.634879, 0.192931, -0.748135,
		44.112980, 27.258801, 34.562141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.999981, 26.656481, 35.199188>,  <44.557396, 27.123749, 35.085838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.999981, 26.656481, 35.199188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.955811, 26.775572, 34.819889>,  <43.929310, 26.847027, 34.592312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.955811, 26.775572, 34.819889>,  <43.999981, 26.656481, 35.199188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.955811, 26.775572, 34.819889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242259, -0.933364, -0.264844,
		-0.963907, 0.200475, 0.175192,
		-0.110423, 0.297727, -0.948243,
		43.922684, 26.864889, 34.535416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.415836, 26.292503, 34.967712>,  <43.999981, 26.656481, 35.199188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.415836, 26.292503, 34.967712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.552422, 26.411146, 34.610966>,  <43.634373, 26.482332, 34.396919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.552422, 26.411146, 34.610966>,  <43.415836, 26.292503, 34.967712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.552422, 26.411146, 34.610966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133623, -0.923943, -0.358433,
		-0.930349, 0.241565, -0.275857,
		0.341461, 0.296607, -0.891868,
		43.654861, 26.500128, 34.343407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.911499, 26.141909, 34.437359>,  <43.415836, 26.292503, 34.967712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.911499, 26.141909, 34.437359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.264305, 26.150295, 34.249062>,  <43.475990, 26.155327, 34.136082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.264305, 26.150295, 34.249062>,  <42.911499, 26.141909, 34.437359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.264305, 26.150295, 34.249062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091014, -0.972618, -0.213846,
		-0.462340, 0.231461, -0.855960,
		0.882020, 0.020965, -0.470746,
		43.528912, 26.156586, 34.107838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.825584, 37.311268, 41.930267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823158, 36.916084, 41.992107>,  <35.821701, 36.678974, 42.029213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823158, 36.916084, 41.992107>,  <35.825584, 37.311268, 41.930267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823158, 36.916084, 41.992107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487512, -0.137911, -0.862156,
		0.873095, 0.070140, 0.482478,
		-0.006067, -0.987958, 0.154603,
		35.821339, 36.619698, 42.038490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423111, 37.013622, 41.758438>,  <35.825584, 37.311268, 41.930267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423111, 37.013622, 41.758438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192654, 36.686687, 41.756390>,  <36.054379, 36.490528, 41.755161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192654, 36.686687, 41.756390>,  <36.423111, 37.013622, 41.758438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192654, 36.686687, 41.756390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434133, -0.300706, -0.849179,
		0.692524, -0.491468, 0.528081,
		-0.576141, -0.817334, -0.005117,
		36.019810, 36.441486, 41.754856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843746, 36.438248, 41.716980>,  <36.423111, 37.013622, 41.758438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843746, 36.438248, 41.716980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487335, 36.333874, 41.568398>,  <36.273487, 36.271248, 41.479248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487335, 36.333874, 41.568398>,  <36.843746, 36.438248, 41.716980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487335, 36.333874, 41.568398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426760, -0.202598, -0.881380,
		0.154727, -0.943858, 0.291878,
		-0.891031, -0.260935, -0.371453,
		36.220024, 36.255592, 41.456963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980824, 35.963882, 41.242645>,  <36.843746, 36.438248, 41.716980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980824, 35.963882, 41.242645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605736, 36.043453, 41.128723>,  <36.380684, 36.091194, 41.060371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605736, 36.043453, 41.128723>,  <36.980824, 35.963882, 41.242645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605736, 36.043453, 41.128723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251094, -0.178440, -0.951373,
		-0.240077, -0.963632, 0.117376,
		-0.937718, 0.198930, -0.284802,
		36.324421, 36.103130, 41.043282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821457, 35.566227, 40.786377>,  <36.980824, 35.963882, 41.242645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821457, 35.566227, 40.786377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564980, 35.864895, 40.715553>,  <36.411095, 36.044098, 40.673061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564980, 35.864895, 40.715553>,  <36.821457, 35.566227, 40.786377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564980, 35.864895, 40.715553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315409, 0.046096, -0.947836,
		-0.699563, -0.663590, -0.265064,
		-0.641193, 0.746674, -0.177055,
		36.372620, 36.088898, 40.662437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554794, 35.550240, 40.088505>,  <36.821457, 35.566227, 40.786377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554794, 35.550240, 40.088505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455067, 35.926750, 40.179581>,  <36.395229, 36.152657, 40.234226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455067, 35.926750, 40.179581>,  <36.554794, 35.550240, 40.088505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455067, 35.926750, 40.179581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224362, 0.284858, -0.931943,
		-0.942074, -0.181262, -0.282206,
		-0.249314, 0.941276, 0.227689,
		36.380272, 36.209133, 40.247887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925522, 35.719707, 39.714790>,  <36.554794, 35.550240, 40.088505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925522, 35.719707, 39.714790> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125694, 36.054459, 39.803520>,  <36.245796, 36.255310, 39.856758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125694, 36.054459, 39.803520>,  <35.925522, 35.719707, 39.714790>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125694, 36.054459, 39.803520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044539, 0.280760, -0.958744,
		-0.864631, 0.469903, 0.177774,
		0.500429, 0.836878, 0.221825,
		36.275822, 36.305523, 39.870068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710667, 36.210392, 39.318840>,  <35.925522, 35.719707, 39.714790>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710667, 36.210392, 39.318840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047451, 36.390438, 39.437832>,  <36.249523, 36.498466, 39.509228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047451, 36.390438, 39.437832>,  <35.710667, 36.210392, 39.318840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047451, 36.390438, 39.437832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079410, 0.441975, -0.893505,
		-0.533658, 0.775922, 0.336384,
		0.841964, 0.450114, 0.297480,
		36.300041, 36.525471, 39.527077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623814, 36.937405, 39.082302>,  <35.710667, 36.210392, 39.318840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623814, 36.937405, 39.082302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007050, 36.834690, 39.133091>,  <36.236992, 36.773060, 39.163563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007050, 36.834690, 39.133091>,  <35.623814, 36.937405, 39.082302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007050, 36.834690, 39.133091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228521, 0.417837, -0.879313,
		0.172746, 0.871477, 0.459007,
		0.958090, -0.256790, 0.126971,
		36.294476, 36.757652, 39.171181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027119, 37.491390, 38.780506>,  <35.623814, 36.937405, 39.082302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027119, 37.491390, 38.780506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299728, 37.202755, 38.829212>,  <36.463295, 37.029572, 38.858437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299728, 37.202755, 38.829212>,  <36.027119, 37.491390, 38.780506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299728, 37.202755, 38.829212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534896, 0.377656, -0.755819,
		0.499407, 0.580243, 0.643359,
		0.681527, -0.721591, 0.121766,
		36.504185, 36.986279, 38.865742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623131, 37.764240, 38.555004>,  <36.027119, 37.491390, 38.780506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623131, 37.764240, 38.555004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678551, 37.369873, 38.517540>,  <36.711803, 37.133251, 38.495060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678551, 37.369873, 38.517540>,  <36.623131, 37.764240, 38.555004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678551, 37.369873, 38.517540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609869, 0.159449, -0.776296,
		0.780297, 0.050435, 0.623372,
		0.138548, -0.985917, -0.093659,
		36.720116, 37.074097, 38.489441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.365021, 37.657661, 38.421230>,  <36.623131, 37.764240, 38.555004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.365021, 37.657661, 38.421230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185165, 37.339264, 38.259136>,  <37.077251, 37.148224, 38.161880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185165, 37.339264, 38.259136>,  <37.365021, 37.657661, 38.421230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185165, 37.339264, 38.259136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541586, 0.117809, -0.832349,
		0.710288, -0.593725, 0.378130,
		-0.449640, -0.795997, -0.405231,
		37.050274, 37.100464, 38.137566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915810, 37.219563, 38.230118>,  <37.365021, 37.657661, 38.421230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915810, 37.219563, 38.230118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579700, 37.160213, 38.021530>,  <37.378036, 37.124603, 37.896378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579700, 37.160213, 38.021530>,  <37.915810, 37.219563, 38.230118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579700, 37.160213, 38.021530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519587, 0.054334, -0.852688,
		0.154850, -0.987437, 0.031438,
		-0.840268, -0.148374, -0.521473,
		37.327621, 37.115700, 37.865089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087059, 36.636990, 37.726437>,  <37.915810, 37.219563, 38.230118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087059, 36.636990, 37.726437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795414, 36.878681, 37.597878>,  <37.620426, 37.023697, 37.520741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795414, 36.878681, 37.597878>,  <38.087059, 36.636990, 37.726437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795414, 36.878681, 37.597878> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495518, 0.142146, -0.856888,
		-0.472072, -0.784029, -0.403047,
		-0.729116, 0.604230, -0.321397,
		37.576679, 37.059952, 37.501457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331390, 36.253948, 37.093529>,  <38.087059, 36.636990, 37.726437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331390, 36.253948, 37.093529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514652, 35.927525, 36.952587>,  <38.624607, 35.731670, 36.868023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514652, 35.927525, 36.952587>,  <38.331390, 36.253948, 37.093529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514652, 35.927525, 36.952587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255351, -0.258864, 0.931550,
		-0.851408, -0.516764, 0.089782,
		0.458150, -0.816055, -0.352355,
		38.652096, 35.682709, 36.846882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166054, 35.703503, 37.566681>,  <38.331390, 36.253948, 37.093529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166054, 35.703503, 37.566681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510853, 35.663128, 37.367973>,  <38.717731, 35.638905, 37.248749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510853, 35.663128, 37.367973>,  <38.166054, 35.703503, 37.566681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510853, 35.663128, 37.367973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475029, -0.181251, 0.861101,
		-0.176970, -0.978242, -0.108281,
		0.861991, -0.100953, -0.496769,
		38.769451, 35.632847, 37.218945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418041, 35.027657, 37.649891>,  <38.166054, 35.703503, 37.566681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418041, 35.027657, 37.649891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734268, 35.255398, 37.559700>,  <38.924004, 35.392040, 37.505585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734268, 35.255398, 37.559700>,  <38.418041, 35.027657, 37.649891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734268, 35.255398, 37.559700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530726, -0.453346, 0.716106,
		0.305496, -0.685798, -0.660571,
		0.790571, 0.569350, -0.225476,
		38.971439, 35.426201, 37.492058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995377, 34.598057, 37.518299>,  <38.418041, 35.027657, 37.649891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995377, 34.598057, 37.518299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123547, 34.957237, 37.638969>,  <39.200451, 35.172745, 37.711372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.123547, 34.957237, 37.638969>,  <38.995377, 34.598057, 37.518299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123547, 34.957237, 37.638969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515833, -0.432511, 0.739493,
		0.794507, -0.081340, -0.601782,
		0.320428, 0.897952, 0.301676,
		39.219673, 35.226624, 37.729473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695194, 34.548672, 37.794796>,  <38.995377, 34.598057, 37.518299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695194, 34.548672, 37.794796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550354, 34.883888, 37.958050>,  <39.463451, 35.085018, 38.056004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550354, 34.883888, 37.958050>,  <39.695194, 34.548672, 37.794796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550354, 34.883888, 37.958050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314560, -0.302308, 0.899812,
		0.877460, 0.454206, -0.154147,
		-0.362100, 0.838037, 0.408139,
		39.441723, 35.135300, 38.080490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925198, 34.496334, 38.410294>,  <39.695194, 34.548672, 37.794796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925198, 34.496334, 38.410294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689114, 34.815567, 38.458809>,  <39.547462, 35.007107, 38.487919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689114, 34.815567, 38.458809>,  <39.925198, 34.496334, 38.410294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689114, 34.815567, 38.458809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058725, -0.107402, 0.992480,
		0.805111, 0.592895, 0.016522,
		-0.590211, 0.798086, 0.121288,
		39.512051, 35.054993, 38.495193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048325, 34.721561, 39.059788>,  <39.925198, 34.496334, 38.410294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048325, 34.721561, 39.059788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686607, 34.891277, 39.040894>,  <39.469578, 34.993107, 39.029556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686607, 34.891277, 39.040894>,  <40.048325, 34.721561, 39.059788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686607, 34.891277, 39.040894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073196, -0.045087, 0.996298,
		0.420585, 0.904405, 0.071828,
		-0.904296, 0.424286, -0.047235,
		39.415318, 35.018562, 39.026722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026123, 35.121338, 39.695538>,  <40.048325, 34.721561, 39.059788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026123, 35.121338, 39.695538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652615, 35.049301, 39.571831>,  <39.428509, 35.006081, 39.497604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652615, 35.049301, 39.571831>,  <40.026123, 35.121338, 39.695538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652615, 35.049301, 39.571831> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290677, -0.122476, 0.948950,
		-0.208773, 0.975996, 0.062017,
		-0.933767, -0.180088, -0.309270,
		39.372486, 34.995274, 39.479050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606602, 35.564758, 40.138878>,  <40.026123, 35.121338, 39.695538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606602, 35.564758, 40.138878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322987, 35.317436, 40.003258>,  <39.152817, 35.169044, 39.921886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322987, 35.317436, 40.003258>,  <39.606602, 35.564758, 40.138878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322987, 35.317436, 40.003258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153224, -0.334240, 0.929950,
		-0.688318, 0.711325, 0.142251,
		-0.709042, -0.618305, -0.339055,
		39.110275, 35.131943, 39.901543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084923, 35.610840, 40.647732>,  <39.606602, 35.564758, 40.138878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084923, 35.610840, 40.647732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989788, 35.289860, 40.428822>,  <38.932709, 35.097271, 40.297474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989788, 35.289860, 40.428822>,  <39.084923, 35.610840, 40.647732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989788, 35.289860, 40.428822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336673, -0.460408, 0.821386,
		-0.911091, 0.379608, -0.160662,
		-0.237834, -0.802448, -0.547277,
		38.918438, 35.049126, 40.264637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289539, 35.565025, 40.632832>,  <39.084923, 35.610840, 40.647732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289539, 35.565025, 40.632832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444729, 35.201492, 40.571518>,  <38.537842, 34.983372, 40.534729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444729, 35.201492, 40.571518>,  <38.289539, 35.565025, 40.632832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444729, 35.201492, 40.571518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478338, -0.340709, 0.809389,
		-0.787825, -0.240701, -0.566916,
		0.387975, -0.908835, -0.153283,
		38.561123, 34.928841, 40.525532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745487, 35.025291, 40.886162>,  <38.289539, 35.565025, 40.632832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745487, 35.025291, 40.886162> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073700, 34.797264, 40.869453>,  <38.270630, 34.660446, 40.859428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073700, 34.797264, 40.869453>,  <37.745487, 35.025291, 40.886162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073700, 34.797264, 40.869453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407208, -0.634273, 0.657175,
		-0.401131, -0.522225, -0.752579,
		0.820534, -0.570069, -0.041772,
		38.319859, 34.626244, 40.856922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438370, 34.363869, 41.126141>,  <37.745487, 35.025291, 40.886162>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438370, 34.363869, 41.126141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838310, 34.364735, 41.133095>,  <38.078274, 34.365253, 41.137268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838310, 34.364735, 41.133095>,  <37.438370, 34.363869, 41.126141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838310, 34.364735, 41.133095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014141, -0.485953, 0.873870,
		0.010344, -0.873982, -0.485848,
		0.999847, 0.002169, 0.017385,
		38.138264, 34.365387, 41.138309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688610, 33.660309, 40.983810>,  <37.438370, 34.363869, 41.126141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688610, 33.660309, 40.983810> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964291, 33.869133, 41.184788>,  <38.129700, 33.994427, 41.305374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964291, 33.869133, 41.184788>,  <37.688610, 33.660309, 40.983810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964291, 33.869133, 41.184788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015722, -0.682506, 0.730711,
		0.724396, -0.511509, -0.462178,
		0.689205, 0.522058, 0.502447,
		38.171051, 34.025749, 41.335522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566208, 32.886890, 40.928864>,  <37.688610, 33.660309, 40.983810>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566208, 32.886890, 40.928864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324482, 32.570633, 40.889488>,  <37.179447, 32.380878, 40.865864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324482, 32.570633, 40.889488>,  <37.566208, 32.886890, 40.928864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324482, 32.570633, 40.889488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281785, 0.327658, -0.901797,
		0.745251, -0.517232, -0.420800,
		-0.604316, -0.790639, -0.098440,
		37.143188, 32.333443, 40.859955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641495, 32.740055, 40.177574>,  <37.566208, 32.886890, 40.928864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641495, 32.740055, 40.177574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308743, 32.546612, 40.286453>,  <37.109089, 32.430546, 40.351780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308743, 32.546612, 40.286453>,  <37.641495, 32.740055, 40.177574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308743, 32.546612, 40.286453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386627, 0.153201, -0.909422,
		0.398105, -0.861772, -0.314422,
		-0.831885, -0.483610, 0.272195,
		37.059177, 32.401527, 40.368111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327290, 32.206753, 39.645859>,  <37.641495, 32.740055, 40.177574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327290, 32.206753, 39.645859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013065, 32.319836, 39.866028>,  <36.824532, 32.387684, 39.998131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013065, 32.319836, 39.866028>,  <37.327290, 32.206753, 39.645859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013065, 32.319836, 39.866028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568079, 0.023143, -0.822649,
		-0.245306, -0.958927, 0.142419,
		-0.785564, 0.282706, 0.550423,
		36.777397, 32.404648, 40.031155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.889618, 31.850533, 39.329952>,  <37.327290, 32.206753, 39.645859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.889618, 31.850533, 39.329952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641685, 32.088737, 39.534370>,  <36.492924, 32.231659, 39.657021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641685, 32.088737, 39.534370>,  <36.889618, 31.850533, 39.329952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641685, 32.088737, 39.534370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525653, 0.168459, -0.833853,
		-0.582661, -0.785484, 0.208617,
		-0.619835, 0.595514, 0.511047,
		36.455734, 32.267391, 39.687683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165756, 31.699642, 39.105335>,  <36.889618, 31.850533, 39.329952>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165756, 31.699642, 39.105335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152111, 32.059906, 39.278610>,  <36.143925, 32.276062, 39.382576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152111, 32.059906, 39.278610>,  <36.165756, 31.699642, 39.105335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152111, 32.059906, 39.278610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534045, 0.349943, -0.769634,
		-0.844768, -0.257595, 0.469055,
		-0.034111, 0.900658, 0.433188,
		36.141876, 32.330105, 39.408566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469543, 31.886217, 38.931129>,  <36.165756, 31.699642, 39.105335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469543, 31.886217, 38.931129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650414, 32.226006, 39.039894>,  <35.758934, 32.429878, 39.105152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650414, 32.226006, 39.039894>,  <35.469543, 31.886217, 38.931129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650414, 32.226006, 39.039894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538836, 0.503104, -0.675679,
		-0.710769, 0.159010, 0.685217,
		0.452175, 0.849471, 0.271911,
		35.786068, 32.480846, 39.121468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931976, 32.304451, 38.959038>,  <35.469543, 31.886217, 38.931129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931976, 32.304451, 38.959038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254013, 32.538242, 38.918606>,  <35.447235, 32.678516, 38.894344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254013, 32.538242, 38.918606>,  <34.931976, 32.304451, 38.959038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254013, 32.538242, 38.918606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443279, 0.479630, -0.757271,
		-0.394125, 0.654478, 0.645232,
		0.805090, 0.584477, -0.101082,
		35.495541, 32.713585, 38.888283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751568, 32.952293, 38.863827>,  <34.931976, 32.304451, 38.959038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751568, 32.952293, 38.863827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129761, 32.971844, 38.735031>,  <35.356678, 32.983574, 38.657753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129761, 32.971844, 38.735031>,  <34.751568, 32.952293, 38.863827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129761, 32.971844, 38.735031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319571, 0.329743, -0.888338,
		0.062754, 0.942805, 0.327386,
		0.945482, 0.048876, -0.321986,
		35.413406, 32.986507, 38.638435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855923, 33.637871, 38.567719>,  <34.751568, 32.952293, 38.863827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855923, 33.637871, 38.567719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129536, 33.391140, 38.411964>,  <35.293705, 33.243103, 38.318512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129536, 33.391140, 38.411964>,  <34.855923, 33.637871, 38.567719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129536, 33.391140, 38.411964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313913, 0.232934, -0.920435,
		0.658452, 0.751841, -0.034296,
		0.684032, -0.616828, -0.389389,
		35.334743, 33.206093, 38.295147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304459, 34.017712, 38.047726>,  <34.855923, 33.637871, 38.567719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304459, 34.017712, 38.047726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317184, 33.629772, 37.951077>,  <35.324818, 33.397007, 37.893089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317184, 33.629772, 37.951077>,  <35.304459, 34.017712, 38.047726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317184, 33.629772, 37.951077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156110, 0.233953, -0.959633,
		0.987227, 0.068248, -0.143961,
		0.031813, -0.969850, -0.241619,
		35.326729, 33.338818, 37.878590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559746, 34.062954, 37.415688>,  <35.304459, 34.017712, 38.047726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559746, 34.062954, 37.415688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425865, 33.686295, 37.430008>,  <35.345539, 33.460300, 37.438599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425865, 33.686295, 37.430008>,  <35.559746, 34.062954, 37.415688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425865, 33.686295, 37.430008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131645, 0.009106, -0.991255,
		0.933084, -0.336485, -0.127010,
		-0.334699, -0.941645, 0.035800,
		35.325455, 33.403801, 37.440746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859661, 33.684078, 36.884602>,  <35.559746, 34.062954, 37.415688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859661, 33.684078, 36.884602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561600, 33.427956, 36.959167>,  <35.382763, 33.274281, 37.003906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561600, 33.427956, 36.959167>,  <35.859661, 33.684078, 36.884602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561600, 33.427956, 36.959167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121668, -0.144315, -0.982023,
		0.655704, -0.754437, 0.029632,
		-0.745151, -0.640311, 0.186419,
		35.338055, 33.235863, 37.015095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.901909, 31.129736, 44.272675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.524189, 31.010347, 44.217224>,  <37.297558, 30.938715, 44.183956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.524189, 31.010347, 44.217224>,  <37.901909, 31.129736, 44.272675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524189, 31.010347, 44.217224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115336, 0.094357, -0.988835,
		0.308220, -0.949743, -0.054676,
		-0.944298, -0.298472, -0.138622,
		37.240898, 30.920807, 44.175636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902283, 30.516363, 43.778114>,  <37.901909, 31.129736, 44.272675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902283, 30.516363, 43.778114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.558041, 30.718861, 43.755928>,  <37.351494, 30.840359, 43.742615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.558041, 30.718861, 43.755928>,  <37.902283, 30.516363, 43.778114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558041, 30.718861, 43.755928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244461, 0.315100, -0.917033,
		-0.446765, -0.802763, -0.394934,
		-0.860604, 0.506245, -0.055468,
		37.299858, 30.870733, 43.739288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739941, 30.487537, 43.083019>,  <37.902283, 30.516363, 43.778114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739941, 30.487537, 43.083019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.501762, 30.785007, 43.204605>,  <37.358856, 30.963490, 43.277557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.501762, 30.785007, 43.204605>,  <37.739941, 30.487537, 43.083019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501762, 30.785007, 43.204605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097117, 0.308950, -0.946107,
		-0.797506, -0.592873, -0.111739,
		-0.595443, 0.743675, 0.303967,
		37.323128, 31.008110, 43.295795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058460, 30.422194, 42.792492>,  <37.739941, 30.487537, 43.083019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058460, 30.422194, 42.792492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.098976, 30.808390, 42.888470>,  <37.123287, 31.040108, 42.946056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.098976, 30.808390, 42.888470>,  <37.058460, 30.422194, 42.792492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098976, 30.808390, 42.888470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161873, 0.253961, -0.953573,
		-0.981599, 0.057748, 0.182011,
		0.101291, 0.965489, 0.239940,
		37.129364, 31.098036, 42.960453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618656, 30.715330, 42.274910>,  <37.058460, 30.422194, 42.792492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618656, 30.715330, 42.274910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.814404, 31.032505, 42.420113>,  <36.931850, 31.222811, 42.507233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.814404, 31.032505, 42.420113>,  <36.618656, 30.715330, 42.274910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814404, 31.032505, 42.420113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119153, 0.473141, -0.872892,
		-0.863900, 0.383911, 0.326020,
		0.489366, 0.792938, 0.363002,
		36.961212, 31.270386, 42.529015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226360, 31.397877, 42.186874>,  <36.618656, 30.715330, 42.274910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226360, 31.397877, 42.186874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.608246, 31.505756, 42.237118>,  <36.837379, 31.570484, 42.267265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.608246, 31.505756, 42.237118>,  <36.226360, 31.397877, 42.186874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608246, 31.505756, 42.237118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019533, 0.478112, -0.878081,
		-0.296873, 0.835866, 0.461730,
		0.954717, 0.269698, 0.125612,
		36.894661, 31.586666, 42.274803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339878, 32.184696, 42.127796>,  <36.226360, 31.397877, 42.186874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339878, 32.184696, 42.127796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.696545, 32.020267, 42.051949>,  <36.910545, 31.921610, 42.006439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.696545, 32.020267, 42.051949>,  <36.339878, 32.184696, 42.127796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696545, 32.020267, 42.051949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073324, 0.544484, -0.835560,
		0.446722, 0.731134, 0.515638,
		0.891663, -0.411071, -0.189624,
		36.964043, 31.896946, 41.995060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665401, 32.706638, 41.934143>,  <36.339878, 32.184696, 42.127796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665401, 32.706638, 41.934143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.878098, 32.398712, 41.792927>,  <37.005714, 32.213959, 41.708195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.878098, 32.398712, 41.792927>,  <36.665401, 32.706638, 41.934143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878098, 32.398712, 41.792927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194835, 0.516876, -0.833594,
		0.824190, 0.374473, 0.424831,
		0.531743, -0.769811, -0.353044,
		37.037621, 32.167770, 41.687012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241299, 32.896431, 41.583157>,  <36.665401, 32.706638, 41.934143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241299, 32.896431, 41.583157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.187626, 32.534828, 41.420795>,  <37.155422, 32.317867, 41.323380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.187626, 32.534828, 41.420795>,  <37.241299, 32.896431, 41.583157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187626, 32.534828, 41.420795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080705, 0.398278, -0.913707,
		0.987665, -0.155363, 0.019516,
		-0.134183, -0.904011, -0.405904,
		37.147369, 32.263626, 41.299023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091072, 33.135460, 41.569366>,  <37.241299, 32.896431, 41.583157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091072, 33.135460, 41.569366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.167583, 33.503563, 41.705914>,  <38.213490, 33.724426, 41.787842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.167583, 33.503563, 41.705914>,  <38.091072, 33.135460, 41.569366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167583, 33.503563, 41.705914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215739, -0.299863, 0.929268,
		0.957533, -0.251396, 0.141179,
		0.191280, 0.920262, 0.341365,
		38.224968, 33.779640, 41.808323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557518, 33.144703, 42.155094>,  <38.091072, 33.135460, 41.569366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557518, 33.144703, 42.155094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.380234, 33.497822, 42.217358>,  <38.273865, 33.709694, 42.254715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.380234, 33.497822, 42.217358>,  <38.557518, 33.144703, 42.155094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380234, 33.497822, 42.217358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023838, -0.185190, 0.982414,
		0.896102, 0.431702, 0.103122,
		-0.443207, 0.882801, 0.155658,
		38.247272, 33.762661, 42.264053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.944798, 33.511013, 42.640900>,  <38.557518, 33.144703, 42.155094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.944798, 33.511013, 42.640900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.598518, 33.705532, 42.688366>,  <38.390751, 33.822243, 42.716846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.598518, 33.705532, 42.688366>,  <38.944798, 33.511013, 42.640900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598518, 33.705532, 42.688366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033990, -0.179416, 0.983186,
		0.499412, 0.855175, 0.138791,
		-0.865698, 0.486297, 0.118669,
		38.338810, 33.851421, 42.723969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031628, 34.022736, 43.190434>,  <38.944798, 33.511013, 42.640900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031628, 34.022736, 43.190434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.633892, 33.987156, 43.167156>,  <38.395252, 33.965809, 43.153191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.633892, 33.987156, 43.167156>,  <39.031628, 34.022736, 43.190434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633892, 33.987156, 43.167156> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053889, -0.050024, 0.997293,
		-0.091624, 0.994779, 0.044947,
		-0.994335, -0.088954, -0.058191,
		38.335590, 33.960468, 43.149700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667492, 34.435947, 43.770462>,  <39.031628, 34.022736, 43.190434>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667492, 34.435947, 43.770462> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.388542, 34.177139, 43.647152>,  <38.221172, 34.021854, 43.573166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.388542, 34.177139, 43.647152>,  <38.667492, 34.435947, 43.770462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388542, 34.177139, 43.647152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388927, -0.019653, 0.921059,
		-0.601999, 0.762223, -0.237936,
		-0.697376, -0.647016, -0.308280,
		38.179329, 33.983036, 43.554668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130253, 34.686707, 44.159878>,  <38.667492, 34.435947, 43.770462>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130253, 34.686707, 44.159878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.038902, 34.309654, 44.062477>,  <37.984093, 34.083424, 44.004036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.038902, 34.309654, 44.062477>,  <38.130253, 34.686707, 44.159878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038902, 34.309654, 44.062477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351906, -0.153274, 0.923401,
		-0.907747, 0.296576, -0.296713,
		-0.228380, -0.942629, -0.243501,
		37.970387, 34.026867, 43.989426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468548, 34.649189, 44.491882>,  <38.130253, 34.686707, 44.159878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468548, 34.649189, 44.491882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.607765, 34.284508, 44.404560>,  <37.691296, 34.065697, 44.352169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.607765, 34.284508, 44.404560>,  <37.468548, 34.649189, 44.491882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607765, 34.284508, 44.404560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332954, -0.337892, 0.880324,
		-0.876360, -0.233707, -0.421158,
		0.348043, -0.911707, -0.218301,
		37.712177, 34.010994, 44.339069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014511, 34.140739, 44.805782>,  <37.468548, 34.649189, 44.491882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014511, 34.140739, 44.805782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.351891, 33.934231, 44.746361>,  <37.554317, 33.810326, 44.710709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.351891, 33.934231, 44.746361>,  <37.014511, 34.140739, 44.805782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351891, 33.934231, 44.746361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187277, -0.541739, 0.819418,
		-0.503513, -0.663316, -0.553613,
		0.843447, -0.516266, -0.148549,
		37.604923, 33.779350, 44.701794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848946, 33.421066, 44.987621>,  <37.014511, 34.140739, 44.805782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848946, 33.421066, 44.987621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.248940, 33.423023, 44.987522>,  <37.488937, 33.424198, 44.987461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.248940, 33.423023, 44.987522>,  <36.848946, 33.421066, 44.987621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248940, 33.423023, 44.987522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002848, -0.539305, 0.842106,
		0.003984, -0.842097, -0.539312,
		0.999988, 0.004891, -0.000250,
		37.548935, 33.424492, 44.987446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945656, 32.773022, 45.116386>,  <36.848946, 33.421066, 44.987621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945656, 32.773022, 45.116386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.255257, 32.989494, 45.247868>,  <37.441017, 33.119377, 45.326756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.255257, 32.989494, 45.247868>,  <36.945656, 32.773022, 45.116386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255257, 32.989494, 45.247868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074237, -0.437985, 0.895912,
		0.628822, -0.717835, -0.298824,
		0.773997, 0.541185, 0.328705,
		37.487457, 33.151852, 45.346478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380447, 32.303509, 45.444679>,  <36.945656, 32.773022, 45.116386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380447, 32.303509, 45.444679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.477451, 32.654346, 45.610519>,  <37.535652, 32.864849, 45.710022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.477451, 32.654346, 45.610519>,  <37.380447, 32.303509, 45.444679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477451, 32.654346, 45.610519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068945, -0.441855, 0.894433,
		0.967696, -0.188325, -0.167626,
		0.242510, 0.877096, 0.414597,
		37.550205, 32.917477, 45.734898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855663, 32.111633, 45.979149>,  <37.380447, 32.303509, 45.444679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855663, 32.111633, 45.979149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.794964, 32.497425, 46.065632>,  <37.758545, 32.728901, 46.117523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.794964, 32.497425, 46.065632>,  <37.855663, 32.111633, 45.979149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794964, 32.497425, 46.065632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090678, -0.204233, 0.974714,
		0.984250, 0.167519, -0.056465,
		-0.151751, 0.964482, 0.216206,
		37.749439, 32.786770, 46.130493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420002, 32.369286, 46.410534>,  <37.855663, 32.111633, 45.979149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420002, 32.369286, 46.410534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.088264, 32.569572, 46.509705>,  <37.889221, 32.689743, 46.569206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.088264, 32.569572, 46.509705>,  <38.420002, 32.369286, 46.410534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088264, 32.569572, 46.509705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203689, -0.142253, 0.968646,
		0.520286, 0.853842, 0.015987,
		-0.829345, 0.500717, 0.247931,
		37.839462, 32.719788, 46.584084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642494, 32.917740, 46.969593>,  <38.420002, 32.369286, 46.410534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642494, 32.917740, 46.969593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.244209, 32.884777, 46.986443>,  <38.005238, 32.864998, 46.996552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.244209, 32.884777, 46.986443>,  <38.642494, 32.917740, 46.969593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244209, 32.884777, 46.986443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055415, -0.166324, 0.984513,
		-0.074128, 0.982621, 0.170177,
		-0.995708, -0.082411, 0.042123,
		37.945496, 32.860054, 46.999081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.560146, 30.840708, 46.148842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.936403, 30.753603, 46.044708>,  <31.162157, 30.701340, 45.982227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.936403, 30.753603, 46.044708>,  <30.560146, 30.840708, 46.148842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936403, 30.753603, 46.044708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112956, 0.522445, -0.845158,
		0.320053, 0.824397, 0.466836,
		0.940642, -0.217763, -0.260331,
		31.218596, 30.688274, 45.966610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.793856, 31.479937, 45.911343>,  <30.560146, 30.840708, 46.148842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.793856, 31.479937, 45.911343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.047665, 31.206486, 45.767097>,  <31.199949, 31.042416, 45.680550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.047665, 31.206486, 45.767097>,  <30.793856, 31.479937, 45.911343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047665, 31.206486, 45.767097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156769, 0.570698, -0.806056,
		0.756840, 0.454927, 0.469291,
		0.634520, -0.683627, -0.360608,
		31.238020, 31.001398, 45.658916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366585, 31.899431, 45.683556>,  <30.793856, 31.479937, 45.911343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366585, 31.899431, 45.683556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.366657, 31.549129, 45.490456>,  <31.366701, 31.338947, 45.374596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.366657, 31.549129, 45.490456>,  <31.366585, 31.899431, 45.683556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.366657, 31.549129, 45.490456> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002602, 0.482753, -0.875753,
		0.999997, -0.001096, 0.002367,
		0.000183, -0.875756, -0.482754,
		31.366713, 31.286404, 45.345631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596712, 32.058903, 45.023636>,  <31.366585, 31.899431, 45.683556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596712, 32.058903, 45.023636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.439444, 31.703959, 44.927303>,  <31.345081, 31.490992, 44.869503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.439444, 31.703959, 44.927303>,  <31.596712, 32.058903, 45.023636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.439444, 31.703959, 44.927303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015405, 0.268243, -0.963228,
		0.919336, -0.375005, -0.119136,
		-0.393173, -0.887365, -0.240828,
		31.321491, 31.437750, 44.855057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990488, 31.753798, 44.489822>,  <31.596712, 32.058903, 45.023636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990488, 31.753798, 44.489822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.642118, 31.559164, 44.462307>,  <31.433098, 31.442385, 44.445797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.642118, 31.559164, 44.462307>,  <31.990488, 31.753798, 44.489822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642118, 31.559164, 44.462307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089473, -0.019376, -0.995801,
		0.483207, -0.873420, 0.060411,
		-0.870923, -0.486582, -0.068785,
		31.380842, 31.413189, 44.441673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129524, 31.333094, 43.944183>,  <31.990488, 31.753798, 44.489822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129524, 31.333094, 43.944183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.729979, 31.317171, 43.954655>,  <31.490252, 31.307617, 43.960938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.729979, 31.317171, 43.954655>,  <32.129524, 31.333094, 43.944183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729979, 31.317171, 43.954655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030636, 0.115977, -0.992779,
		0.036481, -0.992454, -0.117064,
		-0.998865, -0.039804, 0.026174,
		31.430319, 31.305229, 43.962505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796585, 30.814041, 43.431393>,  <32.129524, 31.333094, 43.944183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796585, 30.814041, 43.431393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.497936, 31.066256, 43.516224>,  <31.318747, 31.217585, 43.567123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.497936, 31.066256, 43.516224>,  <31.796585, 30.814041, 43.431393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497936, 31.066256, 43.516224> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124192, 0.181085, -0.975595,
		-0.653553, -0.754740, -0.056894,
		-0.746623, 0.630536, 0.212081,
		31.273949, 31.255417, 43.579849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306543, 30.619326, 42.880962>,  <31.796585, 30.814041, 43.431393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306543, 30.619326, 42.880962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.246534, 30.983671, 43.034752>,  <31.210529, 31.202278, 43.127026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.246534, 30.983671, 43.034752>,  <31.306543, 30.619326, 42.880962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246534, 30.983671, 43.034752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107256, 0.371589, -0.922181,
		-0.982848, -0.179586, 0.041949,
		-0.150023, 0.910863, 0.384477,
		31.201527, 31.256929, 43.150093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908646, 30.934631, 42.389893>,  <31.306543, 30.619326, 42.880962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.908646, 30.934631, 42.389893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.038870, 31.253212, 42.593723>,  <31.117004, 31.444361, 42.716022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.038870, 31.253212, 42.593723>,  <30.908646, 30.934631, 42.389893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.038870, 31.253212, 42.593723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092153, 0.509648, -0.855434,
		-0.941020, 0.325455, 0.092526,
		0.325560, 0.796453, 0.509581,
		31.136538, 31.492147, 42.746597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540197, 31.450340, 42.244221>,  <30.908646, 30.934631, 42.389893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540197, 31.450340, 42.244221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.873711, 31.625906, 42.378181>,  <31.073818, 31.731245, 42.458557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.873711, 31.625906, 42.378181>,  <30.540197, 31.450340, 42.244221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873711, 31.625906, 42.378181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130341, 0.432969, -0.891936,
		-0.536487, 0.787332, 0.303793,
		0.833783, 0.438915, 0.334903,
		31.123846, 31.757580, 42.478653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493059, 32.185513, 42.026451>,  <30.540197, 31.450340, 42.244221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493059, 32.185513, 42.026451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.879347, 32.126133, 42.111633>,  <31.111118, 32.090504, 42.162743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.879347, 32.126133, 42.111633>,  <30.493059, 32.185513, 42.026451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879347, 32.126133, 42.111633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257746, 0.450591, -0.854713,
		0.030924, 0.880302, 0.473406,
		0.965718, -0.148449, 0.212960,
		31.169062, 32.081596, 42.175522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745020, 32.813301, 41.931229>,  <30.493059, 32.185513, 42.026451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745020, 32.813301, 41.931229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.083784, 32.603615, 41.895576>,  <31.287043, 32.477802, 41.874184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.083784, 32.603615, 41.895576>,  <30.745020, 32.813301, 41.931229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083784, 32.603615, 41.895576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225509, 0.505891, -0.832598,
		0.481549, 0.685036, 0.546659,
		0.846910, -0.524213, -0.089130,
		31.337856, 32.446350, 41.868839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262506, 33.373672, 41.782440>,  <30.745020, 32.813301, 41.931229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262506, 33.373672, 41.782440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.405069, 33.012138, 41.687740>,  <31.490606, 32.795216, 41.630920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.405069, 33.012138, 41.687740>,  <31.262506, 33.373672, 41.782440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405069, 33.012138, 41.687740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234395, 0.331782, -0.913772,
		0.904452, 0.270181, 0.330105,
		0.356407, -0.903838, -0.236752,
		31.511992, 32.740986, 41.616714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857090, 33.511349, 41.306278>,  <31.262506, 33.373672, 41.782440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857090, 33.511349, 41.306278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.787436, 33.123302, 41.238689>,  <31.745644, 32.890476, 41.198135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.787436, 33.123302, 41.238689>,  <31.857090, 33.511349, 41.306278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787436, 33.123302, 41.238689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030689, 0.166164, -0.985621,
		0.984244, -0.176815, 0.000837,
		-0.174134, -0.970117, -0.168972,
		31.735195, 32.832268, 41.187996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329433, 33.472313, 41.846031>,  <31.857090, 33.511349, 41.306278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329433, 33.472313, 41.846031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.458485, 33.850456, 41.827278>,  <32.535915, 34.077343, 41.816029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.458485, 33.850456, 41.827278>,  <32.329433, 33.472313, 41.846031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458485, 33.850456, 41.827278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047854, 0.033172, 0.998303,
		0.945314, -0.324328, -0.034537,
		0.322632, 0.945363, -0.046878,
		32.555275, 34.134064, 41.813213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840073, 33.428043, 42.259598>,  <32.329433, 33.472313, 41.846031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840073, 33.428043, 42.259598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.727810, 33.811859, 42.250504>,  <32.660454, 34.042149, 42.245045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.727810, 33.811859, 42.250504>,  <32.840073, 33.428043, 42.259598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727810, 33.811859, 42.250504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072960, 0.044949, 0.996322,
		0.957031, 0.277965, -0.082624,
		-0.280657, 0.959539, -0.022737,
		32.643612, 34.099720, 42.243683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239151, 33.759251, 42.821514>,  <32.840073, 33.428043, 42.259598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239151, 33.759251, 42.821514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.955624, 34.035423, 42.763710>,  <32.785507, 34.201126, 42.729027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.955624, 34.035423, 42.763710>,  <33.239151, 33.759251, 42.821514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955624, 34.035423, 42.763710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087543, 0.289384, 0.953202,
		0.699936, 0.662998, -0.265563,
		-0.708820, 0.690428, -0.144509,
		32.742977, 34.242554, 42.720356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434612, 34.373749, 43.210884>,  <33.239151, 33.759251, 42.821514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434612, 34.373749, 43.210884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.041607, 34.352421, 43.139526>,  <32.805805, 34.339622, 43.096710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.041607, 34.352421, 43.139526>,  <33.434612, 34.373749, 43.210884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041607, 34.352421, 43.139526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183192, 0.105469, 0.977403,
		-0.033302, 0.992992, -0.113393,
		-0.982513, -0.053322, -0.178396,
		32.746853, 34.336426, 43.086006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.955009, 34.847889, 43.732201>,  <33.434612, 34.373749, 43.210884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.955009, 34.847889, 43.732201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.635517, 34.642082, 43.607433>,  <32.443821, 34.518597, 43.532574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.635517, 34.642082, 43.607433>,  <32.955009, 34.847889, 43.732201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635517, 34.642082, 43.607433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402843, 0.072225, 0.912415,
		-0.446928, 0.854431, -0.264959,
		-0.798732, -0.514521, -0.311923,
		32.395897, 34.487724, 43.513855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319195, 35.093998, 44.127926>,  <32.955009, 34.847889, 43.732201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319195, 35.093998, 44.127926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.220108, 34.723232, 44.015163>,  <32.160656, 34.500774, 43.947506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.220108, 34.723232, 44.015163>,  <32.319195, 35.093998, 44.127926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220108, 34.723232, 44.015163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196527, -0.236851, 0.951461,
		-0.948690, 0.291096, -0.123491,
		-0.247718, -0.926911, -0.281906,
		32.145794, 34.445160, 43.930592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609194, 34.923687, 44.428452>,  <32.319195, 35.093998, 44.127926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609194, 34.923687, 44.428452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.806856, 34.583485, 44.356407>,  <31.925453, 34.379364, 44.313179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.806856, 34.583485, 44.356407>,  <31.609194, 34.923687, 44.428452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806856, 34.583485, 44.356407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195666, -0.310667, 0.930162,
		-0.847067, -0.424405, -0.319935,
		0.494158, -0.850510, -0.180114,
		31.955103, 34.328331, 44.302372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403830, 34.544209, 44.962189>,  <31.609194, 34.923687, 44.428452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403830, 34.544209, 44.962189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.714500, 34.333984, 44.823303>,  <31.900904, 34.207851, 44.739971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.714500, 34.333984, 44.823303>,  <31.403830, 34.544209, 44.962189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714500, 34.333984, 44.823303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186306, -0.334895, 0.923653,
		-0.601716, -0.782069, -0.162191,
		0.776677, -0.525560, -0.347216,
		31.947504, 34.176315, 44.719139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281071, 33.759834, 45.049141>,  <31.403830, 34.544209, 44.962189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281071, 33.759834, 45.049141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.673775, 33.835625, 45.055435>,  <31.909397, 33.881100, 45.059212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.673775, 33.835625, 45.055435>,  <31.281071, 33.759834, 45.049141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673775, 33.835625, 45.055435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063672, -0.405635, 0.911815,
		0.179148, -0.894181, -0.410300,
		0.981760, 0.189475, 0.015734,
		31.968302, 33.892467, 45.060154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568066, 33.145241, 45.270878>,  <31.281071, 33.759834, 45.049141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.568066, 33.145241, 45.270878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.861313, 33.408916, 45.337826>,  <32.037262, 33.567120, 45.377995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.861313, 33.408916, 45.337826>,  <31.568066, 33.145241, 45.270878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861313, 33.408916, 45.337826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286632, -0.522643, 0.802924,
		0.616749, -0.540666, -0.572103,
		0.733118, 0.659185, 0.167367,
		32.081249, 33.606670, 45.388035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130306, 32.725677, 45.250145>,  <31.568066, 33.145241, 45.270878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130306, 32.725677, 45.250145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.221294, 33.066006, 45.439613>,  <32.275887, 33.270203, 45.553295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.221294, 33.066006, 45.439613>,  <32.130306, 32.725677, 45.250145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221294, 33.066006, 45.439613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075006, -0.500290, 0.862603,
		0.970893, -0.160684, -0.177615,
		0.227466, 0.850818, 0.473676,
		32.289536, 33.321251, 45.581715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794975, 32.655937, 45.691692>,  <32.130306, 32.725677, 45.250145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794975, 32.655937, 45.691692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.621792, 32.981850, 45.845928>,  <32.517883, 33.177399, 45.938469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.621792, 32.981850, 45.845928>,  <32.794975, 32.655937, 45.691692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621792, 32.981850, 45.845928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072405, -0.394943, 0.915848,
		0.898501, 0.424443, 0.112000,
		-0.432959, 0.814781, 0.385588,
		32.491905, 33.226284, 45.961605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116440, 32.797337, 46.244381>,  <32.794975, 32.655937, 45.691692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116440, 32.797337, 46.244381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.797359, 33.018333, 46.341064>,  <32.605911, 33.150932, 46.399075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.797359, 33.018333, 46.341064>,  <33.116440, 32.797337, 46.244381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797359, 33.018333, 46.341064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175425, -0.170884, 0.969549,
		0.576970, 0.815815, 0.039395,
		-0.797704, 0.552489, 0.241710,
		32.558048, 33.184082, 46.413578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278812, 33.392334, 46.730907>,  <33.116440, 32.797337, 46.244381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278812, 33.392334, 46.730907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.892906, 33.294044, 46.768543>,  <32.661362, 33.235073, 46.791126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.892906, 33.294044, 46.768543>,  <33.278812, 33.392334, 46.730907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892906, 33.294044, 46.768543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145498, -0.200277, 0.968875,
		-0.219228, 0.948426, 0.228972,
		-0.964764, -0.245720, 0.094088,
		32.603477, 33.220329, 46.796768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147499, 34.203030, 46.797913>,  <33.278812, 33.392334, 46.730907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147499, 34.203030, 46.797913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.425812, 34.457054, 46.932125>,  <33.592800, 34.609470, 47.012653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.425812, 34.457054, 46.932125>,  <33.147499, 34.203030, 46.797913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.425812, 34.457054, 46.932125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015207, 0.454026, -0.890859,
		-0.718092, 0.624946, 0.306246,
		0.695782, 0.635061, 0.335535,
		33.634548, 34.647572, 47.032787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989407, 34.892735, 46.649570>,  <33.147499, 34.203030, 46.797913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989407, 34.892735, 46.649570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.383987, 34.936321, 46.698624>,  <33.620735, 34.962475, 46.728054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.383987, 34.936321, 46.698624>,  <32.989407, 34.892735, 46.649570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383987, 34.936321, 46.698624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050675, 0.508550, -0.859540,
		-0.156026, 0.854109, 0.496138,
		0.986452, 0.108969, 0.122629,
		33.679924, 34.969013, 46.735413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142864, 35.614212, 46.501377>,  <32.989407, 34.892735, 46.649570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142864, 35.614212, 46.501377> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.501438, 35.439205, 46.473156>,  <33.716583, 35.334202, 46.456223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.501438, 35.439205, 46.473156>,  <33.142864, 35.614212, 46.501377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501438, 35.439205, 46.473156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170990, 0.488331, -0.855743,
		0.408856, 0.755056, 0.512569,
		0.896437, -0.437520, -0.070551,
		33.770370, 35.307949, 46.451992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489021, 36.122879, 46.187893>,  <33.142864, 35.614212, 46.501377>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489021, 36.122879, 46.187893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.723705, 35.805309, 46.124065>,  <33.864517, 35.614769, 46.085770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.723705, 35.805309, 46.124065>,  <33.489021, 36.122879, 46.187893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723705, 35.805309, 46.124065> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219411, 0.345530, -0.912397,
		0.779506, 0.500300, 0.376921,
		0.586710, -0.793919, -0.159572,
		33.899719, 35.567135, 46.076195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125401, 36.398018, 45.925743>,  <33.489021, 36.122879, 46.187893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125401, 36.398018, 45.925743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.082214, 36.025490, 45.786613>,  <34.056301, 35.801971, 45.703136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.082214, 36.025490, 45.786613>,  <34.125401, 36.398018, 45.925743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082214, 36.025490, 45.786613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260026, 0.311239, -0.914066,
		0.959546, -0.189135, 0.208564,
		-0.107969, -0.931321, -0.347829,
		34.049824, 35.746094, 45.682266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742210, 36.319874, 45.607426>,  <34.125401, 36.398018, 45.925743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742210, 36.319874, 45.607426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.539040, 36.004387, 45.468899>,  <34.417137, 35.815094, 45.385784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.539040, 36.004387, 45.468899>,  <34.742210, 36.319874, 45.607426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539040, 36.004387, 45.468899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352086, 0.176833, -0.919111,
		0.786161, -0.588772, 0.187880,
		-0.507923, -0.788719, -0.346318,
		34.386662, 35.767773, 45.365002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298580, 35.900185, 45.242615>,  <34.742210, 36.319874, 45.607426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298580, 35.900185, 45.242615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.950348, 35.766418, 45.098255>,  <34.741409, 35.686157, 45.011639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.950348, 35.766418, 45.098255>,  <35.298580, 35.900185, 45.242615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950348, 35.766418, 45.098255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383986, -0.003168, -0.923334,
		0.307637, -0.942419, 0.131171,
		-0.870583, -0.334420, -0.360901,
		34.689175, 35.666092, 44.989986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511860, 35.293575, 44.859077>,  <35.298580, 35.900185, 45.242615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511860, 35.293575, 44.859077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.163685, 35.436497, 44.723625>,  <34.954781, 35.522251, 44.642353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.163685, 35.436497, 44.723625>,  <35.511860, 35.293575, 44.859077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163685, 35.436497, 44.723625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376903, 0.041214, -0.925335,
		-0.316669, -0.933079, -0.170543,
		-0.870439, 0.357303, -0.338629,
		34.902554, 35.543686, 44.622036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400482, 34.991531, 44.169647>,  <35.511860, 35.293575, 44.859077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400482, 34.991531, 44.169647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.170765, 35.318638, 44.184872>,  <35.032932, 35.514900, 44.194008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.170765, 35.318638, 44.184872>,  <35.400482, 34.991531, 44.169647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170765, 35.318638, 44.184872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311008, 0.260952, -0.913881,
		-0.757270, -0.513000, -0.404194,
		-0.574296, 0.817762, 0.038064,
		34.998478, 35.563965, 44.196289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017860, 34.992893, 43.566151>,  <35.400482, 34.991531, 44.169647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017860, 34.992893, 43.566151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.018078, 35.373806, 43.688240>,  <35.018208, 35.602352, 43.761494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.018078, 35.373806, 43.688240>,  <35.017860, 34.992893, 43.566151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018078, 35.373806, 43.688240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181855, 0.300041, -0.936431,
		-0.983325, 0.056020, -0.173012,
		0.000548, 0.952280, 0.305226,
		35.018242, 35.659489, 43.779808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774815, 35.308094, 43.024754>,  <35.017860, 34.992893, 43.566151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774815, 35.308094, 43.024754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.928745, 35.623833, 43.216099>,  <35.021103, 35.813278, 43.330906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.928745, 35.623833, 43.216099>,  <34.774815, 35.308094, 43.024754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928745, 35.623833, 43.216099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285754, 0.390924, -0.874942,
		-0.877639, 0.473398, -0.075121,
		0.384829, 0.789349, 0.478366,
		35.044193, 35.860638, 43.359608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600124, 35.861980, 42.730080>,  <34.774815, 35.308094, 43.024754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600124, 35.861980, 42.730080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.923889, 36.003052, 42.917892>,  <35.118149, 36.087696, 43.030582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.923889, 36.003052, 42.917892>,  <34.600124, 35.861980, 42.730080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923889, 36.003052, 42.917892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283482, 0.465564, -0.838384,
		-0.514282, 0.811705, 0.276855,
		0.809414, 0.352683, 0.469535,
		35.166714, 36.108856, 43.058754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565983, 36.516197, 42.591228>,  <34.600124, 35.861980, 42.730080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565983, 36.516197, 42.591228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.941299, 36.406773, 42.675861>,  <35.166489, 36.341118, 42.726639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.941299, 36.406773, 42.675861>,  <34.565983, 36.516197, 42.591228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941299, 36.406773, 42.675861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330086, 0.525868, -0.783905,
		0.103186, 0.805373, 0.583719,
		0.938294, -0.273566, 0.211580,
		35.222786, 36.324703, 42.739334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926670, 37.087040, 42.346069>,  <34.565983, 36.516197, 42.591228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926670, 37.087040, 42.346069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.181438, 36.781086, 42.384613>,  <35.334301, 36.597515, 42.407738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.181438, 36.781086, 42.384613>,  <34.926670, 37.087040, 42.346069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181438, 36.781086, 42.384613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562299, 0.375410, -0.736809,
		0.527398, 0.523473, 0.669199,
		0.636924, -0.764881, 0.096358,
		35.372517, 36.551620, 42.413521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.293198, 32.309647, 26.692472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.998350, 32.113171, 26.506834>,  <27.821442, 31.995283, 26.395451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.998350, 32.113171, 26.506834>,  <28.293198, 32.309647, 26.692472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998350, 32.113171, 26.506834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661626, 0.384824, 0.643554,
		-0.137514, 0.781433, -0.608647,
		-0.737117, -0.491195, -0.464098,
		27.777216, 31.965813, 26.367605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.666386, 32.723209, 26.454674>,  <28.293198, 32.309647, 26.692472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.666386, 32.723209, 26.454674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.547424, 32.352024, 26.544500>,  <27.476048, 32.129311, 26.598396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.547424, 32.352024, 26.544500>,  <27.666386, 32.723209, 26.454674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.547424, 32.352024, 26.544500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816466, 0.369115, 0.444002,
		-0.494909, -0.051302, -0.867429,
		-0.297403, -0.927967, 0.224565,
		27.458204, 32.073635, 26.611870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.944994, 32.788567, 26.483707>,  <27.666386, 32.723209, 26.454674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.944994, 32.788567, 26.483707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.011982, 32.449696, 26.685400>,  <27.052176, 32.246372, 26.806416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.011982, 32.449696, 26.685400>,  <26.944994, 32.788567, 26.483707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.011982, 32.449696, 26.685400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648528, 0.290549, 0.703557,
		-0.742540, -0.444833, -0.500758,
		0.167471, -0.847175, 0.504231,
		27.062223, 32.195541, 26.836670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.362524, 32.528465, 26.625404>,  <26.944994, 32.788567, 26.483707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.362524, 32.528465, 26.625404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.592260, 32.339973, 26.893160>,  <26.730103, 32.226879, 27.053812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.592260, 32.339973, 26.893160>,  <26.362524, 32.528465, 26.625404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.592260, 32.339973, 26.893160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492506, 0.454254, 0.742355,
		-0.653890, -0.756040, 0.028813,
		0.574338, -0.471228, 0.669387,
		26.764563, 32.198605, 27.093977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.996246, 32.018082, 27.061333>,  <26.362524, 32.528465, 26.625404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.996246, 32.018082, 27.061333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.321526, 32.088993, 27.283066>,  <26.516693, 32.131538, 27.416105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.321526, 32.088993, 27.283066>,  <25.996246, 32.018082, 27.061333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.321526, 32.088993, 27.283066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578076, 0.356303, 0.734082,
		-0.067373, -0.917399, 0.392225,
		0.813197, 0.177279, 0.554331,
		26.565485, 32.142178, 27.449366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.765079, 31.900906, 27.728680>,  <25.996246, 32.018082, 27.061333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.765079, 31.900906, 27.728680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.104437, 32.063259, 27.864613>,  <26.308052, 32.160671, 27.946173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.104437, 32.063259, 27.864613>,  <25.765079, 31.900906, 27.728680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.104437, 32.063259, 27.864613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484663, 0.337375, 0.807019,
		0.212904, -0.849375, 0.482943,
		0.848395, 0.405882, 0.339832,
		26.358955, 32.185024, 27.966562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.868988, 31.683502, 28.525005>,  <25.765079, 31.900906, 27.728680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.868988, 31.683502, 28.525005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.084524, 32.015968, 28.470137>,  <26.213846, 32.215446, 28.437216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.084524, 32.015968, 28.470137>,  <25.868988, 31.683502, 28.525005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.084524, 32.015968, 28.470137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216416, 0.293947, 0.930999,
		0.814134, -0.471974, 0.338268,
		0.538841, 0.831165, -0.137170,
		26.246176, 32.265316, 28.428986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.384094, 31.663294, 28.996899>,  <25.868988, 31.683502, 28.525005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.384094, 31.663294, 28.996899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.338354, 32.051468, 28.911871>,  <26.310911, 32.284370, 28.860855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.338354, 32.051468, 28.911871>,  <26.384094, 31.663294, 28.996899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.338354, 32.051468, 28.911871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094109, 0.202427, 0.974765,
		0.988973, 0.131467, 0.068179,
		-0.114348, 0.970433, -0.212567,
		26.304050, 32.342598, 28.848101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.833517, 32.059696, 29.467304>,  <26.384094, 31.663294, 28.996899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.833517, 32.059696, 29.467304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.571398, 32.334423, 29.341532>,  <26.414125, 32.499260, 29.266068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.571398, 32.334423, 29.341532>,  <26.833517, 32.059696, 29.467304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.571398, 32.334423, 29.341532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072002, 0.357573, 0.931105,
		0.751929, 0.632793, -0.184865,
		-0.655300, 0.686815, -0.314432,
		26.374807, 32.540466, 29.247202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.063854, 32.633244, 29.792229>,  <26.833517, 32.059696, 29.467304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.063854, 32.633244, 29.792229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.683060, 32.715279, 29.701311>,  <26.454582, 32.764500, 29.646761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.683060, 32.715279, 29.701311>,  <27.063854, 32.633244, 29.792229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.683060, 32.715279, 29.701311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097612, 0.500357, 0.860299,
		0.290163, 0.841180, -0.456314,
		-0.951986, 0.205085, -0.227294,
		26.397465, 32.776806, 29.633123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.927626, 33.242729, 30.037939>,  <27.063854, 32.633244, 29.792229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.927626, 33.242729, 30.037939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.551182, 33.110577, 30.009199>,  <26.325315, 33.031284, 29.991955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.551182, 33.110577, 30.009199>,  <26.927626, 33.242729, 30.037939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.551182, 33.110577, 30.009199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197250, 0.363904, 0.910311,
		-0.274607, 0.870873, -0.407641,
		-0.941108, -0.330385, -0.071848,
		26.268850, 33.011459, 29.987644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.437027, 33.730228, 30.316042>,  <26.927626, 33.242729, 30.037939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.437027, 33.730228, 30.316042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.237720, 33.383942, 30.335052>,  <26.118135, 33.176170, 30.346458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.237720, 33.383942, 30.335052>,  <26.437027, 33.730228, 30.316042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.237720, 33.383942, 30.335052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397731, 0.276936, 0.874709,
		-0.770415, 0.416936, -0.482312,
		-0.498267, -0.865720, 0.047527,
		26.088240, 33.124226, 30.349310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.693800, 33.964176, 30.350313>,  <26.437027, 33.730228, 30.316042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.693800, 33.964176, 30.350313> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.673193, 33.589043, 30.487610>,  <25.660830, 33.363964, 30.569988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.673193, 33.589043, 30.487610>,  <25.693800, 33.964176, 30.350313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.673193, 33.589043, 30.487610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411961, 0.333051, 0.848154,
		-0.909744, -0.097710, -0.403508,
		-0.051515, -0.937833, 0.343244,
		25.657738, 33.307693, 30.590584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.110060, 34.092346, 30.689997>,  <25.693800, 33.964176, 30.350313>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.110060, 34.092346, 30.689997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.284571, 33.756348, 30.819031>,  <25.389277, 33.554749, 30.896452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.284571, 33.756348, 30.819031>,  <25.110060, 34.092346, 30.689997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.284571, 33.756348, 30.819031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212040, 0.252434, 0.944095,
		-0.874472, -0.480289, -0.067983,
		0.436277, -0.840000, 0.322587,
		25.415453, 33.504349, 30.915808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.609842, 33.751854, 31.089197>,  <25.110060, 34.092346, 30.689997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.609842, 33.751854, 31.089197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.966316, 33.619183, 31.212986>,  <25.180201, 33.539577, 31.287260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.966316, 33.619183, 31.212986>,  <24.609842, 33.751854, 31.089197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.966316, 33.619183, 31.212986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252475, 0.204129, 0.945827,
		-0.376886, -0.921042, 0.098176,
		0.891186, -0.331682, 0.309473,
		25.233673, 33.519680, 31.305828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.437014, 33.229244, 31.523724>,  <24.609842, 33.751854, 31.089197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.437014, 33.229244, 31.523724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.798861, 33.375515, 31.611311>,  <25.015968, 33.463276, 31.663864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.798861, 33.375515, 31.611311>,  <24.437014, 33.229244, 31.523724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.798861, 33.375515, 31.611311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282970, 0.131075, 0.950130,
		0.318739, -0.921466, 0.222048,
		0.904618, 0.365676, 0.218968,
		25.070246, 33.485218, 31.677002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.467756, 33.032070, 32.223995>,  <24.437014, 33.229244, 31.523724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.467756, 33.032070, 32.223995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.785465, 33.272820, 32.190807>,  <24.976089, 33.417271, 32.170895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.785465, 33.272820, 32.190807>,  <24.467756, 33.032070, 32.223995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.785465, 33.272820, 32.190807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046156, 0.195939, 0.979529,
		0.605809, -0.774182, 0.183408,
		0.794270, 0.601873, -0.082968,
		25.023746, 33.453381, 32.165916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.890179, 32.901890, 32.799896>,  <24.467756, 33.032070, 32.223995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.890179, 32.901890, 32.799896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.996655, 33.260761, 32.658920>,  <25.060539, 33.476086, 32.574333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.996655, 33.260761, 32.658920>,  <24.890179, 32.901890, 32.799896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.996655, 33.260761, 32.658920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073114, 0.383370, 0.920696,
		0.961144, -0.219310, 0.167645,
		0.266189, 0.897179, -0.352439,
		25.076511, 33.529915, 32.553188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.416317, 33.112862, 33.238110>,  <24.890179, 32.901890, 32.799896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.416317, 33.112862, 33.238110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.308331, 33.452667, 33.056808>,  <25.243538, 33.656551, 32.948029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.308331, 33.452667, 33.056808>,  <25.416317, 33.112862, 33.238110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.308331, 33.452667, 33.056808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143264, 0.500932, 0.853547,
		0.952152, 0.165493, -0.256940,
		-0.269966, 0.849517, -0.453254,
		25.227341, 33.707523, 32.920834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.967192, 33.543514, 33.445724>,  <25.416317, 33.112862, 33.238110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.967192, 33.543514, 33.445724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.635931, 33.737194, 33.332790>,  <25.437174, 33.853401, 33.265030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.635931, 33.737194, 33.332790>,  <25.967192, 33.543514, 33.445724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.635931, 33.737194, 33.332790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080747, 0.601529, 0.794760,
		0.554658, 0.635384, -0.537254,
		-0.828151, 0.484202, -0.282337,
		25.387486, 33.882454, 33.248089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.969711, 34.132824, 33.722893>,  <25.967192, 33.543514, 33.445724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.969711, 34.132824, 33.722893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.317537, 34.196663, 33.909821>,  <26.526232, 34.234966, 34.021976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.317537, 34.196663, 33.909821>,  <25.969711, 34.132824, 33.722893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.317537, 34.196663, 33.909821> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489641, -0.155758, -0.857899,
		-0.064128, 0.974817, -0.213586,
		0.869563, 0.159596, 0.467322,
		26.578405, 34.244541, 34.050018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.343420, 34.609844, 33.397114>,  <25.969711, 34.132824, 33.722893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.343420, 34.609844, 33.397114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.618853, 34.407063, 33.604515>,  <26.784113, 34.285393, 33.728958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.618853, 34.407063, 33.604515>,  <26.343420, 34.609844, 33.397114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.618853, 34.407063, 33.604515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626637, 0.056144, -0.777286,
		0.364939, 0.860141, 0.356338,
		0.688582, -0.506957, 0.518507,
		26.825428, 34.254974, 33.760067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.933500, 35.044865, 33.394650>,  <26.343420, 34.609844, 33.397114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.933500, 35.044865, 33.394650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.043457, 34.670113, 33.481083>,  <27.109430, 34.445263, 33.532944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.043457, 34.670113, 33.481083>,  <26.933500, 35.044865, 33.394650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.043457, 34.670113, 33.481083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685273, 0.033270, -0.727526,
		0.674415, 0.348066, 0.651164,
		0.274891, -0.936879, 0.216083,
		27.125925, 34.389050, 33.545906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.718046, 35.029461, 33.578548>,  <26.933500, 35.044865, 33.394650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.718046, 35.029461, 33.578548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.598995, 34.667103, 33.458038>,  <27.527565, 34.449688, 33.385735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.598995, 34.667103, 33.458038>,  <27.718046, 35.029461, 33.578548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.598995, 34.667103, 33.458038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645720, 0.041418, -0.762450,
		0.703180, -0.421465, 0.572630,
		-0.297629, -0.905899, -0.301273,
		27.509706, 34.395332, 33.367657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.324368, 34.766403, 33.334698>,  <27.718046, 35.029461, 33.578548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.324368, 34.766403, 33.334698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.062424, 34.503208, 33.185989>,  <27.905258, 34.345291, 33.096764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.062424, 34.503208, 33.185989>,  <28.324368, 34.766403, 33.334698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.062424, 34.503208, 33.185989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520092, -0.035457, -0.853374,
		0.548329, -0.752193, 0.365434,
		-0.654859, -0.657989, -0.371767,
		27.865967, 34.305813, 33.074459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.675169, 34.092800, 33.102833>,  <28.324368, 34.766403, 33.334698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.675169, 34.092800, 33.102833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.332157, 34.117619, 32.898560>,  <28.126350, 34.132507, 32.775997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.332157, 34.117619, 32.898560>,  <28.675169, 34.092800, 33.102833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.332157, 34.117619, 32.898560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498406, -0.145695, -0.854614,
		-0.127421, -0.987383, 0.094019,
		-0.857529, 0.062037, -0.510682,
		28.074898, 34.136230, 32.745354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690567, 33.577614, 32.675003>,  <28.675169, 34.092800, 33.102833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.690567, 33.577614, 32.675003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.419962, 33.831642, 32.525860>,  <28.257599, 33.984058, 32.436375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.419962, 33.831642, 32.525860>,  <28.690567, 33.577614, 32.675003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419962, 33.831642, 32.525860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438327, -0.059608, -0.896837,
		-0.591778, -0.770153, -0.238041,
		-0.676512, 0.635068, -0.372853,
		28.217009, 34.022163, 32.414005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.519163, 33.276447, 31.991306>,  <28.690567, 33.577614, 32.675003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.519163, 33.276447, 31.991306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.384697, 33.653145, 31.987270>,  <28.304016, 33.879166, 31.984848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.384697, 33.653145, 31.987270>,  <28.519163, 33.276447, 31.991306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.384697, 33.653145, 31.987270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279662, 0.089584, -0.955910,
		-0.899323, -0.324167, -0.293487,
		-0.336166, 0.941749, -0.010092,
		28.283848, 33.935669, 31.984243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.980186, 33.332897, 31.452904>,  <28.519163, 33.276447, 31.991306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.980186, 33.332897, 31.452904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.133223, 33.698483, 31.507023>,  <28.225044, 33.917831, 31.539494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.133223, 33.698483, 31.507023>,  <27.980186, 33.332897, 31.452904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.133223, 33.698483, 31.507023> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274993, 0.027156, -0.961063,
		-0.882046, 0.404897, -0.240942,
		0.382588, 0.913959, 0.135297,
		28.247999, 33.972672, 31.547611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812611, 33.705864, 30.833334>,  <27.980186, 33.332897, 31.452904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812611, 33.705864, 30.833334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.092184, 33.918198, 31.025045>,  <28.259928, 34.045597, 31.140072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.092184, 33.918198, 31.025045>,  <27.812611, 33.705864, 30.833334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.092184, 33.918198, 31.025045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463773, 0.173741, -0.868751,
		-0.544430, 0.829477, -0.124752,
		0.698935, 0.530831, 0.479279,
		28.301865, 34.077446, 31.168829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.773661, 34.455246, 30.570267>,  <27.812611, 33.705864, 30.833334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.773661, 34.455246, 30.570267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.140471, 34.386787, 30.714365>,  <28.360556, 34.345711, 30.800823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.140471, 34.386787, 30.714365>,  <27.773661, 34.455246, 30.570267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140471, 34.386787, 30.714365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397510, 0.318683, -0.860480,
		0.032464, 0.932282, 0.360272,
		0.917023, -0.171147, 0.360246,
		28.415577, 34.335442, 30.822439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.163366, 35.073761, 30.504271>,  <27.773661, 34.455246, 30.570267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.163366, 35.073761, 30.504271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.440779, 34.787617, 30.538380>,  <28.607227, 34.615929, 30.558846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.440779, 34.787617, 30.538380>,  <28.163366, 35.073761, 30.504271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440779, 34.787617, 30.538380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462259, 0.351090, -0.814281,
		0.552567, 0.604148, 0.574174,
		0.693532, -0.715362, 0.085272,
		28.648838, 34.573009, 30.563961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.765295, 35.359615, 30.212175>,  <28.163366, 35.073761, 30.504271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.765295, 35.359615, 30.212175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.914745, 34.989918, 30.243612>,  <29.004416, 34.768101, 30.262474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.914745, 34.989918, 30.243612>,  <28.765295, 35.359615, 30.212175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914745, 34.989918, 30.243612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409761, 0.088442, -0.907896,
		0.832166, 0.371417, 0.411763,
		0.373625, -0.924244, 0.078594,
		29.026833, 34.712643, 30.267191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470739, 35.412914, 29.924719>,  <28.765295, 35.359615, 30.212175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.470739, 35.412914, 29.924719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.375462, 35.024605, 29.936481>,  <29.318295, 34.791618, 29.943539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.375462, 35.024605, 29.936481>,  <29.470739, 35.412914, 29.924719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.375462, 35.024605, 29.936481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432072, -0.133037, -0.891972,
		0.869814, -0.199759, 0.451132,
		-0.238197, -0.970772, 0.029407,
		29.304003, 34.733372, 29.945303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076632, 34.969795, 29.831104>,  <29.470739, 35.412914, 29.924719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.076632, 34.969795, 29.831104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.768784, 34.747478, 29.705385>,  <29.584076, 34.614090, 29.629953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.768784, 34.747478, 29.705385>,  <30.076632, 34.969795, 29.831104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768784, 34.747478, 29.705385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425786, -0.079924, -0.901287,
		0.475807, -0.827471, 0.298159,
		-0.769619, -0.555791, -0.314297,
		29.537897, 34.580742, 29.611095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.407751, 34.382065, 29.375626>,  <30.076632, 34.969795, 29.831104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.407751, 34.382065, 29.375626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.017645, 34.413326, 29.292927>,  <29.783581, 34.432083, 29.243307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.017645, 34.413326, 29.292927>,  <30.407751, 34.382065, 29.375626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.017645, 34.413326, 29.292927> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212609, 0.075999, -0.974177,
		-0.060426, -0.994040, -0.090736,
		-0.975267, 0.078157, -0.206749,
		29.725065, 34.436771, 29.230902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.353529, 33.932789, 28.873129>,  <30.407751, 34.382065, 29.375626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.353529, 33.932789, 28.873129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.028751, 34.161911, 28.828163>,  <29.833885, 34.299385, 28.801184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.028751, 34.161911, 28.828163>,  <30.353529, 33.932789, 28.873129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028751, 34.161911, 28.828163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000779, -0.193644, -0.981072,
		-0.583733, -0.796489, 0.157674,
		-0.811946, 0.572807, -0.112416,
		29.785168, 34.333752, 28.794437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903223, 33.477001, 28.585518>,  <30.353529, 33.932789, 28.873129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903223, 33.477001, 28.585518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.778788, 33.849205, 28.508186>,  <29.704126, 34.072529, 28.461788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.778788, 33.849205, 28.508186>,  <29.903223, 33.477001, 28.585518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.778788, 33.849205, 28.508186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119356, -0.163560, -0.979286,
		-0.942856, -0.327720, -0.060180,
		-0.311088, 0.930509, -0.193329,
		29.685461, 34.128357, 28.450188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360863, 33.410164, 28.013029>,  <29.903223, 33.477001, 28.585518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360863, 33.410164, 28.013029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.482790, 33.791016, 28.022331>,  <29.555946, 34.019527, 28.027912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.482790, 33.791016, 28.022331>,  <29.360863, 33.410164, 28.013029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.482790, 33.791016, 28.022331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108371, -0.010414, -0.994056,
		-0.946226, 0.305524, -0.106357,
		0.304816, 0.952127, 0.023256,
		29.574234, 34.076653, 28.029308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.941425, 33.743778, 27.475807>,  <29.360863, 33.410164, 28.013029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.941425, 33.743778, 27.475807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.275349, 33.955727, 27.535576>,  <29.475702, 34.082897, 27.571438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.275349, 33.955727, 27.535576>,  <28.941425, 33.743778, 27.475807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275349, 33.955727, 27.535576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207099, -0.050774, -0.977001,
		-0.510101, 0.846555, -0.152123,
		0.834810, 0.529874, 0.149421,
		29.525791, 34.114689, 27.580402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959774, 34.286335, 26.935833>,  <28.941425, 33.743778, 27.475807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959774, 34.286335, 26.935833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.336063, 34.251526, 27.066963>,  <29.561836, 34.230640, 27.145641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.336063, 34.251526, 27.066963>,  <28.959774, 34.286335, 26.935833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336063, 34.251526, 27.066963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337200, 0.135663, -0.931607,
		0.036598, 0.986926, 0.156965,
		0.940721, -0.087024, 0.327826,
		29.618280, 34.225418, 27.165312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.329300, 34.871765, 26.674904>,  <28.959774, 34.286335, 26.935833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.329300, 34.871765, 26.674904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.629536, 34.620834, 26.757921>,  <29.809677, 34.470276, 26.807732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.629536, 34.620834, 26.757921>,  <29.329300, 34.871765, 26.674904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.629536, 34.620834, 26.757921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487029, 0.312963, -0.815387,
		0.446560, 0.713102, 0.540434,
		0.750591, -0.627327, 0.207545,
		29.854713, 34.432636, 26.820185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.451443, 33.320583, 47.648510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.133476, 33.100391, 47.546474>,  <37.942696, 32.968277, 47.485252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.133476, 33.100391, 47.546474>,  <38.451443, 33.320583, 47.648510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133476, 33.100391, 47.546474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005199, -0.426612, 0.904419,
		-0.606693, 0.717614, 0.341984,
		-0.794919, -0.550483, -0.255092,
		37.895000, 32.935246, 47.469948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037262, 33.312561, 48.178062>,  <38.451443, 33.320583, 47.648510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037262, 33.312561, 48.178062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.870888, 32.991787, 48.006527>,  <37.771061, 32.799324, 47.903606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.870888, 32.991787, 48.006527>,  <38.037262, 33.312561, 48.178062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870888, 32.991787, 48.006527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228157, -0.364459, 0.902837,
		-0.880307, 0.473366, -0.031375,
		-0.415938, -0.801932, -0.428838,
		37.746105, 32.751209, 47.877876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430576, 33.241867, 48.663395>,  <38.037262, 33.312561, 48.178062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430576, 33.241867, 48.663395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.502033, 32.917774, 48.440105>,  <37.544907, 32.723320, 48.306129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.502033, 32.917774, 48.440105>,  <37.430576, 33.241867, 48.663395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502033, 32.917774, 48.440105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110346, -0.580273, 0.806912,
		-0.977707, -0.082551, -0.193067,
		0.178643, -0.810228, -0.558228,
		37.555626, 32.674706, 48.272636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816658, 32.783127, 48.748112>,  <37.430576, 33.241867, 48.663395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816658, 32.783127, 48.748112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.135216, 32.566578, 48.640282>,  <37.326351, 32.436649, 48.575584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.135216, 32.566578, 48.640282>,  <36.816658, 32.783127, 48.748112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135216, 32.566578, 48.640282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083198, -0.539580, 0.837813,
		-0.599024, -0.644804, -0.474761,
		0.796397, -0.541370, -0.269575,
		37.374134, 32.404167, 48.559410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579079, 32.072224, 48.926117>,  <36.816658, 32.783127, 48.748112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579079, 32.072224, 48.926117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.977257, 32.070896, 48.888027>,  <37.216164, 32.070099, 48.865173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.977257, 32.070896, 48.888027>,  <36.579079, 32.072224, 48.926117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977257, 32.070896, 48.888027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075042, -0.588571, 0.804955,
		-0.058720, -0.808439, -0.585644,
		0.995450, -0.003319, -0.095228,
		37.275890, 32.069901, 48.859459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716618, 31.406387, 48.968418>,  <36.579079, 32.072224, 48.926117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716618, 31.406387, 48.968418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.041702, 31.618484, 49.065041>,  <37.236752, 31.745743, 49.123013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.041702, 31.618484, 49.065041>,  <36.716618, 31.406387, 48.968418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041702, 31.618484, 49.065041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047109, -0.473004, 0.879800,
		0.580764, -0.703641, -0.409393,
		0.812708, 0.530243, 0.241556,
		37.285515, 31.777557, 49.137508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172211, 30.971727, 49.389179>,  <36.716618, 31.406387, 48.968418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172211, 30.971727, 49.389179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.341492, 31.328690, 49.451801>,  <37.443062, 31.542868, 49.489376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.341492, 31.328690, 49.451801>,  <37.172211, 30.971727, 49.389179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341492, 31.328690, 49.451801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328956, -0.312347, 0.891194,
		0.844208, -0.325656, -0.425748,
		0.423204, 0.892406, 0.156560,
		37.468452, 31.596411, 49.498768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833263, 30.814318, 49.612686>,  <37.172211, 30.971727, 49.389179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833263, 30.814318, 49.612686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.735561, 31.177103, 49.749947>,  <37.676941, 31.394775, 49.832302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.735561, 31.177103, 49.749947>,  <37.833263, 30.814318, 49.612686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735561, 31.177103, 49.749947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161110, -0.310994, 0.936657,
		0.956233, 0.284070, -0.070158,
		-0.244258, 0.906966, 0.343150,
		37.662285, 31.449192, 49.852890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237652, 31.013594, 50.149956>,  <37.833263, 30.814318, 49.612686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.237652, 31.013594, 50.149956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.924911, 31.256580, 50.206085>,  <37.737267, 31.402372, 50.239765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.924911, 31.256580, 50.206085>,  <38.237652, 31.013594, 50.149956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924911, 31.256580, 50.206085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033186, -0.265307, 0.963593,
		0.622581, 0.748729, 0.227591,
		-0.781851, 0.607467, 0.140328,
		37.690357, 31.438820, 50.248184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486725, 31.311489, 50.775467>,  <38.237652, 31.013594, 50.149956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486725, 31.311489, 50.775467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.095135, 31.376448, 50.726093>,  <37.860180, 31.415422, 50.696468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.095135, 31.376448, 50.726093>,  <38.486725, 31.311489, 50.775467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095135, 31.376448, 50.726093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149319, -0.158243, 0.976045,
		0.138974, 0.973954, 0.179165,
		-0.978974, 0.162397, -0.123438,
		37.801441, 31.425167, 50.689060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217522, 31.772512, 51.432213>,  <38.486725, 31.311489, 50.775467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217522, 31.772512, 51.432213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.897778, 31.599102, 51.265804>,  <37.705929, 31.495056, 51.165958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.897778, 31.599102, 51.265804>,  <38.217522, 31.772512, 51.432213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897778, 31.599102, 51.265804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281481, -0.341514, 0.896736,
		-0.530834, 0.833921, 0.150966,
		-0.799365, -0.433524, -0.416021,
		37.657967, 31.469046, 51.140999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753719, 32.055435, 51.799953>,  <38.217522, 31.772512, 51.432213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753719, 32.055435, 51.799953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.566395, 31.739820, 51.640907>,  <37.454002, 31.550451, 51.545479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.566395, 31.739820, 51.640907>,  <37.753719, 32.055435, 51.799953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566395, 31.739820, 51.640907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343090, -0.252314, 0.904780,
		-0.814233, 0.560136, -0.152550,
		-0.468309, -0.789040, -0.397620,
		37.425903, 31.503109, 51.521622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039253, 32.150314, 51.954762>,  <37.753719, 32.055435, 51.799953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039253, 32.150314, 51.954762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.131653, 31.762566, 51.921394>,  <37.187092, 31.529917, 51.901375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.131653, 31.762566, 51.921394>,  <37.039253, 32.150314, 51.954762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131653, 31.762566, 51.921394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428966, -0.178426, 0.885524,
		-0.873285, -0.168773, -0.457044,
		0.231001, -0.969371, -0.083418,
		37.200954, 31.471754, 51.896370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406326, 31.883301, 52.084789>,  <37.039253, 32.150314, 51.954762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406326, 31.883301, 52.084789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.691147, 31.611601, 52.155891>,  <36.862038, 31.448580, 52.198555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.691147, 31.611601, 52.155891>,  <36.406326, 31.883301, 52.084789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691147, 31.611601, 52.155891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327806, -0.097725, 0.939677,
		-0.620907, -0.727369, -0.292248,
		0.712052, -0.679252, 0.177758,
		36.904762, 31.407825, 52.209217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984776, 32.543095, 51.935204>,  <36.406326, 31.883301, 52.084789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984776, 32.543095, 51.935204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.608440, 32.596561, 52.059757>,  <35.382641, 32.628639, 52.134491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.608440, 32.596561, 52.059757>,  <35.984776, 32.543095, 51.935204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608440, 32.596561, 52.059757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232723, 0.413061, -0.880466,
		-0.246309, -0.900841, -0.357515,
		-0.940835, 0.133665, 0.311387,
		35.326191, 32.636662, 52.153172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672234, 32.479511, 51.328449>,  <35.984776, 32.543095, 51.935204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672234, 32.479511, 51.328449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.408165, 32.650810, 51.575279>,  <35.249725, 32.753590, 51.723377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.408165, 32.650810, 51.575279>,  <35.672234, 32.479511, 51.328449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408165, 32.650810, 51.575279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336413, 0.565953, -0.752678,
		-0.671567, -0.704487, -0.229557,
		-0.660170, 0.428247, 0.617074,
		35.210114, 32.779285, 51.760403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094978, 32.379566, 51.036804>,  <35.672234, 32.479511, 51.328449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094978, 32.379566, 51.036804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.024353, 32.712162, 51.247498>,  <34.981979, 32.911720, 51.373913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.024353, 32.712162, 51.247498>,  <35.094978, 32.379566, 51.036804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024353, 32.712162, 51.247498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332022, 0.453461, -0.827124,
		-0.926599, -0.320927, 0.196009,
		-0.176564, 0.831492, 0.526731,
		34.971382, 32.961609, 51.405518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375702, 32.593842, 50.902210>,  <35.094978, 32.379566, 51.036804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375702, 32.593842, 50.902210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.576290, 32.920578, 51.016258>,  <34.696644, 33.116619, 51.084686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.576290, 32.920578, 51.016258>,  <34.375702, 32.593842, 50.902210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.576290, 32.920578, 51.016258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430072, 0.521303, -0.737076,
		-0.750708, 0.247004, 0.612721,
		0.501474, 0.816843, 0.285117,
		34.726734, 33.165630, 51.101791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885136, 33.154816, 50.865833>,  <34.375702, 32.593842, 50.902210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885136, 33.154816, 50.865833> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.249428, 33.316498, 50.831924>,  <34.468002, 33.413506, 50.811581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.249428, 33.316498, 50.831924>,  <33.885136, 33.154816, 50.865833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249428, 33.316498, 50.831924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328718, 0.585194, -0.741278,
		-0.250021, 0.702971, 0.665824,
		0.910733, 0.404203, -0.084769,
		34.522648, 33.437759, 50.806492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807907, 33.821815, 50.859314>,  <33.885136, 33.154816, 50.865833>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807907, 33.821815, 50.859314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.170856, 33.782307, 50.695892>,  <34.388626, 33.758602, 50.597839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.170856, 33.782307, 50.695892>,  <33.807907, 33.821815, 50.859314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170856, 33.782307, 50.695892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303286, 0.519122, -0.799080,
		0.291014, 0.848974, 0.441083,
		0.907374, -0.098769, -0.408554,
		34.443069, 33.752674, 50.573326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977615, 34.480816, 50.683201>,  <33.807907, 33.821815, 50.859314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977615, 34.480816, 50.683201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.213055, 34.257294, 50.449520>,  <34.354317, 34.123180, 50.309311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.213055, 34.257294, 50.449520>,  <33.977615, 34.480816, 50.683201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213055, 34.257294, 50.449520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372666, 0.453735, -0.809472,
		0.717409, 0.694165, 0.058820,
		0.588596, -0.558802, -0.584205,
		34.389633, 34.089653, 50.274258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962784, 34.975197, 50.073608>,  <33.977615, 34.480816, 50.683201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962784, 34.975197, 50.073608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.097393, 34.620659, 49.946392>,  <34.178158, 34.407936, 49.870064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.097393, 34.620659, 49.946392>,  <33.962784, 34.975197, 50.073608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097393, 34.620659, 49.946392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250628, 0.241249, -0.937541,
		0.907709, 0.395215, -0.140956,
		0.336525, -0.886343, -0.318036,
		34.198349, 34.354755, 49.850983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262844, 35.058044, 49.375526>,  <33.962784, 34.975197, 50.073608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262844, 35.058044, 49.375526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.171371, 34.668831, 49.387531>,  <34.116489, 34.435303, 49.394733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.171371, 34.668831, 49.387531>,  <34.262844, 35.058044, 49.375526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171371, 34.668831, 49.387531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057304, -0.017321, -0.998206,
		0.971813, -0.229991, -0.051798,
		-0.228681, -0.973038, 0.030013,
		34.102768, 34.376919, 49.396534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785023, 34.733639, 49.087845>,  <34.262844, 35.058044, 49.375526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785023, 34.733639, 49.087845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.456917, 34.507248, 49.054783>,  <34.260052, 34.371414, 49.034946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.456917, 34.507248, 49.054783>,  <34.785023, 34.733639, 49.087845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456917, 34.507248, 49.054783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074701, 0.037259, -0.996510,
		0.567081, -0.823579, 0.011717,
		-0.820268, -0.565977, -0.082651,
		34.210835, 34.337456, 49.029987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895027, 34.393513, 48.478046>,  <34.785023, 34.733639, 49.087845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895027, 34.393513, 48.478046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.516483, 34.268471, 48.510738>,  <34.289356, 34.193447, 48.530354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.516483, 34.268471, 48.510738>,  <34.895027, 34.393513, 48.478046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.516483, 34.268471, 48.510738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161054, 0.237078, -0.958048,
		0.280112, -0.919822, -0.274707,
		-0.946361, -0.312604, 0.081733,
		34.232574, 34.174690, 48.535259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712914, 33.856213, 47.981701>,  <34.895027, 34.393513, 48.478046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712914, 33.856213, 47.981701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.401287, 34.081669, 48.091511>,  <34.214310, 34.216942, 48.157398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.401287, 34.081669, 48.091511>,  <34.712914, 33.856213, 47.981701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401287, 34.081669, 48.091511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122550, 0.292526, -0.948372,
		-0.614848, -0.772488, -0.158823,
		-0.779066, 0.563641, 0.274528,
		34.167568, 34.250763, 48.173870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296436, 33.725468, 47.434547>,  <34.712914, 33.856213, 47.981701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296436, 33.725468, 47.434547> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.142311, 34.051018, 47.608509>,  <34.049835, 34.246349, 47.712887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.142311, 34.051018, 47.608509>,  <34.296436, 33.725468, 47.434547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142311, 34.051018, 47.608509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265877, 0.353391, -0.896897,
		-0.883652, -0.461220, 0.080223,
		-0.385316, 0.813874, 0.434903,
		34.026714, 34.295181, 47.738979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670853, 33.797703, 47.195011>,  <34.296436, 33.725468, 47.434547>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670853, 33.797703, 47.195011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.757092, 34.168427, 47.317997>,  <33.808834, 34.390862, 47.391788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.757092, 34.168427, 47.317997>,  <33.670853, 33.797703, 47.195011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757092, 34.168427, 47.317997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087086, 0.331867, -0.939298,
		-0.972592, 0.175731, 0.152261,
		0.215594, 0.926813, 0.307468,
		33.821770, 34.446472, 47.410236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036701, 33.509735, 47.543228>,  <33.670853, 33.797703, 47.195011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036701, 33.509735, 47.543228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.706566, 33.308411, 47.440865>,  <32.508484, 33.187614, 47.379448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.706566, 33.308411, 47.440865>,  <33.036701, 33.509735, 47.543228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706566, 33.308411, 47.440865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055179, -0.522954, 0.850573,
		-0.561936, 0.687890, 0.459386,
		-0.825338, -0.503316, -0.255910,
		32.458965, 33.157417, 47.364090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571083, 33.521824, 48.125637>,  <33.036701, 33.509735, 47.543228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571083, 33.521824, 48.125637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.475704, 33.214165, 47.888466>,  <32.418476, 33.029572, 47.746162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.475704, 33.214165, 47.888466>,  <32.571083, 33.521824, 48.125637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475704, 33.214165, 47.888466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032444, -0.603885, 0.796411,
		-0.970613, 0.209140, 0.119041,
		-0.238449, -0.769145, -0.592924,
		32.404171, 32.983421, 47.710590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142673, 33.112007, 48.509708>,  <32.571083, 33.521824, 48.125637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142673, 33.112007, 48.509708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.282650, 32.859818, 48.232571>,  <32.366638, 32.708504, 48.066288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.282650, 32.859818, 48.232571>,  <32.142673, 33.112007, 48.509708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282650, 32.859818, 48.232571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028729, -0.746490, 0.664776,
		-0.936330, -0.212730, -0.279343,
		0.349945, -0.630475, -0.692849,
		32.387634, 32.670673, 48.024715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697786, 32.436066, 48.609966>,  <32.142673, 33.112007, 48.509708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697786, 32.436066, 48.609966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.027306, 32.317822, 48.416485>,  <32.225018, 32.246876, 48.300396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.027306, 32.317822, 48.416485>,  <31.697786, 32.436066, 48.609966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027306, 32.317822, 48.416485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037115, -0.823310, 0.566377,
		-0.565666, -0.484533, -0.667270,
		0.823799, -0.295614, -0.483702,
		32.274445, 32.229137, 48.271374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556324, 31.708454, 48.505474>,  <31.697786, 32.436066, 48.609966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556324, 31.708454, 48.505474> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.950708, 31.724838, 48.440731>,  <32.187340, 31.734669, 48.401886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.950708, 31.724838, 48.440731>,  <31.556324, 31.708454, 48.505474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.950708, 31.724838, 48.440731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125517, -0.821113, 0.556793,
		-0.110100, -0.569294, -0.814729,
		0.985963, 0.040959, -0.161861,
		32.246498, 31.737125, 48.392174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790405, 30.964544, 48.331635>,  <31.556324, 31.708454, 48.505474>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790405, 30.964544, 48.331635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.106159, 31.180246, 48.448986>,  <32.295612, 31.309668, 48.519398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.106159, 31.180246, 48.448986>,  <31.790405, 30.964544, 48.331635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106159, 31.180246, 48.448986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233416, -0.705652, 0.669009,
		0.567789, -0.459628, -0.682904,
		0.789387, 0.539257, 0.293377,
		32.342976, 31.342024, 48.536999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253223, 30.447283, 48.424850>,  <31.790405, 30.964544, 48.331635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253223, 30.447283, 48.424850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.378643, 30.763123, 48.635838>,  <32.453896, 30.952625, 48.762428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.378643, 30.763123, 48.635838>,  <32.253223, 30.447283, 48.424850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378643, 30.763123, 48.635838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284146, -0.608046, 0.741311,
		0.906062, -0.082560, -0.415013,
		0.313549, 0.789598, 0.527468,
		32.472706, 31.000002, 48.794079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894329, 30.053354, 48.392223>,  <32.253223, 30.447283, 48.424850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894329, 30.053354, 48.392223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.759541, 29.699717, 48.262714>,  <32.678665, 29.487534, 48.185009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.759541, 29.699717, 48.262714>,  <32.894329, 30.053354, 48.392223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759541, 29.699717, 48.262714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369638, 0.440498, -0.818125,
		0.865919, -0.156010, -0.475232,
		-0.336974, -0.884094, -0.323769,
		32.658447, 29.434488, 48.165585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046604, 29.907991, 47.629230>,  <32.894329, 30.053354, 48.392223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046604, 29.907991, 47.629230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.718956, 29.704359, 47.734966>,  <32.522366, 29.582180, 47.798409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.718956, 29.704359, 47.734966>,  <33.046604, 29.907991, 47.629230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718956, 29.704359, 47.734966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462954, 0.314620, -0.828666,
		0.338696, -0.801153, -0.493395,
		-0.819121, -0.509085, 0.264336,
		32.473221, 29.551634, 47.814266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886105, 29.356098, 47.105675>,  <33.046604, 29.907991, 47.629230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886105, 29.356098, 47.105675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.551956, 29.448202, 47.305328>,  <32.351467, 29.503464, 47.425121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.551956, 29.448202, 47.305328>,  <32.886105, 29.356098, 47.105675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551956, 29.448202, 47.305328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461980, 0.197969, -0.864513,
		-0.297876, -0.952780, -0.059002,
		-0.835371, 0.230259, 0.499136,
		32.301346, 29.517281, 47.455070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298512, 29.129637, 46.656345>,  <32.886105, 29.356098, 47.105675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298512, 29.129637, 46.656345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.148239, 29.396118, 46.914040>,  <32.058075, 29.556007, 47.068657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.148239, 29.396118, 46.914040>,  <32.298512, 29.129637, 46.656345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148239, 29.396118, 46.914040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535856, 0.411016, -0.737512,
		-0.756123, -0.622287, 0.202577,
		-0.375682, 0.666202, 0.644235,
		32.035534, 29.595980, 47.107311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537960, 29.071808, 46.419971>,  <32.298512, 29.129637, 46.656345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537960, 29.071808, 46.419971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.608982, 29.408733, 46.623531>,  <31.651596, 29.610889, 46.745667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.608982, 29.408733, 46.623531>,  <31.537960, 29.071808, 46.419971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.608982, 29.408733, 46.623531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476336, 0.526063, -0.704529,
		-0.861149, -0.117315, 0.494630,
		0.177555, 0.842315, 0.508901,
		31.662249, 29.661428, 46.776203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.882391, 29.459896, 46.365524>,  <31.537960, 29.071808, 46.419971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.882391, 29.459896, 46.365524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.167799, 29.730709, 46.437660>,  <31.339043, 29.893196, 46.480942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.167799, 29.730709, 46.437660>,  <30.882391, 29.459896, 46.365524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167799, 29.730709, 46.437660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319509, 0.543488, -0.776231,
		-0.623543, 0.496236, 0.604106,
		0.713518, 0.677031, 0.180337,
		31.381855, 29.933819, 46.491760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548759, 30.125738, 46.220795>,  <30.882391, 29.459896, 46.365524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548759, 30.125738, 46.220795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.943563, 30.187311, 46.202385>,  <31.180447, 30.224255, 46.191341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.943563, 30.187311, 46.202385>,  <30.548759, 30.125738, 46.220795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943563, 30.187311, 46.202385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135984, 0.647848, -0.749534,
		-0.085561, 0.746055, 0.660364,
		0.987009, 0.153930, -0.046021,
		31.239666, 30.233490, 46.188580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.246021, 28.208429, 50.397907> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.107716, 28.539892, 50.573986>,  <37.024731, 28.738770, 50.679634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.107716, 28.539892, 50.573986>,  <37.246021, 28.208429, 50.397907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107716, 28.539892, 50.573986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062716, 0.447670, -0.891997,
		-0.936223, -0.336029, -0.102818,
		-0.345766, 0.828659, 0.440193,
		37.003986, 28.788490, 50.706043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586777, 28.403618, 50.203552>,  <37.246021, 28.208429, 50.397907>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586777, 28.403618, 50.203552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.805126, 28.733391, 50.263329>,  <36.936134, 28.931255, 50.299194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.805126, 28.733391, 50.263329>,  <36.586777, 28.403618, 50.203552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805126, 28.733391, 50.263329> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289939, 0.353207, -0.889483,
		-0.786102, 0.442217, 0.431842,
		0.545874, 0.824432, 0.149440,
		36.968887, 28.980721, 50.308159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152378, 28.967371, 50.026051>,  <36.586777, 28.403618, 50.203552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152378, 28.967371, 50.026051> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.523460, 29.116209, 50.013947>,  <36.746109, 29.205511, 50.006683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.523460, 29.116209, 50.013947>,  <36.152378, 28.967371, 50.026051>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523460, 29.116209, 50.013947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180140, 0.375177, -0.909281,
		-0.326984, 0.848993, 0.415081,
		0.927702, 0.372093, -0.030260,
		36.801769, 29.227837, 50.004868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050343, 29.598209, 49.851818>,  <36.152378, 28.967371, 50.026051>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050343, 29.598209, 49.851818> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.413834, 29.489710, 49.724926>,  <36.631927, 29.424610, 49.648792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.413834, 29.489710, 49.724926>,  <36.050343, 29.598209, 49.851818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413834, 29.489710, 49.724926> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293568, 0.124894, -0.947744,
		0.296694, 0.954372, 0.033865,
		0.908730, -0.271249, -0.317228,
		36.686451, 29.408335, 49.629757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185310, 30.114559, 49.229759>,  <36.050343, 29.598209, 49.851818>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185310, 30.114559, 49.229759> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.444424, 29.813807, 49.180676>,  <36.599892, 29.633356, 49.151226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.444424, 29.813807, 49.180676>,  <36.185310, 30.114559, 49.229759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444424, 29.813807, 49.180676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075897, 0.096584, -0.992427,
		0.758039, 0.652186, 0.005500,
		0.647779, -0.751881, -0.122714,
		36.638756, 29.588242, 49.143860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862991, 30.376930, 48.917469>,  <36.185310, 30.114559, 49.229759>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862991, 30.376930, 48.917469> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.788754, 29.997438, 48.815125>,  <36.744209, 29.769743, 48.753719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.788754, 29.997438, 48.815125>,  <36.862991, 30.376930, 48.917469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788754, 29.997438, 48.815125> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094175, 0.242013, -0.965692,
		0.978103, -0.203322, 0.044430,
		-0.185593, -0.948730, -0.255861,
		36.733074, 29.712820, 48.738365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226978, 30.308117, 48.266968>,  <36.862991, 30.376930, 48.917469>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226978, 30.308117, 48.266968> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.963848, 30.007353, 48.284401>,  <36.805969, 29.826893, 48.294861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.963848, 30.007353, 48.284401>,  <37.226978, 30.308117, 48.266968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963848, 30.007353, 48.284401> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045430, -0.018142, -0.998803,
		0.751803, -0.659013, -0.022225,
		-0.657821, -0.751913, 0.043578,
		36.766502, 29.781778, 48.297474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510452, 29.877987, 47.760777>,  <37.226978, 30.308117, 48.266968>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510452, 29.877987, 47.760777> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.136719, 29.755636, 47.833935>,  <36.912476, 29.682226, 47.877831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.136719, 29.755636, 47.833935>,  <37.510452, 29.877987, 47.760777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136719, 29.755636, 47.833935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175596, -0.051471, -0.983116,
		0.310125, -0.950679, -0.005619,
		-0.934338, -0.305875, 0.182898,
		36.856419, 29.663874, 47.888805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414455, 29.293135, 47.272598>,  <37.510452, 29.877987, 47.760777>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414455, 29.293135, 47.272598> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.072411, 29.471754, 47.377956>,  <36.867184, 29.578926, 47.441170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.072411, 29.471754, 47.377956>,  <37.414455, 29.293135, 47.272598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072411, 29.471754, 47.377956> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174295, 0.230859, -0.957249,
		-0.488266, -0.864464, -0.119580,
		-0.855113, 0.446550, 0.263392,
		36.815876, 29.605719, 47.456974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043369, 29.074192, 46.809483>,  <37.414455, 29.293135, 47.272598>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043369, 29.074192, 46.809483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.840382, 29.391603, 46.943817>,  <36.718590, 29.582050, 47.024418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.840382, 29.391603, 46.943817>,  <37.043369, 29.074192, 46.809483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840382, 29.391603, 46.943817> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293851, 0.207013, -0.933165,
		-0.810014, -0.572242, 0.128125,
		-0.507473, 0.793527, 0.335837,
		36.688141, 29.629662, 47.044567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445919, 28.994602, 46.507942>,  <37.043369, 29.074192, 46.809483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445919, 28.994602, 46.507942> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.412338, 29.376711, 46.621368>,  <36.392189, 29.605976, 46.689423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.412338, 29.376711, 46.621368>,  <36.445919, 28.994602, 46.507942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412338, 29.376711, 46.621368> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097590, 0.275320, -0.956386,
		-0.991680, -0.107960, 0.070112,
		-0.083948, 0.955271, 0.283566,
		36.387154, 29.663292, 46.706436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814533, 29.252884, 46.215702>,  <36.445919, 28.994602, 46.507942>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814533, 29.252884, 46.215702> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.056301, 29.561680, 46.294395>,  <36.201363, 29.746958, 46.341610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.056301, 29.561680, 46.294395>,  <35.814533, 29.252884, 46.215702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056301, 29.561680, 46.294395> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093556, 0.314021, -0.944795,
		-0.791152, 0.552650, 0.262025,
		0.604422, 0.771990, 0.196734,
		36.237629, 29.793278, 46.353416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069450, 29.117233, 46.220253>,  <35.814533, 29.252884, 46.215702>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069450, 29.117233, 46.220253> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.701061, 28.996334, 46.121902>,  <34.480026, 28.923794, 46.062893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.701061, 28.996334, 46.121902>,  <35.069450, 29.117233, 46.220253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701061, 28.996334, 46.121902> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033501, -0.567292, 0.822835,
		-0.388186, 0.766045, 0.512334,
		-0.920972, -0.302249, -0.245878,
		34.424770, 28.905659, 46.048138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629810, 29.188677, 46.806805>,  <35.069450, 29.117233, 46.220253>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629810, 29.188677, 46.806805> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.485279, 28.910925, 46.557877>,  <34.398560, 28.744274, 46.408520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.485279, 28.910925, 46.557877>,  <34.629810, 29.188677, 46.806805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485279, 28.910925, 46.557877> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144077, -0.617817, 0.773010,
		-0.921241, 0.368972, 0.123190,
		-0.361328, -0.694379, -0.622318,
		34.376881, 28.702612, 46.371181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189274, 28.825468, 47.192265>,  <34.629810, 29.188677, 46.806805>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189274, 28.825468, 47.192265> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.241997, 28.586033, 46.876209>,  <34.273632, 28.442371, 46.686577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.241997, 28.586033, 46.876209>,  <34.189274, 28.825468, 47.192265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241997, 28.586033, 46.876209> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012109, -0.798007, 0.602527,
		-0.991201, -0.069850, -0.112431,
		0.131807, -0.598587, -0.790139,
		34.281540, 28.406456, 46.639168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634399, 28.350975, 47.187778>,  <34.189274, 28.825468, 47.192265>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634399, 28.350975, 47.187778> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.938126, 28.188553, 46.984383>,  <34.120361, 28.091099, 46.862347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.938126, 28.188553, 46.984383>,  <33.634399, 28.350975, 47.187778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.938126, 28.188553, 46.984383> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041567, -0.810089, 0.584832,
		-0.649392, -0.422937, -0.631993,
		0.759317, -0.406055, -0.508484,
		34.165920, 28.066736, 46.831837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528240, 27.565187, 47.184204>,  <33.634399, 28.350975, 47.187778>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528240, 27.565187, 47.184204> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.910439, 27.661650, 47.116234>,  <34.139759, 27.719528, 47.075451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.910439, 27.661650, 47.116234>,  <33.528240, 27.565187, 47.184204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910439, 27.661650, 47.116234> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285876, -0.614681, 0.735148,
		0.072838, -0.751007, -0.656265,
		0.955494, 0.241157, -0.169923,
		34.197086, 27.733997, 47.065258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845978, 26.901978, 47.254238>,  <33.528240, 27.565187, 47.184204>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845978, 26.901978, 47.254238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.146931, 27.164978, 47.270317>,  <34.327503, 27.322779, 47.279964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.146931, 27.164978, 47.270317>,  <33.845978, 26.901978, 47.254238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146931, 27.164978, 47.270317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524412, -0.634787, 0.567484,
		0.398640, -0.405882, -0.822402,
		0.752382, 0.657499, 0.040202,
		34.372646, 27.362228, 47.282379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381226, 26.535095, 47.310020>,  <33.845978, 26.901978, 47.254238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381226, 26.535095, 47.310020> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.545189, 26.874891, 47.442890>,  <34.643566, 27.078768, 47.522614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.545189, 26.874891, 47.442890>,  <34.381226, 26.535095, 47.310020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545189, 26.874891, 47.442890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566913, -0.522571, 0.636812,
		0.714551, -0.072721, -0.695794,
		0.409911, 0.849489, 0.332177,
		34.668163, 27.129738, 47.542542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092690, 26.334839, 47.447582>,  <34.381226, 26.535095, 47.310020>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092690, 26.334839, 47.447582> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.031998, 26.680723, 47.639103>,  <34.995583, 26.888254, 47.754017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.031998, 26.680723, 47.639103>,  <35.092690, 26.334839, 47.447582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031998, 26.680723, 47.639103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457756, -0.367857, 0.809408,
		0.876035, 0.341986, -0.340012,
		-0.151730, 0.864712, 0.478801,
		34.986477, 26.940136, 47.782742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751041, 26.553564, 47.821815>,  <35.092690, 26.334839, 47.447582>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751041, 26.553564, 47.821815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.450275, 26.747087, 48.000950>,  <35.269817, 26.863201, 48.108429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.450275, 26.747087, 48.000950>,  <35.751041, 26.553564, 47.821815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450275, 26.747087, 48.000950> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318409, -0.328310, 0.889285,
		0.577273, 0.811260, 0.092812,
		-0.751912, 0.483808, 0.447837,
		35.224701, 26.892229, 48.135300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096786, 26.999828, 48.346931>,  <35.751041, 26.553564, 47.821815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096786, 26.999828, 48.346931> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.722355, 26.943600, 48.475929>,  <35.497696, 26.909863, 48.553329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.722355, 26.943600, 48.475929>,  <36.096786, 26.999828, 48.346931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722355, 26.943600, 48.475929> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339247, -0.118001, 0.933267,
		-0.093135, 0.983014, 0.158146,
		-0.936076, -0.140570, 0.322494,
		35.441532, 26.901428, 48.572678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037758, 27.346678, 49.063328>,  <36.096786, 26.999828, 48.346931>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037758, 27.346678, 49.063328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.717373, 27.107481, 49.051594>,  <35.525143, 26.963963, 49.044556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.717373, 27.107481, 49.051594>,  <36.037758, 27.346678, 49.063328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717373, 27.107481, 49.051594> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141378, -0.236516, 0.961287,
		-0.581781, 0.765809, 0.273983,
		-0.800964, -0.597994, -0.029332,
		35.477085, 26.928083, 49.042793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769787, 27.429926, 49.685474>,  <36.037758, 27.346678, 49.063328>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769787, 27.429926, 49.685474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.547138, 27.115242, 49.578697>,  <35.413551, 26.926432, 49.514629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.547138, 27.115242, 49.578697>,  <35.769787, 27.429926, 49.685474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547138, 27.115242, 49.578697> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107655, -0.250311, 0.962161,
		-0.823763, 0.564296, 0.054635,
		-0.556620, -0.786711, -0.266947,
		35.380154, 26.879229, 49.498611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095467, 27.615620, 50.034134>,  <35.769787, 27.429926, 49.685474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095467, 27.615620, 50.034134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.155216, 27.228447, 49.953346>,  <35.191067, 26.996143, 49.904873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.155216, 27.228447, 49.953346>,  <35.095467, 27.615620, 50.034134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155216, 27.228447, 49.953346> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050805, -0.211508, 0.976055,
		-0.987474, -0.135538, -0.080770,
		0.149376, -0.967933, -0.201973,
		35.200027, 26.938066, 49.892754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553654, 27.297651, 50.298832>,  <35.095467, 27.615620, 50.034134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553654, 27.297651, 50.298832> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.819088, 26.999538, 50.272865>,  <34.978348, 26.820671, 50.257286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.819088, 26.999538, 50.272865>,  <34.553654, 27.297651, 50.298832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819088, 26.999538, 50.272865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247102, -0.300257, 0.921296,
		-0.706116, -0.595315, -0.383406,
		0.663581, -0.745282, -0.064913,
		35.018162, 26.775953, 50.253391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003967, 26.977657, 49.782974>,  <34.553654, 27.297651, 50.298832>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003967, 26.977657, 49.782974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.674416, 27.147066, 49.933628>,  <33.476685, 27.248713, 50.024021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.674416, 27.147066, 49.933628>,  <34.003967, 26.977657, 49.782974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674416, 27.147066, 49.933628> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152665, 0.474144, -0.867111,
		-0.545823, -0.771891, -0.325978,
		-0.823876, 0.423523, 0.376639,
		33.427254, 27.274122, 50.046619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376785, 26.958662, 49.261349>,  <34.003967, 26.977657, 49.782974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376785, 26.958662, 49.261349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.293884, 27.252028, 49.520317>,  <33.244144, 27.428047, 49.675697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.293884, 27.252028, 49.520317>,  <33.376785, 26.958662, 49.261349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293884, 27.252028, 49.520317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395250, 0.542595, -0.741193,
		-0.894888, -0.409506, 0.177429,
		-0.207251, 0.733414, 0.647419,
		33.231709, 27.472052, 49.714542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654396, 27.114088, 49.063210>,  <33.376785, 26.958662, 49.261349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654396, 27.114088, 49.063210> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.794655, 27.423115, 49.274940>,  <32.878811, 27.608530, 49.401981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.794655, 27.423115, 49.274940>,  <32.654396, 27.114088, 49.063210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794655, 27.423115, 49.274940> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446634, 0.634749, -0.630564,
		-0.823145, -0.015314, 0.567625,
		0.350643, 0.772567, 0.529331,
		32.899849, 27.654884, 49.433739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.099701, 27.586058, 49.280426>,  <32.654396, 27.114088, 49.063210>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.099701, 27.586058, 49.280426> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.419228, 27.825880, 49.300114>,  <32.610943, 27.969774, 49.311928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.419228, 27.825880, 49.300114>,  <32.099701, 27.586058, 49.280426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419228, 27.825880, 49.300114> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484440, 0.689635, -0.538258,
		-0.356662, 0.406124, 0.841342,
		0.798818, 0.599556, 0.049224,
		32.658875, 28.005747, 49.314880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805294, 28.327938, 49.432487>,  <32.099701, 27.586058, 49.280426>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805294, 28.327938, 49.432487> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.178688, 28.372360, 49.296097>,  <32.402725, 28.399014, 49.214260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.178688, 28.372360, 49.296097>,  <31.805294, 28.327938, 49.432487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178688, 28.372360, 49.296097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270095, 0.843219, -0.464791,
		0.235903, 0.525974, 0.817130,
		0.933487, 0.111057, -0.340981,
		32.458733, 28.405678, 49.193802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047710, 28.990870, 49.562157>,  <31.805294, 28.327938, 49.432487>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047710, 28.990870, 49.562157> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.272518, 28.875607, 49.252033>,  <32.407402, 28.806448, 49.065960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.272518, 28.875607, 49.252033>,  <32.047710, 28.990870, 49.562157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272518, 28.875607, 49.252033> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108999, 0.903373, -0.414773,
		0.819909, 0.317619, 0.476306,
		0.562021, -0.288159, -0.775304,
		32.441124, 28.789158, 49.019444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539898, 29.497053, 49.574089>,  <32.047710, 28.990870, 49.562157>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539898, 29.497053, 49.574089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.448746, 29.317873, 49.228279>,  <32.394054, 29.210365, 49.020794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.448746, 29.317873, 49.228279>,  <32.539898, 29.497053, 49.574089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448746, 29.317873, 49.228279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383648, 0.857371, -0.343117,
		0.894921, 0.253484, -0.367237,
		-0.227883, -0.447952, -0.864527,
		32.380383, 29.183487, 48.968922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887997, 30.109642, 49.224220>,  <32.539898, 29.497053, 49.574089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887997, 30.109642, 49.224220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.764828, 30.476358, 49.325951>,  <32.690926, 30.696388, 49.386990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.764828, 30.476358, 49.325951>,  <32.887997, 30.109642, 49.224220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764828, 30.476358, 49.325951> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448524, -0.095869, 0.888614,
		0.839054, 0.387694, -0.381682,
		-0.307919, 0.916789, 0.254329,
		32.672451, 30.751394, 49.402248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494457, 30.483868, 49.443668>,  <32.887997, 30.109642, 49.224220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494457, 30.483868, 49.443668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.165688, 30.633093, 49.615837>,  <32.968426, 30.722628, 49.719139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.165688, 30.633093, 49.615837>,  <33.494457, 30.483868, 49.443668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165688, 30.633093, 49.615837> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399974, -0.160001, 0.902452,
		0.405539, 0.913906, -0.017707,
		-0.821924, 0.373062, 0.430425,
		32.919109, 30.745012, 49.744965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769802, 30.917988, 49.979485>,  <33.494457, 30.483868, 49.443668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769802, 30.917988, 49.979485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.385700, 30.890602, 50.087730>,  <33.155239, 30.874170, 50.152676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.385700, 30.890602, 50.087730>,  <33.769802, 30.917988, 49.979485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385700, 30.890602, 50.087730> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278378, -0.163400, 0.946471,
		-0.020584, 0.984181, 0.175964,
		-0.960251, -0.068466, 0.270611,
		33.097626, 30.870062, 50.168915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650650, 31.497705, 50.449146>,  <33.769802, 30.917988, 49.979485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650650, 31.497705, 50.449146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.386799, 31.201431, 50.500191>,  <33.228489, 31.023666, 50.530815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.386799, 31.201431, 50.500191>,  <33.650650, 31.497705, 50.449146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.386799, 31.201431, 50.500191> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234869, -0.041856, 0.971126,
		-0.713956, 0.670549, 0.201572,
		-0.659624, -0.740684, 0.127608,
		33.188911, 30.979227, 50.538471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270660, 31.676960, 51.126553>,  <33.650650, 31.497705, 50.449146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270660, 31.676960, 51.126553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.178566, 31.291380, 51.073200>,  <33.123310, 31.060032, 51.041187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.178566, 31.291380, 51.073200>,  <33.270660, 31.676960, 51.126553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178566, 31.291380, 51.073200> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021079, -0.132090, 0.991014,
		-0.972907, 0.230978, 0.010093,
		-0.230236, -0.963951, -0.133380,
		33.109497, 31.002195, 51.033188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802269, 31.575773, 51.734291>,  <33.270660, 31.676960, 51.126553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802269, 31.575773, 51.734291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.896412, 31.213289, 51.593781>,  <32.952896, 30.995800, 51.509476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.896412, 31.213289, 51.593781>,  <32.802269, 31.575773, 51.734291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896412, 31.213289, 51.593781> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072791, -0.343977, 0.936153,
		-0.969180, -0.245896, -0.014992,
		0.235353, -0.906209, -0.351275,
		32.967018, 30.941427, 51.488400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362606, 31.055595, 52.022793>,  <32.802269, 31.575773, 51.734291>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362606, 31.055595, 52.022793> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.700565, 30.873159, 51.910984>,  <32.903339, 30.763699, 51.843899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.700565, 30.873159, 51.910984>,  <32.362606, 31.055595, 52.022793>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700565, 30.873159, 51.910984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154750, -0.291796, 0.943879,
		-0.512056, -0.840736, -0.175958,
		0.844897, -0.456090, -0.279520,
		32.954033, 30.736332, 51.827129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373806, 30.462603, 52.376812>,  <32.362606, 31.055595, 52.022793>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373806, 30.462603, 52.376812> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.754189, 30.512056, 52.263397>,  <32.982418, 30.541729, 52.195347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.754189, 30.512056, 52.263397>,  <32.373806, 30.462603, 52.376812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754189, 30.512056, 52.263397> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300254, -0.148634, 0.942208,
		0.074347, -0.981133, -0.178467,
		0.950957, 0.123636, -0.283539,
		33.039474, 30.549147, 52.178337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876068, 30.088186, 52.825745>,  <32.373806, 30.462603, 52.376812>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876068, 30.088186, 52.825745> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.142361, 30.329109, 52.649548>,  <33.302135, 30.473663, 52.543831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.142361, 30.329109, 52.649548>,  <32.876068, 30.088186, 52.825745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142361, 30.329109, 52.649548> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409544, 0.198532, 0.890426,
		0.623761, -0.773182, -0.114503,
		0.665729, 0.602307, -0.440489,
		33.342079, 30.509802, 52.517403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.783573, 35.123413, 37.586628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082050, 35.200096, 37.841640>,  <35.261135, 35.246105, 37.994648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.082050, 35.200096, 37.841640>,  <34.783573, 35.123413, 37.586628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082050, 35.200096, 37.841640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655506, 0.044400, 0.753884,
		0.116217, -0.980448, 0.158794,
		0.746194, 0.191704, 0.637529,
		35.305908, 35.257607, 38.032898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684109, 34.723557, 38.178108>,  <34.783573, 35.123413, 37.586628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684109, 34.723557, 38.178108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903419, 35.048538, 38.257416>,  <35.035007, 35.243526, 38.305000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903419, 35.048538, 38.257416>,  <34.684109, 34.723557, 38.178108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903419, 35.048538, 38.257416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419046, 0.061722, 0.905864,
		0.723734, -0.579751, 0.374296,
		0.548278, 0.812452, 0.198273,
		35.067902, 35.292274, 38.316898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974144, 34.520840, 38.825371>,  <34.684109, 34.723557, 38.178108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974144, 34.520840, 38.825371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980965, 34.916077, 38.764214>,  <34.985058, 35.153221, 38.727520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980965, 34.916077, 38.764214>,  <34.974144, 34.520840, 38.825371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980965, 34.916077, 38.764214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323665, 0.150142, 0.934183,
		0.946018, 0.033554, 0.322373,
		0.017056, 0.988095, -0.152898,
		34.986080, 35.212505, 38.718346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234436, 34.658627, 39.406792>,  <34.974144, 34.520840, 38.825371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234436, 34.658627, 39.406792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055931, 34.970592, 39.231255>,  <34.948830, 35.157772, 39.125931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055931, 34.970592, 39.231255>,  <35.234436, 34.658627, 39.406792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055931, 34.970592, 39.231255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624821, 0.079519, 0.776708,
		0.640663, 0.620814, 0.451821,
		-0.446263, 0.779915, -0.438842,
		34.922050, 35.204567, 39.099602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101166, 35.078117, 39.988655>,  <35.234436, 34.658627, 39.406792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101166, 35.078117, 39.988655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836853, 35.175518, 39.704662>,  <34.678265, 35.233959, 39.534267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836853, 35.175518, 39.704662>,  <35.101166, 35.078117, 39.988655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836853, 35.175518, 39.704662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733656, -0.009799, 0.679450,
		0.158491, 0.969851, 0.185122,
		-0.660779, 0.243502, -0.709984,
		34.638618, 35.248569, 39.491669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813534, 35.700481, 40.202049>,  <35.101166, 35.078117, 39.988655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813534, 35.700481, 40.202049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566460, 35.528343, 39.938759>,  <34.418213, 35.425060, 39.780785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566460, 35.528343, 39.938759>,  <34.813534, 35.700481, 40.202049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566460, 35.528343, 39.938759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741181, 0.038763, 0.670186,
		-0.262895, 0.901832, -0.342907,
		-0.617687, -0.430344, -0.658230,
		34.381153, 35.399239, 39.741291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118931, 35.946766, 40.386406>,  <34.813534, 35.700481, 40.202049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118931, 35.946766, 40.386406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019962, 35.642181, 40.146751>,  <33.960579, 35.459431, 40.002960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019962, 35.642181, 40.146751>,  <34.118931, 35.946766, 40.386406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019962, 35.642181, 40.146751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678174, -0.305532, 0.668379,
		-0.691998, 0.571689, -0.440807,
		-0.247424, -0.761461, -0.599132,
		33.945736, 35.413742, 39.967010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384441, 35.999641, 40.209118>,  <34.118931, 35.946766, 40.386406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384441, 35.999641, 40.209118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479195, 35.611362, 40.192966>,  <33.536045, 35.378395, 40.183277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479195, 35.611362, 40.192966>,  <33.384441, 35.999641, 40.209118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479195, 35.611362, 40.192966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656849, -0.190639, 0.729524,
		-0.715847, -0.146286, -0.682762,
		0.236880, -0.970699, -0.040380,
		33.550259, 35.320152, 40.180851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820290, 35.636032, 40.394318>,  <33.384441, 35.999641, 40.209118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820290, 35.636032, 40.394318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075500, 35.330635, 40.434326>,  <33.228626, 35.147396, 40.458332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075500, 35.330635, 40.434326>,  <32.820290, 35.636032, 40.394318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075500, 35.330635, 40.434326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550691, -0.361638, 0.752301,
		-0.538204, -0.535068, -0.651182,
		0.638024, -0.763492, 0.100023,
		33.266907, 35.101589, 40.464333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494621, 35.035355, 40.251369>,  <32.820290, 35.636032, 40.394318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494621, 35.035355, 40.251369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792377, 34.896893, 40.479778>,  <32.971031, 34.813816, 40.616825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792377, 34.896893, 40.479778>,  <32.494621, 35.035355, 40.251369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792377, 34.896893, 40.479778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666881, -0.341806, 0.662147,
		-0.034024, -0.873698, -0.485277,
		0.744387, -0.346151, 0.571023,
		33.015694, 34.793049, 40.651085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263477, 34.519665, 40.502659>,  <32.494621, 35.035355, 40.251369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263477, 34.519665, 40.502659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574924, 34.559475, 40.750481>,  <32.761795, 34.583363, 40.899174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.574924, 34.559475, 40.750481>,  <32.263477, 34.519665, 40.502659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574924, 34.559475, 40.750481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546650, -0.377195, 0.747594,
		0.308098, -0.920770, -0.239286,
		0.778620, 0.099527, 0.619552,
		32.808510, 34.589333, 40.936348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274731, 33.948318, 40.897858>,  <32.263477, 34.519665, 40.502659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274731, 33.948318, 40.897858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509499, 34.195766, 41.106792>,  <32.650360, 34.344234, 41.232151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509499, 34.195766, 41.106792>,  <32.274731, 33.948318, 40.897858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509499, 34.195766, 41.106792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381854, -0.357380, 0.852330,
		0.713940, -0.699706, 0.026469,
		0.586921, 0.618620, 0.522334,
		32.685574, 34.381351, 41.263493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507931, 33.226486, 41.072102>,  <32.274731, 33.948318, 40.897858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507931, 33.226486, 41.072102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239368, 32.965454, 40.931614>,  <32.078232, 32.808834, 40.847321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239368, 32.965454, 40.931614>,  <32.507931, 33.226486, 41.072102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239368, 32.965454, 40.931614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299220, 0.194861, -0.934075,
		0.678002, -0.732231, 0.064436,
		-0.671403, -0.652585, -0.351215,
		32.037949, 32.769680, 40.826248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811569, 32.954086, 40.602348>,  <32.507931, 33.226486, 41.072102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811569, 32.954086, 40.602348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.432129, 32.859039, 40.518734>,  <32.204464, 32.802010, 40.468567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.432129, 32.859039, 40.518734>,  <32.811569, 32.954086, 40.602348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.432129, 32.859039, 40.518734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098716, 0.405385, -0.908800,
		0.300685, -0.882724, -0.361092,
		-0.948601, -0.237617, -0.209032,
		32.147549, 32.787754, 40.456024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818932, 32.774887, 39.906555>,  <32.811569, 32.954086, 40.602348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818932, 32.774887, 39.906555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433403, 32.862499, 39.967319>,  <32.202087, 32.915066, 40.003780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433403, 32.862499, 39.967319>,  <32.818932, 32.774887, 39.906555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433403, 32.862499, 39.967319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075725, 0.321449, -0.943894,
		-0.255572, -0.921248, -0.293233,
		-0.963820, 0.219028, 0.151914,
		32.144257, 32.928207, 40.012894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.439392, 32.644928, 39.273380>,  <32.818932, 32.774887, 39.906555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.439392, 32.644928, 39.273380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186279, 32.897076, 39.453255>,  <32.034412, 33.048363, 39.561180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186279, 32.897076, 39.453255>,  <32.439392, 32.644928, 39.273380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186279, 32.897076, 39.453255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213527, 0.416175, -0.883858,
		-0.744306, -0.655311, -0.128748,
		-0.632784, 0.630370, 0.449688,
		31.996445, 33.086185, 39.588161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733585, 32.553734, 39.045242>,  <32.439392, 32.644928, 39.273380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733585, 32.553734, 39.045242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732018, 32.926739, 39.189686>,  <31.731077, 33.150543, 39.276352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.732018, 32.926739, 39.189686>,  <31.733585, 32.553734, 39.045242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732018, 32.926739, 39.189686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482399, 0.314550, -0.817526,
		-0.875943, -0.177402, 0.448612,
		-0.003920, 0.932516, 0.361106,
		31.730841, 33.206493, 39.298019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188251, 32.744694, 38.753353>,  <31.733585, 32.553734, 39.045242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188251, 32.744694, 38.753353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384466, 33.075394, 38.863522>,  <31.502195, 33.273815, 38.929623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.384466, 33.075394, 38.863522>,  <31.188251, 32.744694, 38.753353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384466, 33.075394, 38.863522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356520, 0.478803, -0.802273,
		-0.795154, 0.295348, 0.529623,
		0.490535, 0.826751, 0.275424,
		31.531626, 33.323418, 38.946148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682377, 33.290581, 38.745857>,  <31.188251, 32.744694, 38.753353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682377, 33.290581, 38.745857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039017, 33.471695, 38.743427>,  <31.253000, 33.580364, 38.741970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.039017, 33.471695, 38.743427>,  <30.682377, 33.290581, 38.745857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039017, 33.471695, 38.743427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260438, 0.501776, -0.824859,
		-0.370439, 0.737024, 0.565306,
		0.891598, 0.452787, -0.006072,
		31.306496, 33.607533, 38.741608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467348, 33.914989, 38.693233>,  <30.682377, 33.290581, 38.745857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467348, 33.914989, 38.693233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851353, 33.903866, 38.581802>,  <31.081755, 33.897190, 38.514942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851353, 33.903866, 38.581802>,  <30.467348, 33.914989, 38.693233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851353, 33.903866, 38.581802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243789, 0.406202, -0.880663,
		0.137651, 0.913360, 0.383179,
		0.960010, -0.027809, -0.278582,
		31.139355, 33.895523, 38.498226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505814, 34.514103, 38.381100>,  <30.467348, 33.914989, 38.693233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505814, 34.514103, 38.381100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805145, 34.290588, 38.238125>,  <30.984745, 34.156479, 38.152340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805145, 34.290588, 38.238125>,  <30.505814, 34.514103, 38.381100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.805145, 34.290588, 38.238125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212645, 0.308322, -0.927210,
		0.628320, 0.769865, 0.111903,
		0.748329, -0.558789, -0.357433,
		31.029644, 34.122952, 38.130894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915430, 34.958157, 37.907265>,  <30.505814, 34.514103, 38.381100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915430, 34.958157, 37.907265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956894, 34.572605, 37.809128>,  <30.981773, 34.341274, 37.750248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956894, 34.572605, 37.809128>,  <30.915430, 34.958157, 37.907265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956894, 34.572605, 37.809128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007466, 0.245906, -0.969265,
		0.994585, 0.102307, 0.018295,
		0.103661, -0.963879, -0.245338,
		30.987991, 34.283440, 37.735527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202169, 35.002426, 37.274864>,  <30.915430, 34.958157, 37.907265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202169, 35.002426, 37.274864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.109659, 34.613811, 37.295361>,  <31.054153, 34.380642, 37.307659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.109659, 34.613811, 37.295361>,  <31.202169, 35.002426, 37.274864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.109659, 34.613811, 37.295361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343340, 0.032228, -0.938658,
		0.910291, -0.234680, -0.341021,
		-0.231274, -0.971538, 0.051238,
		31.040277, 34.322350, 37.310734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604847, 34.647694, 36.670483>,  <31.202169, 35.002426, 37.274864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604847, 34.647694, 36.670483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.309050, 34.397007, 36.768764>,  <31.131571, 34.246593, 36.827736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.309050, 34.397007, 36.768764>,  <31.604847, 34.647694, 36.670483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.309050, 34.397007, 36.768764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132970, -0.221818, -0.965979,
		0.659899, -0.747008, 0.080698,
		-0.739495, -0.626718, 0.245707,
		31.087200, 34.208992, 36.842476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.750454, 33.959023, 36.423225>,  <31.604847, 34.647694, 36.670483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.750454, 33.959023, 36.423225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353243, 33.983868, 36.463306>,  <31.114916, 33.998775, 36.487354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.353243, 33.983868, 36.463306>,  <31.750454, 33.959023, 36.423225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353243, 33.983868, 36.463306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110289, -0.189205, -0.975724,
		-0.041642, -0.979972, 0.194735,
		-0.993027, 0.062108, 0.100202,
		31.055334, 34.002502, 36.493366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441189, 33.350883, 36.106857>,  <31.750454, 33.959023, 36.423225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441189, 33.350883, 36.106857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197861, 33.668243, 36.098305>,  <31.051863, 33.858662, 36.093174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197861, 33.668243, 36.098305>,  <31.441189, 33.350883, 36.106857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197861, 33.668243, 36.098305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006283, -0.031749, -0.999476,
		-0.793666, -0.607869, 0.024299,
		-0.608322, 0.793403, -0.021379,
		31.015364, 33.906265, 36.091892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700447, 32.706066, 36.172482>,  <31.441189, 33.350883, 36.106857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700447, 32.706066, 36.172482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661980, 32.649605, 36.566605>,  <31.638899, 32.615726, 36.803078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661980, 32.649605, 36.566605>,  <31.700447, 32.706066, 36.172482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661980, 32.649605, 36.566605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166597, -0.973647, -0.155745,
		0.981324, -0.179127, 0.070118,
		-0.096168, -0.141155, 0.985306,
		31.633129, 32.607258, 36.862198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071499, 31.983252, 36.366409>,  <31.700447, 32.706066, 36.172482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071499, 31.983252, 36.366409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764570, 32.096569, 36.596527>,  <31.580414, 32.164558, 36.734600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764570, 32.096569, 36.596527>,  <32.071499, 31.983252, 36.366409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764570, 32.096569, 36.596527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446282, -0.880137, -0.161838,
		0.460493, -0.380926, 0.801774,
		-0.767318, 0.283292, 0.575298,
		31.534374, 32.181557, 36.769115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441341, 32.009583, 36.941071>,  <32.071499, 31.983252, 36.366409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441341, 32.009583, 36.941071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765217, 31.957697, 36.712132>,  <32.959541, 31.926565, 36.574768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765217, 31.957697, 36.712132>,  <32.441341, 32.009583, 36.941071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765217, 31.957697, 36.712132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527787, -0.265482, 0.806821,
		-0.256600, -0.955351, -0.146498,
		0.809690, -0.129710, -0.572344,
		33.008121, 31.918783, 36.540428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697220, 31.380562, 37.140358>,  <32.441341, 32.009583, 36.941071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697220, 31.380562, 37.140358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997086, 31.597082, 36.988045>,  <33.177006, 31.726994, 36.896656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997086, 31.597082, 36.988045>,  <32.697220, 31.380562, 37.140358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997086, 31.597082, 36.988045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568019, -0.230987, 0.789936,
		0.339638, -0.808479, -0.480633,
		0.749667, 0.541301, -0.380779,
		33.221985, 31.759472, 36.873810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407143, 31.021492, 37.173756>,  <32.697220, 31.380562, 37.140358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407143, 31.021492, 37.173756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460506, 31.417826, 37.165230>,  <33.492523, 31.655626, 37.160114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460506, 31.417826, 37.165230>,  <33.407143, 31.021492, 37.173756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460506, 31.417826, 37.165230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712586, -0.080954, 0.696898,
		0.688784, -0.108156, -0.716853,
		0.133406, 0.990832, -0.021311,
		33.500526, 31.715075, 37.158836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155678, 31.061008, 37.379894>,  <33.407143, 31.021492, 37.173756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155678, 31.061008, 37.379894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957062, 31.402584, 37.442158>,  <33.837891, 31.607531, 37.479515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957062, 31.402584, 37.442158>,  <34.155678, 31.061008, 37.379894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957062, 31.402584, 37.442158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236416, -0.039505, 0.970849,
		0.835196, 0.518869, -0.182269,
		-0.496542, 0.853941, 0.155663,
		33.808098, 31.658766, 37.488857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537678, 31.330414, 37.873074>,  <34.155678, 31.061008, 37.379894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537678, 31.330414, 37.873074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188461, 31.525230, 37.882835>,  <33.978931, 31.642120, 37.888691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188461, 31.525230, 37.882835>,  <34.537678, 31.330414, 37.873074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188461, 31.525230, 37.882835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005118, -0.040881, 0.999151,
		0.487627, 0.872421, 0.033198,
		-0.873037, 0.487043, 0.024400,
		33.926552, 31.671343, 37.890156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574932, 31.863308, 38.374073>,  <34.537678, 31.330414, 37.873074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574932, 31.863308, 38.374073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198441, 31.734812, 38.332317>,  <33.972546, 31.657715, 38.307262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198441, 31.734812, 38.332317>,  <34.574932, 31.863308, 38.374073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198441, 31.734812, 38.332317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006317, -0.325740, 0.945438,
		-0.337716, 0.889212, 0.308625,
		-0.941227, -0.321239, -0.104391,
		33.916073, 31.638439, 38.300999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230541, 32.153652, 38.917606>,  <34.574932, 31.863308, 38.374073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230541, 32.153652, 38.917606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985802, 31.857100, 38.807335>,  <33.838959, 31.679169, 38.741173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985802, 31.857100, 38.807335>,  <34.230541, 32.153652, 38.917606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985802, 31.857100, 38.807335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139598, -0.241849, 0.960219,
		-0.778560, 0.625992, 0.044480,
		-0.611847, -0.741379, -0.275681,
		33.802246, 31.634686, 38.724632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572376, 32.204742, 39.253941>,  <34.230541, 32.153652, 38.917606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572376, 32.204742, 39.253941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560925, 31.822588, 39.136356>,  <33.554054, 31.593294, 39.065807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.560925, 31.822588, 39.136356>,  <33.572376, 32.204742, 39.253941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560925, 31.822588, 39.136356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315857, -0.270366, 0.909471,
		-0.948375, 0.118883, -0.294027,
		-0.028626, -0.955390, -0.293958,
		33.552338, 31.535971, 39.048168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921188, 31.967554, 39.389549>,  <33.572376, 32.204742, 39.253941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921188, 31.967554, 39.389549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109112, 31.615335, 39.364498>,  <33.221867, 31.404005, 39.349468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109112, 31.615335, 39.364498>,  <32.921188, 31.967554, 39.389549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109112, 31.615335, 39.364498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224626, -0.187852, 0.956167,
		-0.853713, -0.435144, -0.286047,
		0.469805, -0.880546, -0.062627,
		33.250053, 31.351171, 39.345711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440029, 31.467995, 39.693176>,  <32.921188, 31.967554, 39.389549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440029, 31.467995, 39.693176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803947, 31.301970, 39.693050>,  <33.022297, 31.202354, 39.692974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.803947, 31.301970, 39.693050>,  <32.440029, 31.467995, 39.693176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803947, 31.301970, 39.693050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129536, -0.284650, 0.949839,
		-0.394334, -0.864115, -0.312738,
		0.909792, -0.415065, -0.000313,
		33.076885, 31.177450, 39.692955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418274, 30.795288, 40.214584>,  <32.440029, 31.467995, 39.693176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418274, 30.795288, 40.214584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805157, 30.891310, 40.181381>,  <33.037285, 30.948923, 40.161457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805157, 30.891310, 40.181381>,  <32.418274, 30.795288, 40.214584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805157, 30.891310, 40.181381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153465, -0.291867, 0.944067,
		0.202397, -0.925845, -0.319134,
		0.967204, 0.240052, -0.083012,
		33.095318, 30.963326, 40.156479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697453, 30.223286, 40.488514>,  <32.418274, 30.795288, 40.214584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697453, 30.223286, 40.488514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974480, 30.511667, 40.498081>,  <33.140697, 30.684696, 40.503822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974480, 30.511667, 40.498081>,  <32.697453, 30.223286, 40.488514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974480, 30.511667, 40.498081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259906, -0.280334, 0.924046,
		0.672900, -0.633750, -0.381532,
		0.692571, 0.720953, 0.023922,
		33.182251, 30.727953, 40.505257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178181, 29.873358, 40.886242>,  <32.697453, 30.223286, 40.488514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178181, 29.873358, 40.886242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341656, 30.238199, 40.873337>,  <33.439739, 30.457104, 40.865593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341656, 30.238199, 40.873337>,  <33.178181, 29.873358, 40.886242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341656, 30.238199, 40.873337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314613, -0.107613, 0.943100,
		0.856735, -0.395580, -0.330940,
		0.408685, 0.912105, -0.032259,
		33.464260, 30.511831, 40.863659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965065, 29.779516, 41.024563>,  <33.178181, 29.873358, 40.886242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965065, 29.779516, 41.024563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802513, 30.128387, 41.133495>,  <33.704983, 30.337709, 41.198856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802513, 30.128387, 41.133495>,  <33.965065, 29.779516, 41.024563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802513, 30.128387, 41.133495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212200, -0.199812, 0.956580,
		0.888723, 0.446521, -0.103877,
		-0.406378, 0.872178, 0.272330,
		33.680599, 30.390041, 41.215195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488255, 30.187435, 41.396133>,  <33.965065, 29.779516, 41.024563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488255, 30.187435, 41.396133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133499, 30.318916, 41.525982>,  <33.920647, 30.397804, 41.603889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.133499, 30.318916, 41.525982>,  <34.488255, 30.187435, 41.396133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133499, 30.318916, 41.525982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360153, 0.051872, 0.931450,
		0.289330, 0.943008, -0.164387,
		-0.886892, 0.328701, 0.324619,
		33.867432, 30.417526, 41.623367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676422, 30.613567, 41.894508>,  <34.488255, 30.187435, 41.396133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676422, 30.613567, 41.894508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284946, 30.594845, 41.974487>,  <34.050060, 30.583611, 42.022476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.284946, 30.594845, 41.974487>,  <34.676422, 30.613567, 41.894508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284946, 30.594845, 41.974487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194822, 0.096213, 0.976108,
		-0.064927, 0.994260, -0.085043,
		-0.978687, -0.046807, 0.199950,
		33.991341, 30.580803, 42.034473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.511269, 31.107901, 42.280800>,  <34.676422, 30.613567, 41.894508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.511269, 31.107901, 42.280800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211498, 30.859619, 42.372963>,  <34.031635, 30.710651, 42.428261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211498, 30.859619, 42.372963>,  <34.511269, 31.107901, 42.280800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211498, 30.859619, 42.372963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062933, 0.279641, 0.958040,
		-0.659089, 0.732482, -0.170507,
		-0.749427, -0.620703, 0.230406,
		33.986671, 30.673409, 42.442085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230511, 31.388557, 42.837502>,  <34.511269, 31.107901, 42.280800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230511, 31.388557, 42.837502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053806, 31.029799, 42.845718>,  <33.947784, 30.814543, 42.850647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.053806, 31.029799, 42.845718>,  <34.230511, 31.388557, 42.837502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053806, 31.029799, 42.845718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124669, -0.038697, 0.991443,
		-0.888428, 0.440542, 0.128910,
		-0.441761, -0.896897, 0.020542,
		33.921276, 30.760729, 42.851883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784321, 31.430641, 43.473167>,  <34.230511, 31.388557, 42.837502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784321, 31.430641, 43.473167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799892, 31.041193, 43.383240>,  <33.809235, 30.807524, 43.329281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.799892, 31.041193, 43.383240>,  <33.784321, 31.430641, 43.473167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799892, 31.041193, 43.383240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023310, -0.224047, 0.974300,
		-0.998970, -0.043170, 0.013973,
		0.038930, -0.973622, -0.224823,
		33.811573, 30.749107, 43.315792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237988, 31.022343, 43.912224>,  <33.784321, 31.430641, 43.473167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237988, 31.022343, 43.912224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530754, 30.775600, 43.796440>,  <33.706413, 30.627554, 43.726971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.530754, 30.775600, 43.796440>,  <33.237988, 31.022343, 43.912224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530754, 30.775600, 43.796440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000535, -0.425327, 0.905040,
		-0.681397, -0.662256, -0.311633,
		0.731914, -0.616858, -0.289462,
		33.750328, 30.590544, 43.709602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974091, 30.280119, 44.127815>,  <33.237988, 31.022343, 43.912224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974091, 30.280119, 44.127815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367516, 30.263199, 44.057606>,  <33.603573, 30.253048, 44.015480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.367516, 30.263199, 44.057606>,  <32.974091, 30.280119, 44.127815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367516, 30.263199, 44.057606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124802, -0.543218, 0.830264,
		-0.130464, -0.838526, -0.529012,
		0.983567, -0.042298, -0.175520,
		33.662586, 30.250509, 44.004951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170841, 29.584244, 44.000523>,  <32.974091, 30.280119, 44.127815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170841, 29.584244, 44.000523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482723, 29.784920, 44.150387>,  <33.669853, 29.905325, 44.240307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482723, 29.784920, 44.150387>,  <33.170841, 29.584244, 44.000523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482723, 29.784920, 44.150387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101748, -0.691919, 0.714770,
		0.617829, -0.519186, -0.590536,
		0.779701, 0.501691, 0.374662,
		33.716633, 29.935427, 44.262787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578320, 29.039495, 44.322540>,  <33.170841, 29.584244, 44.000523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578320, 29.039495, 44.322540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741451, 29.385210, 44.440308>,  <33.839333, 29.592638, 44.510967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.741451, 29.385210, 44.440308>,  <33.578320, 29.039495, 44.322540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741451, 29.385210, 44.440308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196124, -0.397850, 0.896243,
		0.891744, -0.307775, -0.331764,
		0.407833, 0.864286, 0.294418,
		33.863800, 29.644495, 44.528633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213734, 28.831427, 44.387714>,  <33.578320, 29.039495, 44.322540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213734, 28.831427, 44.387714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169506, 29.151182, 44.623936>,  <34.142971, 29.343035, 44.765667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.169506, 29.151182, 44.623936>,  <34.213734, 28.831427, 44.387714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169506, 29.151182, 44.623936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362064, -0.520966, 0.772984,
		0.925572, 0.299285, -0.231827,
		-0.110568, 0.799389, 0.590552,
		34.136337, 29.390999, 44.801102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793293, 28.913250, 44.784336>,  <34.213734, 28.831427, 44.387714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793293, 28.913250, 44.784336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505352, 29.101553, 44.988373>,  <34.332588, 29.214535, 45.110794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.505352, 29.101553, 44.988373>,  <34.793293, 28.913250, 44.784336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505352, 29.101553, 44.988373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261055, -0.497305, 0.827368,
		0.643162, 0.728748, 0.235094,
		-0.719856, 0.470759, 0.510091,
		34.289394, 29.242781, 45.141399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137856, 29.300554, 45.451023>,  <34.793293, 28.913250, 44.784336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137856, 29.300554, 45.451023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745903, 29.234015, 45.495121>,  <34.510731, 29.194090, 45.521580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745903, 29.234015, 45.495121>,  <35.137856, 29.300554, 45.451023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745903, 29.234015, 45.495121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168476, -0.393454, 0.903775,
		-0.106968, 0.904169, 0.413566,
		-0.979885, -0.166351, 0.110243,
		34.451939, 29.184109, 45.528194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473625, 29.924311, 45.865932>,  <35.137856, 29.300554, 45.451023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473625, 29.924311, 45.865932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861542, 30.002993, 45.923649>,  <36.094292, 30.050201, 45.958279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861542, 30.002993, 45.923649>,  <35.473625, 29.924311, 45.865932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861542, 30.002993, 45.923649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045050, 0.436911, -0.898376,
		-0.239756, 0.877734, 0.414849,
		0.969787, 0.196703, 0.144294,
		36.152477, 30.062004, 45.966938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504620, 30.626194, 45.615402>,  <35.473625, 29.924311, 45.865932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504620, 30.626194, 45.615402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858860, 30.442568, 45.587177>,  <36.071404, 30.332392, 45.570240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.858860, 30.442568, 45.587177>,  <35.504620, 30.626194, 45.615402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858860, 30.442568, 45.587177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122610, 0.377614, -0.917810,
		0.447980, 0.804157, 0.390700,
		0.885596, -0.459064, -0.070566,
		36.124538, 30.304850, 45.566006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926117, 31.183537, 45.221275>,  <35.504620, 30.626194, 45.615402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926117, 31.183537, 45.221275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141716, 30.846672, 45.227551>,  <36.271076, 30.644554, 45.231316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141716, 30.846672, 45.227551>,  <35.926117, 31.183537, 45.221275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141716, 30.846672, 45.227551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308098, 0.179785, -0.934213,
		0.783935, 0.508375, 0.356372,
		0.539000, -0.842160, 0.015690,
		36.303417, 30.594025, 45.232258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602901, 31.465607, 45.211449>,  <35.926117, 31.183537, 45.221275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602901, 31.465607, 45.211449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651794, 31.095570, 45.067638>,  <36.681129, 30.873547, 44.981350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651794, 31.095570, 45.067638>,  <36.602901, 31.465607, 45.211449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651794, 31.095570, 45.067638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431324, 0.375763, -0.820220,
		0.893878, -0.054814, 0.444947,
		0.122235, -0.925093, -0.359529,
		36.688465, 30.818041, 44.959782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220650, 31.460917, 44.941654>,  <36.602901, 31.465607, 45.211449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220650, 31.460917, 44.941654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057549, 31.152874, 44.745419>,  <36.959686, 30.968048, 44.627678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057549, 31.152874, 44.745419>,  <37.220650, 31.460917, 44.941654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057549, 31.152874, 44.745419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395402, 0.335371, -0.855093,
		0.823041, -0.542644, 0.167753,
		-0.407752, -0.770106, -0.490587,
		36.935223, 30.921843, 44.598244>
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
