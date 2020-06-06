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
	<24.183306, 35.076866, 35.119209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.346300, 35.070980, 34.753971>,  <24.444098, 35.067448, 34.534828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.346300, 35.070980, 34.753971>,  <24.183306, 35.076866, 35.119209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.346300, 35.070980, 34.753971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391951, -0.900273, 0.189426,
		-0.824821, -0.435076, -0.361081,
		0.407486, -0.014717, -0.913092,
		24.468546, 35.066566, 34.480042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.892908, 34.667480, 34.579128>,  <24.183306, 35.076866, 35.119209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.892908, 34.667480, 34.579128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.292093, 34.689030, 34.592789>,  <24.531605, 34.701958, 34.600983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.292093, 34.689030, 34.592789>,  <23.892908, 34.667480, 34.579128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.292093, 34.689030, 34.592789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037524, -0.928817, 0.368633,
		0.051576, -0.366601, -0.928947,
		0.997964, 0.053870, 0.034148,
		24.591482, 34.705193, 34.603035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.116236, 34.014858, 34.448662>,  <23.892908, 34.667480, 34.579128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.116236, 34.014858, 34.448662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.399878, 34.211452, 34.650894>,  <24.570063, 34.329407, 34.772236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.399878, 34.211452, 34.650894>,  <24.116236, 34.014858, 34.448662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.399878, 34.211452, 34.650894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092791, -0.775847, 0.624061,
		0.698971, -0.395611, -0.595762,
		0.709105, 0.491481, 0.505585,
		24.612610, 34.358898, 34.802570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.586615, 33.509586, 34.800526>,  <24.116236, 34.014858, 34.448662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.586615, 33.509586, 34.800526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.620787, 33.852669, 35.003326>,  <24.641291, 34.058517, 35.125008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.620787, 33.852669, 35.003326>,  <24.586615, 33.509586, 34.800526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.620787, 33.852669, 35.003326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056265, -0.503894, 0.861931,
		0.994754, -0.102163, 0.005210,
		0.085432, 0.857702, 0.506999,
		24.646416, 34.109978, 35.155426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.242233, 33.550014, 35.204430>,  <24.586615, 33.509586, 34.800526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.242233, 33.550014, 35.204430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.933102, 33.744041, 35.368107>,  <24.747623, 33.860458, 35.466312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.933102, 33.744041, 35.368107>,  <25.242233, 33.550014, 35.204430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.933102, 33.744041, 35.368107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242484, -0.370159, 0.896763,
		0.586462, 0.792267, 0.168447,
		-0.772828, 0.485072, 0.409197,
		24.701254, 33.889565, 35.490868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.656118, 33.539135, 34.591976>,  <25.242233, 33.550014, 35.204430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.656118, 33.539135, 34.591976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842978, 33.874435, 34.479473>,  <25.955093, 34.075615, 34.411972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.842978, 33.874435, 34.479473>,  <25.656118, 33.539135, 34.591976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.842978, 33.874435, 34.479473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880509, -0.412100, 0.234258,
		0.080461, -0.357083, -0.930601,
		0.467150, 0.838252, -0.281257,
		25.983122, 34.125912, 34.395096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.286139, 33.420605, 34.257778>,  <25.656118, 33.539135, 34.591976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.286139, 33.420605, 34.257778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.371218, 33.786411, 34.395428>,  <26.422264, 34.005894, 34.478016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.371218, 33.786411, 34.395428>,  <26.286139, 33.420605, 34.257778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.371218, 33.786411, 34.395428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944963, -0.282123, 0.165686,
		0.248608, 0.289942, -0.924190,
		0.212696, 0.914516, 0.344123,
		26.435026, 34.060768, 34.498665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.823643, 34.054993, 34.129097>,  <26.286139, 33.420605, 34.257778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.823643, 34.054993, 34.129097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.176956, 33.931564, 34.270290>,  <27.388945, 33.857506, 34.355007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.176956, 33.931564, 34.270290>,  <26.823643, 34.054993, 34.129097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.176956, 33.931564, 34.270290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358319, 0.929831, -0.083792,
		-0.302360, 0.200492, 0.931870,
		0.883281, -0.308571, 0.352984,
		27.441940, 33.838993, 34.376186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.973146, 34.354939, 34.778313>,  <26.823643, 34.054993, 34.129097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.973146, 34.354939, 34.778313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.304796, 34.267059, 34.572681>,  <27.503786, 34.214333, 34.449303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.304796, 34.267059, 34.572681>,  <26.973146, 34.354939, 34.778313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.304796, 34.267059, 34.572681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224548, 0.972984, -0.053663,
		0.511984, -0.070943, 0.856060,
		0.829126, -0.219701, -0.514083,
		27.553534, 34.201149, 34.418457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.355398, 34.916157, 34.985165>,  <26.973146, 34.354939, 34.778313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.355398, 34.916157, 34.985165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572695, 34.750423, 34.693077>,  <27.703074, 34.650982, 34.517826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.572695, 34.750423, 34.693077>,  <27.355398, 34.916157, 34.985165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.572695, 34.750423, 34.693077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296449, 0.908383, -0.294885,
		0.785498, -0.056278, 0.616300,
		0.543242, -0.414334, -0.730217,
		27.735668, 34.626122, 34.474010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.138256, 35.199013, 35.037888>,  <27.355398, 34.916157, 34.985165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.138256, 35.199013, 35.037888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.055939, 35.081604, 34.664471>,  <28.006548, 35.011158, 34.440422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.055939, 35.081604, 34.664471>,  <28.138256, 35.199013, 35.037888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.055939, 35.081604, 34.664471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228062, 0.913304, -0.337436,
		0.951649, -0.282348, -0.121012,
		-0.205795, -0.293522, -0.933538,
		27.994200, 34.993546, 34.384411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.646559, 35.448486, 34.621098>,  <28.138256, 35.199013, 35.037888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.646559, 35.448486, 34.621098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365236, 35.383053, 34.344376>,  <28.196442, 35.343792, 34.178341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.365236, 35.383053, 34.344376>,  <28.646559, 35.448486, 34.621098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.365236, 35.383053, 34.344376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253673, 0.851345, -0.459197,
		0.664084, -0.498450, -0.557261,
		-0.703308, -0.163583, -0.691808,
		28.154243, 35.333977, 34.136833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.988331, 35.667938, 34.010906>,  <28.646559, 35.448486, 34.621098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.988331, 35.667938, 34.010906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.599932, 35.680595, 33.916115>,  <28.366892, 35.688190, 33.859241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.599932, 35.680595, 33.916115>,  <28.988331, 35.667938, 34.010906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599932, 35.680595, 33.916115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185404, 0.725465, -0.662816,
		0.150946, -0.687531, -0.710293,
		-0.971000, 0.031642, -0.236977,
		28.308632, 35.690086, 33.845020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939810, 35.807549, 33.280666>,  <28.988331, 35.667938, 34.010906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.939810, 35.807549, 33.280666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565445, 35.876076, 33.403770>,  <28.340826, 35.917191, 33.477634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.565445, 35.876076, 33.403770>,  <28.939810, 35.807549, 33.280666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.565445, 35.876076, 33.403770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013344, 0.855879, -0.517004,
		-0.351977, -0.487978, -0.798743,
		-0.935913, 0.171315, 0.307762,
		28.284672, 35.927471, 33.496098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.600058, 36.039814, 32.647305>,  <28.939810, 35.807549, 33.280666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.600058, 36.039814, 32.647305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.364948, 36.149929, 32.951603>,  <28.223883, 36.215996, 33.134182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.364948, 36.149929, 32.951603>,  <28.600058, 36.039814, 32.647305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.364948, 36.149929, 32.951603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026645, 0.933232, -0.358286,
		-0.808586, -0.230862, -0.541194,
		-0.587774, 0.275285, 0.760750,
		28.188616, 36.232513, 33.179829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970535, 36.219643, 32.365902>,  <28.600058, 36.039814, 32.647305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.970535, 36.219643, 32.365902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.015469, 36.439190, 32.697231>,  <28.042429, 36.570919, 32.896030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.015469, 36.439190, 32.697231>,  <27.970535, 36.219643, 32.365902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015469, 36.439190, 32.697231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205311, 0.828433, -0.521101,
		-0.972229, -0.111527, 0.205750,
		0.112333, 0.548872, 0.828324,
		28.049168, 36.603851, 32.945728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.429434, 36.667252, 32.369957>,  <27.970535, 36.219643, 32.365902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.429434, 36.667252, 32.369957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.699436, 36.831104, 32.615417>,  <27.861437, 36.929417, 32.762695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.699436, 36.831104, 32.615417>,  <27.429434, 36.667252, 32.369957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.699436, 36.831104, 32.615417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029338, 0.845960, -0.532439,
		-0.737230, 0.341395, 0.583045,
		0.675004, 0.409636, 0.613651,
		27.901937, 36.953995, 32.799511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.185881, 37.289680, 32.619591>,  <27.429434, 36.667252, 32.369957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.185881, 37.289680, 32.619591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.578274, 37.346313, 32.672695>,  <27.813709, 37.380291, 32.704559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.578274, 37.346313, 32.672695>,  <27.185881, 37.289680, 32.619591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.578274, 37.346313, 32.672695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043427, 0.826795, -0.560825,
		-0.189165, 0.544395, 0.817221,
		0.980985, 0.141578, 0.132759,
		27.872570, 37.388786, 32.712524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.201754, 38.041573, 32.699802>,  <27.185881, 37.289680, 32.619591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.201754, 38.041573, 32.699802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.581749, 37.938774, 32.628841>,  <27.809746, 37.877094, 32.586266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.581749, 37.938774, 32.628841>,  <27.201754, 38.041573, 32.699802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.581749, 37.938774, 32.628841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128783, 0.839949, -0.527164,
		0.284488, 0.477954, 0.831040,
		0.949991, -0.256995, -0.177403,
		27.866747, 37.861675, 32.575619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.617640, 38.580833, 32.668369>,  <27.201754, 38.041573, 32.699802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.617640, 38.580833, 32.668369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862928, 38.346851, 32.456036>,  <28.010101, 38.206463, 32.328636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862928, 38.346851, 32.456036>,  <27.617640, 38.580833, 32.668369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.862928, 38.346851, 32.456036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264085, 0.785172, -0.560146,
		0.744456, 0.203310, 0.635964,
		0.613224, -0.584953, -0.530835,
		28.046896, 38.171364, 32.296783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.254543, 38.863987, 32.766323>,  <27.617640, 38.580833, 32.668369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.254543, 38.863987, 32.766323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334280, 38.657722, 32.433010>,  <28.382122, 38.533962, 32.233021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.334280, 38.657722, 32.433010>,  <28.254543, 38.863987, 32.766323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.334280, 38.657722, 32.433010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246935, 0.849339, -0.466526,
		0.948307, -0.112769, 0.296642,
		0.199340, -0.515661, -0.833281,
		28.394081, 38.503025, 32.183025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.005926, 39.092648, 32.530792>,  <28.254543, 38.863987, 32.766323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.005926, 39.092648, 32.530792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.812729, 38.919662, 32.226242>,  <28.696812, 38.815872, 32.043510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.812729, 38.919662, 32.226242>,  <29.005926, 39.092648, 32.530792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.812729, 38.919662, 32.226242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384867, 0.676180, -0.628218,
		0.786509, -0.596453, -0.160148,
		-0.482992, -0.432464, -0.761377,
		28.667831, 38.789925, 31.997829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485992, 39.068634, 31.962105>,  <29.005926, 39.092648, 32.530792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485992, 39.068634, 31.962105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140417, 39.045891, 31.761953>,  <28.933071, 39.032246, 31.641863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.140417, 39.045891, 31.761953>,  <29.485992, 39.068634, 31.962105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.140417, 39.045891, 31.761953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345512, 0.655941, -0.671090,
		0.366375, -0.752667, -0.547048,
		-0.863939, -0.056859, -0.500376,
		28.881235, 39.028831, 31.611841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.688406, 38.861816, 31.136269>,  <29.485992, 39.068634, 31.962105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.688406, 38.861816, 31.136269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.319510, 39.014622, 31.160044>,  <29.098171, 39.106304, 31.174309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.319510, 39.014622, 31.160044>,  <29.688406, 38.861816, 31.136269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319510, 39.014622, 31.160044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210994, 0.626158, -0.750605,
		-0.323962, -0.679698, -0.658073,
		-0.922242, 0.382017, 0.059440,
		29.042837, 39.129227, 31.177876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407259, 38.828861, 30.495966>,  <29.688406, 38.861816, 31.136269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407259, 38.828861, 30.495966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.229733, 39.112404, 30.715256>,  <29.123217, 39.282528, 30.846830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.229733, 39.112404, 30.715256>,  <29.407259, 38.828861, 30.495966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.229733, 39.112404, 30.715256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184806, 0.671028, -0.718030,
		-0.876855, -0.217358, -0.428814,
		-0.443815, 0.708856, 0.548225,
		29.096588, 39.325062, 30.879723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.757591, 39.081486, 30.182880>,  <29.407259, 38.828861, 30.495966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.757591, 39.081486, 30.182880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938644, 39.380058, 30.378008>,  <29.047276, 39.559200, 30.495085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.938644, 39.380058, 30.378008>,  <28.757591, 39.081486, 30.182880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938644, 39.380058, 30.378008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130131, 0.485915, -0.864264,
		-0.882151, 0.454674, 0.122807,
		0.452632, 0.746430, 0.487817,
		29.074434, 39.603989, 30.524353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.438553, 39.848682, 30.202047>,  <28.757591, 39.081486, 30.182880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.438553, 39.848682, 30.202047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.833586, 39.898842, 30.239895>,  <29.070606, 39.928940, 30.262604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.833586, 39.898842, 30.239895>,  <28.438553, 39.848682, 30.202047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.833586, 39.898842, 30.239895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049669, 0.820663, -0.569249,
		-0.149035, 0.557482, 0.816702,
		0.987584, 0.125403, 0.094618,
		29.129860, 39.936462, 30.268280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.550703, 40.547905, 30.239330>,  <28.438553, 39.848682, 30.202047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.550703, 40.547905, 30.239330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.916145, 40.426552, 30.131050>,  <29.135410, 40.353741, 30.066082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.916145, 40.426552, 30.131050>,  <28.550703, 40.547905, 30.239330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.916145, 40.426552, 30.131050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043548, 0.734950, -0.676721,
		0.404257, 0.606470, 0.684668,
		0.913608, -0.303386, -0.270698,
		29.190228, 40.335537, 30.049841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006769, 41.228806, 30.192825>,  <28.550703, 40.547905, 30.239330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006769, 41.228806, 30.192825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.122812, 40.956470, 29.923813>,  <29.192438, 40.793068, 29.762405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.122812, 40.956470, 29.923813>,  <29.006769, 41.228806, 30.192825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.122812, 40.956470, 29.923813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104483, 0.721086, -0.684923,
		0.951273, 0.128434, 0.280329,
		0.290109, -0.680838, -0.672530,
		29.209845, 40.752220, 29.722054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422319, 41.718681, 30.818504>,  <29.006769, 41.228806, 30.192825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422319, 41.718681, 30.818504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.305973, 42.054928, 31.001266>,  <29.236164, 42.256676, 31.110924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.305973, 42.054928, 31.001266>,  <29.422319, 41.718681, 30.818504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.305973, 42.054928, 31.001266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293741, -0.532951, 0.793524,
		0.910556, 0.096599, 0.401941,
		-0.290868, 0.840614, 0.456907,
		29.218712, 42.307114, 31.138338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.541048, 41.791294, 31.522028>,  <29.422319, 41.718681, 30.818504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.541048, 41.791294, 31.522028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.245256, 42.060429, 31.513380>,  <29.067781, 42.221909, 31.508192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.245256, 42.060429, 31.513380>,  <29.541048, 41.791294, 31.522028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.245256, 42.060429, 31.513380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286709, -0.285728, 0.914416,
		0.609073, 0.682389, 0.404197,
		-0.739478, 0.672833, -0.021618,
		29.023413, 42.262280, 31.506895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.947504, 41.785229, 31.864805>,  <29.541048, 41.791294, 31.522028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.947504, 41.785229, 31.864805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988403, 41.948746, 32.227558>,  <29.012943, 42.046856, 32.445210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988403, 41.948746, 32.227558>,  <28.947504, 41.785229, 31.864805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988403, 41.948746, 32.227558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612568, -0.744177, 0.266385,
		0.783776, 0.528291, -0.326502,
		0.102247, 0.408791, 0.906882,
		29.019077, 42.071384, 32.499622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618555, 42.144104, 32.165619>,  <28.947504, 41.785229, 31.864805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618555, 42.144104, 32.165619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.397331, 41.928104, 32.419399>,  <29.264597, 41.798504, 32.571667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.397331, 41.928104, 32.419399>,  <29.618555, 42.144104, 32.165619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.397331, 41.928104, 32.419399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542064, -0.811519, -0.218182,
		0.632684, 0.223244, 0.741534,
		-0.553061, -0.539999, 0.634448,
		29.231413, 41.766106, 32.609734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671492, 42.649174, 32.637051>,  <29.618555, 42.144104, 32.165619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671492, 42.649174, 32.637051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.857943, 42.977749, 32.505619>,  <29.969814, 43.174892, 32.426762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.857943, 42.977749, 32.505619>,  <29.671492, 42.649174, 32.637051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.857943, 42.977749, 32.505619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486167, 0.548119, 0.680593,
		0.739166, -0.157499, 0.654850,
		0.466128, 0.821438, -0.328580,
		29.997782, 43.224178, 32.407043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521679, 42.096878, 33.035934>,  <29.671492, 42.649174, 32.637051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.521679, 42.096878, 33.035934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643505, 42.208069, 33.400345>,  <29.716600, 42.274784, 33.618992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.643505, 42.208069, 33.400345>,  <29.521679, 42.096878, 33.035934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643505, 42.208069, 33.400345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156283, -0.958087, 0.240092,
		0.939583, 0.069254, -0.335243,
		0.304565, 0.277980, 0.911026,
		29.734875, 42.291462, 33.673653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261253, 41.935120, 33.166363>,  <29.521679, 42.096878, 33.035934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261253, 41.935120, 33.166363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.012558, 41.939495, 33.479622>,  <29.863340, 41.942120, 33.667576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.012558, 41.939495, 33.479622>,  <30.261253, 41.935120, 33.166363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012558, 41.939495, 33.479622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311757, -0.913820, 0.260271,
		0.718505, 0.405973, 0.564745,
		-0.621738, 0.010943, 0.783149,
		29.826036, 41.942780, 33.714565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.638622, 41.657135, 33.745590>,  <30.261253, 41.935120, 33.166363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.638622, 41.657135, 33.745590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250137, 41.607353, 33.826839>,  <30.017046, 41.577484, 33.875587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250137, 41.607353, 33.826839>,  <30.638622, 41.657135, 33.745590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250137, 41.607353, 33.826839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171293, -0.957415, 0.232411,
		0.165545, 0.260514, 0.951172,
		-0.971212, -0.124455, 0.203120,
		29.958775, 41.570015, 33.887775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515337, 41.374344, 34.472725>,  <30.638622, 41.657135, 33.745590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515337, 41.374344, 34.472725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.192440, 41.280033, 34.256290>,  <29.998703, 41.223446, 34.126431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.192440, 41.280033, 34.256290>,  <30.515337, 41.374344, 34.472725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192440, 41.280033, 34.256290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097582, -0.957443, 0.271628,
		-0.582100, 0.166469, 0.795894,
		-0.807240, -0.235779, -0.541083,
		29.950268, 41.209301, 34.093964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343725, 40.854755, 34.930759>,  <30.515337, 41.374344, 34.472725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343725, 40.854755, 34.930759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107990, 40.819622, 34.609520>,  <29.966549, 40.798542, 34.416775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107990, 40.819622, 34.609520>,  <30.343725, 40.854755, 34.930759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107990, 40.819622, 34.609520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265051, -0.918032, 0.294900,
		-0.763172, 0.386657, 0.517750,
		-0.589336, -0.087829, -0.803099,
		29.931189, 40.793274, 34.368591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727797, 40.606758, 35.107075>,  <30.343725, 40.854755, 34.930759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727797, 40.606758, 35.107075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778219, 40.488174, 34.728397>,  <29.808472, 40.417023, 34.501190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778219, 40.488174, 34.728397>,  <29.727797, 40.606758, 35.107075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.778219, 40.488174, 34.728397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126737, -0.951295, 0.281027,
		-0.983894, 0.084556, -0.157488,
		0.126055, -0.296461, -0.946689,
		29.816036, 40.399235, 34.444389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.147957, 40.219097, 34.974030>,  <29.727797, 40.606758, 35.107075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.147957, 40.219097, 34.974030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418730, 40.108707, 34.701088>,  <29.581194, 40.042473, 34.537323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418730, 40.108707, 34.701088>,  <29.147957, 40.219097, 34.974030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.418730, 40.108707, 34.701088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107420, -0.954165, 0.279340,
		-0.728166, -0.115795, -0.675549,
		0.676931, -0.275974, -0.682351,
		29.621809, 40.025917, 34.496384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.790279, 39.790188, 34.512280>,  <29.147957, 40.219097, 34.974030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.790279, 39.790188, 34.512280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181726, 39.711334, 34.488800>,  <29.416595, 39.664024, 34.474712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.181726, 39.711334, 34.488800>,  <28.790279, 39.790188, 34.512280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.181726, 39.711334, 34.488800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181542, -0.961983, 0.204037,
		-0.096687, -0.189019, -0.977202,
		0.978619, -0.197130, -0.058697,
		29.475311, 39.652195, 34.471191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.985228, 39.307812, 34.000000>,  <28.790279, 39.790188, 34.512280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.985228, 39.307812, 34.000000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.275154, 39.261883, 34.271725>,  <29.449110, 39.234325, 34.434757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.275154, 39.261883, 34.271725>,  <28.985228, 39.307812, 34.000000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275154, 39.261883, 34.271725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163265, -0.986554, 0.007451,
		0.669319, -0.116308, -0.733815,
		0.724814, -0.114819, 0.679309,
		29.492598, 39.227436, 34.475517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.193005, 38.739601, 33.857174>,  <28.985228, 39.307812, 34.000000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.193005, 38.739601, 33.857174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.341314, 38.781536, 34.226288>,  <29.430300, 38.806698, 34.447758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.341314, 38.781536, 34.226288>,  <29.193005, 38.739601, 33.857174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341314, 38.781536, 34.226288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048865, -0.990030, 0.132110,
		0.927437, -0.094074, -0.361953,
		0.370772, 0.104837, 0.922788,
		29.452545, 38.812988, 34.503124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.653103, 38.083462, 33.890759>,  <29.193005, 38.739601, 33.857174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.653103, 38.083462, 33.890759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610571, 38.233803, 34.258980>,  <29.585052, 38.324009, 34.479912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.610571, 38.233803, 34.258980>,  <29.653103, 38.083462, 33.890759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.610571, 38.233803, 34.258980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125065, -0.923509, 0.362616,
		0.986434, -0.076572, 0.145203,
		-0.106330, 0.375857, 0.920557,
		29.578672, 38.346561, 34.535149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100981, 37.669952, 34.324379>,  <29.653103, 38.083462, 33.890759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100981, 37.669952, 34.324379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.826256, 37.810070, 34.579121>,  <29.661421, 37.894142, 34.731964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.826256, 37.810070, 34.579121>,  <30.100981, 37.669952, 34.324379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.826256, 37.810070, 34.579121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072135, -0.904726, 0.419842,
		0.723245, 0.242414, 0.646647,
		-0.686814, 0.350295, 0.636852,
		29.620213, 37.915157, 34.770176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.445711, 37.592121, 34.996315>,  <30.100981, 37.669952, 34.324379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.445711, 37.592121, 34.996315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.046488, 37.614048, 35.008121>,  <29.806953, 37.627205, 35.015205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.046488, 37.614048, 35.008121>,  <30.445711, 37.592121, 34.996315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.046488, 37.614048, 35.008121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033803, -0.875215, 0.482552,
		0.052287, 0.480618, 0.875370,
		-0.998060, 0.054822, 0.029516,
		29.747070, 37.630493, 35.016975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262091, 37.486950, 35.685745>,  <30.445711, 37.592121, 34.996315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262091, 37.486950, 35.685745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915838, 37.413994, 35.499233>,  <29.708086, 37.370220, 35.387325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915838, 37.413994, 35.499233>,  <30.262091, 37.486950, 35.685745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915838, 37.413994, 35.499233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046302, -0.898134, 0.437278,
		-0.498535, 0.400111, 0.769008,
		-0.865632, -0.182392, -0.466277,
		29.656149, 37.359276, 35.359348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803978, 37.258411, 36.205082>,  <30.262091, 37.486950, 35.685745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.803978, 37.258411, 36.205082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653299, 37.131363, 35.857010>,  <29.562891, 37.055134, 35.648167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.653299, 37.131363, 35.857010>,  <29.803978, 37.258411, 36.205082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653299, 37.131363, 35.857010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108922, -0.917678, 0.382104,
		-0.919910, 0.238720, 0.311093,
		-0.376699, -0.317617, -0.870183,
		29.540289, 37.036079, 35.595955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089260, 36.917648, 36.371365>,  <29.803978, 37.258411, 36.205082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.089260, 36.917648, 36.371365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.184269, 36.786274, 36.005695>,  <29.241274, 36.707451, 35.786293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.184269, 36.786274, 36.005695>,  <29.089260, 36.917648, 36.371365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.184269, 36.786274, 36.005695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131229, -0.943329, 0.304810,
		-0.962477, 0.047567, -0.267162,
		0.237523, -0.328431, -0.914174,
		29.255526, 36.687744, 35.731441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697975, 36.372852, 36.345585>,  <29.089260, 36.917648, 36.371365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697975, 36.372852, 36.345585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.961506, 36.302380, 36.053036>,  <29.119625, 36.260094, 35.877506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.961506, 36.302380, 36.053036>,  <28.697975, 36.372852, 36.345585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.961506, 36.302380, 36.053036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044582, -0.961337, 0.271742,
		-0.750972, -0.211637, -0.625500,
		0.658827, -0.176185, -0.731373,
		29.159153, 36.249523, 35.833622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587645, 35.735016, 36.176895>,  <28.697975, 36.372852, 36.345585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587645, 35.735016, 36.176895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.930513, 35.772724, 35.974361>,  <29.136234, 35.795349, 35.852840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.930513, 35.772724, 35.974361>,  <28.587645, 35.735016, 36.176895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.930513, 35.772724, 35.974361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135231, -0.989808, 0.044643,
		-0.496960, -0.106739, -0.861184,
		0.857172, 0.094273, -0.506330,
		29.187664, 35.801006, 35.822464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.615719, 35.199451, 35.631645>,  <28.587645, 35.735016, 36.176895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.615719, 35.199451, 35.631645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993509, 35.310722, 35.701591>,  <29.220184, 35.377487, 35.743561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993509, 35.310722, 35.701591>,  <28.615719, 35.199451, 35.631645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.993509, 35.310722, 35.701591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258364, -0.957552, 0.127837,
		0.203004, -0.075560, -0.976258,
		0.944478, 0.278181, 0.174865,
		29.276852, 35.394176, 35.754051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.146387, 34.791199, 35.128094>,  <28.615719, 35.199451, 35.631645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.146387, 34.791199, 35.128094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393154, 34.915470, 35.417339>,  <29.541214, 34.990032, 35.590885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393154, 34.915470, 35.417339>,  <29.146387, 34.791199, 35.128094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393154, 34.915470, 35.417339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431518, -0.901897, 0.019350,
		0.658185, 0.300099, -0.690458,
		0.616915, 0.310681, 0.723113,
		29.578228, 35.008675, 35.634274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734783, 34.630108, 34.834732>,  <29.146387, 34.791199, 35.128094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734783, 34.630108, 34.834732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762016, 34.625992, 35.233784>,  <29.778357, 34.623520, 35.473213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762016, 34.625992, 35.233784>,  <29.734783, 34.630108, 34.834732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762016, 34.625992, 35.233784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380861, -0.923950, -0.035525,
		0.922122, 0.382376, -0.058987,
		0.068084, -0.010292, 0.997626,
		29.782442, 34.622906, 35.533073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437540, 34.385559, 34.999996>,  <29.734783, 34.630108, 34.834732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437540, 34.385559, 34.999996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208820, 34.330757, 35.323544>,  <30.071589, 34.297874, 35.517673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208820, 34.330757, 35.323544>,  <30.437540, 34.385559, 34.999996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208820, 34.330757, 35.323544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383914, -0.916024, 0.116234,
		0.725022, 0.377000, 0.576381,
		-0.571799, -0.137009, 0.808873,
		30.037281, 34.289654, 35.566204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878149, 33.893311, 35.405788>,  <30.437540, 34.385559, 34.999996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878149, 33.893311, 35.405788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512051, 33.900841, 35.566772>,  <30.292393, 33.905357, 35.663361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.512051, 33.900841, 35.566772>,  <30.878149, 33.893311, 35.405788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.512051, 33.900841, 35.566772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107418, -0.951349, 0.288786,
		0.388314, 0.307541, 0.868695,
		-0.915245, 0.018827, 0.402457,
		30.237476, 33.906490, 35.687511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947733, 33.774563, 36.134941>,  <30.878149, 33.893311, 35.405788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947733, 33.774563, 36.134941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585327, 33.659130, 36.011101>,  <30.367884, 33.589870, 35.936794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585327, 33.659130, 36.011101>,  <30.947733, 33.774563, 36.134941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585327, 33.659130, 36.011101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192069, -0.932183, 0.306830,
		-0.377155, 0.218527, 0.900000,
		-0.906015, -0.288585, -0.309605,
		30.313522, 33.572556, 35.918221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.727863, 33.289532, 36.650654>,  <30.947733, 33.774563, 36.134941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.727863, 33.289532, 36.650654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515141, 33.232224, 36.316792>,  <30.387506, 33.197838, 36.116474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515141, 33.232224, 36.316792>,  <30.727863, 33.289532, 36.650654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515141, 33.232224, 36.316792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032242, -0.988296, 0.149101,
		-0.846251, 0.052383, 0.530203,
		-0.531808, -0.143272, -0.834658,
		30.355598, 33.189243, 36.066395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788988, 33.953880, 36.832226>,  <30.727863, 33.289532, 36.650654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788988, 33.953880, 36.832226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.631525, 34.308781, 36.928413>,  <30.537046, 34.521721, 36.986126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.631525, 34.308781, 36.928413>,  <30.788988, 33.953880, 36.832226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.631525, 34.308781, 36.928413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831044, 0.231677, 0.505659,
		0.392934, 0.398895, -0.828544,
		-0.393660, 0.887248, 0.240466,
		30.513428, 34.574955, 37.000553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214270, 34.516907, 36.571732>,  <30.788988, 33.953880, 36.832226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214270, 34.516907, 36.571732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.015497, 34.637215, 36.897331>,  <30.896235, 34.709400, 37.092690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.015497, 34.637215, 36.897331>,  <31.214270, 34.516907, 36.571732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.015497, 34.637215, 36.897331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858617, 0.306442, 0.410939,
		-0.125845, 0.903122, -0.410528,
		-0.496931, 0.300772, 0.814000,
		30.866419, 34.727448, 37.141533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254971, 35.257538, 36.779785>,  <31.214270, 34.516907, 36.571732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254971, 35.257538, 36.779785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205864, 35.052299, 37.119587>,  <31.176401, 34.929157, 37.323467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205864, 35.052299, 37.119587>,  <31.254971, 35.257538, 36.779785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205864, 35.052299, 37.119587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877035, 0.344525, 0.334832,
		-0.464477, 0.786154, 0.407705,
		-0.122765, -0.513093, 0.849508,
		31.169035, 34.898373, 37.374439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129152, 35.624748, 37.431839>,  <31.254971, 35.257538, 36.779785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129152, 35.624748, 37.431839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321104, 35.274044, 37.444530>,  <31.436275, 35.063622, 37.452145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.321104, 35.274044, 37.444530>,  <31.129152, 35.624748, 37.431839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321104, 35.274044, 37.444530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805721, 0.454729, 0.379520,
		-0.347174, -0.156563, 0.924640,
		0.479879, -0.876761, 0.031724,
		31.465067, 35.011017, 37.454048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412424, 35.580624, 38.040112>,  <31.129152, 35.624748, 37.431839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412424, 35.580624, 38.040112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625679, 35.373272, 37.772667>,  <31.753632, 35.248859, 37.612198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625679, 35.373272, 37.772667>,  <31.412424, 35.580624, 38.040112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625679, 35.373272, 37.772667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839251, 0.423884, 0.340559,
		0.106874, -0.742699, 0.661042,
		0.533137, -0.518383, -0.668613,
		31.785620, 35.217758, 37.572083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041069, 35.376289, 38.412376>,  <31.412424, 35.580624, 38.040112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041069, 35.376289, 38.412376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135014, 35.259449, 38.041534>,  <32.191380, 35.189346, 37.819031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135014, 35.259449, 38.041534>,  <32.041069, 35.376289, 38.412376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135014, 35.259449, 38.041534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968498, 0.151527, 0.197612,
		0.082759, -0.944308, 0.318486,
		0.234866, -0.292099, -0.927101,
		32.205475, 35.171818, 37.763405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595196, 34.838234, 38.463161>,  <32.041069, 35.376289, 38.412376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595196, 34.838234, 38.463161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614578, 35.068939, 38.136971>,  <32.626209, 35.207363, 37.941257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614578, 35.068939, 38.136971>,  <32.595196, 34.838234, 38.463161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614578, 35.068939, 38.136971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876541, 0.366880, 0.311568,
		0.478882, -0.729893, -0.487779,
		0.048455, 0.576763, -0.815473,
		32.629116, 35.241966, 37.892330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264214, 34.964996, 38.373276>,  <32.595196, 34.838234, 38.463161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264214, 34.964996, 38.373276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164585, 35.234863, 38.095345>,  <33.104809, 35.396782, 37.928585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164585, 35.234863, 38.095345>,  <33.264214, 34.964996, 38.373276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164585, 35.234863, 38.095345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852199, 0.493534, 0.173727,
		0.460129, -0.548861, -0.697878,
		-0.249075, 0.674667, -0.694828,
		33.089863, 35.437263, 37.886898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835293, 35.133114, 37.920757>,  <33.264214, 34.964996, 38.373276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835293, 35.133114, 37.920757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600170, 35.455723, 37.895432>,  <33.459095, 35.649288, 37.880238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600170, 35.455723, 37.895432>,  <33.835293, 35.133114, 37.920757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600170, 35.455723, 37.895432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746533, 0.570913, 0.341682,
		0.311719, 0.153579, -0.937680,
		-0.587809, 0.806518, -0.063312,
		33.423828, 35.697678, 37.876438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218540, 35.634098, 37.565830>,  <33.835293, 35.133114, 37.920757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218540, 35.634098, 37.565830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931084, 35.860371, 37.727600>,  <33.758610, 35.996136, 37.824661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931084, 35.860371, 37.727600>,  <34.218540, 35.634098, 37.565830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931084, 35.860371, 37.727600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664692, 0.729675, 0.160493,
		-0.204314, 0.384157, -0.900377,
		-0.718637, 0.565683, 0.404429,
		33.715492, 36.030075, 37.848930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350636, 36.317924, 37.397568>,  <34.218540, 35.634098, 37.565830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350636, 36.317924, 37.397568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136078, 36.365768, 37.731747>,  <34.007343, 36.394474, 37.932255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136078, 36.365768, 37.731747>,  <34.350636, 36.317924, 37.397568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136078, 36.365768, 37.731747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631274, 0.713881, 0.303097,
		-0.560155, 0.689976, -0.458431,
		-0.536395, 0.119614, 0.835448,
		33.975159, 36.401653, 37.982380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289497, 36.999767, 37.408115>,  <34.350636, 36.317924, 37.397568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289497, 36.999767, 37.408115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221100, 36.882023, 37.784225>,  <34.180061, 36.811375, 38.009892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221100, 36.882023, 37.784225>,  <34.289497, 36.999767, 37.408115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221100, 36.882023, 37.784225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627255, 0.703423, 0.334285,
		-0.759810, 0.646951, 0.064360,
		-0.170994, -0.294364, 0.940272,
		34.169804, 36.793713, 38.066307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227928, 37.634445, 37.823055>,  <34.289497, 36.999767, 37.408115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227928, 37.634445, 37.823055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285660, 37.355907, 38.104275>,  <34.320297, 37.188786, 38.273006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.285660, 37.355907, 38.104275>,  <34.227928, 37.634445, 37.823055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285660, 37.355907, 38.104275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635709, 0.609724, 0.473403,
		-0.758316, 0.378610, 0.530671,
		0.144328, -0.696341, 0.703049,
		34.328957, 37.147003, 38.315189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240513, 37.966793, 38.452240>,  <34.227928, 37.634445, 37.823055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240513, 37.966793, 38.452240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398083, 37.621967, 38.579781>,  <34.492622, 37.415070, 38.656303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.398083, 37.621967, 38.579781>,  <34.240513, 37.966793, 38.452240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398083, 37.621967, 38.579781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577039, 0.501965, 0.644249,
		-0.715438, -0.069794, 0.695181,
		0.393921, -0.862067, 0.318851,
		34.516258, 37.363346, 38.675434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179016, 37.993851, 39.226582>,  <34.240513, 37.966793, 38.452240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179016, 37.993851, 39.226582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461964, 37.731243, 39.121803>,  <34.631733, 37.573681, 39.058937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461964, 37.731243, 39.121803>,  <34.179016, 37.993851, 39.226582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461964, 37.731243, 39.121803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642644, 0.443005, 0.625103,
		-0.294345, -0.610519, 0.735274,
		0.707368, -0.656516, -0.261950,
		34.674175, 37.534286, 39.043217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315231, 37.622337, 39.806824>,  <34.179016, 37.993851, 39.226582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315231, 37.622337, 39.806824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644337, 37.553860, 39.590031>,  <34.841801, 37.512772, 39.459953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644337, 37.553860, 39.590031>,  <34.315231, 37.622337, 39.806824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644337, 37.553860, 39.590031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568288, 0.264846, 0.779041,
		0.010172, -0.948972, 0.315196,
		0.822767, -0.171198, -0.541983,
		34.891167, 37.502499, 39.427437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599895, 37.193508, 40.264610>,  <34.315231, 37.622337, 39.806824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599895, 37.193508, 40.264610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858051, 37.373299, 40.017567>,  <35.012943, 37.481174, 39.869339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858051, 37.373299, 40.017567>,  <34.599895, 37.193508, 40.264610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858051, 37.373299, 40.017567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618207, 0.167553, 0.767950,
		0.448658, -0.877438, -0.169733,
		0.645389, 0.449476, -0.617612,
		35.051666, 37.508141, 39.832283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202816, 36.891678, 40.468861>,  <34.599895, 37.193508, 40.264610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202816, 36.891678, 40.468861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295502, 37.235130, 40.285969>,  <35.351112, 37.441200, 40.176231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.295502, 37.235130, 40.285969>,  <35.202816, 36.891678, 40.468861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295502, 37.235130, 40.285969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401973, 0.343507, 0.848776,
		0.885847, -0.380471, -0.265550,
		0.231717, 0.858630, -0.457234,
		35.365017, 37.492718, 40.148800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878494, 37.034676, 40.692337>,  <35.202816, 36.891678, 40.468861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878494, 37.034676, 40.692337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759930, 37.396603, 40.570068>,  <35.688789, 37.613758, 40.496708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759930, 37.396603, 40.570068>,  <35.878494, 37.034676, 40.692337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759930, 37.396603, 40.570068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394433, 0.407467, 0.823647,
		0.869805, 0.123572, -0.477670,
		-0.296415, 0.904821, -0.305676,
		35.671005, 37.668049, 40.478367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379902, 37.499649, 40.910027>,  <35.878494, 37.034676, 40.692337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379902, 37.499649, 40.910027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032837, 37.689968, 40.852371>,  <35.824596, 37.804157, 40.817780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032837, 37.689968, 40.852371>,  <36.379902, 37.499649, 40.910027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032837, 37.689968, 40.852371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159832, 0.541510, 0.825361,
		0.470756, 0.693099, -0.545896,
		-0.867665, 0.475796, -0.144140,
		35.772537, 37.832706, 40.809128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510414, 38.057499, 41.330139>,  <36.379902, 37.499649, 40.910027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510414, 38.057499, 41.330139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130749, 38.131527, 41.228283>,  <35.902950, 38.175945, 41.167171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.130749, 38.131527, 41.228283>,  <36.510414, 38.057499, 41.330139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130749, 38.131527, 41.228283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116701, 0.544392, 0.830673,
		0.292356, 0.818160, -0.495118,
		-0.949162, 0.185071, -0.254636,
		35.846001, 38.187050, 41.151894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408386, 38.789581, 41.372898>,  <36.510414, 38.057499, 41.330139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408386, 38.789581, 41.372898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040012, 38.641991, 41.423084>,  <35.818989, 38.553436, 41.453194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040012, 38.641991, 41.423084>,  <36.408386, 38.789581, 41.372898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040012, 38.641991, 41.423084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014858, 0.354932, 0.934774,
		-0.389440, 0.859000, -0.332350,
		-0.920932, -0.368976, 0.125462,
		35.763733, 38.531300, 41.460724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905910, 39.303391, 41.617229>,  <36.408386, 38.789581, 41.372898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905910, 39.303391, 41.617229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761181, 38.946396, 41.724968>,  <35.674343, 38.732201, 41.789612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761181, 38.946396, 41.724968>,  <35.905910, 39.303391, 41.617229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761181, 38.946396, 41.724968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111011, 0.328112, 0.938093,
		-0.925612, 0.309529, -0.217796,
		-0.361829, -0.892488, 0.269343,
		35.652634, 38.678650, 41.805771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240955, 39.402740, 41.948742>,  <35.905910, 39.303391, 41.617229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240955, 39.402740, 41.948742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375710, 39.043987, 42.063358>,  <35.456562, 38.828735, 42.132130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375710, 39.043987, 42.063358>,  <35.240955, 39.402740, 41.948742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375710, 39.043987, 42.063358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195142, 0.231215, 0.953131,
		-0.921102, -0.377011, -0.097127,
		0.336884, -0.896885, 0.286543,
		35.476776, 38.774921, 42.149323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739758, 39.218060, 42.430786>,  <35.240955, 39.402740, 41.948742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739758, 39.218060, 42.430786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049309, 38.980446, 42.518639>,  <35.235039, 38.837879, 42.571350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049309, 38.980446, 42.518639>,  <34.739758, 39.218060, 42.430786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049309, 38.980446, 42.518639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168394, 0.141303, 0.975539,
		-0.610534, -0.791935, 0.009320,
		0.773881, -0.594031, 0.219627,
		35.281471, 38.802238, 42.584526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560955, 38.683716, 42.951313>,  <34.739758, 39.218060, 42.430786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560955, 38.683716, 42.951313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959309, 38.691898, 42.986626>,  <35.198322, 38.696808, 43.007812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959309, 38.691898, 42.986626>,  <34.560955, 38.683716, 42.951313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959309, 38.691898, 42.986626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089080, 0.042302, 0.995126,
		0.016625, -0.998895, 0.043950,
		0.995886, 0.020459, 0.088279,
		35.258076, 38.698036, 43.013111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674355, 38.246098, 43.499157>,  <34.560955, 38.683716, 42.951313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674355, 38.246098, 43.499157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004414, 38.471016, 43.477413>,  <35.202450, 38.605968, 43.464367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004414, 38.471016, 43.477413>,  <34.674355, 38.246098, 43.499157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004414, 38.471016, 43.477413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094256, 0.231917, 0.968158,
		0.557003, -0.793746, 0.244365,
		0.825145, 0.562300, -0.054363,
		35.251957, 38.639706, 43.461105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097969, 38.092300, 44.044182>,  <34.674355, 38.246098, 43.499157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097969, 38.092300, 44.044182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231895, 38.459957, 43.961159>,  <35.312252, 38.680550, 43.911346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231895, 38.459957, 43.961159>,  <35.097969, 38.092300, 44.044182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231895, 38.459957, 43.961159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095803, 0.185925, 0.977882,
		0.937399, -0.347299, -0.025805,
		0.334819, 0.919138, -0.207559,
		35.332340, 38.735699, 43.898891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498394, 38.253777, 44.639519>,  <35.097969, 38.092300, 44.044182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498394, 38.253777, 44.639519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462692, 38.615345, 44.472210>,  <35.441269, 38.832287, 44.371826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462692, 38.615345, 44.472210>,  <35.498394, 38.253777, 44.639519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462692, 38.615345, 44.472210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135341, 0.427061, 0.894036,
		0.986770, 0.023191, -0.160457,
		-0.089259, 0.903925, -0.418273,
		35.435913, 38.886524, 44.346729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073711, 38.663307, 44.867016>,  <35.498394, 38.253777, 44.639519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073711, 38.663307, 44.867016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816437, 38.943684, 44.743732>,  <35.662071, 39.111908, 44.669762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816437, 38.943684, 44.743732>,  <36.073711, 38.663307, 44.867016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816437, 38.943684, 44.743732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169172, 0.522654, 0.835592,
		0.746789, 0.485299, -0.454743,
		-0.643185, 0.700941, -0.308213,
		35.623482, 39.153965, 44.651268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397892, 39.201286, 44.882008>,  <36.073711, 38.663307, 44.867016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397892, 39.201286, 44.882008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023365, 39.341740, 44.880470>,  <35.798649, 39.426010, 44.879547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023365, 39.341740, 44.880470>,  <36.397892, 39.201286, 44.882008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023365, 39.341740, 44.880470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159327, 0.434567, 0.886434,
		0.312928, 0.829371, -0.462838,
		-0.936318, 0.351133, -0.003847,
		35.742470, 39.447079, 44.879314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389435, 39.985836, 45.034126>,  <36.397892, 39.201286, 44.882008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389435, 39.985836, 45.034126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036507, 39.817738, 45.118893>,  <35.824749, 39.716877, 45.169754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036507, 39.817738, 45.118893>,  <36.389435, 39.985836, 45.034126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036507, 39.817738, 45.118893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010070, 0.433301, 0.901193,
		-0.470548, 0.797272, -0.378077,
		-0.882317, -0.420248, 0.211917,
		35.771812, 39.691662, 45.182468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260517, 40.482582, 45.524532>,  <36.389435, 39.985836, 45.034126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260517, 40.482582, 45.524532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031315, 40.155960, 45.552547>,  <35.893795, 39.959988, 45.569359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.031315, 40.155960, 45.552547>,  <36.260517, 40.482582, 45.524532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031315, 40.155960, 45.552547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152545, 0.190234, 0.969815,
		-0.805230, 0.545024, -0.233566,
		-0.573005, -0.816553, 0.070041,
		35.859413, 39.910995, 45.573559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716805, 40.702911, 45.891876>,  <36.260517, 40.482582, 45.524532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716805, 40.702911, 45.891876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639561, 40.312313, 45.930172>,  <35.593212, 40.077953, 45.953152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639561, 40.312313, 45.930172>,  <35.716805, 40.702911, 45.891876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639561, 40.312313, 45.930172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147332, 0.125332, 0.981114,
		-0.970052, 0.175360, -0.168072,
		-0.193113, -0.976494, 0.095743,
		35.581627, 40.019363, 45.958897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988323, 40.603973, 46.128746>,  <35.716805, 40.702911, 45.891876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988323, 40.603973, 46.128746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218918, 40.304214, 46.259018>,  <35.357273, 40.124359, 46.337181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218918, 40.304214, 46.259018>,  <34.988323, 40.603973, 46.128746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218918, 40.304214, 46.259018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372216, 0.113974, 0.921122,
		-0.727405, -0.652237, -0.213233,
		0.576487, -0.749398, 0.325678,
		35.391865, 40.079395, 46.356720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613323, 40.252487, 46.723370>,  <34.988323, 40.603973, 46.128746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613323, 40.252487, 46.723370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997498, 40.145111, 46.753040>,  <35.228001, 40.080685, 46.770844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997498, 40.145111, 46.753040>,  <34.613323, 40.252487, 46.723370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997498, 40.145111, 46.753040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023137, 0.188524, 0.981796,
		-0.277536, -0.944669, 0.174855,
		0.960437, -0.268438, 0.074179,
		35.285629, 40.064579, 46.775295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645657, 39.744751, 47.170429>,  <34.613323, 40.252487, 46.723370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645657, 39.744751, 47.170429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022099, 39.879902, 47.165436>,  <35.247963, 39.960995, 47.162437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022099, 39.879902, 47.165436>,  <34.645657, 39.744751, 47.170429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022099, 39.879902, 47.165436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004835, 0.050375, 0.998719,
		0.338078, -0.939840, 0.049041,
		0.941106, 0.337882, -0.012487,
		35.304432, 39.981266, 47.161690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830002, 39.620026, 47.844875>,  <34.645657, 39.744751, 47.170429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830002, 39.620026, 47.844875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143002, 39.849072, 47.747055>,  <35.330803, 39.986500, 47.688362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143002, 39.849072, 47.747055>,  <34.830002, 39.620026, 47.844875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143002, 39.849072, 47.747055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119732, 0.247052, 0.961577,
		0.611031, -0.781714, 0.124758,
		0.782500, 0.572615, -0.244552,
		35.377750, 40.020855, 47.673691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402122, 39.402237, 48.159351>,  <34.830002, 39.620026, 47.844875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402122, 39.402237, 48.159351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506310, 39.782909, 48.094284>,  <35.568821, 40.011314, 48.055244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506310, 39.782909, 48.094284>,  <35.402122, 39.402237, 48.159351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506310, 39.782909, 48.094284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261405, 0.092674, 0.960770,
		0.929421, -0.292771, -0.224635,
		0.260468, 0.951681, -0.162665,
		35.584450, 40.068413, 48.045486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079979, 39.471905, 48.439465>,  <35.402122, 39.402237, 48.159351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079979, 39.471905, 48.439465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954285, 39.847351, 48.382534>,  <35.878868, 40.072620, 48.348377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954285, 39.847351, 48.382534>,  <36.079979, 39.471905, 48.439465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954285, 39.847351, 48.382534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287608, 0.237000, 0.927961,
		0.904730, 0.250666, -0.344428,
		-0.314238, 0.938614, -0.142328,
		35.860012, 40.128937, 48.339836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567287, 39.789982, 48.853115>,  <36.079979, 39.471905, 48.439465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567287, 39.789982, 48.853115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289177, 40.069172, 48.784500>,  <36.122311, 40.236687, 48.743332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289177, 40.069172, 48.784500>,  <36.567287, 39.789982, 48.853115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289177, 40.069172, 48.784500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103540, 0.333435, 0.937070,
		0.711246, 0.633762, -0.304097,
		-0.695276, 0.697973, -0.171534,
		36.080593, 40.278564, 48.733040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910362, 40.515240, 48.877628>,  <36.567287, 39.789982, 48.853115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910362, 40.515240, 48.877628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524025, 40.504238, 48.980694>,  <36.292221, 40.497639, 49.042534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.524025, 40.504238, 48.980694>,  <36.910362, 40.515240, 48.877628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524025, 40.504238, 48.980694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238703, 0.292495, 0.925995,
		-0.100835, 0.955871, -0.275939,
		-0.965843, -0.027505, 0.257663,
		36.234272, 40.495987, 49.057991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832413, 41.015263, 49.372055>,  <36.910362, 40.515240, 48.877628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832413, 41.015263, 49.372055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488159, 40.814896, 49.408676>,  <36.281605, 40.694675, 49.430649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488159, 40.814896, 49.408676>,  <36.832413, 41.015263, 49.372055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488159, 40.814896, 49.408676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037174, 0.117510, 0.992376,
		-0.507859, 0.857480, -0.082513,
		-0.860638, -0.500919, 0.091554,
		36.229969, 40.664619, 49.436142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414192, 41.410378, 49.868202>,  <36.832413, 41.015263, 49.372055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414192, 41.410378, 49.868202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271404, 41.037083, 49.884422>,  <36.185730, 40.813107, 49.894154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271404, 41.037083, 49.884422>,  <36.414192, 41.410378, 49.868202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271404, 41.037083, 49.884422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030744, 0.055119, 0.998006,
		-0.933610, 0.355011, -0.048367,
		-0.356969, -0.933236, 0.040546,
		36.164314, 40.757111, 49.896587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835751, 41.518982, 50.287640>,  <36.414192, 41.410378, 49.868202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835751, 41.518982, 50.287640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931511, 41.132332, 50.324135>,  <35.988968, 40.900341, 50.346031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.931511, 41.132332, 50.324135>,  <35.835751, 41.518982, 50.287640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931511, 41.132332, 50.324135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013457, 0.090660, 0.995791,
		-0.970827, -0.239624, 0.008696,
		0.239404, -0.966623, 0.091240,
		36.003334, 40.842346, 50.351505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361591, 41.093941, 50.660381>,  <35.835751, 41.518982, 50.287640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361591, 41.093941, 50.660381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685509, 40.869110, 50.727673>,  <35.879860, 40.734211, 50.768047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685509, 40.869110, 50.727673>,  <35.361591, 41.093941, 50.660381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685509, 40.869110, 50.727673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027196, 0.250467, 0.967743,
		-0.586084, -0.788248, 0.187540,
		0.809794, -0.562078, 0.168232,
		35.928448, 40.700485, 50.778141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241642, 40.447060, 51.184544>,  <35.361591, 41.093941, 50.660381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241642, 40.447060, 51.184544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605537, 40.613113, 51.182453>,  <35.823875, 40.712746, 51.181198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605537, 40.613113, 51.182453>,  <35.241642, 40.447060, 51.184544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605537, 40.613113, 51.182453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107737, 0.248217, 0.962695,
		0.400950, -0.875241, 0.270540,
		0.909742, 0.415140, -0.005227,
		35.878460, 40.737656, 51.180885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543915, 40.321522, 51.843849>,  <35.241642, 40.447060, 51.184544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543915, 40.321522, 51.843849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.711906, 40.651253, 51.692005>,  <35.812702, 40.849091, 51.600899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.711906, 40.651253, 51.692005>,  <35.543915, 40.321522, 51.843849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711906, 40.651253, 51.692005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079402, 0.383308, 0.920201,
		0.904055, -0.416603, 0.095527,
		0.419975, 0.824328, -0.379611,
		35.837898, 40.898552, 51.578121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838558, 40.641922, 52.391972>,  <35.543915, 40.321522, 51.843849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838558, 40.641922, 52.391972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857853, 40.944878, 52.131496>,  <35.869431, 41.126652, 51.975212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.857853, 40.944878, 52.131496>,  <35.838558, 40.641922, 52.391972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857853, 40.944878, 52.131496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134167, 0.641123, 0.755619,
		0.989784, -0.123813, -0.070693,
		0.048233, 0.757385, -0.651185,
		35.872322, 41.172092, 51.936142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287243, 40.384281, 51.950752>,  <35.838558, 40.641922, 52.391972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287243, 40.384281, 51.950752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981842, 40.212105, 52.143326>,  <35.798599, 40.108799, 52.258869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981842, 40.212105, 52.143326>,  <36.287243, 40.384281, 51.950752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981842, 40.212105, 52.143326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053317, -0.700925, -0.711240,
		0.643596, -0.568705, 0.512210,
		-0.763506, -0.430441, 0.481434,
		35.752789, 40.082973, 52.287754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416580, 39.674042, 52.040840>,  <36.287243, 40.384281, 51.950752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416580, 39.674042, 52.040840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017361, 39.650291, 52.048618>,  <35.777828, 39.636044, 52.053288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017361, 39.650291, 52.048618>,  <36.416580, 39.674042, 52.040840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017361, 39.650291, 52.048618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026640, -0.685991, -0.727123,
		0.056514, -0.725184, 0.686232,
		-0.998047, -0.059373, 0.019449,
		35.717945, 39.632481, 52.054455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276817, 39.632980, 52.024239>,  <36.416580, 39.674042, 52.040840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276817, 39.632980, 52.024239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414967, 39.265583, 52.101261>,  <37.497856, 39.045143, 52.147476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.414967, 39.265583, 52.101261>,  <37.276817, 39.632980, 52.024239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414967, 39.265583, 52.101261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697093, 0.388460, 0.602628,
		-0.628312, -0.073904, 0.774443,
		0.345377, -0.918497, 0.192557,
		37.518581, 38.990032, 52.159027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788963, 39.625126, 52.519363>,  <37.276817, 39.632980, 52.024239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788963, 39.625126, 52.519363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719559, 39.309219, 52.754707>,  <37.677917, 39.119675, 52.895912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719559, 39.309219, 52.754707>,  <37.788963, 39.625126, 52.519363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719559, 39.309219, 52.754707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380940, -0.497097, -0.779602,
		0.908174, -0.359397, -0.214602,
		-0.173508, -0.789765, 0.588360,
		37.667507, 39.072289, 52.931213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109818, 38.947590, 52.196445>,  <37.788963, 39.625126, 52.519363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109818, 38.947590, 52.196445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805820, 38.880074, 52.447498>,  <37.623421, 38.839565, 52.598129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805820, 38.880074, 52.447498>,  <38.109818, 38.947590, 52.196445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805820, 38.880074, 52.447498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474676, -0.515493, -0.713407,
		0.443954, -0.840106, 0.311651,
		-0.759992, -0.168787, 0.627634,
		37.577824, 38.829437, 52.635788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950245, 38.267818, 52.081944>,  <38.109818, 38.947590, 52.196445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950245, 38.267818, 52.081944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627365, 38.421898, 52.260849>,  <37.433636, 38.514343, 52.368195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.627365, 38.421898, 52.260849>,  <37.950245, 38.267818, 52.081944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627365, 38.421898, 52.260849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579871, -0.375827, -0.722844,
		-0.110341, -0.842839, 0.526732,
		-0.807202, 0.385196, 0.447268,
		37.385204, 38.537457, 52.395031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367584, 37.770363, 52.241882>,  <37.950245, 38.267818, 52.081944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367584, 37.770363, 52.241882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227177, 38.126213, 52.125031>,  <37.142933, 38.339725, 52.054920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227177, 38.126213, 52.125031>,  <37.367584, 37.770363, 52.241882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227177, 38.126213, 52.125031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510619, -0.443380, -0.736669,
		-0.784889, -0.109418, 0.609898,
		-0.351022, 0.889630, -0.292134,
		37.121872, 38.393101, 52.037392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760918, 37.612411, 52.211922>,  <37.367584, 37.770363, 52.241882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760918, 37.612411, 52.211922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772320, 37.925396, 51.963100>,  <36.779163, 38.113186, 51.813808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.772320, 37.925396, 51.963100>,  <36.760918, 37.612411, 52.211922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772320, 37.925396, 51.963100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505486, -0.525585, -0.684284,
		-0.862364, 0.333946, 0.380537,
		0.028510, 0.782458, -0.622051,
		36.780872, 38.160133, 51.776485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086552, 37.733196, 51.925819>,  <36.760918, 37.612411, 52.211922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086552, 37.733196, 51.925819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312115, 37.923809, 51.656029>,  <36.447453, 38.038177, 51.494152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.312115, 37.923809, 51.656029>,  <36.086552, 37.733196, 51.925819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312115, 37.923809, 51.656029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530587, -0.416795, -0.738078,
		-0.632841, 0.774077, 0.017811,
		0.563906, 0.476536, -0.674481,
		36.481285, 38.066769, 51.453686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558529, 37.957531, 51.439449>,  <36.086552, 37.733196, 51.925819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558529, 37.957531, 51.439449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918194, 37.948738, 51.264629>,  <36.133995, 37.943462, 51.159737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918194, 37.948738, 51.264629>,  <35.558529, 37.957531, 51.439449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918194, 37.948738, 51.264629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383734, -0.519692, -0.763328,
		-0.210352, 0.854071, -0.475725,
		0.899166, -0.021984, -0.437054,
		36.187943, 37.942142, 51.133514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385487, 38.259884, 50.660606>,  <35.558529, 37.957531, 51.439449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385487, 38.259884, 50.660606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735931, 38.067139, 50.654503>,  <35.946198, 37.951492, 50.650841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.735931, 38.067139, 50.654503>,  <35.385487, 38.259884, 50.660606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735931, 38.067139, 50.654503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241643, -0.411514, -0.878786,
		0.417178, 0.773602, -0.476972,
		0.876112, -0.481867, -0.015261,
		35.998764, 37.922577, 50.649925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618389, 38.413586, 50.023205>,  <35.385487, 38.259884, 50.660606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618389, 38.413586, 50.023205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844467, 38.097233, 50.117073>,  <35.980114, 37.907421, 50.173393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844467, 38.097233, 50.117073>,  <35.618389, 38.413586, 50.023205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844467, 38.097233, 50.117073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088585, -0.341002, -0.935880,
		0.820190, 0.508163, -0.262791,
		0.565191, -0.790878, 0.234671,
		36.014023, 37.859970, 50.187473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003300, 38.213684, 49.398903>,  <35.618389, 38.413586, 50.023205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003300, 38.213684, 49.398903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024448, 37.899494, 49.645557>,  <36.037136, 37.710979, 49.793549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024448, 37.899494, 49.645557>,  <36.003300, 38.213684, 49.398903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024448, 37.899494, 49.645557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018458, -0.618160, -0.785835,
		0.998431, 0.030164, -0.047180,
		0.052868, -0.785473, 0.616634,
		36.040310, 37.663853, 49.830547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629009, 37.782490, 49.211010>,  <36.003300, 38.213684, 49.398903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629009, 37.782490, 49.211010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358128, 37.546494, 49.386879>,  <36.195599, 37.404896, 49.492401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.358128, 37.546494, 49.386879>,  <36.629009, 37.782490, 49.211010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358128, 37.546494, 49.386879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115891, -0.675606, -0.728097,
		0.726614, -0.442115, 0.525895,
		-0.677201, -0.589993, 0.439668,
		36.154968, 37.369495, 49.518780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855957, 37.085083, 49.124962>,  <36.629009, 37.782490, 49.211010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855957, 37.085083, 49.124962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469021, 37.033348, 49.212166>,  <36.236858, 37.002308, 49.264488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469021, 37.033348, 49.212166>,  <36.855957, 37.085083, 49.124962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469021, 37.033348, 49.212166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038485, -0.775132, -0.630626,
		0.250549, -0.618419, 0.744838,
		-0.967339, -0.129338, 0.218009,
		36.178818, 36.994545, 49.277569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732548, 36.337601, 49.201458>,  <36.855957, 37.085083, 49.124962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732548, 36.337601, 49.201458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361252, 36.473492, 49.140842>,  <36.138474, 36.555027, 49.104473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361252, 36.473492, 49.140842>,  <36.732548, 36.337601, 49.201458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361252, 36.473492, 49.140842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134332, -0.686001, -0.715092,
		-0.346889, -0.643418, 0.682407,
		-0.928236, 0.339728, -0.151535,
		36.082783, 36.575409, 49.095383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276737, 35.807838, 49.313305>,  <36.732548, 36.337601, 49.201458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276737, 35.807838, 49.313305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072552, 36.070259, 49.090942>,  <35.950043, 36.227711, 48.957527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072552, 36.070259, 49.090942>,  <36.276737, 35.807838, 49.313305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072552, 36.070259, 49.090942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140259, -0.701340, -0.698892,
		-0.848385, -0.278786, 0.450023,
		-0.510460, 0.656049, -0.555904,
		35.919415, 36.267075, 48.924171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616924, 35.479340, 49.102966>,  <36.276737, 35.807838, 49.313305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616924, 35.479340, 49.102966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659206, 35.772907, 48.834579>,  <35.684574, 35.949047, 48.673546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659206, 35.772907, 48.834579>,  <35.616924, 35.479340, 49.102966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659206, 35.772907, 48.834579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237985, -0.636466, -0.733671,
		-0.965500, 0.237230, 0.107385,
		0.105702, 0.733916, -0.670966,
		35.690918, 35.993080, 48.633289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383766, 35.141380, 48.560375>,  <35.616924, 35.479340, 49.102966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383766, 35.141380, 48.560375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511906, 35.469509, 48.370872>,  <35.588791, 35.666386, 48.257172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511906, 35.469509, 48.370872>,  <35.383766, 35.141380, 48.560375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511906, 35.469509, 48.370872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144625, -0.451899, -0.880267,
		-0.936193, 0.350514, -0.026129,
		0.320353, 0.820322, -0.473758,
		35.608013, 35.715607, 48.228745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841599, 35.248043, 48.047127>,  <35.383766, 35.141380, 48.560375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841599, 35.248043, 48.047127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174870, 35.439655, 47.936607>,  <35.374832, 35.554623, 47.870296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174870, 35.439655, 47.936607>,  <34.841599, 35.248043, 48.047127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174870, 35.439655, 47.936607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134326, -0.309368, -0.941408,
		-0.536440, 0.821476, -0.193413,
		0.833180, 0.479028, -0.276303,
		35.424824, 35.583363, 47.853718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672176, 35.609795, 47.457592>,  <34.841599, 35.248043, 48.047127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672176, 35.609795, 47.457592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069035, 35.627739, 47.410900>,  <35.307152, 35.638504, 47.382885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069035, 35.627739, 47.410900>,  <34.672176, 35.609795, 47.457592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069035, 35.627739, 47.410900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101245, -0.259802, -0.960340,
		-0.073407, 0.964619, -0.253221,
		0.992150, 0.044858, -0.116734,
		35.366680, 35.641197, 47.375881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874191, 36.025558, 46.937279>,  <34.672176, 35.609795, 47.457592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874191, 36.025558, 46.937279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156822, 35.745056, 46.975216>,  <35.326401, 35.576756, 46.997978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156822, 35.745056, 46.975216>,  <34.874191, 36.025558, 46.937279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156822, 35.745056, 46.975216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083817, -0.216017, -0.972785,
		0.702657, 0.679396, -0.211409,
		0.706574, -0.701255, 0.094841,
		35.368793, 35.534679, 47.003670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171490, 36.032322, 46.301308>,  <34.874191, 36.025558, 46.937279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171490, 36.032322, 46.301308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289165, 35.682030, 46.454433>,  <35.359772, 35.471855, 46.546310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289165, 35.682030, 46.454433>,  <35.171490, 36.032322, 46.301308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289165, 35.682030, 46.454433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094924, -0.425330, -0.900046,
		0.951023, 0.228442, -0.208254,
		0.294185, -0.875733, 0.382814,
		35.377422, 35.419312, 46.569279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564800, 35.690388, 45.724201>,  <35.171490, 36.032322, 46.301308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564800, 35.690388, 45.724201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487518, 35.392982, 45.980282>,  <35.441151, 35.214539, 46.133930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487518, 35.392982, 45.980282>,  <35.564800, 35.690388, 45.724201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487518, 35.392982, 45.980282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024717, -0.648602, -0.760727,
		0.980847, -0.162799, 0.106935,
		-0.193204, -0.743513, 0.640203,
		35.429558, 35.169930, 46.172344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998375, 35.088661, 45.423409>,  <35.564800, 35.690388, 45.724201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998375, 35.088661, 45.423409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738506, 34.929272, 45.682373>,  <35.582584, 34.833637, 45.837753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738506, 34.929272, 45.682373>,  <35.998375, 35.088661, 45.423409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738506, 34.929272, 45.682373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148637, -0.768605, -0.622217,
		0.745544, -0.500466, 0.440112,
		-0.649671, -0.398473, 0.647416,
		35.543606, 34.809731, 45.876598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090839, 34.352741, 45.522079>,  <35.998375, 35.088661, 45.423409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090839, 34.352741, 45.522079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707317, 34.412968, 45.618435>,  <35.477203, 34.449104, 45.676247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707317, 34.412968, 45.618435>,  <36.090839, 34.352741, 45.522079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707317, 34.412968, 45.618435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280800, -0.630648, -0.723488,
		0.042986, -0.761324, 0.646945,
		-0.958803, 0.150562, 0.240888,
		35.419678, 34.458138, 45.690701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862457, 33.696335, 45.516087>,  <36.090839, 34.352741, 45.522079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862457, 33.696335, 45.516087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541058, 33.930492, 45.472805>,  <35.348217, 34.070988, 45.446838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541058, 33.930492, 45.472805>,  <35.862457, 33.696335, 45.516087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541058, 33.930492, 45.472805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409652, -0.675579, -0.613008,
		-0.431949, -0.448225, 0.782633,
		-0.803496, 0.585396, -0.108199,
		35.300011, 34.106110, 45.440346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159302, 33.281197, 45.637299>,  <35.862457, 33.696335, 45.516087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159302, 33.281197, 45.637299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050793, 33.606091, 45.430733>,  <34.985687, 33.801029, 45.306793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050793, 33.606091, 45.430733>,  <35.159302, 33.281197, 45.637299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050793, 33.606091, 45.430733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405133, -0.583044, -0.704221,
		-0.873084, 0.018176, 0.487230,
		-0.271277, 0.812237, -0.516410,
		34.969410, 33.849762, 45.275810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499794, 33.247688, 45.438713>,  <35.159302, 33.281197, 45.637299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499794, 33.247688, 45.438713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644161, 33.503468, 45.167171>,  <34.730782, 33.656933, 45.004246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644161, 33.503468, 45.167171>,  <34.499794, 33.247688, 45.438713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644161, 33.503468, 45.167171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431825, -0.530601, -0.729376,
		-0.826598, 0.556394, 0.084624,
		0.360919, 0.639444, -0.678859,
		34.752438, 33.695301, 44.963512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007103, 33.229362, 44.869522>,  <34.499794, 33.247688, 45.438713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007103, 33.229362, 44.869522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325539, 33.392746, 44.690903>,  <34.516602, 33.490776, 44.583733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325539, 33.392746, 44.690903>,  <34.007103, 33.229362, 44.869522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325539, 33.392746, 44.690903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306043, -0.364854, -0.879329,
		-0.522092, 0.836688, -0.165451,
		0.796089, 0.408455, -0.446550,
		34.564365, 33.515282, 44.556938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677383, 33.659760, 44.249886>,  <34.007103, 33.229362, 44.869522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677383, 33.659760, 44.249886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062588, 33.603603, 44.157879>,  <34.293709, 33.569908, 44.102676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062588, 33.603603, 44.157879>,  <33.677383, 33.659760, 44.249886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062588, 33.603603, 44.157879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255664, -0.206250, -0.944509,
		0.085158, 0.968376, -0.234513,
		0.963008, -0.140389, -0.230015,
		34.351490, 33.561485, 44.088875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777172, 33.893307, 43.618790>,  <33.677383, 33.659760, 44.249886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777172, 33.893307, 43.618790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106834, 33.668873, 43.649635>,  <34.304630, 33.534210, 43.668144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106834, 33.668873, 43.649635>,  <33.777172, 33.893307, 43.618790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106834, 33.668873, 43.649635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070911, -0.237310, -0.968842,
		0.561906, 0.793009, -0.235368,
		0.824156, -0.561089, 0.077113,
		34.354080, 33.500546, 43.672768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297195, 34.143444, 43.092564>,  <33.777172, 33.893307, 43.618790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297195, 34.143444, 43.092564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378067, 33.759502, 43.170341>,  <34.426590, 33.529137, 43.217007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378067, 33.759502, 43.170341>,  <34.297195, 34.143444, 43.092564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378067, 33.759502, 43.170341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065881, -0.211424, -0.975171,
		0.977130, 0.184351, -0.105982,
		0.202181, -0.959851, 0.194443,
		34.438721, 33.471546, 43.228676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770466, 33.972954, 42.675667>,  <34.297195, 34.143444, 43.092564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770466, 33.972954, 42.675667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641445, 33.606575, 42.771160>,  <34.564034, 33.386745, 42.828457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641445, 33.606575, 42.771160>,  <34.770466, 33.972954, 42.675667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641445, 33.606575, 42.771160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115497, -0.288418, -0.950513,
		0.939477, -0.279021, 0.198821,
		-0.322556, -0.915949, 0.238736,
		34.544678, 33.331791, 42.842781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163769, 33.477520, 42.250473>,  <34.770466, 33.972954, 42.675667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163769, 33.477520, 42.250473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830429, 33.291656, 42.370224>,  <34.630424, 33.180138, 42.442074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830429, 33.291656, 42.370224>,  <35.163769, 33.477520, 42.250473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830429, 33.291656, 42.370224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109055, -0.392755, -0.913154,
		0.541886, -0.793622, 0.276628,
		-0.833347, -0.464658, 0.299377,
		34.580425, 33.152260, 42.460037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110607, 32.795437, 41.928684>,  <35.163769, 33.477520, 42.250473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110607, 32.795437, 41.928684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727543, 32.833908, 42.037231>,  <34.497704, 32.856991, 42.102360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.727543, 32.833908, 42.037231>,  <35.110607, 32.795437, 41.928684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727543, 32.833908, 42.037231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283254, -0.145975, -0.947870,
		-0.051548, -0.984602, 0.167036,
		-0.957659, 0.096174, 0.271368,
		34.440247, 32.862759, 42.118641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813190, 32.285526, 41.526432>,  <35.110607, 32.795437, 41.928684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813190, 32.285526, 41.526432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510658, 32.522530, 41.637352>,  <34.329140, 32.664730, 41.703903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510658, 32.522530, 41.637352>,  <34.813190, 32.285526, 41.526432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510658, 32.522530, 41.637352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444333, -0.154169, -0.882496,
		-0.480136, -0.790673, 0.379875,
		-0.756332, 0.592509, 0.277300,
		34.283760, 32.700283, 41.720543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209553, 31.894264, 41.259518>,  <34.813190, 32.285526, 41.526432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209553, 31.894264, 41.259518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083893, 32.268719, 41.322712>,  <34.008495, 32.493393, 41.360626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083893, 32.268719, 41.322712>,  <34.209553, 31.894264, 41.259518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083893, 32.268719, 41.322712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700634, -0.116321, -0.703976,
		-0.640640, -0.331844, 0.692431,
		-0.314155, 0.936136, 0.157981,
		33.989647, 32.549561, 41.370106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493435, 31.893124, 41.278442>,  <34.209553, 31.894264, 41.259518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493435, 31.893124, 41.278442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602337, 32.266491, 41.184971>,  <33.667679, 32.490513, 41.128887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602337, 32.266491, 41.184971>,  <33.493435, 31.893124, 41.278442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602337, 32.266491, 41.184971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507004, -0.067248, -0.859317,
		-0.817816, 0.352435, 0.454937,
		0.272259, 0.933417, -0.233682,
		33.684013, 32.546516, 41.114864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938381, 32.222904, 41.075359>,  <33.493435, 31.893124, 41.278442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938381, 32.222904, 41.075359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235126, 32.422318, 40.895981>,  <33.413174, 32.541965, 40.788353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235126, 32.422318, 40.895981>,  <32.938381, 32.222904, 41.075359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235126, 32.422318, 40.895981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492913, -0.047964, -0.868756,
		-0.454611, 0.865544, 0.210150,
		0.741867, 0.498531, -0.448442,
		33.457687, 32.571877, 40.761448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628235, 32.740112, 40.713448>,  <32.938381, 32.222904, 41.075359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628235, 32.740112, 40.713448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998352, 32.722233, 40.562801>,  <33.220421, 32.711506, 40.472412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.998352, 32.722233, 40.562801>,  <32.628235, 32.740112, 40.713448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998352, 32.722233, 40.562801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375492, 0.031700, -0.926283,
		0.053342, 0.998497, 0.012548,
		0.925289, -0.044698, -0.376619,
		33.275940, 32.708824, 40.449818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675198, 33.276466, 40.146076>,  <32.628235, 32.740112, 40.713448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675198, 33.276466, 40.146076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983620, 33.038799, 40.054478>,  <33.168671, 32.896198, 39.999519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.983620, 33.038799, 40.054478>,  <32.675198, 33.276466, 40.146076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.983620, 33.038799, 40.054478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301773, -0.024290, -0.953070,
		0.560725, 0.803972, -0.198034,
		0.771052, -0.594171, -0.228996,
		33.214935, 32.860546, 39.985779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937199, 33.663948, 39.616325>,  <32.675198, 33.276466, 40.146076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937199, 33.663948, 39.616325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100060, 33.300980, 39.574711>,  <33.197777, 33.083199, 39.549740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100060, 33.300980, 39.574711>,  <32.937199, 33.663948, 39.616325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100060, 33.300980, 39.574711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068551, 0.083230, -0.994170,
		0.910786, 0.411906, -0.028317,
		0.407148, -0.907417, -0.104041,
		33.222202, 33.028755, 39.543499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556591, 33.709923, 39.164745>,  <32.937199, 33.663948, 39.616325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556591, 33.709923, 39.164745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437378, 33.328102, 39.165451>,  <33.365849, 33.099010, 39.165874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.437378, 33.328102, 39.165451>,  <33.556591, 33.709923, 39.164745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437378, 33.328102, 39.165451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064479, 0.018292, -0.997751,
		0.952375, -0.297479, -0.067000,
		-0.298036, -0.954553, 0.001760,
		33.347969, 33.041737, 39.165977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944923, 33.420464, 38.707249>,  <33.556591, 33.709923, 39.164745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944923, 33.420464, 38.707249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626217, 33.182171, 38.747765>,  <33.434994, 33.039196, 38.772072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626217, 33.182171, 38.747765>,  <33.944923, 33.420464, 38.707249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626217, 33.182171, 38.747765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207438, 0.112216, -0.971791,
		0.567565, -0.795302, -0.212989,
		-0.796768, -0.595736, 0.101286,
		33.387188, 33.003448, 38.778149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997887, 33.078815, 38.175873>,  <33.944923, 33.420464, 38.707249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997887, 33.078815, 38.175873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613945, 33.012672, 38.266510>,  <33.383579, 32.972988, 38.320892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.613945, 33.012672, 38.266510>,  <33.997887, 33.078815, 38.175873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613945, 33.012672, 38.266510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225780, -0.023941, -0.973884,
		0.166463, -0.985943, -0.014355,
		-0.959851, -0.165357, 0.226591,
		33.325989, 32.963066, 38.334488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483463, 32.773983, 37.648605>,  <33.997887, 33.078815, 38.175873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483463, 32.773983, 37.648605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394093, 32.895977, 37.278294>,  <34.340469, 32.969173, 37.056107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394093, 32.895977, 37.278294>,  <34.483463, 32.773983, 37.648605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394093, 32.895977, 37.278294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974693, -0.062625, 0.214597,
		0.007472, 0.950296, 0.311260,
		-0.223423, 0.304986, -0.925779,
		34.327065, 32.987473, 37.000561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517059, 33.447426, 37.345085>,  <34.483463, 32.773983, 37.648605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517059, 33.447426, 37.345085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829937, 33.592758, 37.142635>,  <35.017666, 33.679958, 37.021164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.829937, 33.592758, 37.142635>,  <34.517059, 33.447426, 37.345085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829937, 33.592758, 37.142635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621788, -0.403953, 0.670970,
		0.039332, -0.839533, -0.541884,
		0.782197, 0.363328, -0.506123,
		35.064594, 33.701756, 36.990799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108265, 32.960938, 37.192406>,  <34.517059, 33.447426, 37.345085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108265, 32.960938, 37.192406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313919, 33.301876, 37.154083>,  <35.437313, 33.506439, 37.131092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313919, 33.301876, 37.154083>,  <35.108265, 32.960938, 37.192406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313919, 33.301876, 37.154083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703285, -0.354991, 0.615932,
		0.490976, -0.384048, -0.781953,
		0.514134, 0.852343, -0.095803,
		35.468159, 33.557579, 37.125343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866005, 32.798332, 37.118313>,  <35.108265, 32.960938, 37.192406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866005, 32.798332, 37.118313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833790, 33.167561, 37.268757>,  <35.814461, 33.389095, 37.359024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833790, 33.167561, 37.268757>,  <35.866005, 32.798332, 37.118313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833790, 33.167561, 37.268757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651351, -0.236884, 0.720853,
		0.754491, 0.303034, -0.582164,
		-0.080538, 0.923069, 0.376108,
		35.809628, 33.444481, 37.381588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462788, 32.939823, 37.431347>,  <35.866005, 32.798332, 37.118313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462788, 32.939823, 37.431347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287441, 33.263649, 37.587521>,  <36.182232, 33.457943, 37.681225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287441, 33.263649, 37.587521>,  <36.462788, 32.939823, 37.431347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287441, 33.263649, 37.587521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671039, 0.005796, 0.741399,
		0.597949, 0.587000, -0.545791,
		-0.438365, 0.809566, 0.390435,
		36.155933, 33.506519, 37.704651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017166, 33.362492, 37.553432>,  <36.462788, 32.939823, 37.431347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017166, 33.362492, 37.553432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714088, 33.400806, 37.811649>,  <36.532242, 33.423794, 37.966579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714088, 33.400806, 37.811649>,  <37.017166, 33.362492, 37.553432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714088, 33.400806, 37.811649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652413, 0.087119, 0.752839,
		0.015874, 0.991582, -0.128503,
		-0.757697, 0.095787, 0.645539,
		36.486778, 33.429543, 38.005310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270424, 33.949009, 37.860210>,  <37.017166, 33.362492, 37.553432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270424, 33.949009, 37.860210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001823, 33.772835, 38.098572>,  <36.840664, 33.667130, 38.241589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001823, 33.772835, 38.098572>,  <37.270424, 33.949009, 37.860210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001823, 33.772835, 38.098572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706500, -0.137995, 0.694129,
		-0.223490, 0.887114, 0.403834,
		-0.671498, -0.440439, 0.595905,
		36.800373, 33.640701, 38.277344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548046, 34.091717, 38.552975>,  <37.270424, 33.949009, 37.860210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548046, 34.091717, 38.552975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254341, 33.833355, 38.636566>,  <37.078117, 33.678337, 38.686722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254341, 33.833355, 38.636566>,  <37.548046, 34.091717, 38.552975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254341, 33.833355, 38.636566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411182, -0.178197, 0.893966,
		-0.540178, 0.742329, 0.396428,
		-0.734259, -0.645905, 0.208974,
		37.034061, 33.639584, 38.699257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394150, 34.246361, 39.207470>,  <37.548046, 34.091717, 38.552975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394150, 34.246361, 39.207470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192017, 33.901478, 39.193470>,  <37.070736, 33.694546, 39.185070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.192017, 33.901478, 39.193470>,  <37.394150, 34.246361, 39.207470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192017, 33.901478, 39.193470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260581, -0.191136, 0.946343,
		-0.822637, 0.469103, 0.321264,
		-0.505337, -0.862212, -0.034996,
		37.040417, 33.642815, 39.182972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839329, 34.249859, 39.848446>,  <37.394150, 34.246361, 39.207470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839329, 34.249859, 39.848446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947620, 33.886230, 39.721767>,  <37.012596, 33.668053, 39.645760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.947620, 33.886230, 39.721767>,  <36.839329, 34.249859, 39.848446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947620, 33.886230, 39.721767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300801, -0.232623, 0.924881,
		-0.914453, -0.345655, 0.210471,
		0.270729, -0.909071, -0.316696,
		37.028839, 33.613510, 39.626759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535198, 33.837555, 40.258251>,  <36.839329, 34.249859, 39.848446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535198, 33.837555, 40.258251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847965, 33.616589, 40.142708>,  <37.035625, 33.484009, 40.073383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847965, 33.616589, 40.142708>,  <36.535198, 33.837555, 40.258251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847965, 33.616589, 40.142708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230501, -0.174318, 0.957331,
		-0.579198, -0.815138, -0.008970,
		0.781921, -0.552416, -0.288854,
		37.082542, 33.450863, 40.056053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558865, 33.378113, 40.784866>,  <36.535198, 33.837555, 40.258251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558865, 33.378113, 40.784866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919994, 33.345901, 40.615906>,  <37.136673, 33.326572, 40.514530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.919994, 33.345901, 40.615906>,  <36.558865, 33.378113, 40.784866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919994, 33.345901, 40.615906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403594, -0.180317, 0.896994,
		-0.148395, -0.980307, -0.130296,
		0.902823, -0.080523, -0.422405,
		37.190842, 33.321743, 40.489185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818680, 32.740292, 41.070251>,  <36.558865, 33.378113, 40.784866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818680, 32.740292, 41.070251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132065, 32.959846, 40.953697>,  <37.320095, 33.091579, 40.883766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132065, 32.959846, 40.953697>,  <36.818680, 32.740292, 41.070251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132065, 32.959846, 40.953697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447247, -0.172486, 0.877621,
		0.431457, -0.817905, -0.380626,
		0.783464, 0.548890, -0.291385,
		37.367104, 33.124512, 40.866283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425552, 32.390884, 41.299072>,  <36.818680, 32.740292, 41.070251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425552, 32.390884, 41.299072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516171, 32.779076, 41.265949>,  <37.570541, 33.011990, 41.246075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516171, 32.779076, 41.265949>,  <37.425552, 32.390884, 41.299072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516171, 32.779076, 41.265949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406154, -0.016853, 0.913649,
		0.885278, -0.240614, -0.397980,
		0.226544, 0.970475, -0.082806,
		37.584133, 33.070217, 41.241108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098545, 32.513474, 41.595924>,  <37.425552, 32.390884, 41.299072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098545, 32.513474, 41.595924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929291, 32.875736, 41.606842>,  <37.827740, 33.093094, 41.613392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929291, 32.875736, 41.606842>,  <38.098545, 32.513474, 41.595924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929291, 32.875736, 41.606842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245772, 0.085729, 0.965529,
		0.872097, 0.415257, -0.258859,
		-0.423135, 0.905656, 0.027295,
		37.802349, 33.147434, 41.615032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608078, 32.946491, 41.863197>,  <38.098545, 32.513474, 41.595924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608078, 32.946491, 41.863197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291386, 33.183949, 41.920822>,  <38.101372, 33.326424, 41.955395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291386, 33.183949, 41.920822>,  <38.608078, 32.946491, 41.863197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291386, 33.183949, 41.920822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314005, 0.193208, 0.929555,
		0.523987, 0.781193, -0.339374,
		-0.791731, 0.593640, 0.144060,
		38.053867, 33.362041, 41.964039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906475, 33.491077, 42.310162>,  <38.608078, 32.946491, 41.863197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906475, 33.491077, 42.310162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508236, 33.474041, 42.343571>,  <38.269295, 33.463818, 42.363617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508236, 33.474041, 42.343571>,  <38.906475, 33.491077, 42.310162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508236, 33.474041, 42.343571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075816, 0.158404, 0.984459,
		-0.055163, 0.986455, -0.154477,
		-0.995595, -0.042594, 0.083527,
		38.209557, 33.461262, 42.368629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541153, 34.170429, 42.520973>,  <38.906475, 33.491077, 42.310162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541153, 34.170429, 42.520973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287933, 33.885788, 42.642868>,  <38.136002, 33.715004, 42.716003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.287933, 33.885788, 42.642868>,  <38.541153, 34.170429, 42.520973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287933, 33.885788, 42.642868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152801, 0.271045, 0.950361,
		-0.758880, 0.648190, -0.062851,
		-0.633050, -0.711607, 0.304735,
		38.098019, 33.672306, 42.734287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060493, 34.523750, 42.976826>,  <38.541153, 34.170429, 42.520973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060493, 34.523750, 42.976826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019089, 34.133827, 43.055847>,  <37.994244, 33.899872, 43.103260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.019089, 34.133827, 43.055847>,  <38.060493, 34.523750, 42.976826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019089, 34.133827, 43.055847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067321, 0.205029, 0.976438,
		-0.992347, 0.087778, -0.086849,
		-0.103516, -0.974812, 0.197551,
		37.988033, 33.841385, 43.115112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466061, 34.497093, 43.441284>,  <38.060493, 34.523750, 42.976826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466061, 34.497093, 43.441284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637794, 34.139988, 43.495892>,  <37.740837, 33.925724, 43.528656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637794, 34.139988, 43.495892>,  <37.466061, 34.497093, 43.441284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637794, 34.139988, 43.495892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085112, 0.110496, 0.990226,
		-0.899125, -0.436761, -0.028545,
		0.429338, -0.892766, 0.136523,
		37.766598, 33.872158, 43.536850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971935, 34.106941, 43.847694>,  <37.466061, 34.497093, 43.441284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971935, 34.106941, 43.847694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332253, 33.945080, 43.910721>,  <37.548443, 33.847961, 43.948536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.332253, 33.945080, 43.910721>,  <36.971935, 34.106941, 43.847694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332253, 33.945080, 43.910721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072072, 0.218499, 0.973172,
		-0.428228, -0.887982, 0.167658,
		0.900792, -0.404656, 0.157566,
		37.602489, 33.823685, 43.957993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860062, 33.682896, 44.514210>,  <36.971935, 34.106941, 43.847694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860062, 33.682896, 44.514210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255833, 33.717041, 44.467327>,  <37.493298, 33.737530, 44.439198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255833, 33.717041, 44.467327>,  <36.860062, 33.682896, 44.514210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255833, 33.717041, 44.467327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074489, 0.394303, 0.915956,
		0.124404, -0.915007, 0.383778,
		0.989432, 0.085362, -0.117211,
		37.552662, 33.742649, 44.432163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136524, 33.425434, 45.136539>,  <36.860062, 33.682896, 44.514210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136524, 33.425434, 45.136539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.399021, 33.673122, 44.964069>,  <37.556519, 33.821735, 44.860588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.399021, 33.673122, 44.964069>,  <37.136524, 33.425434, 45.136539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399021, 33.673122, 44.964069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239621, 0.370828, 0.897256,
		0.715493, -0.692134, 0.094974,
		0.656240, 0.619223, -0.431175,
		37.595894, 33.858891, 44.834717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701889, 33.351086, 45.514309>,  <37.136524, 33.425434, 45.136539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701889, 33.351086, 45.514309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755547, 33.708138, 45.342159>,  <37.787739, 33.922367, 45.238869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755547, 33.708138, 45.342159>,  <37.701889, 33.351086, 45.514309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755547, 33.708138, 45.342159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300289, 0.377265, 0.876069,
		0.944369, -0.246753, -0.217439,
		0.134141, 0.892627, -0.430375,
		37.795788, 33.975925, 45.213047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220833, 33.538536, 45.889881>,  <37.701889, 33.351086, 45.514309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220833, 33.538536, 45.889881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084023, 33.883629, 45.740902>,  <38.001938, 34.090683, 45.651516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.084023, 33.883629, 45.740902>,  <38.220833, 33.538536, 45.889881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084023, 33.883629, 45.740902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258471, 0.467435, 0.845398,
		0.903444, 0.192881, -0.382866,
		-0.342026, 0.862729, -0.372447,
		37.981415, 34.142448, 45.629169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634804, 34.012787, 46.253582>,  <38.220833, 33.538536, 45.889881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634804, 34.012787, 46.253582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338894, 34.230991, 46.096027>,  <38.161346, 34.361916, 46.001495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338894, 34.230991, 46.096027>,  <38.634804, 34.012787, 46.253582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338894, 34.230991, 46.096027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148936, 0.703636, 0.694776,
		0.656165, 0.455314, -0.601779,
		-0.739775, 0.545514, -0.393889,
		38.116962, 34.394646, 45.977859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899769, 34.584637, 46.081135>,  <38.634804, 34.012787, 46.253582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899769, 34.584637, 46.081135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512043, 34.666870, 46.135033>,  <38.279408, 34.716209, 46.167370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.512043, 34.666870, 46.135033>,  <38.899769, 34.584637, 46.081135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512043, 34.666870, 46.135033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242230, 0.705673, 0.665845,
		0.041804, 0.678055, -0.733821,
		-0.969318, 0.205588, 0.134745,
		38.221249, 34.728546, 46.175457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787243, 35.321541, 45.838917>,  <38.899769, 34.584637, 46.081135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787243, 35.321541, 45.838917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495445, 35.256493, 46.104668>,  <38.320366, 35.217464, 46.264118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.495445, 35.256493, 46.104668>,  <38.787243, 35.321541, 45.838917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495445, 35.256493, 46.104668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475068, 0.578353, 0.663188,
		-0.492091, 0.799414, -0.344649,
		-0.729491, -0.162617, 0.664378,
		38.276596, 35.207706, 46.303982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674522, 35.985035, 46.065323>,  <38.787243, 35.321541, 45.838917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674522, 35.985035, 46.065323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524010, 35.726112, 46.330475>,  <38.433701, 35.570759, 46.489567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524010, 35.726112, 46.330475>,  <38.674522, 35.985035, 46.065323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524010, 35.726112, 46.330475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449944, 0.497755, 0.741478,
		-0.809913, 0.577265, 0.103953,
		-0.376286, -0.647306, 0.662876,
		38.411125, 35.531921, 46.529339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345554, 36.331768, 46.648052>,  <38.674522, 35.985035, 46.065323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345554, 36.331768, 46.648052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399536, 35.981033, 46.832634>,  <38.431927, 35.770592, 46.943382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399536, 35.981033, 46.832634>,  <38.345554, 36.331768, 46.648052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399536, 35.981033, 46.832634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261672, 0.480717, 0.836922,
		-0.955675, 0.007800, 0.294320,
		0.134956, -0.876841, 0.461450,
		38.440022, 35.717979, 46.971069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958389, 36.420277, 47.247017>,  <38.345554, 36.331768, 46.648052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958389, 36.420277, 47.247017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212505, 36.121758, 47.326458>,  <38.364975, 35.942646, 47.374123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212505, 36.121758, 47.326458>,  <37.958389, 36.420277, 47.247017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212505, 36.121758, 47.326458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115002, 0.345721, 0.931264,
		-0.763659, -0.568787, 0.305460,
		0.635295, -0.746297, 0.198602,
		38.403095, 35.897869, 47.386040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790646, 36.221348, 47.843105>,  <37.958389, 36.420277, 47.247017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790646, 36.221348, 47.843105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170769, 36.104984, 47.798756>,  <38.398842, 36.035164, 47.772144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.170769, 36.104984, 47.798756>,  <37.790646, 36.221348, 47.843105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170769, 36.104984, 47.798756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216282, 0.360732, 0.907246,
		-0.223931, -0.886139, 0.405724,
		0.950304, -0.290911, -0.110876,
		38.455860, 36.017712, 47.765491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872185, 35.764725, 48.353893>,  <37.790646, 36.221348, 47.843105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872185, 35.764725, 48.353893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249420, 35.877926, 48.284050>,  <38.475761, 35.945847, 48.242146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.249420, 35.877926, 48.284050>,  <37.872185, 35.764725, 48.353893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.249420, 35.877926, 48.284050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077574, 0.323359, 0.943091,
		0.323359, -0.902966, 0.283003,
		-0.943091, -0.283003, 0.174607,
		38.532349, 35.962826, 48.231667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295673, 35.458904, 48.880348>,  <37.872185, 35.764725, 48.353893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295673, 35.458904, 48.880348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519337, 35.767258, 48.758316>,  <38.653534, 35.952271, 48.685097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519337, 35.767258, 48.758316>,  <38.295673, 35.458904, 48.880348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519337, 35.767258, 48.758316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357872, 0.107508, 0.927561,
		0.747844, -0.627834, -0.215765,
		0.559158, 0.770887, -0.305083,
		38.687084, 35.998524, 48.666790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007950, 35.266930, 49.126247>,  <38.295673, 35.458904, 48.880348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007950, 35.266930, 49.126247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039238, 35.659546, 49.056438>,  <39.058010, 35.895115, 49.014553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.039238, 35.659546, 49.056438>,  <39.007950, 35.266930, 49.126247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039238, 35.659546, 49.056438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489780, 0.114641, 0.864276,
		0.868330, -0.153079, -0.471773,
		0.078218, 0.981542, -0.174521,
		39.062702, 35.954010, 49.004082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670479, 35.450970, 49.350178>,  <39.007950, 35.266930, 49.126247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670479, 35.450970, 49.350178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466553, 35.794701, 49.333977>,  <39.344196, 36.000938, 49.324257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.466553, 35.794701, 49.333977>,  <39.670479, 35.450970, 49.350178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.466553, 35.794701, 49.333977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178140, 0.151512, 0.972271,
		0.841637, 0.488465, -0.230324,
		-0.509818, 0.859329, -0.040503,
		39.313606, 36.052498, 49.321827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076126, 35.874397, 49.639671>,  <39.670479, 35.450970, 49.350178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076126, 35.874397, 49.639671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715511, 36.040646, 49.687817>,  <39.499142, 36.140392, 49.716702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.715511, 36.040646, 49.687817>,  <40.076126, 35.874397, 49.639671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.715511, 36.040646, 49.687817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299923, 0.399739, 0.866173,
		0.311884, 0.816988, -0.485034,
		-0.901540, 0.415618, 0.120361,
		39.445049, 36.165333, 49.723927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.222809, 36.519356, 49.995789>,  <40.076126, 35.874397, 49.639671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.222809, 36.519356, 49.995789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.826790, 36.508068, 50.050945>,  <39.589180, 36.501297, 50.084042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.826790, 36.508068, 50.050945>,  <40.222809, 36.519356, 49.995789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826790, 36.508068, 50.050945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117235, 0.376834, 0.918832,
		-0.077888, 0.925851, -0.369775,
		-0.990045, -0.028216, 0.137893,
		39.529778, 36.499603, 50.092312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916687, 37.199966, 50.166420>,  <40.222809, 36.519356, 49.995789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916687, 37.199966, 50.166420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701244, 36.898468, 50.317028>,  <39.571980, 36.717567, 50.407394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701244, 36.898468, 50.317028>,  <39.916687, 37.199966, 50.166420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701244, 36.898468, 50.317028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145291, 0.357095, 0.922699,
		-0.829933, 0.551680, -0.082823,
		-0.538610, -0.753745, 0.376520,
		39.539661, 36.672344, 50.429985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537899, 37.478123, 49.975182>,  <39.916687, 37.199966, 50.166420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537899, 37.478123, 49.975182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830906, 37.748486, 49.942764>,  <41.006710, 37.910702, 49.923313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830906, 37.748486, 49.942764>,  <40.537899, 37.478123, 49.975182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830906, 37.748486, 49.942764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048583, -0.066840, -0.996580,
		-0.679013, 0.733949, -0.016124,
		0.732517, 0.675908, -0.081043,
		41.050659, 37.951260, 49.918453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.246437, 38.078632, 49.518101>,  <40.537899, 37.478123, 49.975182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.246437, 38.078632, 49.518101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644894, 38.109932, 49.502220>,  <40.883968, 38.128712, 49.492691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644894, 38.109932, 49.502220>,  <40.246437, 38.078632, 49.518101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644894, 38.109932, 49.502220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043938, 0.053193, -0.997617,
		-0.075949, 0.995514, 0.056425,
		0.996143, 0.078247, -0.039701,
		40.943737, 38.133408, 49.490311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411518, 38.677147, 48.983528>,  <40.246437, 38.078632, 49.518101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411518, 38.677147, 48.983528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709114, 38.411140, 49.009586>,  <40.887672, 38.251537, 49.025223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709114, 38.411140, 49.009586>,  <40.411518, 38.677147, 48.983528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709114, 38.411140, 49.009586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095716, 0.009570, -0.995363,
		0.661304, 0.746772, 0.070772,
		0.743986, -0.665011, 0.065149,
		40.932308, 38.211636, 49.029133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.849483, 38.773983, 48.317257>,  <40.411518, 38.677147, 48.983528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.849483, 38.773983, 48.317257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966320, 38.420361, 48.463207>,  <41.036423, 38.208187, 48.550777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966320, 38.420361, 48.463207>,  <40.849483, 38.773983, 48.317257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966320, 38.420361, 48.463207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134683, -0.339690, -0.930845,
		0.946861, 0.321030, 0.019848,
		0.292087, -0.884053, 0.364876,
		41.053947, 38.155144, 48.572670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537827, 38.574574, 47.917416>,  <40.849483, 38.773983, 48.317257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537827, 38.574574, 47.917416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.373806, 38.237427, 48.056808>,  <41.275394, 38.035141, 48.140446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.373806, 38.237427, 48.056808>,  <41.537827, 38.574574, 47.917416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.373806, 38.237427, 48.056808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073855, -0.411512, -0.908407,
		0.909067, -0.346757, 0.230991,
		-0.410052, -0.842863, 0.348482,
		41.250790, 37.984570, 48.161354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018635, 37.940983, 47.637695>,  <41.537827, 38.574574, 47.917416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018635, 37.940983, 47.637695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663044, 37.780769, 47.726498>,  <41.449688, 37.684639, 47.779781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663044, 37.780769, 47.726498>,  <42.018635, 37.940983, 47.637695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663044, 37.780769, 47.726498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068100, -0.595024, -0.800818,
		0.452858, -0.696790, 0.556240,
		-0.888978, -0.400537, 0.222010,
		41.396351, 37.660610, 47.793102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.045723, 37.170742, 47.632095>,  <42.018635, 37.940983, 47.637695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.045723, 37.170742, 47.632095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.656628, 37.254169, 47.591557>,  <41.423168, 37.304226, 47.567234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.656628, 37.254169, 47.591557>,  <42.045723, 37.170742, 47.632095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.656628, 37.254169, 47.591557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024668, -0.527633, -0.849114,
		-0.230574, -0.823469, 0.518396,
		-0.972742, 0.208572, -0.101345,
		41.364803, 37.316742, 47.561153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706768, 36.567356, 47.360310>,  <42.045723, 37.170742, 47.632095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.706768, 36.567356, 47.360310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393326, 36.808651, 47.300900>,  <41.205261, 36.953430, 47.265251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.393326, 36.808651, 47.300900>,  <41.706768, 36.567356, 47.360310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393326, 36.808651, 47.300900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189179, -0.459418, -0.867840,
		-0.591755, -0.651946, 0.474123,
		-0.783605, 0.603243, -0.148528,
		41.158245, 36.989624, 47.256340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188789, 36.166286, 47.019932>,  <41.706768, 36.567356, 47.360310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188789, 36.166286, 47.019932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049431, 36.531979, 46.937164>,  <40.965816, 36.751392, 46.887505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049431, 36.531979, 46.937164>,  <41.188789, 36.166286, 47.019932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049431, 36.531979, 46.937164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296687, -0.316948, -0.900845,
		-0.889157, -0.252459, 0.381661,
		-0.348393, 0.914225, -0.206915,
		40.944912, 36.806248, 46.875092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484951, 36.186306, 46.824291>,  <41.188789, 36.166286, 47.019932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484951, 36.186306, 46.824291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610359, 36.530487, 46.663631>,  <40.685604, 36.736996, 46.567234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610359, 36.530487, 46.663631>,  <40.484951, 36.186306, 46.824291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610359, 36.530487, 46.663631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451367, -0.237102, -0.860262,
		-0.835449, 0.451002, 0.314044,
		0.313519, 0.860454, -0.401654,
		40.704414, 36.788624, 46.543137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816551, 36.482368, 46.513981>,  <40.484951, 36.186306, 46.824291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816551, 36.482368, 46.513981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119041, 36.675480, 46.337322>,  <40.300533, 36.791348, 46.231327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119041, 36.675480, 46.337322>,  <39.816551, 36.482368, 46.513981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119041, 36.675480, 46.337322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430380, -0.141405, -0.891503,
		-0.492851, 0.864250, 0.100846,
		0.756221, 0.482780, -0.441647,
		40.345909, 36.820312, 46.204826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544765, 36.985352, 46.062706>,  <39.816551, 36.482368, 46.513981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544765, 36.985352, 46.062706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906216, 36.885403, 45.923553>,  <40.123085, 36.825432, 45.840061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906216, 36.885403, 45.923553>,  <39.544765, 36.985352, 46.062706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906216, 36.885403, 45.923553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382095, -0.103242, -0.918338,
		0.193550, 0.962759, -0.188766,
		0.903627, -0.249871, -0.347883,
		40.177303, 36.810440, 45.819187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713261, 37.395058, 45.383701>,  <39.544765, 36.985352, 46.062706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713261, 37.395058, 45.383701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973949, 37.091854, 45.373344>,  <40.130363, 36.909931, 45.367130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973949, 37.091854, 45.373344>,  <39.713261, 37.395058, 45.383701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973949, 37.091854, 45.373344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194154, -0.133733, -0.971812,
		0.733183, 0.638383, -0.234329,
		0.651726, -0.758013, -0.025894,
		40.169468, 36.864449, 45.365578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889252, 37.417587, 44.671844>,  <39.713261, 37.395058, 45.383701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889252, 37.417587, 44.671844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031017, 37.069473, 44.808666>,  <40.116077, 36.860607, 44.890759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031017, 37.069473, 44.808666>,  <39.889252, 37.417587, 44.671844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031017, 37.069473, 44.808666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236013, -0.437206, -0.867841,
		0.904813, 0.226850, -0.360352,
		0.354418, -0.870282, 0.342050,
		40.137344, 36.808388, 44.911282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.398003, 37.237591, 44.223713>,  <39.889252, 37.417587, 44.671844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.398003, 37.237591, 44.223713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307182, 36.897392, 44.413498>,  <40.252689, 36.693275, 44.527367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.307182, 36.897392, 44.413498>,  <40.398003, 37.237591, 44.223713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307182, 36.897392, 44.413498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106826, -0.462495, -0.880163,
		0.968007, -0.250524, 0.014154,
		-0.227049, -0.850492, 0.474460,
		40.239067, 36.642246, 44.555836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846291, 36.652878, 43.902950>,  <40.398003, 37.237591, 44.223713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.846291, 36.652878, 43.902950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514664, 36.516411, 44.080151>,  <40.315689, 36.434532, 44.186470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.514664, 36.516411, 44.080151>,  <40.846291, 36.652878, 43.902950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514664, 36.516411, 44.080151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210957, -0.542879, -0.812883,
		0.517827, -0.767390, 0.378111,
		-0.829067, -0.341168, 0.443004,
		40.265942, 36.414059, 44.213051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913925, 35.951065, 43.783134>,  <40.846291, 36.652878, 43.902950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913925, 35.951065, 43.783134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531349, 36.054344, 43.837624>,  <40.301804, 36.116310, 43.870319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531349, 36.054344, 43.837624>,  <40.913925, 35.951065, 43.783134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531349, 36.054344, 43.837624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236619, -0.412355, -0.879758,
		-0.170974, -0.873671, 0.455486,
		-0.956441, 0.258192, 0.136226,
		40.244415, 36.131802, 43.878490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575649, 35.491135, 43.461853>,  <40.913925, 35.951065, 43.783134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575649, 35.491135, 43.461853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271606, 35.743340, 43.524696>,  <40.089180, 35.894665, 43.562405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271606, 35.743340, 43.524696>,  <40.575649, 35.491135, 43.461853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271606, 35.743340, 43.524696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422739, -0.296209, -0.856477,
		-0.493484, -0.717433, 0.491694,
		-0.760109, 0.630516, 0.157113,
		40.043575, 35.932495, 43.571831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878578, 35.112034, 43.293297>,  <40.575649, 35.491135, 43.461853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878578, 35.112034, 43.293297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838970, 35.506073, 43.237038>,  <39.815205, 35.742496, 43.203281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838970, 35.506073, 43.237038>,  <39.878578, 35.112034, 43.293297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838970, 35.506073, 43.237038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369920, -0.167657, -0.913811,
		-0.923772, -0.038455, 0.381007,
		-0.099019, 0.985095, -0.140651,
		39.809265, 35.801601, 43.194843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.183235, 35.220928, 43.227921>,  <39.878578, 35.112034, 43.293297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.183235, 35.220928, 43.227921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.369289, 35.520542, 43.039204>,  <39.480923, 35.700310, 42.925972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.369289, 35.520542, 43.039204>,  <39.183235, 35.220928, 43.227921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.369289, 35.520542, 43.039204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532405, -0.189088, -0.825100,
		-0.707242, 0.634971, 0.310838,
		0.465139, 0.749037, -0.471793,
		39.508831, 35.745255, 42.897667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672962, 35.352772, 42.827179>,  <39.183235, 35.220928, 43.227921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672962, 35.352772, 42.827179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993084, 35.541550, 42.679241>,  <39.185158, 35.654816, 42.590477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993084, 35.541550, 42.679241>,  <38.672962, 35.352772, 42.827179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993084, 35.541550, 42.679241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307686, -0.206172, -0.928882,
		-0.514635, 0.857181, -0.019788,
		0.800300, 0.471946, -0.369846,
		39.233173, 35.683132, 42.568287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364128, 35.738522, 42.358566>,  <38.672962, 35.352772, 42.827179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364128, 35.738522, 42.358566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751839, 35.716251, 42.262733>,  <38.984467, 35.702888, 42.205235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751839, 35.716251, 42.262733>,  <38.364128, 35.738522, 42.358566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751839, 35.716251, 42.262733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245560, -0.163327, -0.955523,
		0.014070, 0.985000, -0.171981,
		0.969279, -0.055676, -0.239578,
		39.042622, 35.699547, 42.190861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357967, 35.860611, 41.621769>,  <38.364128, 35.738522, 42.358566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357967, 35.860611, 41.621769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711552, 35.701515, 41.720089>,  <38.923702, 35.606056, 41.779079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711552, 35.701515, 41.720089>,  <38.357967, 35.860611, 41.621769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711552, 35.701515, 41.720089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102993, -0.347145, -0.932139,
		0.456075, 0.849290, -0.265898,
		0.883961, -0.397740, 0.245795,
		38.976742, 35.582191, 41.793827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811451, 36.043636, 41.119495>,  <38.357967, 35.860611, 41.621769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811451, 36.043636, 41.119495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988483, 35.726757, 41.287563>,  <39.094704, 35.536629, 41.388405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988483, 35.726757, 41.287563>,  <38.811451, 36.043636, 41.119495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988483, 35.726757, 41.287563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307333, -0.306174, -0.901001,
		0.842417, 0.527899, 0.107962,
		0.442583, -0.792199, 0.420167,
		39.121258, 35.489098, 41.413612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508728, 35.907894, 40.771580>,  <38.811451, 36.043636, 41.119495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508728, 35.907894, 40.771580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433151, 35.557323, 40.948750>,  <39.387806, 35.346981, 41.055050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433151, 35.557323, 40.948750>,  <39.508728, 35.907894, 40.771580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433151, 35.557323, 40.948750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175788, -0.473946, -0.862829,
		0.966126, -0.085164, 0.243613,
		-0.188941, -0.876426, 0.442921,
		39.376469, 35.294395, 41.081627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973579, 35.453892, 40.434299>,  <39.508728, 35.907894, 40.771580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973579, 35.453892, 40.434299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717731, 35.208000, 40.618908>,  <39.564224, 35.060467, 40.729675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.717731, 35.208000, 40.618908>,  <39.973579, 35.453892, 40.434299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717731, 35.208000, 40.618908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118002, -0.671804, -0.731269,
		0.759583, -0.413271, 0.502236,
		-0.639616, -0.614724, 0.461524,
		39.525848, 35.023582, 40.757366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372597, 34.939835, 40.482307>,  <39.973579, 35.453892, 40.434299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372597, 34.939835, 40.482307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984600, 34.845020, 40.503983>,  <39.751804, 34.788132, 40.516987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984600, 34.845020, 40.503983>,  <40.372597, 34.939835, 40.482307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984600, 34.845020, 40.503983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092378, -0.565413, -0.819619,
		0.224916, -0.790015, 0.570341,
		-0.969989, -0.237033, 0.054190,
		39.693604, 34.773911, 40.520241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248672, 34.166157, 40.358635>,  <40.372597, 34.939835, 40.482307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248672, 34.166157, 40.358635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883274, 34.304508, 40.272945>,  <39.664036, 34.387520, 40.221531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883274, 34.304508, 40.272945>,  <40.248672, 34.166157, 40.358635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883274, 34.304508, 40.272945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022019, -0.567816, -0.822861,
		-0.406249, -0.746964, 0.526314,
		-0.913497, 0.345876, -0.214227,
		39.609226, 34.408272, 40.208675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769627, 33.554604, 40.157845>,  <40.248672, 34.166157, 40.358635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769627, 33.554604, 40.157845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623890, 33.890003, 39.995773>,  <39.536449, 34.091244, 39.898533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623890, 33.890003, 39.995773>,  <39.769627, 33.554604, 40.157845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623890, 33.890003, 39.995773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014920, -0.429770, -0.902815,
		-0.931146, -0.334978, 0.144072,
		-0.364341, 0.838503, -0.405176,
		39.514587, 34.141556, 39.874222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403931, 33.360497, 39.574154>,  <39.769627, 33.554604, 40.157845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403931, 33.360497, 39.574154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429619, 33.748920, 39.482140>,  <39.445034, 33.981976, 39.426933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429619, 33.748920, 39.482140>,  <39.403931, 33.360497, 39.574154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429619, 33.748920, 39.482140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223811, -0.238654, -0.944962,
		-0.972514, 0.009206, -0.232661,
		0.064225, 0.971061, -0.230034,
		39.448887, 34.040237, 39.413128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360992, 33.308353, 38.815506>,  <39.403931, 33.360497, 39.574154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360992, 33.308353, 38.815506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482178, 33.682537, 38.888317>,  <39.554890, 33.907047, 38.932003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.482178, 33.682537, 38.888317>,  <39.360992, 33.308353, 38.815506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.482178, 33.682537, 38.888317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406564, 0.045877, -0.912470,
		-0.861927, 0.350449, -0.366424,
		0.302964, 0.935457, 0.182023,
		39.573067, 33.963173, 38.942924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189003, 33.768143, 38.270309>,  <39.360992, 33.308353, 38.815506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189003, 33.768143, 38.270309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520283, 33.912830, 38.441536>,  <39.719051, 33.999645, 38.544273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520283, 33.912830, 38.441536>,  <39.189003, 33.768143, 38.270309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520283, 33.912830, 38.441536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433694, 0.070104, -0.898329,
		-0.354953, 0.929647, -0.098816,
		0.828202, 0.361721, 0.428066,
		39.768742, 34.021347, 38.569954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327168, 34.456169, 37.968521>,  <39.189003, 33.768143, 38.270309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327168, 34.456169, 37.968521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670933, 34.322807, 38.123573>,  <39.877190, 34.242790, 38.216606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670933, 34.322807, 38.123573>,  <39.327168, 34.456169, 37.968521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670933, 34.322807, 38.123573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496017, 0.359773, -0.790273,
		0.124020, 0.871439, 0.474565,
		0.859410, -0.333402, 0.387629,
		39.928757, 34.222786, 38.239861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779377, 34.929943, 37.704105>,  <39.327168, 34.456169, 37.968521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779377, 34.929943, 37.704105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036190, 34.662407, 37.854012>,  <40.190277, 34.501884, 37.943954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036190, 34.662407, 37.854012>,  <39.779377, 34.929943, 37.704105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036190, 34.662407, 37.854012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621035, 0.167060, -0.765772,
		0.449570, 0.724392, 0.522631,
		0.642030, -0.668840, 0.374767,
		40.228798, 34.461754, 37.966442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454414, 35.318886, 37.708752>,  <39.779377, 34.929943, 37.704105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454414, 35.318886, 37.708752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534687, 34.927029, 37.710899>,  <40.582851, 34.691914, 37.712189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.534687, 34.927029, 37.710899>,  <40.454414, 35.318886, 37.708752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534687, 34.927029, 37.710899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664501, 0.132093, -0.735520,
		0.719837, 0.151174, 0.677482,
		0.200682, -0.979642, 0.005370,
		40.594891, 34.633137, 37.712509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110996, 35.322685, 37.718525>,  <40.454414, 35.318886, 37.708752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110996, 35.322685, 37.718525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037823, 34.975376, 37.534077>,  <40.993919, 34.766991, 37.423409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.037823, 34.975376, 37.534077>,  <41.110996, 35.322685, 37.718525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.037823, 34.975376, 37.534077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795005, 0.145281, -0.588949,
		0.578362, -0.474333, 0.663706,
		-0.182935, -0.868275, -0.461122,
		40.982941, 34.714893, 37.395741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824928, 35.050320, 37.552338>,  <41.110996, 35.322685, 37.718525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824928, 35.050320, 37.552338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.588802, 34.813492, 37.332890>,  <41.447128, 34.671394, 37.201221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.588802, 34.813492, 37.332890>,  <41.824928, 35.050320, 37.552338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588802, 34.813492, 37.332890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587119, 0.151471, -0.795203,
		0.553916, -0.791524, 0.258200,
		-0.590312, -0.592070, -0.548621,
		41.411709, 34.635872, 37.168304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.177227, 34.662140, 37.078365>,  <41.824928, 35.050320, 37.552338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.177227, 34.662140, 37.078365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836544, 34.643284, 36.869606>,  <41.632133, 34.631969, 36.744350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836544, 34.643284, 36.869606>,  <42.177227, 34.662140, 37.078365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836544, 34.643284, 36.869606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511457, 0.142028, -0.847490,
		0.114071, -0.988740, -0.096858,
		-0.851703, -0.047135, -0.521899,
		41.581032, 34.629143, 36.713036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312389, 34.263035, 36.490330>,  <42.177227, 34.662140, 37.078365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.312389, 34.263035, 36.490330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.975296, 34.432693, 36.357731>,  <41.773041, 34.534489, 36.278172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.975296, 34.432693, 36.357731>,  <42.312389, 34.263035, 36.490330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.975296, 34.432693, 36.357731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465853, 0.266023, -0.843927,
		-0.269767, -0.865637, -0.421780,
		-0.842737, 0.424151, -0.331496,
		41.722473, 34.559940, 36.258282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133274, 33.913673, 35.886047>,  <42.312389, 34.263035, 36.490330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133274, 33.913673, 35.886047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.951351, 34.268234, 35.851547>,  <41.842197, 34.480972, 35.830845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.951351, 34.268234, 35.851547>,  <42.133274, 33.913673, 35.886047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.951351, 34.268234, 35.851547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494599, 0.170855, -0.852162,
		-0.740621, -0.430234, -0.516120,
		-0.454811, 0.886402, -0.086254,
		41.814907, 34.534153, 35.825672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.687534, 33.913315, 35.213825>,  <42.133274, 33.913673, 35.886047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.687534, 33.913315, 35.213825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812412, 34.279716, 35.314598>,  <41.887341, 34.499557, 35.375061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812412, 34.279716, 35.314598>,  <41.687534, 33.913315, 35.213825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812412, 34.279716, 35.314598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277414, 0.165724, -0.946349,
		-0.908611, 0.365337, -0.202373,
		0.312198, 0.916005, 0.251928,
		41.906071, 34.554520, 35.390175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.276112, 34.590683, 34.968796>,  <41.687534, 33.913315, 35.213825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.276112, 34.590683, 34.968796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666790, 34.666183, 35.009659>,  <41.901199, 34.711483, 35.034176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666790, 34.666183, 35.009659>,  <41.276112, 34.590683, 34.968796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.666790, 34.666183, 35.009659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039970, 0.307701, -0.950643,
		-0.210865, 0.932574, 0.292987,
		0.976698, 0.188747, 0.102158,
		41.959801, 34.722809, 35.040306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437557, 35.241825, 34.621582>,  <41.276112, 34.590683, 34.968796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437557, 35.241825, 34.621582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744179, 34.985268, 34.634266>,  <41.928154, 34.831333, 34.641876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744179, 34.985268, 34.634266>,  <41.437557, 35.241825, 34.621582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.744179, 34.985268, 34.634266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076914, 0.042670, -0.996124,
		0.637553, 0.766026, 0.082041,
		0.766558, -0.641392, 0.031713,
		41.974148, 34.792850, 34.643780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087132, 35.487106, 34.308826>,  <41.437557, 35.241825, 34.621582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.087132, 35.487106, 34.308826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070133, 35.089695, 34.266682>,  <42.059933, 34.851250, 34.241394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070133, 35.089695, 34.266682>,  <42.087132, 35.487106, 34.308826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070133, 35.089695, 34.266682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244484, 0.091907, -0.965288,
		0.968722, -0.066782, 0.238995,
		-0.042499, -0.993526, -0.105360,
		42.057384, 34.791637, 34.235073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778664, 35.154270, 34.152359>,  <42.087132, 35.487106, 34.308826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.778664, 35.154270, 34.152359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435566, 35.022129, 33.994804>,  <42.229710, 34.942844, 33.900272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.435566, 35.022129, 33.994804>,  <42.778664, 35.154270, 34.152359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.435566, 35.022129, 33.994804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244907, 0.411081, -0.878085,
		0.452001, -0.849634, -0.271694,
		-0.857739, -0.330355, -0.393890,
		42.178246, 34.923023, 33.876637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.876614, 34.631882, 33.483238>,  <42.778664, 35.154270, 34.152359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.876614, 34.631882, 33.483238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.553425, 34.867527, 33.478737>,  <42.359512, 35.008915, 33.476036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.553425, 34.867527, 33.478737>,  <42.876614, 34.631882, 33.483238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.553425, 34.867527, 33.478737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367389, 0.488752, -0.791294,
		-0.460663, -0.643478, -0.611332,
		-0.807970, 0.589116, -0.011256,
		42.311035, 35.044262, 33.475361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.226307, 34.909000, 32.797359>,  <42.876614, 34.631882, 33.483238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.226307, 34.909000, 32.797359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.238483, 35.138321, 33.124870>,  <43.245789, 35.275913, 33.321377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.238483, 35.138321, 33.124870>,  <43.226307, 34.909000, 32.797359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.238483, 35.138321, 33.124870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869247, -0.419576, 0.261468,
		0.493440, 0.703762, -0.511113,
		0.030440, 0.573302, 0.818778,
		43.247616, 35.310310, 33.370502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.830811, 35.053383, 33.187836>,  <43.226307, 34.909000, 32.797359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.830811, 35.053383, 33.187836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123219, 34.781521, 33.212097>,  <44.298664, 34.618404, 33.226654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.123219, 34.781521, 33.212097>,  <43.830811, 35.053383, 33.187836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.123219, 34.781521, 33.212097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219132, -0.318017, -0.922413,
		0.646214, 0.661010, -0.381411,
		0.731019, -0.679655, 0.060658,
		44.342525, 34.577625, 33.230293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.102379, 35.007660, 32.557819>,  <43.830811, 35.053383, 33.187836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.102379, 35.007660, 32.557819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.245182, 34.662457, 32.700794>,  <44.330864, 34.455334, 32.786579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.245182, 34.662457, 32.700794>,  <44.102379, 35.007660, 32.557819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.245182, 34.662457, 32.700794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129937, -0.424818, -0.895905,
		0.925021, 0.273400, -0.263799,
		0.357007, -0.863008, 0.357441,
		44.352283, 34.403553, 32.808025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.691002, 34.750961, 32.189430>,  <44.102379, 35.007660, 32.557819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.691002, 34.750961, 32.189430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.513390, 34.426647, 32.341988>,  <44.406822, 34.232059, 32.433521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.513390, 34.426647, 32.341988>,  <44.691002, 34.750961, 32.189430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.513390, 34.426647, 32.341988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104981, -0.469799, -0.876509,
		0.889842, -0.349155, 0.293721,
		-0.444027, -0.810790, 0.381392,
		44.380180, 34.183411, 32.456406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.795708, 34.243950, 31.668095>,  <44.691002, 34.750961, 32.189430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.795708, 34.243950, 31.668095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.546928, 34.034565, 31.901047>,  <44.397659, 33.908936, 32.040817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.546928, 34.034565, 31.901047>,  <44.795708, 34.243950, 31.668095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.546928, 34.034565, 31.901047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138333, -0.658582, -0.739685,
		0.770742, -0.540609, 0.337192,
		-0.621949, -0.523462, 0.582381,
		44.360344, 33.877525, 32.075760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.034760, 33.664162, 31.691853>,  <44.795708, 34.243950, 31.668095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.034760, 33.664162, 31.691853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.646721, 33.625576, 31.780951>,  <44.413898, 33.602425, 31.834410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.646721, 33.625576, 31.780951>,  <45.034760, 33.664162, 31.691853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.646721, 33.625576, 31.780951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111084, -0.639480, -0.760740,
		0.215826, -0.762731, 0.609639,
		-0.970092, -0.096466, 0.222744,
		44.355694, 33.596638, 31.847775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.958286, 33.074329, 31.515656>,  <45.034760, 33.664162, 31.691853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.958286, 33.074329, 31.515656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.572815, 33.176014, 31.548420>,  <44.341534, 33.237022, 31.568079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.572815, 33.176014, 31.548420>,  <44.958286, 33.074329, 31.515656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.572815, 33.176014, 31.548420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213186, -0.547409, -0.809256,
		-0.160881, -0.797321, 0.581718,
		-0.963675, 0.254208, 0.081910,
		44.283714, 33.252277, 31.572992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.532421, 32.443615, 31.527882>,  <44.958286, 33.074329, 31.515656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.532421, 32.443615, 31.527882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.344070, 32.763660, 31.379236>,  <44.231060, 32.955688, 31.290049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.344070, 32.763660, 31.379236>,  <44.532421, 32.443615, 31.527882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.344070, 32.763660, 31.379236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063812, -0.451022, -0.890229,
		-0.879889, -0.395474, 0.263432,
		-0.470876, 0.800112, -0.371613,
		44.202808, 33.003693, 31.267752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.033630, 32.194454, 30.979044>,  <44.532421, 32.443615, 31.527882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.033630, 32.194454, 30.979044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.997143, 32.584660, 30.898991>,  <43.975250, 32.818783, 30.850958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.997143, 32.584660, 30.898991>,  <44.033630, 32.194454, 30.979044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.997143, 32.584660, 30.898991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071610, -0.206877, -0.975743,
		-0.993252, -0.074677, 0.088728,
		-0.091221, 0.975513, -0.200134,
		43.969776, 32.877312, 30.838951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.416653, 32.285931, 30.646765>,  <44.033630, 32.194454, 30.979044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.416653, 32.285931, 30.646765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.670593, 32.578979, 30.548601>,  <43.822960, 32.754807, 30.489702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.670593, 32.578979, 30.548601>,  <43.416653, 32.285931, 30.646765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.670593, 32.578979, 30.548601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172141, -0.175526, -0.969308,
		-0.753210, 0.657616, 0.014680,
		0.634855, 0.732620, -0.245411,
		43.861050, 32.798767, 30.474977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.103336, 32.650066, 30.145376>,  <43.416653, 32.285931, 30.646765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.103336, 32.650066, 30.145376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.476345, 32.784412, 30.092308>,  <43.700150, 32.865021, 30.060467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.476345, 32.784412, 30.092308>,  <43.103336, 32.650066, 30.145376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.476345, 32.784412, 30.092308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131870, -0.025303, -0.990944,
		-0.336179, 0.941571, 0.020695,
		0.932520, 0.335864, -0.132671,
		43.756100, 32.885170, 30.052507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.032818, 33.202507, 29.679922>,  <43.103336, 32.650066, 30.145376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.032818, 33.202507, 29.679922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414440, 33.085590, 29.653576>,  <43.643414, 33.015442, 29.637768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414440, 33.085590, 29.653576>,  <43.032818, 33.202507, 29.679922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.414440, 33.085590, 29.653576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020258, 0.156395, -0.987487,
		0.298931, 0.943456, 0.143288,
		0.954060, -0.292288, -0.065864,
		43.700657, 32.997906, 29.633816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.381046, 33.714645, 29.304262>,  <43.032818, 33.202507, 29.679922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.381046, 33.714645, 29.304262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.600922, 33.384014, 29.255920>,  <43.732849, 33.185635, 29.226915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.600922, 33.384014, 29.255920>,  <43.381046, 33.714645, 29.304262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.600922, 33.384014, 29.255920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028243, 0.126199, -0.991603,
		0.834890, 0.548489, 0.046026,
		0.549692, -0.826579, -0.120854,
		43.765831, 33.136040, 29.219664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.825500, 33.910088, 28.817434>,  <43.381046, 33.714645, 29.304262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.825500, 33.910088, 28.817434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.856171, 33.511387, 28.807650>,  <43.874573, 33.272167, 28.801779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.856171, 33.511387, 28.807650>,  <43.825500, 33.910088, 28.817434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.856171, 33.511387, 28.807650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112851, 0.033050, -0.993062,
		0.990649, 0.073381, 0.115019,
		0.076673, -0.996756, -0.024460,
		43.879173, 33.212360, 28.800312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.394360, 33.785263, 28.365870>,  <43.825500, 33.910088, 28.817434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.394360, 33.785263, 28.365870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.191208, 33.440914, 28.378275>,  <44.069317, 33.234306, 28.385719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.191208, 33.440914, 28.378275>,  <44.394360, 33.785263, 28.365870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.191208, 33.440914, 28.378275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024387, -0.050358, -0.998433,
		0.861082, -0.506328, 0.046569,
		-0.507881, -0.860869, 0.031015,
		44.038845, 33.182655, 28.387579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.786850, 33.332413, 27.868818>,  <44.394360, 33.785263, 28.365870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.786850, 33.332413, 27.868818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.450581, 33.121948, 27.920063>,  <44.248817, 32.995670, 27.950809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.450581, 33.121948, 27.920063>,  <44.786850, 33.332413, 27.868818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.450581, 33.121948, 27.920063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045160, -0.303862, -0.951645,
		0.539651, -0.794241, 0.279211,
		-0.840677, -0.526165, 0.128112,
		44.198376, 32.964100, 27.958496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.860680, 32.651070, 27.655590>,  <44.786850, 33.332413, 27.868818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.860680, 32.651070, 27.655590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475330, 32.750458, 27.615253>,  <44.244122, 32.810093, 27.591051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475330, 32.750458, 27.615253>,  <44.860680, 32.651070, 27.655590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.475330, 32.750458, 27.615253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027298, -0.283228, -0.958664,
		-0.266757, -0.926308, 0.266073,
		-0.963377, 0.248467, -0.100839,
		44.186317, 32.825001, 27.585001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.604610, 31.935362, 27.337399>,  <44.860680, 32.651070, 27.655590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.604610, 31.935362, 27.337399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.354576, 32.244602, 27.294353>,  <44.204556, 32.430145, 27.268526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.354576, 32.244602, 27.294353>,  <44.604610, 31.935362, 27.337399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.354576, 32.244602, 27.294353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101372, -0.217107, -0.970870,
		-0.773942, -0.595971, 0.214082,
		-0.625089, 0.773099, -0.107613,
		44.167049, 32.476532, 27.262070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.265865, 31.720997, 26.794968>,  <44.604610, 31.935362, 27.337399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.265865, 31.720997, 26.794968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.170738, 32.108616, 26.821484>,  <44.113663, 32.341187, 26.837393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.170738, 32.108616, 26.821484>,  <44.265865, 31.720997, 26.794968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.170738, 32.108616, 26.821484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141763, 0.032891, -0.989354,
		-0.960909, -0.244682, 0.129553,
		-0.237816, 0.969045, 0.066292,
		44.099392, 32.399330, 26.841372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.696640, 31.745506, 26.397404>,  <44.265865, 31.720997, 26.794968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.696640, 31.745506, 26.397404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.851234, 32.114395, 26.392780>,  <43.943989, 32.335728, 26.390007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.851234, 32.114395, 26.392780>,  <43.696640, 31.745506, 26.397404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.851234, 32.114395, 26.392780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041425, 0.004839, -0.999130,
		-0.921365, 0.386626, 0.040073,
		0.386484, 0.922224, -0.011557,
		43.967178, 32.391064, 26.389313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.251228, 32.067810, 25.887453>,  <43.696640, 31.745506, 26.397404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.251228, 32.067810, 25.887453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.551189, 32.328053, 25.935375>,  <43.731167, 32.484200, 25.964128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.551189, 32.328053, 25.935375>,  <43.251228, 32.067810, 25.887453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.551189, 32.328053, 25.935375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041532, 0.134437, -0.990051,
		-0.660242, 0.747419, 0.073794,
		0.749904, 0.650609, 0.119803,
		43.776161, 32.523235, 25.971315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.231529, 32.732265, 25.498808>,  <43.251228, 32.067810, 25.887453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.231529, 32.732265, 25.498808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.615330, 32.649509, 25.575291>,  <43.845608, 32.599854, 25.621180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.615330, 32.649509, 25.575291>,  <43.231529, 32.732265, 25.498808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.615330, 32.649509, 25.575291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173879, -0.099097, -0.979768,
		0.221656, 0.973332, -0.059109,
		0.959497, -0.206894, 0.191208,
		43.903179, 32.587440, 25.632652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.558990, 33.165939, 25.095345>,  <43.231529, 32.732265, 25.498808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.558990, 33.165939, 25.095345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.765152, 32.830158, 25.164261>,  <43.888847, 32.628689, 25.205610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.765152, 32.830158, 25.164261>,  <43.558990, 33.165939, 25.095345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.765152, 32.830158, 25.164261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262462, -0.036756, -0.964242,
		0.815768, 0.542189, 0.201380,
		0.515400, -0.839452, 0.172289,
		43.919773, 32.578323, 25.215948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.080391, 33.247265, 24.520445>,  <43.558990, 33.165939, 25.095345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.080391, 33.247265, 24.520445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.821423, 33.388775, 24.250425>,  <43.666042, 33.473679, 24.088413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.821423, 33.388775, 24.250425>,  <44.080391, 33.247265, 24.520445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.821423, 33.388775, 24.250425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651252, 0.716879, -0.248908,
		0.395872, -0.600775, -0.694518,
		-0.647423, 0.353771, -0.675048,
		43.627197, 33.494907, 24.047911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.483685, 33.337654, 23.921803>,  <44.080391, 33.247265, 24.520445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.483685, 33.337654, 23.921803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.161442, 33.574635, 23.921232>,  <43.968098, 33.716824, 23.920889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.161442, 33.574635, 23.921232>,  <44.483685, 33.337654, 23.921803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.161442, 33.574635, 23.921232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591945, 0.804812, -0.043338,
		-0.024527, -0.035758, -0.999060,
		-0.805605, 0.592451, -0.001426,
		43.919762, 33.752369, 23.920805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.561314, 33.665756, 23.373449>,  <44.483685, 33.337654, 23.921803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.561314, 33.665756, 23.373449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.379723, 33.857212, 23.674065>,  <44.270767, 33.972084, 23.854433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.379723, 33.857212, 23.674065>,  <44.561314, 33.665756, 23.373449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.379723, 33.857212, 23.674065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692571, 0.720221, -0.040332,
		-0.560578, 0.502184, -0.658455,
		-0.453979, 0.478636, 0.751539,
		44.243530, 34.000801, 23.899527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.356876, 34.381840, 23.302048>,  <44.561314, 33.665756, 23.373449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.356876, 34.381840, 23.302048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.463745, 34.371590, 23.687370>,  <44.527866, 34.365440, 23.918564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.463745, 34.371590, 23.687370>,  <44.356876, 34.381840, 23.302048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.463745, 34.371590, 23.687370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570129, 0.810124, -0.136573,
		-0.776899, 0.585699, 0.231053,
		0.267173, -0.025627, 0.963308,
		44.543896, 34.363903, 23.976362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.313782, 35.012035, 23.639383>,  <44.356876, 34.381840, 23.302048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.313782, 35.012035, 23.639383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.599537, 34.800850, 23.823078>,  <44.770992, 34.674137, 23.933294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.599537, 34.800850, 23.823078>,  <44.313782, 35.012035, 23.639383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.599537, 34.800850, 23.823078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648836, 0.745551, -0.152200,
		-0.262028, 0.406699, 0.875178,
		0.714390, -0.527967, 0.459236,
		44.813854, 34.642460, 23.960850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.616405, 35.380859, 24.218609>,  <44.313782, 35.012035, 23.639383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.616405, 35.380859, 24.218609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.888500, 35.135979, 24.057369>,  <45.051758, 34.989052, 23.960625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.888500, 35.135979, 24.057369>,  <44.616405, 35.380859, 24.218609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.888500, 35.135979, 24.057369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680976, 0.731291, 0.038524,
		0.271198, -0.300706, 0.914346,
		0.680237, -0.612200, -0.403098,
		45.092571, 34.952320, 23.936440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.177010, 35.213799, 24.635666>,  <44.616405, 35.380859, 24.218609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.177010, 35.213799, 24.635666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.332615, 35.170296, 24.269751>,  <45.425980, 35.144192, 24.050201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.332615, 35.170296, 24.269751>,  <45.177010, 35.213799, 24.635666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.332615, 35.170296, 24.269751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811130, 0.511197, 0.284158,
		0.436732, -0.852554, 0.287082,
		0.389015, -0.108760, -0.914789,
		45.449318, 35.137669, 23.995314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.753517, 35.547924, 24.805014>,  <45.177010, 35.213799, 24.635666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.753517, 35.547924, 24.805014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.993340, 35.574341, 25.124054>,  <46.137234, 35.590191, 25.315479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.993340, 35.574341, 25.124054>,  <45.753517, 35.547924, 24.805014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.993340, 35.574341, 25.124054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422210, -0.820531, 0.385314,
		0.679904, -0.567774, -0.464073,
		0.599558, 0.066040, 0.797602,
		46.173206, 35.594154, 25.363335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.795361, 36.134857, 25.326748>,  <45.753517, 35.547924, 24.805014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.795361, 36.134857, 25.326748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.418926, 36.153366, 25.460743>,  <45.193066, 36.164471, 25.541140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.418926, 36.153366, 25.460743>,  <45.795361, 36.134857, 25.326748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.418926, 36.153366, 25.460743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287915, -0.409953, 0.865473,
		0.177376, 0.910932, 0.372478,
		-0.941086, 0.046273, 0.334987,
		45.136600, 36.167248, 25.561239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.677925, 36.547981, 25.982893>,  <45.795361, 36.134857, 25.326748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.677925, 36.547981, 25.982893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.426968, 36.242687, 25.921118>,  <45.276394, 36.059509, 25.884052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.426968, 36.242687, 25.921118>,  <45.677925, 36.547981, 25.982893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.426968, 36.242687, 25.921118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220568, -0.364382, 0.904752,
		-0.746813, 0.533570, 0.396955,
		-0.627392, -0.763236, -0.154436,
		45.238750, 36.013718, 25.874786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.200882, 36.540455, 26.601219>,  <45.677925, 36.547981, 25.982893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.200882, 36.540455, 26.601219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.139080, 36.179527, 26.440245>,  <45.102001, 35.962971, 26.343660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.139080, 36.179527, 26.440245>,  <45.200882, 36.540455, 26.601219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.139080, 36.179527, 26.440245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168861, -0.425449, 0.889089,
		-0.973455, 0.069411, 0.218099,
		-0.154503, -0.902317, -0.402434,
		45.092728, 35.908833, 26.319515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.717491, 36.234268, 26.974707>,  <45.200882, 36.540455, 26.601219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.717491, 36.234268, 26.974707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.924789, 35.939819, 26.800562>,  <45.049168, 35.763149, 26.696075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.924789, 35.939819, 26.800562>,  <44.717491, 36.234268, 26.974707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.924789, 35.939819, 26.800562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079310, -0.465499, 0.881488,
		-0.851547, -0.491356, -0.182860,
		0.518245, -0.736126, -0.435363,
		45.080261, 35.718983, 26.669952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.520557, 35.550297, 27.255655>,  <44.717491, 36.234268, 26.974707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.520557, 35.550297, 27.255655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892036, 35.529320, 27.108814>,  <45.114925, 35.516735, 27.020710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892036, 35.529320, 27.108814>,  <44.520557, 35.550297, 27.255655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.892036, 35.529320, 27.108814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304474, -0.457274, 0.835581,
		-0.211682, -0.887779, -0.408705,
		0.928702, -0.052438, -0.367102,
		45.170647, 35.513588, 26.998684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.693325, 34.919361, 27.468843>,  <44.520557, 35.550297, 27.255655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.693325, 34.919361, 27.468843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.040936, 35.103180, 27.395515>,  <45.249504, 35.213470, 27.351519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.040936, 35.103180, 27.395515>,  <44.693325, 34.919361, 27.468843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.040936, 35.103180, 27.395515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424923, -0.503450, 0.752316,
		0.253430, -0.731681, -0.632784,
		0.869030, 0.459543, -0.183319,
		45.301643, 35.241043, 27.340519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.313396, 34.404755, 27.687565>,  <44.693325, 34.919361, 27.468843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.313396, 34.404755, 27.687565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.511215, 34.748905, 27.638279>,  <45.629906, 34.955395, 27.608707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.511215, 34.748905, 27.638279>,  <45.313396, 34.404755, 27.687565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.511215, 34.748905, 27.638279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496378, -0.163215, 0.852625,
		0.713466, -0.482822, -0.507788,
		0.494545, 0.860374, -0.123214,
		45.659580, 35.007019, 27.601315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.993225, 34.297886, 27.911488>,  <45.313396, 34.404755, 27.687565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.993225, 34.297886, 27.911488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.961239, 34.696072, 27.932127>,  <45.942047, 34.934982, 27.944511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.961239, 34.696072, 27.932127>,  <45.993225, 34.297886, 27.911488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.961239, 34.696072, 27.932127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343553, -0.021068, 0.938897,
		0.935722, 0.092809, -0.340309,
		-0.079969, 0.995461, 0.051599,
		45.937248, 34.994709, 27.947607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.647381, 34.465599, 28.127367>,  <45.993225, 34.297886, 27.911488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.647381, 34.465599, 28.127367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.435204, 34.792480, 28.217531>,  <46.307896, 34.988609, 28.271629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.435204, 34.792480, 28.217531>,  <46.647381, 34.465599, 28.127367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.435204, 34.792480, 28.217531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340070, -0.038433, 0.939614,
		0.776517, 0.575070, -0.257519,
		-0.530447, 0.817201, 0.225408,
		46.276070, 35.037640, 28.285154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.147457, 34.923134, 28.381084>,  <46.647381, 34.465599, 28.127367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.147457, 34.923134, 28.381084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.781693, 35.017139, 28.512917>,  <46.562233, 35.073544, 28.592016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.781693, 35.017139, 28.512917>,  <47.147457, 34.923134, 28.381084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.781693, 35.017139, 28.512917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330241, -0.037722, 0.943143,
		0.234082, 0.971260, -0.043116,
		-0.914411, 0.235011, 0.329580,
		46.507370, 35.087643, 28.611790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.192436, 35.505203, 28.915218>,  <47.147457, 34.923134, 28.381084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.192436, 35.505203, 28.915218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.854053, 35.304344, 28.987013>,  <46.651024, 35.183830, 29.030088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.854053, 35.304344, 28.987013>,  <47.192436, 35.505203, 28.915218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.854053, 35.304344, 28.987013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271027, -0.114999, 0.955678,
		-0.459248, 0.857103, 0.233379,
		-0.845952, -0.502145, 0.179485,
		46.600269, 35.153702, 29.040857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.940357, 35.874287, 29.521128>,  <47.192436, 35.505203, 28.915218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.940357, 35.874287, 29.521128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.740768, 35.528114, 29.503004>,  <46.621014, 35.320412, 29.492130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.740768, 35.528114, 29.503004>,  <46.940357, 35.874287, 29.521128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.740768, 35.528114, 29.503004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111448, 0.012233, 0.993695,
		-0.859420, 0.500879, -0.102555,
		-0.498976, -0.865431, -0.045309,
		46.591076, 35.268486, 29.489410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.338245, 35.876366, 29.989288>,  <46.940357, 35.874287, 29.521128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.338245, 35.876366, 29.989288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.409729, 35.486576, 29.934935>,  <46.452621, 35.252701, 29.902323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.409729, 35.486576, 29.934935>,  <46.338245, 35.876366, 29.989288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.409729, 35.486576, 29.934935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082817, -0.152517, 0.984825,
		-0.980409, -0.164748, -0.107960,
		0.178713, -0.974472, -0.135885,
		46.463345, 35.194233, 29.894169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.948402, 35.624546, 30.563942>,  <46.338245, 35.876366, 29.989288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.948402, 35.624546, 30.563942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.140972, 35.299831, 30.431746>,  <46.256516, 35.105003, 30.352428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.140972, 35.299831, 30.431746>,  <45.948402, 35.624546, 30.563942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.140972, 35.299831, 30.431746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043082, -0.398522, 0.916146,
		-0.875427, -0.426820, -0.226833,
		0.481427, -0.811791, -0.330489,
		46.285400, 35.056293, 30.332600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.511967, 34.957367, 30.786568>,  <45.948402, 35.624546, 30.563942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.511967, 34.957367, 30.786568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.898312, 34.875755, 30.722725>,  <46.130119, 34.826790, 30.684420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.898312, 34.875755, 30.722725>,  <45.511967, 34.957367, 30.786568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.898312, 34.875755, 30.722725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103635, -0.260336, 0.959940,
		-0.237406, -0.943715, -0.230306,
		0.965867, -0.204027, -0.159607,
		46.188072, 34.814545, 30.674843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.488743, 34.306484, 31.063828>,  <45.511967, 34.957367, 30.786568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.488743, 34.306484, 31.063828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.865326, 34.440277, 31.046988>,  <46.091278, 34.520554, 31.036882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.865326, 34.440277, 31.046988>,  <45.488743, 34.306484, 31.063828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.865326, 34.440277, 31.046988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085534, -0.116194, 0.989537,
		0.326095, -0.935210, -0.138001,
		0.941459, 0.334486, -0.042102,
		46.147762, 34.540623, 31.034357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.034908, 33.819912, 31.445436>,  <45.488743, 34.306484, 31.063828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.034908, 33.819912, 31.445436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.209793, 34.179596, 31.438986>,  <46.314724, 34.395409, 31.435116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.209793, 34.179596, 31.438986>,  <46.034908, 33.819912, 31.445436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.209793, 34.179596, 31.438986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249085, -0.103840, 0.962899,
		0.864176, -0.425010, -0.269380,
		0.437214, 0.899213, -0.016128,
		46.340958, 34.449360, 31.434147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.652142, 33.705017, 31.856518>,  <46.034908, 33.819912, 31.445436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.652142, 33.705017, 31.856518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.653194, 34.104694, 31.840504>,  <46.653828, 34.344501, 31.830896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.653194, 34.104694, 31.840504>,  <46.652142, 33.705017, 31.856518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.653194, 34.104694, 31.840504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435651, 0.034889, 0.899439,
		0.900112, -0.019808, -0.435208,
		0.002632, 0.999195, -0.040034,
		46.653984, 34.404453, 31.828493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.306389, 33.991039, 31.898769>,  <46.652142, 33.705017, 31.856518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.306389, 33.991039, 31.898769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.039852, 34.256134, 32.035450>,  <46.879929, 34.415192, 32.117458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.039852, 34.256134, 32.035450>,  <47.306389, 33.991039, 31.898769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.039852, 34.256134, 32.035450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537141, 0.108801, 0.836446,
		0.517170, 0.740902, -0.428485,
		-0.666344, 0.662741, 0.341701,
		46.839951, 34.454956, 32.137959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.711487, 34.462860, 32.291924>,  <47.306389, 33.991039, 31.898769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.711487, 34.462860, 32.291924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.354904, 34.602482, 32.407486>,  <47.140953, 34.686253, 32.476822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.354904, 34.602482, 32.407486>,  <47.711487, 34.462860, 32.291924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.354904, 34.602482, 32.407486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386842, 0.254329, 0.886380,
		0.235916, 0.901931, -0.361752,
		-0.891458, 0.349052, 0.288904,
		47.087467, 34.707199, 32.494156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.897697, 35.002190, 32.542267>,  <47.711487, 34.462860, 32.291924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.897697, 35.002190, 32.542267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.550201, 34.955597, 32.734821>,  <47.341705, 34.927643, 32.850353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.550201, 34.955597, 32.734821>,  <47.897697, 35.002190, 32.542267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.550201, 34.955597, 32.734821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422568, 0.332644, 0.843080,
		-0.258329, 0.935832, -0.239761,
		-0.868736, -0.116477, 0.481384,
		47.289581, 34.920654, 32.879238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.704952, 35.607204, 32.929840>,  <47.897697, 35.002190, 32.542267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.704952, 35.607204, 32.929840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.559017, 35.276402, 33.100937>,  <47.471455, 35.077919, 33.203594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.559017, 35.276402, 33.100937>,  <47.704952, 35.607204, 32.929840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.559017, 35.276402, 33.100937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349437, 0.304201, 0.886203,
		-0.863011, 0.472787, 0.178002,
		-0.364836, -0.827003, 0.427738,
		47.449566, 35.028301, 33.229259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.237003, 35.808083, 33.488499>,  <47.704952, 35.607204, 32.929840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.237003, 35.808083, 33.488499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.365547, 35.438286, 33.570515>,  <47.442673, 35.216408, 33.619724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.365547, 35.438286, 33.570515>,  <47.237003, 35.808083, 33.488499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.365547, 35.438286, 33.570515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238436, 0.288543, 0.927303,
		-0.916449, -0.249107, 0.313158,
		0.321357, -0.924494, 0.205039,
		47.461956, 35.160938, 33.632027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.476196, 36.018574, 34.079346>,  <47.237003, 35.808083, 33.488499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.476196, 36.018574, 34.079346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.567371, 35.630562, 34.113018>,  <47.622078, 35.397755, 34.133221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.567371, 35.630562, 34.113018>,  <47.476196, 36.018574, 34.079346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.567371, 35.630562, 34.113018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564311, 0.202063, 0.800452,
		-0.793472, -0.134950, 0.593457,
		0.227937, -0.970030, 0.084178,
		47.635754, 35.339554, 34.138271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.256702, 35.719494, 34.773705>,  <47.476196, 36.018574, 34.079346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.256702, 35.719494, 34.773705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.554630, 35.482010, 34.651882>,  <47.733387, 35.339520, 34.578789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.554630, 35.482010, 34.651882>,  <47.256702, 35.719494, 34.773705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.554630, 35.482010, 34.651882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298133, -0.112231, 0.947903,
		-0.596961, -0.796814, 0.093413,
		0.744819, -0.593711, -0.304554,
		47.778076, 35.303898, 34.560516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.322094, 35.039783, 35.239208>,  <47.256702, 35.719494, 34.773705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.322094, 35.039783, 35.239208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.673286, 35.168484, 35.097439>,  <47.884003, 35.245705, 35.012375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.673286, 35.168484, 35.097439>,  <47.322094, 35.039783, 35.239208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.673286, 35.168484, 35.097439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388570, -0.046627, 0.920239,
		0.279562, -0.945675, -0.165960,
		0.877986, 0.321751, -0.354426,
		47.936684, 35.265011, 34.991112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.898582, 40.675453, 43.294216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.527985, 40.825848, 43.300308>,  <37.305626, 40.916084, 43.303963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.527985, 40.825848, 43.300308>,  <37.898582, 40.675453, 43.294216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527985, 40.825848, 43.300308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112054, -0.237035, -0.965017,
		-0.359230, -0.895793, 0.261744,
		-0.926498, 0.375992, 0.015227,
		37.250034, 40.938644, 43.304878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541615, 40.112831, 43.038971>,  <37.898582, 40.675453, 43.294216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541615, 40.112831, 43.038971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.276176, 40.396103, 42.942539>,  <37.116913, 40.566067, 42.884678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.276176, 40.396103, 42.942539>,  <37.541615, 40.112831, 43.038971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276176, 40.396103, 42.942539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200181, -0.478612, -0.854903,
		-0.720808, -0.519052, 0.459370,
		-0.663598, 0.708178, -0.241083,
		37.077095, 40.608555, 42.870213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922161, 39.796387, 42.816601>,  <37.541615, 40.112831, 43.038971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922161, 39.796387, 42.816601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.896992, 40.162628, 42.657753>,  <36.881889, 40.382374, 42.562443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.896992, 40.162628, 42.657753>,  <36.922161, 39.796387, 42.816601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896992, 40.162628, 42.657753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270559, -0.398660, -0.876280,
		-0.960645, 0.052307, 0.272810,
		-0.062924, 0.915606, -0.397123,
		36.878113, 40.437309, 42.538616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196373, 39.887943, 42.434258>,  <36.922161, 39.796387, 42.816601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196373, 39.887943, 42.434258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.472233, 40.138084, 42.288208>,  <36.637749, 40.288170, 42.200581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.472233, 40.138084, 42.288208>,  <36.196373, 39.887943, 42.434258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472233, 40.138084, 42.288208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134429, -0.384885, -0.913122,
		-0.711553, 0.678820, -0.181372,
		0.689653, 0.625353, -0.365120,
		36.679131, 40.325691, 42.178673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936726, 40.051968, 41.764484>,  <36.196373, 39.887943, 42.434258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936726, 40.051968, 41.764484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.316536, 40.175564, 41.742821>,  <36.544422, 40.249722, 41.729824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.316536, 40.175564, 41.742821>,  <35.936726, 40.051968, 41.764484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316536, 40.175564, 41.742821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045300, -0.305884, -0.950991,
		-0.310409, 0.900534, -0.304441,
		0.949523, 0.308987, -0.054155,
		36.601395, 40.268261, 41.726574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976284, 40.507427, 41.204826>,  <35.936726, 40.051968, 41.764484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976284, 40.507427, 41.204826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.365032, 40.414108, 41.217728>,  <36.598282, 40.358116, 41.225468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.365032, 40.414108, 41.217728>,  <35.976284, 40.507427, 41.204826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365032, 40.414108, 41.217728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019171, -0.214874, -0.976454,
		0.234735, 0.948368, -0.213302,
		0.971870, -0.233297, 0.032257,
		36.656593, 40.344120, 41.227406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318027, 40.870060, 40.681393>,  <35.976284, 40.507427, 41.204826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318027, 40.870060, 40.681393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.571674, 40.569195, 40.753109>,  <36.723862, 40.388676, 40.796139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.571674, 40.569195, 40.753109>,  <36.318027, 40.870060, 40.681393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571674, 40.569195, 40.753109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094753, -0.154541, -0.983432,
		0.767406, 0.640604, -0.026729,
		0.634121, -0.752159, 0.179295,
		36.761909, 40.343548, 40.806896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867722, 40.943756, 40.130295>,  <36.318027, 40.870060, 40.681393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867722, 40.943756, 40.130295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.898727, 40.583645, 40.301643>,  <36.917332, 40.367580, 40.404453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.898727, 40.583645, 40.301643>,  <36.867722, 40.943756, 40.130295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898727, 40.583645, 40.301643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186331, -0.409009, -0.893304,
		0.979425, 0.149061, 0.136045,
		0.077513, -0.900274, 0.428368,
		36.921982, 40.313564, 40.430153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443489, 40.571388, 39.711819>,  <36.867722, 40.943756, 40.130295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443489, 40.571388, 39.711819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.261818, 40.268410, 39.899433>,  <37.152817, 40.086620, 40.012001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.261818, 40.268410, 39.899433>,  <37.443489, 40.571388, 39.711819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261818, 40.268410, 39.899433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155104, -0.585653, -0.795583,
		0.877307, -0.288584, 0.383472,
		-0.454175, -0.757449, 0.469037,
		37.125565, 40.041176, 40.040146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905533, 40.059551, 39.791847>,  <37.443489, 40.571388, 39.711819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905533, 40.059551, 39.791847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.546646, 39.883141, 39.800724>,  <37.331314, 39.777294, 39.806049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.546646, 39.883141, 39.800724>,  <37.905533, 40.059551, 39.791847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546646, 39.883141, 39.800724> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275534, -0.598395, -0.752333,
		0.345075, -0.668894, 0.658410,
		-0.897220, -0.441026, 0.022188,
		37.277481, 39.750832, 39.807381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103626, 39.437489, 39.655941>,  <37.905533, 40.059551, 39.791847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103626, 39.437489, 39.655941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.714901, 39.420601, 39.563164>,  <37.481667, 39.410469, 39.507500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.714901, 39.420601, 39.563164>,  <38.103626, 39.437489, 39.655941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714901, 39.420601, 39.563164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198814, -0.675496, -0.710055,
		-0.126696, -0.736154, 0.664850,
		-0.971813, -0.042221, -0.231940,
		37.423355, 39.407936, 39.493580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968262, 38.747650, 39.772083>,  <38.103626, 39.437489, 39.655941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968262, 38.747650, 39.772083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.715782, 38.920269, 39.514290>,  <37.564297, 39.023838, 39.359615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.715782, 38.920269, 39.514290>,  <37.968262, 38.747650, 39.772083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715782, 38.920269, 39.514290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171936, -0.732403, -0.658805,
		-0.756326, -0.526646, 0.388092,
		-0.631197, 0.431544, -0.644484,
		37.526424, 39.049732, 39.320946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613461, 38.205601, 39.504719>,  <37.968262, 38.747650, 39.772083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613461, 38.205601, 39.504719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.539589, 38.502716, 39.247299>,  <37.495266, 38.680984, 39.092846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.539589, 38.502716, 39.247299>,  <37.613461, 38.205601, 39.504719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539589, 38.502716, 39.247299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263652, -0.593370, -0.760526,
		-0.946775, -0.310124, -0.086256,
		-0.184676, 0.742789, -0.643553,
		37.484188, 38.725552, 39.054234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212093, 37.911705, 38.904144>,  <37.613461, 38.205601, 39.504719>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212093, 37.911705, 38.904144> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.371101, 38.248154, 38.757450>,  <37.466507, 38.450024, 38.669434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.371101, 38.248154, 38.757450>,  <37.212093, 37.911705, 38.904144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371101, 38.248154, 38.757450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432252, -0.524203, -0.733736,
		-0.809405, 0.133151, -0.571957,
		0.397519, 0.841119, -0.366738,
		37.490356, 38.500488, 38.647430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141617, 37.714958, 38.177757>,  <37.212093, 37.911705, 38.904144>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141617, 37.714958, 38.177757> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.374321, 38.037983, 38.216541>,  <37.513943, 38.231796, 38.239811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.374321, 38.037983, 38.216541>,  <37.141617, 37.714958, 38.177757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374321, 38.037983, 38.216541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496664, -0.258300, -0.828617,
		-0.644113, 0.530214, -0.551355,
		0.581759, 0.807561, 0.096964,
		37.548847, 38.280251, 38.245632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094330, 38.022690, 37.497341>,  <37.141617, 37.714958, 38.177757>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094330, 38.022690, 37.497341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.418526, 38.164623, 37.683762>,  <37.613041, 38.249783, 37.795616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.418526, 38.164623, 37.683762>,  <37.094330, 38.022690, 37.497341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418526, 38.164623, 37.683762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522240, -0.077376, -0.849281,
		-0.265290, 0.931723, -0.248019,
		0.810486, 0.354832, 0.466055,
		37.661671, 38.271072, 37.823578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284546, 38.565422, 37.000996>,  <37.094330, 38.022690, 37.497341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284546, 38.565422, 37.000996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.575264, 38.425911, 37.237682>,  <37.749695, 38.342205, 37.379692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.575264, 38.425911, 37.237682>,  <37.284546, 38.565422, 37.000996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575264, 38.425911, 37.237682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603001, -0.088492, -0.792817,
		0.328878, 0.933019, 0.145998,
		0.726793, -0.348777, 0.591714,
		37.793301, 38.321278, 37.415195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891521, 38.919567, 36.688549>,  <37.284546, 38.565422, 37.000996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891521, 38.919567, 36.688549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.055363, 38.631809, 36.912937>,  <38.153667, 38.459152, 37.047569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.055363, 38.631809, 36.912937>,  <37.891521, 38.919567, 36.688549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055363, 38.631809, 36.912937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614599, -0.236810, -0.752455,
		0.674159, 0.652983, 0.345142,
		0.409608, -0.719398, 0.560970,
		38.178246, 38.415989, 37.081226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519341, 38.978424, 36.702377>,  <37.891521, 38.919567, 36.688549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519341, 38.978424, 36.702377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.521423, 38.588615, 36.792068>,  <38.522675, 38.354729, 36.845882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.521423, 38.588615, 36.792068>,  <38.519341, 38.978424, 36.702377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521423, 38.588615, 36.792068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477635, -0.194578, -0.856740,
		0.878543, 0.111560, 0.464453,
		0.005206, -0.974522, 0.224231,
		38.522984, 38.296257, 36.859337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216473, 38.619259, 36.540424>,  <38.519341, 38.978424, 36.702377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216473, 38.619259, 36.540424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.015339, 38.273846, 36.555744>,  <38.894657, 38.066597, 36.564934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.015339, 38.273846, 36.555744>,  <39.216473, 38.619259, 36.540424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015339, 38.273846, 36.555744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321923, -0.228205, -0.918852,
		0.802198, -0.449704, 0.392741,
		-0.502836, -0.863533, 0.038295,
		38.864487, 38.014786, 36.567234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582821, 38.312618, 36.081577>,  <39.216473, 38.619259, 36.540424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582821, 38.312618, 36.081577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.249950, 38.094917, 36.124031>,  <39.050228, 37.964294, 36.149502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.249950, 38.094917, 36.124031>,  <39.582821, 38.312618, 36.081577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249950, 38.094917, 36.124031> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129167, -0.376397, -0.917410,
		0.539252, -0.749742, 0.383529,
		-0.832180, -0.544255, 0.106131,
		39.000298, 37.931641, 36.155869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798908, 37.695530, 35.836693>,  <39.582821, 38.312618, 36.081577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798908, 37.695530, 35.836693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.399506, 37.673691, 35.835560>,  <39.159866, 37.660587, 35.834881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.399506, 37.673691, 35.835560>,  <39.798908, 37.695530, 35.836693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399506, 37.673691, 35.835560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019439, -0.306191, -0.951771,
		0.051101, -0.950403, 0.306795,
		-0.998504, -0.054601, -0.002829,
		39.099953, 37.657310, 35.834713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288036, 37.129005, 35.780594>,  <39.798908, 37.695530, 35.836693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288036, 37.129005, 35.780594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.685074, 37.122204, 35.828712>,  <40.923298, 37.118122, 35.857582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.685074, 37.122204, 35.828712>,  <40.288036, 37.129005, 35.780594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685074, 37.122204, 35.828712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073063, 0.707528, 0.702898,
		-0.097065, -0.706481, 0.701045,
		0.992593, -0.017006, 0.120294,
		40.982853, 37.117104, 35.864799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490799, 36.903507, 36.478027>,  <40.288036, 37.129005, 35.780594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490799, 36.903507, 36.478027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.808697, 37.104256, 36.341499>,  <40.999435, 37.224705, 36.259583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.808697, 37.104256, 36.341499>,  <40.490799, 36.903507, 36.478027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.808697, 37.104256, 36.341499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029750, 0.529471, 0.847806,
		0.606210, -0.683946, 0.405865,
		0.794748, 0.501874, -0.341318,
		41.047123, 37.254818, 36.239105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.875301, 36.748138, 36.979172>,  <40.490799, 36.903507, 36.478027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.875301, 36.748138, 36.979172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.039879, 37.070835, 36.809521>,  <41.138626, 37.264454, 36.707729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.039879, 37.070835, 36.809521>,  <40.875301, 36.748138, 36.979172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.039879, 37.070835, 36.809521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163111, 0.392655, 0.905106,
		0.896719, -0.441584, 0.029970,
		0.411448, 0.806737, -0.424129,
		41.163315, 37.312855, 36.682281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384312, 36.924175, 37.425362>,  <40.875301, 36.748138, 36.979172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.384312, 36.924175, 37.425362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.345821, 37.264778, 37.219185>,  <41.322727, 37.469139, 37.095478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.345821, 37.264778, 37.219185>,  <41.384312, 36.924175, 37.425362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345821, 37.264778, 37.219185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100439, 0.523509, 0.846080,
		0.990280, 0.029640, -0.135897,
		-0.096221, 0.851505, -0.515443,
		41.316956, 37.520229, 37.064552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020443, 37.320045, 37.569855>,  <41.384312, 36.924175, 37.425362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020443, 37.320045, 37.569855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.700832, 37.541893, 37.476936>,  <41.509068, 37.674999, 37.421185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.700832, 37.541893, 37.476936>,  <42.020443, 37.320045, 37.569855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700832, 37.541893, 37.476936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155708, 0.563995, 0.810966,
		0.580787, 0.611812, -0.537004,
		-0.799025, 0.554614, -0.232297,
		41.461124, 37.708279, 37.407246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217949, 38.020935, 37.581970>,  <42.020443, 37.320045, 37.569855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.217949, 38.020935, 37.581970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.822193, 38.013653, 37.639629>,  <41.584740, 38.009285, 37.674225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.822193, 38.013653, 37.639629>,  <42.217949, 38.020935, 37.581970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822193, 38.013653, 37.639629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114452, 0.513514, 0.850414,
		-0.089504, 0.857888, -0.505981,
		-0.989389, -0.018205, 0.144148,
		41.525375, 38.008190, 37.682873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084190, 38.598961, 38.130070>,  <42.217949, 38.020935, 37.581970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084190, 38.598961, 38.130070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.737770, 38.399899, 38.149223>,  <41.529919, 38.280460, 38.160713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.737770, 38.399899, 38.149223>,  <42.084190, 38.598961, 38.130070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737770, 38.399899, 38.149223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145365, 0.342281, 0.928285,
		-0.478357, 0.796982, -0.368774,
		-0.866050, -0.497659, 0.047879,
		41.477955, 38.250603, 38.163586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595455, 39.141064, 38.444481>,  <42.084190, 38.598961, 38.130070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.595455, 39.141064, 38.444481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.425331, 38.781868, 38.489620>,  <41.323257, 38.566353, 38.516705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.425331, 38.781868, 38.489620>,  <41.595455, 39.141064, 38.444481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.425331, 38.781868, 38.489620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422263, 0.307164, 0.852845,
		-0.800505, 0.315070, -0.509825,
		-0.425306, -0.897987, 0.112844,
		41.297741, 38.512470, 38.523472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786667, 39.285641, 38.558617>,  <41.595455, 39.141064, 38.444481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786667, 39.285641, 38.558617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.813637, 38.907402, 38.685925>,  <40.829819, 38.680458, 38.762310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.813637, 38.907402, 38.685925>,  <40.786667, 39.285641, 38.558617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813637, 38.907402, 38.685925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507642, 0.242104, 0.826853,
		-0.858926, -0.217321, -0.463701,
		0.067428, -0.945599, 0.318270,
		40.833866, 38.623722, 38.781406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089085, 39.094482, 38.727081>,  <40.786667, 39.285641, 38.558617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089085, 39.094482, 38.727081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.351646, 38.865597, 38.923737>,  <40.509182, 38.728268, 39.041729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.351646, 38.865597, 38.923737>,  <40.089085, 39.094482, 38.727081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.351646, 38.865597, 38.923737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431983, 0.249187, 0.866773,
		-0.618488, -0.781332, -0.083619,
		0.656401, -0.572211, 0.491642,
		40.548569, 38.693932, 39.071228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706921, 38.657341, 39.202923>,  <40.089085, 39.094482, 38.727081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706921, 38.657341, 39.202923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.078262, 38.618000, 39.346302>,  <40.301067, 38.594395, 39.432331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.078262, 38.618000, 39.346302>,  <39.706921, 38.657341, 39.202923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078262, 38.618000, 39.346302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363688, -0.041219, 0.930609,
		-0.076761, -0.994297, -0.074038,
		0.928353, -0.098361, 0.358450,
		40.356770, 38.588493, 39.453838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681553, 38.193214, 39.697056>,  <39.706921, 38.657341, 39.202923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681553, 38.193214, 39.697056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.033833, 38.350994, 39.801968>,  <40.245201, 38.445660, 39.864914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.033833, 38.350994, 39.801968>,  <39.681553, 38.193214, 39.697056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033833, 38.350994, 39.801968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330427, 0.114846, 0.936818,
		0.339403, -0.911714, 0.231480,
		0.880695, 0.394446, 0.262276,
		40.298042, 38.469330, 39.880650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881630, 37.779598, 40.358086>,  <39.681553, 38.193214, 39.697056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881630, 37.779598, 40.358086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.060810, 38.135582, 40.323875>,  <40.168316, 38.349171, 40.303349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.060810, 38.135582, 40.323875>,  <39.881630, 37.779598, 40.358086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060810, 38.135582, 40.323875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142049, 0.165292, 0.975961,
		0.882704, -0.425029, 0.200460,
		0.447947, 0.889960, -0.085528,
		40.195194, 38.402569, 40.298218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970024, 37.835869, 41.040257>,  <39.881630, 37.779598, 40.358086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970024, 37.835869, 41.040257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.050945, 38.196701, 40.887772>,  <40.099499, 38.413200, 40.796280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.050945, 38.196701, 40.887772>,  <39.970024, 37.835869, 41.040257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050945, 38.196701, 40.887772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182346, 0.347752, 0.919684,
		0.962196, -0.255570, -0.094139,
		0.202307, 0.902082, -0.381208,
		40.111637, 38.467327, 40.773411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693405, 38.115086, 41.337254>,  <39.970024, 37.835869, 41.040257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693405, 38.115086, 41.337254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.467186, 38.417458, 41.205360>,  <40.331455, 38.598881, 41.126225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.467186, 38.417458, 41.205360>,  <40.693405, 38.115086, 41.337254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467186, 38.417458, 41.205360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116495, 0.469031, 0.875465,
		0.816444, 0.456708, -0.353323,
		-0.565551, 0.755928, -0.329734,
		40.297520, 38.644238, 41.106441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.802551, 38.652985, 41.708569>,  <40.693405, 38.115086, 41.337254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.802551, 38.652985, 41.708569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.450020, 38.755783, 41.549965>,  <40.238503, 38.817463, 41.454803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.450020, 38.755783, 41.549965>,  <40.802551, 38.652985, 41.708569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450020, 38.755783, 41.549965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272629, 0.408819, 0.870942,
		0.385926, 0.875684, -0.290240,
		-0.881326, 0.256992, -0.396511,
		40.185623, 38.832882, 41.431011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736858, 39.311386, 41.892174>,  <40.802551, 38.652985, 41.708569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736858, 39.311386, 41.892174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.364433, 39.191429, 41.809040>,  <40.140980, 39.119457, 41.759159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.364433, 39.191429, 41.809040>,  <40.736858, 39.311386, 41.892174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364433, 39.191429, 41.809040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312220, 0.360094, 0.879119,
		-0.188800, 0.883402, -0.428900,
		-0.931060, -0.299889, -0.207830,
		40.085114, 39.101463, 41.746693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.395226, 39.892555, 41.970661>,  <40.736858, 39.311386, 41.892174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.395226, 39.892555, 41.970661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.147888, 39.579460, 41.998848>,  <39.999485, 39.391602, 42.015759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.147888, 39.579460, 41.998848>,  <40.395226, 39.892555, 41.970661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147888, 39.579460, 41.998848> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304669, 0.321393, 0.896595,
		-0.724448, 0.532938, -0.437209,
		-0.618346, -0.782741, 0.070463,
		39.962383, 39.344639, 42.019985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.780762, 40.210266, 42.228165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.753658, 39.820553, 42.314129>,  <39.737396, 39.586727, 42.365707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.753658, 39.820553, 42.314129>,  <39.780762, 40.210266, 42.228165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753658, 39.820553, 42.314129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329918, 0.225171, 0.916762,
		-0.941575, -0.008786, -0.336689,
		-0.067758, -0.974280, 0.214914,
		39.733330, 39.528271, 42.378605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038258, 40.134449, 42.590092>,  <39.780762, 40.210266, 42.228165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038258, 40.134449, 42.590092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.253315, 39.803120, 42.653103>,  <39.382351, 39.604321, 42.690910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.253315, 39.803120, 42.653103>,  <39.038258, 40.134449, 42.590092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253315, 39.803120, 42.653103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254434, 0.018732, 0.966909,
		-0.803868, -0.559931, -0.200683,
		0.537643, -0.828328, 0.157523,
		39.414608, 39.554623, 42.700359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655663, 39.655773, 42.792934>,  <39.038258, 40.134449, 42.590092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655663, 39.655773, 42.792934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.999348, 39.519737, 42.945820>,  <39.205559, 39.438114, 43.037552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.999348, 39.519737, 42.945820>,  <38.655663, 39.655773, 42.792934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999348, 39.519737, 42.945820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404783, 0.005008, 0.914399,
		-0.312897, -0.940378, -0.133361,
		0.859213, -0.340095, 0.382216,
		39.257111, 39.417709, 43.060486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455490, 39.485050, 43.432400>,  <38.655663, 39.655773, 42.792934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455490, 39.485050, 43.432400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.850513, 39.494408, 43.494606>,  <39.087528, 39.500023, 43.531929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.850513, 39.494408, 43.494606>,  <38.455490, 39.485050, 43.432400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850513, 39.494408, 43.494606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154588, 0.325994, 0.932647,
		-0.028883, -0.945082, 0.325553,
		0.987557, 0.023389, 0.155514,
		39.146782, 39.501423, 43.541260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534515, 39.175213, 44.011730>,  <38.455490, 39.485050, 43.432400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534515, 39.175213, 44.011730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.861279, 39.403236, 43.976643>,  <39.057335, 39.540051, 43.955589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.861279, 39.403236, 43.976643>,  <38.534515, 39.175213, 44.011730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861279, 39.403236, 43.976643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206003, 0.430432, 0.878801,
		0.538729, -0.699826, 0.469057,
		0.816905, 0.570063, -0.087719,
		39.106350, 39.574257, 43.950325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842316, 39.111931, 44.671448>,  <38.534515, 39.175213, 44.011730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842316, 39.111931, 44.671448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.001545, 39.438713, 44.504536>,  <39.097080, 39.634785, 44.404388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.001545, 39.438713, 44.504536>,  <38.842316, 39.111931, 44.671448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001545, 39.438713, 44.504536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096184, 0.489531, 0.866665,
		0.912299, -0.304857, 0.273446,
		0.398069, 0.816959, -0.417277,
		39.120964, 39.683800, 44.379353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614990, 39.224758, 44.923695>,  <38.842316, 39.111931, 44.671448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614990, 39.224758, 44.923695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.454578, 39.576412, 44.820702>,  <39.358330, 39.787403, 44.758907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.454578, 39.576412, 44.820702>,  <39.614990, 39.224758, 44.923695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454578, 39.576412, 44.820702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136448, 0.335262, 0.932192,
		0.905846, 0.338704, -0.254406,
		-0.401030, 0.879135, -0.257481,
		39.334270, 39.840153, 44.743458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993420, 39.614632, 45.314110>,  <39.614990, 39.224758, 44.923695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993420, 39.614632, 45.314110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.722008, 39.882065, 45.192394>,  <39.559162, 40.042526, 45.119366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.722008, 39.882065, 45.192394>,  <39.993420, 39.614632, 45.314110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722008, 39.882065, 45.192394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052162, 0.457051, 0.887909,
		0.732718, 0.586601, -0.344998,
		-0.678531, 0.668583, -0.304291,
		39.518448, 40.082642, 45.101109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216858, 40.327702, 45.465981>,  <39.993420, 39.614632, 45.314110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216858, 40.327702, 45.465981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.816864, 40.328800, 45.468060>,  <39.576870, 40.329460, 45.469307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.816864, 40.328800, 45.468060>,  <40.216858, 40.327702, 45.465981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816864, 40.328800, 45.468060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005865, 0.406671, 0.913556,
		0.000396, 0.913571, -0.406680,
		-0.999983, 0.002747, 0.005197,
		39.516869, 40.329624, 45.469620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.017609, 40.972046, 45.599247>,  <40.216858, 40.327702, 45.465981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.017609, 40.972046, 45.599247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.689243, 40.763504, 45.692440>,  <39.492222, 40.638378, 45.748356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.689243, 40.763504, 45.692440>,  <40.017609, 40.972046, 45.599247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689243, 40.763504, 45.692440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042204, 0.462275, 0.885731,
		-0.569485, 0.717279, -0.401493,
		-0.820917, -0.521356, 0.232987,
		39.442966, 40.607098, 45.762337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559788, 41.471416, 46.002888>,  <40.017609, 40.972046, 45.599247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559788, 41.471416, 46.002888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.429241, 41.102909, 46.087505>,  <39.350914, 40.881805, 46.138275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.429241, 41.102909, 46.087505>,  <39.559788, 41.471416, 46.002888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429241, 41.102909, 46.087505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014855, 0.218773, 0.975663,
		-0.945126, 0.321568, -0.057715,
		-0.326369, -0.921266, 0.211545,
		39.331329, 40.826530, 46.150970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020557, 41.451294, 46.632202>,  <39.559788, 41.471416, 46.002888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020557, 41.451294, 46.632202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.128960, 41.066364, 46.623383>,  <39.194000, 40.835407, 46.618092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.128960, 41.066364, 46.623383>,  <39.020557, 41.451294, 46.632202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128960, 41.066364, 46.623383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066898, -0.041676, 0.996889,
		-0.960251, -0.268684, -0.075672,
		0.271002, -0.962326, -0.022045,
		39.210258, 40.777668, 46.616768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727692, 41.119446, 47.268700>,  <39.020557, 41.451294, 46.632202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727692, 41.119446, 47.268700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.998425, 40.854721, 47.139759>,  <39.160862, 40.695885, 47.062397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.998425, 40.854721, 47.139759>,  <38.727692, 41.119446, 47.268700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998425, 40.854721, 47.139759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292285, -0.160293, 0.942802,
		-0.675627, -0.732334, 0.084947,
		0.676829, -0.661811, -0.322348,
		39.201473, 40.656178, 47.043056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.520134, 40.515850, 47.693680>,  <38.727692, 41.119446, 47.268700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.520134, 40.515850, 47.693680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.900600, 40.471382, 47.578487>,  <39.128880, 40.444702, 47.509373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.900600, 40.471382, 47.578487>,  <38.520134, 40.515850, 47.693680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900600, 40.471382, 47.578487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253669, -0.250110, 0.934397,
		-0.175903, -0.961814, -0.209695,
		0.951163, -0.111170, -0.287978,
		39.185947, 40.438030, 47.492092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727844, 39.844173, 47.857731>,  <38.520134, 40.515850, 47.693680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727844, 39.844173, 47.857731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.053478, 40.075348, 47.834888>,  <39.248859, 40.214050, 47.821182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.053478, 40.075348, 47.834888>,  <38.727844, 39.844173, 47.857731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053478, 40.075348, 47.834888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277698, -0.301023, 0.912288,
		0.510051, -0.758537, -0.405549,
		0.814083, 0.577934, -0.057107,
		39.297703, 40.248730, 47.817757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294102, 39.413380, 48.105091>,  <38.727844, 39.844173, 47.857731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294102, 39.413380, 48.105091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.417835, 39.792358, 48.137711>,  <39.492077, 40.019745, 48.157280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.417835, 39.792358, 48.137711>,  <39.294102, 39.413380, 48.105091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417835, 39.792358, 48.137711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284634, -0.174068, 0.942701,
		0.907357, -0.268399, -0.323521,
		0.309334, 0.947451, 0.081546,
		39.510635, 40.076595, 48.162174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683109, 39.351967, 48.674168>,  <39.294102, 39.413380, 48.105091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683109, 39.351967, 48.674168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.723251, 39.748367, 48.638729>,  <39.747337, 39.986206, 48.617466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.723251, 39.748367, 48.638729>,  <39.683109, 39.351967, 48.674168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723251, 39.748367, 48.638729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471494, 0.031044, 0.881323,
		0.876141, -0.130214, -0.464135,
		0.100352, 0.991000, -0.088595,
		39.753357, 40.045666, 48.612152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323071, 39.475300, 48.833546>,  <39.683109, 39.351967, 48.674168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323071, 39.475300, 48.833546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.112499, 39.808891, 48.899704>,  <39.986156, 40.009045, 48.939400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.112499, 39.808891, 48.899704>,  <40.323071, 39.475300, 48.833546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112499, 39.808891, 48.899704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353546, 0.037808, 0.934653,
		0.773228, 0.550498, -0.314753,
		-0.526424, 0.833980, 0.165392,
		39.954571, 40.059086, 48.949322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794888, 39.936272, 49.109276>,  <40.323071, 39.475300, 48.833546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794888, 39.936272, 49.109276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.428226, 40.056366, 49.214806>,  <40.208229, 40.128422, 49.278122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.428226, 40.056366, 49.214806>,  <40.794888, 39.936272, 49.109276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428226, 40.056366, 49.214806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320795, 0.158949, 0.933716,
		0.238398, 0.940529, -0.242014,
		-0.916655, 0.300233, 0.263824,
		40.153229, 40.146435, 49.293953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915058, 40.635960, 49.330528>,  <40.794888, 39.936272, 49.109276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915058, 40.635960, 49.330528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.567154, 40.499321, 49.472984>,  <40.358414, 40.417336, 49.558456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.567154, 40.499321, 49.472984>,  <40.915058, 40.635960, 49.330528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567154, 40.499321, 49.472984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315139, 0.170877, 0.933535,
		-0.379751, 0.924181, -0.040970,
		-0.869757, -0.341600, 0.356136,
		40.306229, 40.396839, 49.579826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662716, 41.160404, 49.588703>,  <40.915058, 40.635960, 49.330528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662716, 41.160404, 49.588703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.486305, 40.868954, 49.798309>,  <40.380459, 40.694084, 49.924072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.486305, 40.868954, 49.798309>,  <40.662716, 41.160404, 49.588703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486305, 40.868954, 49.798309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474195, 0.306542, 0.825331,
		-0.761993, 0.612482, 0.210317,
		-0.441029, -0.728627, 0.524019,
		40.353996, 40.650364, 49.955517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417011, 41.460049, 50.185158>,  <40.662716, 41.160404, 49.588703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417011, 41.460049, 50.185158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.454781, 41.073269, 50.279888>,  <40.477444, 40.841202, 50.336727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.454781, 41.073269, 50.279888>,  <40.417011, 41.460049, 50.185158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454781, 41.073269, 50.279888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276419, 0.254000, 0.926864,
		-0.956387, -0.022055, 0.291268,
		0.094425, -0.966953, 0.236826,
		40.483109, 40.783184, 50.350937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174953, 41.323215, 50.907784>,  <40.417011, 41.460049, 50.185158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174953, 41.323215, 50.907784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.465836, 41.064995, 50.814457>,  <40.640366, 40.910061, 50.758461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.465836, 41.064995, 50.814457>,  <40.174953, 41.323215, 50.907784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465836, 41.064995, 50.814457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537698, 0.324443, 0.778214,
		-0.426682, -0.691372, 0.583050,
		0.727202, -0.645555, -0.233315,
		40.683998, 40.871330, 50.744461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441139, 41.668411, 50.732380>,  <40.174953, 41.323215, 50.907784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441139, 41.668411, 50.732380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.144814, 41.837593, 50.941113>,  <38.967018, 41.939102, 51.066353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.144814, 41.837593, 50.941113>,  <39.441139, 41.668411, 50.732380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144814, 41.837593, 50.941113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589731, -0.037604, -0.806724,
		-0.321585, -0.905370, 0.277287,
		-0.740811, 0.422956, 0.521831,
		38.922569, 41.964481, 51.097664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952625, 41.317451, 50.448944>,  <39.441139, 41.668411, 50.732380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952625, 41.317451, 50.448944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.805561, 41.667084, 50.575943>,  <38.717323, 41.876865, 50.652142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.805561, 41.667084, 50.575943>,  <38.952625, 41.317451, 50.448944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805561, 41.667084, 50.575943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718695, -0.050401, -0.693497,
		-0.590172, -0.483153, 0.646730,
		-0.367661, 0.874084, 0.317494,
		38.695263, 41.929310, 50.671192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179050, 41.264320, 50.529362>,  <38.952625, 41.317451, 50.448944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179050, 41.264320, 50.529362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.255966, 41.655136, 50.492676>,  <38.302116, 41.889626, 50.470665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.255966, 41.655136, 50.492676>,  <38.179050, 41.264320, 50.529362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255966, 41.655136, 50.492676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757294, 0.088304, -0.647076,
		-0.624123, 0.193880, 0.756889,
		0.192292, 0.977043, -0.091712,
		38.313652, 41.948250, 50.465164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562065, 41.645393, 50.459816>,  <38.179050, 41.264320, 50.529362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562065, 41.645393, 50.459816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.834953, 41.889652, 50.298969>,  <37.998684, 42.036205, 50.202461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.834953, 41.889652, 50.298969>,  <37.562065, 41.645393, 50.459816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834953, 41.889652, 50.298969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585583, 0.127016, -0.800599,
		-0.437805, 0.781654, 0.444235,
		0.682216, 0.610643, -0.402115,
		38.039619, 42.072845, 50.178333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168610, 42.032845, 50.160618>,  <37.562065, 41.645393, 50.459816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168610, 42.032845, 50.160618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.512142, 42.120594, 49.975452>,  <37.718262, 42.173244, 49.864353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.512142, 42.120594, 49.975452>,  <37.168610, 42.032845, 50.160618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512142, 42.120594, 49.975452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479875, 0.028313, -0.876880,
		-0.179254, 0.975231, 0.129586,
		0.858830, 0.219369, -0.462914,
		37.769791, 42.186405, 49.836578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978661, 42.476574, 49.654068>,  <37.168610, 42.032845, 50.160618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978661, 42.476574, 49.654068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.326294, 42.341782, 49.509216>,  <37.534874, 42.260906, 49.422306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.326294, 42.341782, 49.509216>,  <36.978661, 42.476574, 49.654068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326294, 42.341782, 49.509216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384239, 0.001176, -0.923233,
		0.311537, 0.941511, -0.128458,
		0.869083, -0.336980, -0.362132,
		37.587017, 42.240688, 49.400578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964340, 42.826561, 49.070526>,  <36.978661, 42.476574, 49.654068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964340, 42.826561, 49.070526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.230438, 42.530907, 49.028320>,  <37.390099, 42.353516, 49.002998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.230438, 42.530907, 49.028320>,  <36.964340, 42.826561, 49.070526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230438, 42.530907, 49.028320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173708, -0.015782, -0.984671,
		0.726138, 0.673374, -0.138892,
		0.665243, -0.739134, -0.105511,
		37.430012, 42.309166, 48.996666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414093, 42.985352, 48.499031>,  <36.964340, 42.826561, 49.070526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414093, 42.985352, 48.499031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.427776, 42.586391, 48.524387>,  <37.435986, 42.347015, 48.539600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.427776, 42.586391, 48.524387>,  <37.414093, 42.985352, 48.499031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427776, 42.586391, 48.524387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076966, -0.065868, -0.994856,
		0.996447, 0.029155, -0.079020,
		0.034210, -0.997402, 0.063390,
		37.438038, 42.287170, 48.543404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927498, 42.757885, 48.073215>,  <37.414093, 42.985352, 48.499031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927498, 42.757885, 48.073215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.683128, 42.444279, 48.117195>,  <37.536507, 42.256115, 48.143581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.683128, 42.444279, 48.117195>,  <37.927498, 42.757885, 48.073215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683128, 42.444279, 48.117195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016677, -0.151595, -0.988302,
		0.791512, -0.601946, 0.105689,
		-0.610926, -0.784016, 0.109950,
		37.499851, 42.209076, 48.150181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129444, 42.238594, 47.597412>,  <37.927498, 42.757885, 48.073215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129444, 42.238594, 47.597412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.760487, 42.109463, 47.682243>,  <37.539112, 42.031982, 47.733143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.760487, 42.109463, 47.682243>,  <38.129444, 42.238594, 47.597412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.760487, 42.109463, 47.682243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183924, -0.115735, -0.976103,
		0.339660, -0.939354, 0.047377,
		-0.922390, -0.322829, 0.212080,
		37.483768, 42.012615, 47.745869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140381, 41.599625, 47.341480>,  <38.129444, 42.238594, 47.597412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140381, 41.599625, 47.341480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.761040, 41.724560, 47.363663>,  <37.533436, 41.799522, 47.376972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.761040, 41.724560, 47.363663>,  <38.140381, 41.599625, 47.341480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761040, 41.724560, 47.363663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122807, -0.200311, -0.972005,
		-0.292487, -0.928612, 0.228322,
		-0.948351, 0.312338, 0.055452,
		37.476536, 41.818260, 47.380299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850288, 41.159412, 46.928837>,  <38.140381, 41.599625, 47.341480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850288, 41.159412, 46.928837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.585171, 41.457344, 46.959663>,  <37.426102, 41.636101, 46.978161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.585171, 41.457344, 46.959663>,  <37.850288, 41.159412, 46.928837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585171, 41.457344, 46.959663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141820, -0.023808, -0.989606,
		-0.735250, -0.666833, 0.121411,
		-0.662793, 0.744826, 0.077065,
		37.386333, 41.680794, 46.982784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262630, 40.871929, 46.615402>,  <37.850288, 41.159412, 46.928837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262630, 40.871929, 46.615402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.210438, 41.268204, 46.599861>,  <37.179123, 41.505970, 46.590538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.210438, 41.268204, 46.599861>,  <37.262630, 40.871929, 46.615402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210438, 41.268204, 46.599861> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231765, -0.068580, -0.970351,
		-0.963981, -0.117609, 0.238556,
		-0.130483, 0.990689, -0.038852,
		37.171291, 41.565411, 46.588207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683292, 40.933102, 46.285778>,  <37.262630, 40.871929, 46.615402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.683292, 40.933102, 46.285778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.861351, 41.288387, 46.240295>,  <36.968185, 41.501556, 46.213005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.861351, 41.288387, 46.240295>,  <36.683292, 40.933102, 46.285778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861351, 41.288387, 46.240295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260516, 0.006967, -0.965445,
		-0.856725, 0.459385, 0.234494,
		0.445145, 0.888210, -0.113708,
		36.994896, 41.554852, 46.206184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355736, 41.213623, 45.734707>,  <36.683292, 40.933102, 46.285778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355736, 41.213623, 45.734707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.669121, 41.459702, 45.769852>,  <36.857151, 41.607349, 45.790939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.669121, 41.459702, 45.769852>,  <36.355736, 41.213623, 45.734707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669121, 41.459702, 45.769852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025160, 0.109868, -0.993628,
		-0.620930, 0.780680, 0.070599,
		0.783462, 0.615197, 0.087862,
		36.904160, 41.644260, 45.796211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147621, 41.701473, 45.297646>,  <36.355736, 41.213623, 45.734707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147621, 41.701473, 45.297646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.541740, 41.745445, 45.349964>,  <36.778210, 41.771828, 45.381355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.541740, 41.745445, 45.349964>,  <36.147621, 41.701473, 45.297646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541740, 41.745445, 45.349964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133696, -0.019369, -0.990833,
		-0.106392, 0.993750, -0.033782,
		0.985295, 0.109933, 0.130800,
		36.837330, 41.778423, 45.389206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386150, 42.265903, 44.916420>,  <36.147621, 41.701473, 45.297646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386150, 42.265903, 44.916420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.714325, 42.047634, 44.984676>,  <36.911232, 41.916672, 45.025631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.714325, 42.047634, 44.984676>,  <36.386150, 42.265903, 44.916420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714325, 42.047634, 44.984676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234290, 0.048631, -0.970949,
		0.521524, 0.836585, 0.167745,
		0.820439, -0.545674, 0.170642,
		36.960457, 41.883930, 45.035870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000950, 42.543434, 44.647682>,  <36.386150, 42.265903, 44.916420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000950, 42.543434, 44.647682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.061527, 42.148762, 44.671410>,  <37.097874, 41.911957, 44.685646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.061527, 42.148762, 44.671410>,  <37.000950, 42.543434, 44.647682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061527, 42.148762, 44.671410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222283, -0.024476, -0.974675,
		0.963148, 0.160798, 0.215617,
		0.151448, -0.986684, 0.059316,
		37.106960, 41.852757, 44.689205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295811, 42.419018, 44.092072>,  <37.000950, 42.543434, 44.647682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295811, 42.419018, 44.092072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.267803, 42.033310, 44.194267>,  <37.250999, 41.801884, 44.255585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.267803, 42.033310, 44.194267>,  <37.295811, 42.419018, 44.092072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267803, 42.033310, 44.194267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061541, -0.259810, -0.963697,
		0.995646, -0.051757, 0.077534,
		-0.070022, -0.964272, 0.255494,
		37.246796, 41.744030, 44.270916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611420, 42.035007, 43.648441>,  <37.295811, 42.419018, 44.092072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611420, 42.035007, 43.648441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.373844, 41.746380, 43.790756>,  <37.231300, 41.573204, 43.876144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.373844, 41.746380, 43.790756>,  <37.611420, 42.035007, 43.648441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373844, 41.746380, 43.790756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083436, -0.384606, -0.919302,
		0.800173, -0.575693, 0.168227,
		-0.593937, -0.721565, 0.355784,
		37.195663, 41.529911, 43.897491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915833, 41.466667, 43.415043>,  <37.611420, 42.035007, 43.648441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915833, 41.466667, 43.415043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.541687, 41.349293, 43.494022>,  <37.317200, 41.278870, 43.541409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.541687, 41.349293, 43.494022>,  <37.915833, 41.466667, 43.415043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541687, 41.349293, 43.494022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049808, -0.443411, -0.894933,
		0.350154, -0.846925, 0.400137,
		-0.935367, -0.293435, 0.197447,
		37.261078, 41.261261, 43.553257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.007885, 32.774292, 25.666485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.609814, 32.812946, 25.659754>,  <44.370972, 32.836140, 25.655716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.609814, 32.812946, 25.659754>,  <45.007885, 32.774292, 25.666485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.609814, 32.812946, 25.659754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038715, -0.229346, 0.972575,
		0.090122, 0.968536, 0.231981,
		-0.995178, 0.096632, -0.016828,
		44.311260, 32.841934, 25.654705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.841518, 33.268013, 26.068928>,  <45.007885, 32.774292, 25.666485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.841518, 33.268013, 26.068928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.512825, 33.041210, 26.046144>,  <44.315609, 32.905128, 26.032475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.512825, 33.041210, 26.046144>,  <44.841518, 33.268013, 26.068928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.512825, 33.041210, 26.046144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066697, -0.003569, 0.997767,
		-0.565949, 0.823702, -0.034885,
		-0.821738, -0.567012, -0.056959,
		44.266304, 32.871105, 26.029057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.406292, 33.653896, 26.496740>,  <44.841518, 33.268013, 26.068928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.406292, 33.653896, 26.496740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.250519, 33.288795, 26.447374>,  <44.157055, 33.069736, 26.417755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.250519, 33.288795, 26.447374>,  <44.406292, 33.653896, 26.496740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.250519, 33.288795, 26.447374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260136, -0.019538, 0.965375,
		-0.883555, 0.408056, -0.229829,
		-0.389437, -0.912748, -0.123413,
		44.133686, 33.014973, 26.410351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.683811, 33.622341, 26.721689>,  <44.406292, 33.653896, 26.496740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.683811, 33.622341, 26.721689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.830528, 33.255512, 26.784227>,  <43.918556, 33.035416, 26.821751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.830528, 33.255512, 26.784227>,  <43.683811, 33.622341, 26.721689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.830528, 33.255512, 26.784227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153071, 0.106274, 0.982484,
		-0.917625, -0.384296, -0.101398,
		0.366789, -0.917073, 0.156344,
		43.940563, 32.980389, 26.831131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.231087, 33.398403, 27.247957>,  <43.683811, 33.622341, 26.721689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.231087, 33.398403, 27.247957> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.513466, 33.115135, 27.243368>,  <43.682896, 32.945175, 27.240614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.513466, 33.115135, 27.243368>,  <43.231087, 33.398403, 27.247957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.513466, 33.115135, 27.243368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116825, -0.132407, 0.984287,
		-0.698560, -0.693517, -0.176204,
		0.705950, -0.708169, -0.011475,
		43.725250, 32.902683, 27.239925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.903816, 32.958569, 27.572079>,  <43.231087, 33.398403, 27.247957>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.903816, 32.958569, 27.572079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.298824, 32.896244, 27.581301>,  <43.535828, 32.858849, 27.586834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.298824, 32.896244, 27.581301>,  <42.903816, 32.958569, 27.572079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.298824, 32.896244, 27.581301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058675, -0.228091, 0.971870,
		-0.146164, -0.961093, -0.234386,
		0.987519, -0.155805, 0.023054,
		43.595081, 32.849503, 27.588217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.946564, 32.456791, 28.069195>,  <42.903816, 32.958569, 27.572079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.946564, 32.456791, 28.069195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.316055, 32.604645, 28.029001>,  <43.537750, 32.693359, 28.004885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.316055, 32.604645, 28.029001>,  <42.946564, 32.456791, 28.069195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.316055, 32.604645, 28.029001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095943, 0.030704, 0.994913,
		0.370844, -0.928668, -0.007102,
		0.923726, 0.369639, -0.100485,
		43.593174, 32.715538, 27.998856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.442329, 31.988884, 28.439703>,  <42.946564, 32.456791, 28.069195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.442329, 31.988884, 28.439703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.592117, 32.359779, 28.439360>,  <43.681992, 32.582317, 28.439154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.592117, 32.359779, 28.439360>,  <43.442329, 31.988884, 28.439703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.592117, 32.359779, 28.439360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183216, -0.073084, 0.980352,
		0.908956, -0.367273, -0.197253,
		0.374473, 0.927237, -0.000860,
		43.704460, 32.637951, 28.439102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.088955, 31.919643, 28.743624>,  <43.442329, 31.988884, 28.439703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.088955, 31.919643, 28.743624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.050793, 32.317463, 28.760452>,  <44.027893, 32.556156, 28.770550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.050793, 32.317463, 28.760452>,  <44.088955, 31.919643, 28.743624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.050793, 32.317463, 28.760452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314095, -0.010029, 0.949339,
		0.944585, 0.103792, -0.311426,
		-0.095410, 0.994549, 0.042073,
		44.022171, 32.615826, 28.773075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.579643, 32.152248, 29.159800>,  <44.088955, 31.919643, 28.743624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.579643, 32.152248, 29.159800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.339008, 32.471615, 29.169832>,  <44.194626, 32.663235, 29.175852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.339008, 32.471615, 29.169832>,  <44.579643, 32.152248, 29.159800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.339008, 32.471615, 29.169832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219876, 0.135323, 0.966096,
		0.767950, 0.586706, -0.256961,
		-0.601587, 0.798413, 0.025081,
		44.158531, 32.711140, 29.177357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.973495, 32.585457, 29.613676>,  <44.579643, 32.152248, 29.159800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.973495, 32.585457, 29.613676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.597076, 32.720253, 29.625425>,  <44.371223, 32.801132, 29.632475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.597076, 32.720253, 29.625425>,  <44.973495, 32.585457, 29.613676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.597076, 32.720253, 29.625425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074853, 0.122772, 0.989608,
		0.329886, 0.933468, -0.140759,
		-0.941049, 0.336994, 0.029372,
		44.314762, 32.821350, 29.634237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.016628, 33.269497, 30.029121>,  <44.973495, 32.585457, 29.613676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.016628, 33.269497, 30.029121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.637066, 33.144424, 30.012121>,  <44.409328, 33.069382, 30.001921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.637066, 33.144424, 30.012121>,  <45.016628, 33.269497, 30.029121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.637066, 33.144424, 30.012121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123246, 0.243253, 0.962101,
		-0.290488, 0.918183, -0.269361,
		-0.948908, -0.312677, -0.042500,
		44.352394, 33.050621, 29.999371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.648113, 33.827404, 30.175407>,  <45.016628, 33.269497, 30.029121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.648113, 33.827404, 30.175407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.413593, 33.517311, 30.269442>,  <44.272881, 33.331253, 30.325861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.413593, 33.517311, 30.269442>,  <44.648113, 33.827404, 30.175407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.413593, 33.517311, 30.269442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133868, 0.378919, 0.915696,
		-0.798959, 0.505400, -0.325939,
		-0.586297, -0.775236, 0.235084,
		44.237705, 33.284740, 30.339968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.178196, 34.131374, 30.638260>,  <44.648113, 33.827404, 30.175407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.178196, 34.131374, 30.638260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.101387, 33.742790, 30.693964>,  <44.055302, 33.509640, 30.727386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.101387, 33.742790, 30.693964>,  <44.178196, 34.131374, 30.638260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.101387, 33.742790, 30.693964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137490, 0.167131, 0.976301,
		-0.971712, 0.168323, -0.165659,
		-0.192020, -0.971460, 0.139260,
		44.043781, 33.451351, 30.735743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.485741, 34.002174, 30.875900>,  <44.178196, 34.131374, 30.638260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.485741, 34.002174, 30.875900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.696674, 33.684990, 30.997965>,  <43.823235, 33.494678, 31.071203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.696674, 33.684990, 30.997965>,  <43.485741, 34.002174, 30.875900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.696674, 33.684990, 30.997965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298919, 0.163057, 0.940244,
		-0.795341, -0.587042, -0.151048,
		0.527333, -0.792966, 0.305164,
		43.854874, 33.447102, 31.089514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.098793, 33.579567, 31.341814>,  <43.485741, 34.002174, 30.875900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.098793, 33.579567, 31.341814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.473866, 33.490128, 31.448215>,  <43.698910, 33.436462, 31.512056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.473866, 33.490128, 31.448215>,  <43.098793, 33.579567, 31.341814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473866, 33.490128, 31.448215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175703, 0.355348, 0.918072,
		-0.299803, -0.907597, 0.293916,
		0.937682, -0.223599, 0.266002,
		43.755169, 33.423046, 31.528017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.102974, 33.330563, 32.108147>,  <43.098793, 33.579567, 31.341814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.102974, 33.330563, 32.108147> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.486027, 33.419231, 32.034599>,  <43.715858, 33.472431, 31.990471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.486027, 33.419231, 32.034599>,  <43.102974, 33.330563, 32.108147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.486027, 33.419231, 32.034599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083552, 0.397131, 0.913951,
		0.275616, -0.890589, 0.361784,
		0.957630, 0.221671, -0.183866,
		43.773315, 33.485733, 31.979439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.494919, 33.218079, 32.814709>,  <43.102974, 33.330563, 32.108147>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.494919, 33.218079, 32.814709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.752918, 33.433414, 32.597759>,  <43.907719, 33.562614, 32.467590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.752918, 33.433414, 32.597759>,  <43.494919, 33.218079, 32.814709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.752918, 33.433414, 32.597759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283761, 0.490275, 0.824081,
		0.709548, -0.685435, 0.163466,
		0.644997, 0.538340, -0.542373,
		43.946419, 33.594917, 32.435047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.034306, 33.213345, 33.217216>,  <43.494919, 33.218079, 32.814709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.034306, 33.213345, 33.217216> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.142559, 33.501141, 32.961376>,  <44.207512, 33.673817, 32.807873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.142559, 33.501141, 32.961376>,  <44.034306, 33.213345, 33.217216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.142559, 33.501141, 32.961376> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496428, 0.464942, 0.733068,
		0.824812, -0.515911, -0.231345,
		0.270636, 0.719489, -0.639602,
		44.223751, 33.716988, 32.769497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.821678, 33.289593, 33.314613>,  <44.034306, 33.213345, 33.217216>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.821678, 33.289593, 33.314613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.655590, 33.622982, 33.168785>,  <44.555939, 33.823017, 33.081287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.655590, 33.622982, 33.168785>,  <44.821678, 33.289593, 33.314613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.655590, 33.622982, 33.168785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485157, 0.541884, 0.686283,
		0.769557, 0.108080, -0.629366,
		-0.415217, 0.833475, -0.364575,
		44.531025, 33.873024, 33.059414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.374611, 33.734467, 33.276173>,  <44.821678, 33.289593, 33.314613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.374611, 33.734467, 33.276173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.053471, 33.972771, 33.285168>,  <44.860786, 34.115753, 33.290565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.053471, 33.972771, 33.285168>,  <45.374611, 33.734467, 33.276173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.053471, 33.972771, 33.285168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427248, 0.548631, 0.718654,
		0.415805, 0.586580, -0.695004,
		-0.802848, 0.595759, 0.022491,
		44.812614, 34.151497, 33.291916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.879120, 34.195343, 32.962852>,  <45.374611, 33.734467, 33.276173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.879120, 34.195343, 32.962852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.940029, 34.238953, 33.355774>,  <45.976574, 34.265118, 33.591526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.940029, 34.238953, 33.355774>,  <45.879120, 34.195343, 32.962852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.940029, 34.238953, 33.355774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287034, 0.955937, -0.061605,
		-0.945740, -0.272575, 0.176861,
		0.152276, 0.109028, 0.982306,
		45.985710, 34.271660, 33.650467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.136509, 34.697083, 33.394081>,  <45.879120, 34.195343, 32.962852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.136509, 34.697083, 33.394081> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.491505, 34.787502, 33.233452>,  <46.704502, 34.841755, 33.137074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.491505, 34.787502, 33.233452>,  <46.136509, 34.697083, 33.394081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.491505, 34.787502, 33.233452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439282, 0.151691, -0.885450,
		-0.139243, 0.962232, 0.233925,
		0.887492, 0.226052, -0.401569,
		46.757751, 34.855316, 33.112980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.006138, 35.186142, 32.939362>,  <46.136509, 34.697083, 33.394081>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.006138, 35.186142, 32.939362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.351776, 35.036217, 32.804981>,  <46.559158, 34.946262, 32.724354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.351776, 35.036217, 32.804981>,  <46.006138, 35.186142, 32.939362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.351776, 35.036217, 32.804981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399534, -0.104804, -0.910708,
		0.306133, 0.921159, -0.240309,
		0.864092, -0.374810, -0.335950,
		46.611004, 34.923775, 32.704197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.094398, 35.549793, 32.293522>,  <46.006138, 35.186142, 32.939362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.094398, 35.549793, 32.293522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.325413, 35.224827, 32.261433>,  <46.464020, 35.029846, 32.242180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.325413, 35.224827, 32.261433>,  <46.094398, 35.549793, 32.293522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.325413, 35.224827, 32.261433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164869, -0.019832, -0.986116,
		0.799545, 0.582741, -0.145396,
		0.577534, -0.812416, -0.080219,
		46.498672, 34.981102, 32.237366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.617935, 35.695957, 31.807051>,  <46.094398, 35.549793, 32.293522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.617935, 35.695957, 31.807051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.598843, 35.296448, 31.812319>,  <46.587387, 35.056744, 31.815479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.598843, 35.296448, 31.812319>,  <46.617935, 35.695957, 31.807051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.598843, 35.296448, 31.812319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164268, -0.005157, -0.986402,
		0.985260, -0.049241, -0.163820,
		-0.047727, -0.998774, 0.013170,
		46.584526, 34.996815, 31.816269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.014400, 35.534317, 31.225653>,  <46.617935, 35.695957, 31.807051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.014400, 35.534317, 31.225653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.814247, 35.196869, 31.303537>,  <46.694153, 34.994400, 31.350269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.814247, 35.196869, 31.303537>,  <47.014400, 35.534317, 31.225653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.814247, 35.196869, 31.303537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048896, -0.252071, -0.966473,
		0.864420, -0.474090, 0.167383,
		-0.500387, -0.843623, 0.194714,
		46.664131, 34.943783, 31.361952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.399368, 34.902576, 30.902136>,  <47.014400, 35.534317, 31.225653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.399368, 34.902576, 30.902136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.008057, 34.828964, 30.940285>,  <46.773270, 34.784798, 30.963173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.008057, 34.828964, 30.940285>,  <47.399368, 34.902576, 30.902136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.008057, 34.828964, 30.940285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053821, -0.218802, -0.974284,
		0.200163, -0.958258, 0.204146,
		-0.978283, -0.184028, 0.095371,
		46.714573, 34.773754, 30.968897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.425156, 34.403893, 30.419064>,  <47.399368, 34.902576, 30.902136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.425156, 34.403893, 30.419064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.047302, 34.511368, 30.494406>,  <46.820591, 34.575855, 30.539610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.047302, 34.511368, 30.494406>,  <47.425156, 34.403893, 30.419064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.047302, 34.511368, 30.494406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173748, 0.077367, -0.981746,
		-0.278360, -0.960114, -0.026398,
		-0.944631, 0.268692, 0.188354,
		46.763912, 34.591976, 30.550913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.105003, 34.095848, 30.003208>,  <47.425156, 34.403893, 30.419064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.105003, 34.095848, 30.003208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.847382, 34.391529, 30.081974>,  <46.692810, 34.568935, 30.129232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.847382, 34.391529, 30.081974>,  <47.105003, 34.095848, 30.003208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.847382, 34.391529, 30.081974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191293, 0.093606, -0.977059,
		-0.740675, -0.666949, 0.081116,
		-0.644055, 0.739201, 0.196914,
		46.654163, 34.613289, 30.141048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.567970, 33.984097, 29.508200>,  <47.105003, 34.095848, 30.003208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.567970, 33.984097, 29.508200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.525257, 34.357250, 29.645788>,  <46.499630, 34.581142, 29.728342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.525257, 34.357250, 29.645788>,  <46.567970, 33.984097, 29.508200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.525257, 34.357250, 29.645788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257724, 0.308157, -0.915761,
		-0.960300, -0.186438, 0.207522,
		-0.106783, 0.932889, 0.343972,
		46.493221, 34.637115, 29.748980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.900043, 34.198174, 29.309927>,  <46.567970, 33.984097, 29.508200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.900043, 34.198174, 29.309927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.095493, 34.538929, 29.385330>,  <46.212761, 34.743382, 29.430573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.095493, 34.538929, 29.385330>,  <45.900043, 34.198174, 29.309927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.095493, 34.538929, 29.385330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229428, 0.333903, -0.914260,
		-0.841791, 0.403477, 0.358599,
		0.488621, 0.851889, 0.188508,
		46.242081, 34.794495, 29.441883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.369305, 34.734192, 29.205791>,  <45.900043, 34.198174, 29.309927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.369305, 34.734192, 29.205791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.747025, 34.861244, 29.171352>,  <45.973656, 34.937477, 29.150688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.747025, 34.861244, 29.171352>,  <45.369305, 34.734192, 29.205791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.747025, 34.861244, 29.171352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232991, 0.460483, -0.856546,
		-0.232420, 0.828894, 0.508838,
		0.944297, 0.317633, -0.086100,
		46.030315, 34.956535, 29.145523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.239849, 35.418808, 28.877977>,  <45.369305, 34.734192, 29.205791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.239849, 35.418808, 28.877977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.623882, 35.335968, 28.802780>,  <45.854301, 35.286263, 28.757662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.623882, 35.335968, 28.802780>,  <45.239849, 35.418808, 28.877977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.623882, 35.335968, 28.802780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107442, 0.347475, -0.931513,
		0.258243, 0.914532, 0.311355,
		0.960087, -0.207104, -0.187993,
		45.911907, 35.273838, 28.746382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.457001, 36.046795, 28.540277>,  <45.239849, 35.418808, 28.877977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.457001, 36.046795, 28.540277> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.729393, 35.760757, 28.477160>,  <45.892830, 35.589134, 28.439289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.729393, 35.760757, 28.477160>,  <45.457001, 36.046795, 28.540277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.729393, 35.760757, 28.477160> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007713, 0.222470, -0.974909,
		0.732257, 0.662681, 0.157014,
		0.680984, -0.715095, -0.157793,
		45.933689, 35.546230, 28.429821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.972507, 36.263142, 28.058229>,  <45.457001, 36.046795, 28.540277>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.972507, 36.263142, 28.058229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.952003, 35.865078, 28.024706>,  <45.939701, 35.626240, 28.004591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.952003, 35.865078, 28.024706>,  <45.972507, 36.263142, 28.058229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.952003, 35.865078, 28.024706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106914, 0.088907, -0.990285,
		0.992946, -0.041804, -0.110954,
		-0.051262, -0.995162, -0.083810,
		45.936626, 35.566528, 27.999563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.264896, 36.138573, 27.460814>,  <45.972507, 36.263142, 28.058229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.264896, 36.138573, 27.460814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.090244, 35.780918, 27.500549>,  <45.985451, 35.566326, 27.524391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.090244, 35.780918, 27.500549>,  <46.264896, 36.138573, 27.460814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.090244, 35.780918, 27.500549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138478, -0.042306, -0.989462,
		0.888919, -0.445786, -0.105346,
		-0.436632, -0.894139, 0.099338,
		45.959255, 35.512676, 27.530352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.464848, 35.594128, 26.970533>,  <46.264896, 36.138573, 27.460814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.464848, 35.594128, 26.970533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.094372, 35.486557, 27.076246>,  <45.872086, 35.422012, 27.139673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.094372, 35.486557, 27.076246>,  <46.464848, 35.594128, 26.970533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.094372, 35.486557, 27.076246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307305, 0.132274, -0.942373,
		0.218475, -0.954033, -0.205155,
		-0.926192, -0.268931, 0.264281,
		45.816513, 35.405876, 27.155531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.290771, 35.214333, 26.424469>,  <46.464848, 35.594128, 26.970533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.290771, 35.214333, 26.424469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.942932, 35.306919, 26.598925>,  <45.734226, 35.362473, 26.703598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.942932, 35.306919, 26.598925>,  <46.290771, 35.214333, 26.424469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.942932, 35.306919, 26.598925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408656, 0.158354, -0.898846,
		-0.277119, -0.959868, -0.043114,
		-0.869600, 0.231469, 0.436139,
		45.682053, 35.376358, 26.729767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.761299, 34.823715, 25.967531>,  <46.290771, 35.214333, 26.424469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.761299, 34.823715, 25.967531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.559650, 35.102810, 26.171110>,  <45.438660, 35.270267, 26.293257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.559650, 35.102810, 26.171110>,  <45.761299, 34.823715, 25.967531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.559650, 35.102810, 26.171110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480750, 0.262842, -0.836537,
		-0.717452, -0.666394, 0.202930,
		-0.504125, 0.697734, 0.508945,
		45.408413, 35.312130, 26.323793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.946701, 34.691273, 25.903601>,  <45.761299, 34.823715, 25.967531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.946701, 34.691273, 25.903601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.044456, 35.064964, 26.007515>,  <45.103107, 35.289181, 26.069864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.044456, 35.064964, 26.007515>,  <44.946701, 34.691273, 25.903601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.044456, 35.064964, 26.007515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410633, 0.342409, -0.845066,
		-0.878440, 0.099844, 0.467305,
		0.244385, 0.934231, 0.259787,
		45.117771, 35.345234, 26.085451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.456196, 35.031433, 25.705875>,  <44.946701, 34.691273, 25.903601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.456196, 35.031433, 25.705875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.732338, 35.318287, 25.744097>,  <44.898022, 35.490398, 25.767031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.732338, 35.318287, 25.744097>,  <44.456196, 35.031433, 25.705875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.732338, 35.318287, 25.744097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299369, 0.403405, -0.864664,
		-0.658625, 0.568319, 0.493179,
		0.690356, 0.717132, 0.095556,
		44.939445, 35.533428, 25.772764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.367828, 39.021652, 40.310246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035805, 38.856266, 40.160553>,  <40.836590, 38.757034, 40.070736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035805, 38.856266, 40.160553>,  <41.367828, 39.021652, 40.310246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035805, 38.856266, 40.160553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510664, -0.293854, -0.808005,
		0.224114, -0.861798, 0.455058,
		-0.830057, -0.413467, -0.374233,
		40.786789, 38.732227, 40.048283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629410, 38.499954, 39.854065>,  <41.367828, 39.021652, 40.310246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629410, 38.499954, 39.854065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244133, 38.528461, 39.750381>,  <41.012966, 38.545567, 39.688171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244133, 38.528461, 39.750381>,  <41.629410, 38.499954, 39.854065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.244133, 38.528461, 39.750381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236302, -0.235292, -0.942761,
		-0.128175, -0.969308, 0.209791,
		-0.963188, 0.071264, -0.259208,
		40.955177, 38.549843, 39.672619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405075, 37.871586, 39.724545>,  <41.629410, 38.499954, 39.854065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.405075, 37.871586, 39.724545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156376, 38.116066, 39.528641>,  <41.007156, 38.262753, 39.411098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156376, 38.116066, 39.528641>,  <41.405075, 37.871586, 39.724545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156376, 38.116066, 39.528641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315067, -0.377308, -0.870845,
		-0.717051, -0.695753, 0.042021,
		-0.621748, 0.611201, -0.489758,
		40.969852, 38.299427, 39.381714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071495, 37.480160, 39.302910>,  <41.405075, 37.871586, 39.724545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071495, 37.480160, 39.302910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020309, 37.838718, 39.133156>,  <40.989597, 38.053852, 39.031303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020309, 37.838718, 39.133156>,  <41.071495, 37.480160, 39.302910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.020309, 37.838718, 39.133156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024330, -0.424939, -0.904895,
		-0.991480, -0.126120, 0.032568,
		-0.127965, 0.896393, -0.424387,
		40.981918, 38.107635, 39.005840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713646, 37.272831, 38.681553>,  <41.071495, 37.480160, 39.302910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713646, 37.272831, 38.681553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874592, 37.637997, 38.654171>,  <40.971161, 37.857098, 38.637741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.874592, 37.637997, 38.654171>,  <40.713646, 37.272831, 38.681553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874592, 37.637997, 38.654171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089069, -0.113459, -0.989542,
		-0.911135, 0.392062, -0.126964,
		0.402367, 0.912915, -0.068456,
		40.995300, 37.911873, 38.633633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397324, 37.579105, 38.193439>,  <40.713646, 37.272831, 38.681553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397324, 37.579105, 38.193439> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714344, 37.820091, 38.155689>,  <40.904556, 37.964684, 38.133038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714344, 37.820091, 38.155689>,  <40.397324, 37.579105, 38.193439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714344, 37.820091, 38.155689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030922, -0.194268, -0.980461,
		-0.609024, 0.774144, -0.172596,
		0.792548, 0.602462, -0.094376,
		40.952110, 38.000832, 38.127377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254654, 38.101879, 37.654846>,  <40.397324, 37.579105, 38.193439>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254654, 38.101879, 37.654846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654251, 38.097584, 37.672264>,  <40.894009, 38.095005, 37.682713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654251, 38.097584, 37.672264>,  <40.254654, 38.101879, 37.654846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654251, 38.097584, 37.672264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039983, -0.226462, -0.973199,
		0.020314, 0.973961, -0.225805,
		0.998994, -0.010741, 0.043543,
		40.953949, 38.094360, 37.685326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559025, 38.534100, 37.052818>,  <40.254654, 38.101879, 37.654846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559025, 38.534100, 37.052818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837788, 38.266846, 37.157059>,  <41.005047, 38.106491, 37.219601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837788, 38.266846, 37.157059>,  <40.559025, 38.534100, 37.052818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837788, 38.266846, 37.157059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085711, -0.283173, -0.955231,
		0.712021, 0.688044, -0.140078,
		0.696908, -0.668138, 0.260598,
		41.046860, 38.066402, 37.235237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958122, 38.602943, 36.462837>,  <40.559025, 38.534100, 37.052818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958122, 38.602943, 36.462837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083313, 38.271080, 36.647755>,  <41.158428, 38.071960, 36.758705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083313, 38.271080, 36.647755>,  <40.958122, 38.602943, 36.462837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.083313, 38.271080, 36.647755> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269221, -0.389286, -0.880895,
		0.910805, 0.400157, 0.101525,
		0.312974, -0.829657, 0.462295,
		41.177204, 38.022182, 36.786442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526749, 38.386467, 36.000652>,  <40.958122, 38.602943, 36.462837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526749, 38.386467, 36.000652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434635, 38.066147, 36.221809>,  <41.379368, 37.873955, 36.354504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434635, 38.066147, 36.221809>,  <41.526749, 38.386467, 36.000652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434635, 38.066147, 36.221809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178949, -0.593323, -0.784821,
		0.956529, -0.081790, 0.279934,
		-0.230282, -0.800798, 0.552895,
		41.365551, 37.825909, 36.387676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.111767, 37.846504, 35.827351>,  <41.526749, 38.386467, 36.000652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.111767, 37.846504, 35.827351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778137, 37.665936, 35.954178>,  <41.577957, 37.557594, 36.030273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778137, 37.665936, 35.954178>,  <42.111767, 37.846504, 35.827351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778137, 37.665936, 35.954178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164213, -0.751889, -0.638511,
		0.526640, -0.480500, 0.701263,
		-0.834077, -0.451422, 0.317071,
		41.527916, 37.530510, 36.049297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.321846, 37.217773, 35.890396>,  <42.111767, 37.846504, 35.827351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.321846, 37.217773, 35.890396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922951, 37.199284, 35.867123>,  <41.683613, 37.188190, 35.853157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.922951, 37.199284, 35.867123>,  <42.321846, 37.217773, 35.890396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.922951, 37.199284, 35.867123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072122, -0.790843, -0.607755,
		-0.017923, -0.610271, 0.791990,
		-0.997235, -0.046227, -0.058188,
		41.623779, 37.185417, 35.849667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.008984, 36.499290, 36.095360>,  <42.321846, 37.217773, 35.890396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.008984, 36.499290, 36.095360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816959, 36.719261, 35.821976>,  <41.701744, 36.851242, 35.657944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816959, 36.719261, 35.821976>,  <42.008984, 36.499290, 36.095360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.816959, 36.719261, 35.821976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065968, -0.754276, -0.653235,
		-0.874750, -0.358681, 0.325823,
		-0.480063, 0.549923, -0.683464,
		41.672939, 36.884239, 35.616936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772823, 35.762260, 35.881222>,  <42.008984, 36.499290, 36.095360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772823, 35.762260, 35.881222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717976, 35.424435, 35.674183>,  <41.685066, 35.221737, 35.549961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717976, 35.424435, 35.674183>,  <41.772823, 35.762260, 35.881222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.717976, 35.424435, 35.674183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525906, -0.380733, 0.760569,
		-0.839418, 0.376493, -0.391958,
		-0.137118, -0.844568, -0.517594,
		41.676842, 35.171062, 35.518906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.134064, 35.614223, 35.838135>,  <41.772823, 35.762260, 35.881222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.134064, 35.614223, 35.838135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346085, 35.275089, 35.832123>,  <41.473297, 35.071609, 35.828514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346085, 35.275089, 35.832123>,  <41.134064, 35.614223, 35.838135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346085, 35.275089, 35.832123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532346, -0.346505, 0.772361,
		-0.660042, -0.401388, -0.635006,
		0.530049, -0.847834, -0.015031,
		41.505100, 35.020741, 35.827614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630249, 35.170025, 35.982243>,  <41.134064, 35.614223, 35.838135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630249, 35.170025, 35.982243> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972752, 34.975395, 36.051601>,  <41.178253, 34.858620, 36.093216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972752, 34.975395, 36.051601>,  <40.630249, 35.170025, 35.982243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972752, 34.975395, 36.051601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431709, -0.489775, 0.757461,
		-0.283632, -0.723442, -0.629432,
		0.856260, -0.486572, 0.173401,
		41.229630, 34.829422, 36.103622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503120, 34.527390, 35.994087>,  <40.630249, 35.170025, 35.982243>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503120, 34.527390, 35.994087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819637, 34.571148, 36.234715>,  <41.009548, 34.597404, 36.379093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819637, 34.571148, 36.234715>,  <40.503120, 34.527390, 35.994087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819637, 34.571148, 36.234715> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524194, -0.385107, 0.759548,
		0.314764, -0.916365, -0.247385,
		0.791293, 0.109400, 0.601571,
		41.057026, 34.603970, 36.415184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.582340, 33.914677, 36.492878>,  <40.503120, 34.527390, 35.994087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.582340, 33.914677, 36.492878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806301, 34.177795, 36.694393>,  <40.940678, 34.335667, 36.815304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.806301, 34.177795, 36.694393>,  <40.582340, 33.914677, 36.492878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806301, 34.177795, 36.694393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445612, -0.273543, 0.852411,
		0.698525, -0.701763, 0.139966,
		0.559904, 0.657802, 0.503791,
		40.974274, 34.375137, 36.845531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864094, 33.544159, 37.031548>,  <40.582340, 33.914677, 36.492878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864094, 33.544159, 37.031548> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862370, 33.928429, 37.142601>,  <40.861336, 34.158993, 37.209232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862370, 33.928429, 37.142601>,  <40.864094, 33.544159, 37.031548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.862370, 33.928429, 37.142601> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521293, -0.239085, 0.819202,
		0.853367, -0.141194, 0.501826,
		-0.004313, 0.960678, 0.277631,
		40.861076, 34.216633, 37.225891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061634, 33.433849, 37.664303>,  <40.864094, 33.544159, 37.031548>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061634, 33.433849, 37.664303> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901024, 33.799747, 37.682266>,  <40.804657, 34.019287, 37.693043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901024, 33.799747, 37.682266>,  <41.061634, 33.433849, 37.664303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901024, 33.799747, 37.682266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334047, -0.191932, 0.922808,
		0.852754, 0.355532, 0.382634,
		-0.401527, 0.914746, 0.044907,
		40.780567, 34.074173, 37.695740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004013, 33.522198, 38.346283>,  <41.061634, 33.433849, 37.664303>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.004013, 33.522198, 38.346283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796116, 33.839886, 38.220371>,  <40.671379, 34.030499, 38.144825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796116, 33.839886, 38.220371>,  <41.004013, 33.522198, 38.346283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796116, 33.839886, 38.220371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545691, -0.025133, 0.837609,
		0.657333, 0.607113, 0.446461,
		-0.519744, 0.794218, -0.314775,
		40.640194, 34.078152, 38.125938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071724, 34.009483, 38.865559>,  <41.004013, 33.522198, 38.346283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071724, 34.009483, 38.865559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735470, 34.104023, 38.670631>,  <40.533718, 34.160748, 38.553677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735470, 34.104023, 38.670631>,  <41.071724, 34.009483, 38.865559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.735470, 34.104023, 38.670631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489813, 0.052216, 0.870262,
		0.231128, 0.970265, 0.071870,
		-0.840633, 0.236345, -0.487317,
		40.483280, 34.174927, 38.524437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751553, 34.522919, 39.234238>,  <41.071724, 34.009483, 38.865559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751553, 34.522919, 39.234238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446251, 34.388531, 39.013485>,  <40.263069, 34.307899, 38.881035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446251, 34.388531, 39.013485>,  <40.751553, 34.522919, 39.234238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446251, 34.388531, 39.013485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558527, -0.086312, 0.824984,
		-0.324800, 0.937911, -0.121768,
		-0.763252, -0.335965, -0.551882,
		40.217274, 34.287743, 38.847919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236855, 35.003899, 39.294918>,  <40.751553, 34.522919, 39.234238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236855, 35.003899, 39.294918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027725, 34.680408, 39.187122>,  <39.902248, 34.486317, 39.122444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.027725, 34.680408, 39.187122>,  <40.236855, 35.003899, 39.294918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027725, 34.680408, 39.187122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671650, 0.196136, 0.714435,
		-0.524923, 0.554525, -0.645723,
		-0.522822, -0.808723, -0.269490,
		39.870880, 34.437790, 39.106274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585026, 35.249458, 39.090782>,  <40.236855, 35.003899, 39.294918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585026, 35.249458, 39.090782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524010, 34.863029, 39.174145>,  <39.487400, 34.631172, 39.224163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.524010, 34.863029, 39.174145>,  <39.585026, 35.249458, 39.090782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524010, 34.863029, 39.174145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510312, 0.257580, 0.820509,
		-0.846352, 0.018814, -0.532291,
		-0.152544, -0.966074, 0.208403,
		39.478245, 34.573208, 39.236664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976688, 35.183414, 39.355762>,  <39.585026, 35.249458, 39.090782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976688, 35.183414, 39.355762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162918, 34.870369, 39.521049>,  <39.274658, 34.682541, 39.620220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162918, 34.870369, 39.521049>,  <38.976688, 35.183414, 39.355762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162918, 34.870369, 39.521049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270978, 0.318419, 0.908394,
		-0.842501, -0.534900, -0.063823,
		0.465578, -0.782618, 0.413215,
		39.302593, 34.635582, 39.645016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524574, 34.990173, 39.843651>,  <38.976688, 35.183414, 39.355762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524574, 34.990173, 39.843651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863914, 34.816662, 39.965069>,  <39.067516, 34.712555, 40.037922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863914, 34.816662, 39.965069>,  <38.524574, 34.990173, 39.843651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863914, 34.816662, 39.965069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236237, 0.202957, 0.950263,
		-0.473812, -0.877863, 0.069704,
		0.848348, -0.433779, 0.303547,
		39.118420, 34.686527, 40.056133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404850, 34.498226, 40.426247>,  <38.524574, 34.990173, 39.843651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404850, 34.498226, 40.426247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797466, 34.561298, 40.469551>,  <39.033035, 34.599140, 40.495533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797466, 34.561298, 40.469551>,  <38.404850, 34.498226, 40.426247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797466, 34.561298, 40.469551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124216, 0.095113, 0.987686,
		0.145445, -0.982899, 0.112944,
		0.981538, 0.157683, 0.108258,
		39.091927, 34.608601, 40.502029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493973, 33.781189, 40.402672>,  <38.404850, 34.498226, 40.426247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493973, 33.781189, 40.402672> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188389, 33.555977, 40.528763>,  <38.005039, 33.420849, 40.604416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188389, 33.555977, 40.528763>,  <38.493973, 33.781189, 40.402672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188389, 33.555977, 40.528763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398304, 0.027121, -0.916852,
		0.507665, -0.825993, -0.244976,
		-0.763957, -0.563028, 0.315228,
		37.959202, 33.387070, 40.623333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356415, 33.359898, 39.860260>,  <38.493973, 33.781189, 40.402672>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356415, 33.359898, 39.860260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009426, 33.331970, 40.057285>,  <37.801231, 33.315216, 40.175499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009426, 33.331970, 40.057285>,  <38.356415, 33.359898, 39.860260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009426, 33.331970, 40.057285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470127, -0.208768, -0.857553,
		0.162703, -0.975470, 0.148278,
		-0.867472, -0.069817, 0.492561,
		37.749184, 33.311024, 40.205055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069908, 32.690933, 39.685429>,  <38.356415, 33.359898, 39.860260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069908, 32.690933, 39.685429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787163, 32.953541, 39.790749>,  <37.617516, 33.111103, 39.853939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787163, 32.953541, 39.790749>,  <38.069908, 32.690933, 39.685429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787163, 32.953541, 39.790749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418824, -0.088495, -0.903745,
		-0.570023, -0.749103, 0.337519,
		-0.706867, 0.656516, 0.263298,
		37.575104, 33.150497, 39.869740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534695, 32.435490, 39.344475>,  <38.069908, 32.690933, 39.685429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534695, 32.435490, 39.344475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392410, 32.802452, 39.415840>,  <37.307041, 33.022629, 39.458660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392410, 32.802452, 39.415840>,  <37.534695, 32.435490, 39.344475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392410, 32.802452, 39.415840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421018, 0.013138, -0.906957,
		-0.834395, -0.397729, 0.381572,
		-0.355710, 0.917409, 0.178413,
		37.285698, 33.077675, 39.469364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836391, 32.405506, 39.074837>,  <37.534695, 32.435490, 39.344475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836391, 32.405506, 39.074837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920712, 32.795597, 39.101658>,  <36.971302, 33.029652, 39.117752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920712, 32.795597, 39.101658>,  <36.836391, 32.405506, 39.074837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920712, 32.795597, 39.101658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476529, 0.162411, -0.864027,
		-0.853512, 0.150186, 0.498960,
		0.210802, 0.975226, 0.067052,
		36.983952, 33.088165, 39.121773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229645, 32.633633, 38.862217>,  <36.836391, 32.405506, 39.074837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229645, 32.633633, 38.862217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456879, 32.956444, 38.797733>,  <36.593220, 33.150131, 38.759045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456879, 32.956444, 38.797733>,  <36.229645, 32.633633, 38.862217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456879, 32.956444, 38.797733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672691, 0.342511, -0.655876,
		-0.474093, 0.481037, 0.737455,
		0.568087, 0.807025, -0.161208,
		36.627304, 33.198551, 38.749371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848633, 33.202358, 39.055206>,  <36.229645, 32.633633, 38.862217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848633, 33.202358, 39.055206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131145, 33.331516, 38.803207>,  <36.300655, 33.409012, 38.652008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131145, 33.331516, 38.803207>,  <35.848633, 33.202358, 39.055206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131145, 33.331516, 38.803207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707839, 0.336249, -0.621209,
		0.011249, 0.884688, 0.466047,
		0.706284, 0.322899, -0.629999,
		36.343029, 33.428387, 38.614208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463524, 33.734314, 38.778168>,  <35.848633, 33.202358, 39.055206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463524, 33.734314, 38.778168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790382, 33.662590, 38.559036>,  <35.986500, 33.619556, 38.427559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790382, 33.662590, 38.559036>,  <35.463524, 33.734314, 38.778168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790382, 33.662590, 38.559036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411186, 0.484724, -0.771990,
		0.403971, 0.856090, 0.322362,
		0.817150, -0.179311, -0.547827,
		36.035526, 33.608795, 38.394688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722980, 34.382320, 38.417755>,  <35.463524, 33.734314, 38.778168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722980, 34.382320, 38.417755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800404, 34.061317, 38.192005>,  <35.846855, 33.868717, 38.056557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800404, 34.061317, 38.192005>,  <35.722980, 34.382320, 38.417755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800404, 34.061317, 38.192005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574004, 0.373889, -0.728510,
		0.795648, 0.464959, -0.388275,
		0.193555, -0.802509, -0.564372,
		35.858471, 33.820564, 38.022694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668491, 34.657330, 37.861965>,  <35.722980, 34.382320, 38.417755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668491, 34.657330, 37.861965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707558, 34.286915, 37.716133>,  <35.730999, 34.064667, 37.628632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707558, 34.286915, 37.716133>,  <35.668491, 34.657330, 37.861965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707558, 34.286915, 37.716133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373315, 0.305497, -0.875961,
		0.922549, 0.221656, -0.315866,
		0.097666, -0.926035, -0.364583,
		35.736858, 34.009106, 37.606758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972721, 34.700455, 37.191509>,  <35.668491, 34.657330, 37.861965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972721, 34.700455, 37.191509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809532, 34.336739, 37.158634>,  <35.711617, 34.118511, 37.138908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809532, 34.336739, 37.158634>,  <35.972721, 34.700455, 37.191509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809532, 34.336739, 37.158634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402895, 0.260082, -0.877515,
		0.819287, -0.324894, -0.472454,
		-0.407976, -0.909286, -0.082184,
		35.687138, 34.063953, 37.133980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026413, 34.328945, 36.487644>,  <35.972721, 34.700455, 37.191509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026413, 34.328945, 36.487644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705109, 34.170040, 36.665161>,  <35.512325, 34.074696, 36.771671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705109, 34.170040, 36.665161>,  <36.026413, 34.328945, 36.487644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705109, 34.170040, 36.665161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531518, 0.141814, -0.835091,
		0.268821, -0.906678, -0.325070,
		-0.803258, -0.397270, 0.443793,
		35.464130, 34.050861, 36.798298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.823826, 34.010448, 44.225082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.448513, 33.900326, 44.308826>,  <38.223324, 33.834251, 44.359074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.448513, 33.900326, 44.308826>,  <38.823826, 34.010448, 44.225082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448513, 33.900326, 44.308826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058962, -0.469139, -0.881154,
		0.340803, -0.839117, 0.423953,
		-0.938284, -0.275303, 0.209361,
		38.167027, 33.817734, 44.371635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753925, 33.266018, 44.102993>,  <38.823826, 34.010448, 44.225082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753925, 33.266018, 44.102993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.404057, 33.455181, 44.060474>,  <38.194134, 33.568680, 44.034966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.404057, 33.455181, 44.060474>,  <38.753925, 33.266018, 44.102993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404057, 33.455181, 44.060474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131528, -0.442634, -0.887004,
		-0.466530, -0.761856, 0.449362,
		-0.874672, 0.472918, -0.106297,
		38.141655, 33.597054, 44.028587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316021, 32.774643, 43.884918>,  <38.753925, 33.266018, 44.102993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316021, 32.774643, 43.884918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.151955, 33.122231, 43.774170>,  <38.053516, 33.330784, 43.707722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.151955, 33.122231, 43.774170>,  <38.316021, 32.774643, 43.884918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151955, 33.122231, 43.774170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272319, -0.406423, -0.872160,
		-0.870407, -0.282331, 0.403337,
		-0.410163, 0.868970, -0.276870,
		38.028904, 33.382923, 43.691109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733582, 32.600845, 43.425850>,  <38.316021, 32.774643, 43.884918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733582, 32.600845, 43.425850> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.811813, 32.982666, 43.335892>,  <37.858753, 33.211758, 43.281918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.811813, 32.982666, 43.335892>,  <37.733582, 32.600845, 43.425850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811813, 32.982666, 43.335892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171248, -0.192563, -0.966226,
		-0.965621, 0.227486, 0.125804,
		0.195577, 0.954552, -0.224900,
		37.870487, 33.269032, 43.268421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087261, 32.888992, 42.975677>,  <37.733582, 32.600845, 43.425850>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087261, 32.888992, 42.975677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.392723, 33.137482, 42.905350>,  <37.576000, 33.286575, 42.863152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.392723, 33.137482, 42.905350>,  <37.087261, 32.888992, 42.975677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392723, 33.137482, 42.905350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234752, 0.013487, -0.971962,
		-0.601431, 0.783520, 0.156132,
		0.763657, 0.621220, -0.175821,
		37.621819, 33.323849, 42.852604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847073, 33.551113, 42.572071>,  <37.087261, 32.888992, 42.975677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847073, 33.551113, 42.572071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.239834, 33.505028, 42.511951>,  <37.475491, 33.477375, 42.475880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.239834, 33.505028, 42.511951>,  <36.847073, 33.551113, 42.572071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239834, 33.505028, 42.511951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140923, 0.085677, -0.986306,
		0.126512, 0.989639, 0.067890,
		0.981904, -0.115213, -0.150302,
		37.534405, 33.470463, 42.466862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876644, 33.953007, 42.115635>,  <36.847073, 33.551113, 42.572071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876644, 33.953007, 42.115635> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.235329, 33.780918, 42.074032>,  <37.450539, 33.677666, 42.049068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.235329, 33.780918, 42.074032>,  <36.876644, 33.953007, 42.115635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235329, 33.780918, 42.074032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096077, 0.040185, -0.994562,
		0.432060, 0.901829, -0.005300,
		0.896712, -0.430220, -0.104007,
		37.504341, 33.651852, 42.042831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288120, 34.351120, 41.712143>,  <36.876644, 33.953007, 42.115635>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288120, 34.351120, 41.712143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.420349, 33.974552, 41.685471>,  <37.499687, 33.748611, 41.669468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.420349, 33.974552, 41.685471>,  <37.288120, 34.351120, 41.712143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420349, 33.974552, 41.685471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190660, 0.002581, -0.981653,
		0.924322, 0.337218, -0.178639,
		0.330570, -0.941423, -0.066680,
		37.519520, 33.692123, 41.665466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716431, 34.319084, 41.119549>,  <37.288120, 34.351120, 41.712143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716431, 34.319084, 41.119549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.647301, 33.929375, 41.177410>,  <37.605824, 33.695549, 41.212128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.647301, 33.929375, 41.177410>,  <37.716431, 34.319084, 41.119549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647301, 33.929375, 41.177410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154167, -0.118295, -0.980938,
		0.972812, -0.191835, -0.129756,
		-0.172829, -0.974272, 0.144654,
		37.595451, 33.637093, 41.220806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551353, 34.239449, 41.112316>,  <37.716431, 34.319084, 41.119549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551353, 34.239449, 41.112316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.859005, 34.474026, 41.010708>,  <39.043598, 34.614773, 40.949745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.859005, 34.474026, 41.010708>,  <38.551353, 34.239449, 41.112316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859005, 34.474026, 41.010708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024121, 0.370547, 0.928500,
		0.638636, -0.720265, 0.270854,
		0.769131, 0.586441, -0.254018,
		39.089745, 34.649960, 40.934502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089081, 34.175278, 41.655895>,  <38.551353, 34.239449, 41.112316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089081, 34.175278, 41.655895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.159554, 34.522816, 41.470825>,  <39.201836, 34.731339, 41.359783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.159554, 34.522816, 41.470825>,  <39.089081, 34.175278, 41.655895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159554, 34.522816, 41.470825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131497, 0.445037, 0.885805,
		0.975535, -0.216900, -0.035844,
		0.176179, 0.868848, -0.462671,
		39.212406, 34.783470, 41.332024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724514, 34.499588, 41.907894>,  <39.089081, 34.175278, 41.655895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724514, 34.499588, 41.907894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.511837, 34.804348, 41.759941>,  <39.384232, 34.987202, 41.671169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.511837, 34.804348, 41.759941>,  <39.724514, 34.499588, 41.907894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511837, 34.804348, 41.759941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284139, 0.571889, 0.769550,
		0.797850, 0.304068, -0.520555,
		-0.531696, 0.761896, -0.369884,
		39.352329, 35.032917, 41.648975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111710, 35.048656, 42.088619>,  <39.724514, 34.499588, 41.907894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111710, 35.048656, 42.088619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.753296, 35.195316, 41.988468>,  <39.538246, 35.283314, 41.928379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.753296, 35.195316, 41.988468>,  <40.111710, 35.048656, 42.088619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753296, 35.195316, 41.988468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096509, 0.711293, 0.696238,
		0.433368, 0.599690, -0.672728,
		-0.896034, 0.366652, -0.250377,
		39.484486, 35.305313, 41.913357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331833, 35.662979, 41.836197>,  <40.111710, 35.048656, 42.088619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331833, 35.662979, 41.836197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.947556, 35.705517, 41.938778>,  <39.716991, 35.731037, 42.000328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.947556, 35.705517, 41.938778>,  <40.331833, 35.662979, 41.836197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947556, 35.705517, 41.938778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270489, 0.566636, 0.778305,
		-0.062550, 0.817077, -0.573125,
		-0.960689, 0.106341, 0.256453,
		39.659348, 35.737419, 42.015713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304699, 36.357258, 42.099110>,  <40.331833, 35.662979, 41.836197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304699, 36.357258, 42.099110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.986095, 36.152245, 42.227413>,  <39.794933, 36.029236, 42.304394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.986095, 36.152245, 42.227413>,  <40.304699, 36.357258, 42.099110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986095, 36.152245, 42.227413> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099459, 0.412213, 0.905643,
		-0.596393, 0.753253, -0.277354,
		-0.796507, -0.512534, 0.320759,
		39.747143, 35.998486, 42.323639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956341, 36.887527, 42.371803>,  <40.304699, 36.357258, 42.099110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956341, 36.887527, 42.371803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.840778, 36.541794, 42.536461>,  <39.771439, 36.334354, 42.635258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.840778, 36.541794, 42.536461>,  <39.956341, 36.887527, 42.371803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840778, 36.541794, 42.536461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261805, 0.342262, 0.902394,
		-0.920863, 0.368482, 0.127404,
		-0.288911, -0.864336, 0.411647,
		39.754105, 36.282494, 42.659954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590721, 37.082321, 43.021351>,  <39.956341, 36.887527, 42.371803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590721, 37.082321, 43.021351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.674606, 36.692913, 43.057743>,  <39.724937, 36.459267, 43.079578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.674606, 36.692913, 43.057743>,  <39.590721, 37.082321, 43.021351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674606, 36.692913, 43.057743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201465, 0.134076, 0.970276,
		-0.956783, -0.185146, 0.224248,
		0.209709, -0.973522, 0.090982,
		39.737518, 36.400856, 43.085037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215046, 36.903313, 43.671181>,  <39.590721, 37.082321, 43.021351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215046, 36.903313, 43.671181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.452549, 36.588726, 43.603161>,  <39.595051, 36.399975, 43.562347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.452549, 36.588726, 43.603161>,  <39.215046, 36.903313, 43.671181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452549, 36.588726, 43.603161> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199750, -0.060651, 0.977968,
		-0.779457, -0.614643, 0.121086,
		0.593757, -0.786471, -0.170049,
		39.630676, 36.352783, 43.552147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991302, 36.463795, 44.103764>,  <39.215046, 36.903313, 43.671181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991302, 36.463795, 44.103764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.377232, 36.379013, 44.041538>,  <39.608788, 36.328144, 44.004204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.377232, 36.379013, 44.041538>,  <38.991302, 36.463795, 44.103764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377232, 36.379013, 44.041538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164832, 0.026683, 0.985961,
		-0.204833, -0.976914, 0.060682,
		0.964818, -0.211959, -0.155561,
		39.666676, 36.315426, 43.994869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191109, 35.891991, 44.663078>,  <38.991302, 36.463795, 44.103764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191109, 35.891991, 44.663078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.543400, 36.035248, 44.539108>,  <39.754776, 36.121201, 44.464725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.543400, 36.035248, 44.539108>,  <39.191109, 35.891991, 44.663078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543400, 36.035248, 44.539108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205377, 0.300851, 0.931294,
		0.426774, -0.883869, 0.191414,
		0.880729, 0.358140, -0.309922,
		39.807617, 36.142689, 44.446133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691753, 35.572239, 45.101597>,  <39.191109, 35.891991, 44.663078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691753, 35.572239, 45.101597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.872555, 35.893757, 44.946877>,  <39.981033, 36.086666, 44.854042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.872555, 35.893757, 44.946877>,  <39.691753, 35.572239, 45.101597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872555, 35.893757, 44.946877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108040, 0.381104, 0.918197,
		0.885451, -0.456815, 0.085417,
		0.452000, 0.803790, -0.386804,
		40.008156, 36.134895, 44.830837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423855, 35.598194, 45.297359>,  <39.691753, 35.572239, 45.101597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423855, 35.598194, 45.297359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.327595, 35.972176, 45.193096>,  <40.269836, 36.196564, 45.130539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.327595, 35.972176, 45.193096>,  <40.423855, 35.598194, 45.297359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327595, 35.972176, 45.193096> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383921, 0.338345, 0.859143,
		0.891454, 0.106682, -0.440373,
		-0.240653, 0.934955, -0.260662,
		40.255398, 36.252663, 45.114899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032986, 35.899685, 45.504444>,  <40.423855, 35.598194, 45.297359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032986, 35.899685, 45.504444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.759121, 36.187962, 45.460930>,  <40.594803, 36.360928, 45.434822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.759121, 36.187962, 45.460930>,  <41.032986, 35.899685, 45.504444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759121, 36.187962, 45.460930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372609, 0.474373, 0.797579,
		0.626415, 0.505541, -0.593324,
		-0.684665, 0.720694, -0.108785,
		40.553722, 36.404171, 45.428295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.520676, 39.366405, 45.311893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.909554, 39.455635, 45.283417>,  <35.142879, 39.509174, 45.266331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.909554, 39.455635, 45.283417>,  <34.520676, 39.366405, 45.311893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909554, 39.455635, 45.283417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074594, 0.006851, -0.997190,
		-0.221958, 0.974778, 0.023300,
		0.972199, 0.223073, -0.071192,
		35.201214, 39.522556, 45.262058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499294, 39.874634, 44.831017>,  <34.520676, 39.366405, 45.311893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499294, 39.874634, 44.831017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.872219, 39.731701, 44.853291>,  <35.095974, 39.645939, 44.866657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.872219, 39.731701, 44.853291>,  <34.499294, 39.874634, 44.831017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872219, 39.731701, 44.853291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034082, -0.240116, -0.970146,
		0.360039, 0.902583, -0.236042,
		0.932314, -0.357335, 0.055689,
		35.151913, 39.624500, 44.869999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682568, 40.022861, 44.229153>,  <34.499294, 39.874634, 44.831017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682568, 40.022861, 44.229153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.968208, 39.767174, 44.343319>,  <35.139591, 39.613762, 44.411819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.968208, 39.767174, 44.343319>,  <34.682568, 40.022861, 44.229153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968208, 39.767174, 44.343319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213191, -0.189769, -0.958403,
		0.666792, 0.745243, 0.000762,
		0.714099, -0.639218, 0.285416,
		35.182438, 39.575409, 44.428944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216743, 40.033798, 43.797573>,  <34.682568, 40.022861, 44.229153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216743, 40.033798, 43.797573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.313965, 39.677647, 43.951538>,  <35.372299, 39.463955, 44.043915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.313965, 39.677647, 43.951538>,  <35.216743, 40.033798, 43.797573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313965, 39.677647, 43.951538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268089, -0.319694, -0.908804,
		0.932230, 0.324080, 0.160996,
		0.243055, -0.890375, 0.384910,
		35.386883, 39.410534, 44.067013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861195, 39.824978, 43.471169>,  <35.216743, 40.033798, 43.797573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861195, 39.824978, 43.471169> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.699116, 39.494354, 43.627430>,  <35.601868, 39.295979, 43.721188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.699116, 39.494354, 43.627430>,  <35.861195, 39.824978, 43.471169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699116, 39.494354, 43.627430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259607, -0.513744, -0.817723,
		0.876596, -0.229920, 0.422747,
		-0.405195, -0.826561, 0.390657,
		35.577557, 39.246387, 43.744629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304306, 39.327312, 43.217361>,  <35.861195, 39.824978, 43.471169>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304306, 39.327312, 43.217361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.971989, 39.123749, 43.307510>,  <35.772598, 39.001610, 43.361599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.971989, 39.123749, 43.307510>,  <36.304306, 39.327312, 43.217361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971989, 39.123749, 43.307510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135833, -0.578064, -0.804607,
		0.539754, -0.637848, 0.549378,
		-0.830792, -0.508913, 0.225371,
		35.722752, 38.971073, 43.375122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505527, 38.619381, 43.081223>,  <36.304306, 39.327312, 43.217361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505527, 38.619381, 43.081223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.107197, 38.646351, 43.056644>,  <35.868198, 38.662533, 43.041897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.107197, 38.646351, 43.056644>,  <36.505527, 38.619381, 43.081223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107197, 38.646351, 43.056644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016218, -0.532033, -0.846569,
		-0.089769, -0.844035, 0.528721,
		-0.995831, 0.067421, -0.061449,
		35.808449, 38.666576, 43.038208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229637, 37.972179, 42.828491>,  <36.505527, 38.619381, 43.081223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229637, 37.972179, 42.828491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.946693, 38.237541, 42.730888>,  <35.776928, 38.396759, 42.672325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.946693, 38.237541, 42.730888>,  <36.229637, 37.972179, 42.828491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946693, 38.237541, 42.730888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184689, -0.506667, -0.842127,
		-0.682303, -0.550619, 0.480917,
		-0.707356, 0.663406, -0.244008,
		35.734486, 38.436562, 42.657684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867130, 37.519005, 42.404205>,  <36.229637, 37.972179, 42.828491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867130, 37.519005, 42.404205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.764214, 37.898712, 42.331890>,  <35.702465, 38.126537, 42.288502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.764214, 37.898712, 42.331890>,  <35.867130, 37.519005, 42.404205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764214, 37.898712, 42.331890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275590, -0.251398, -0.927820,
		-0.926203, -0.188897, 0.326292,
		-0.257291, 0.949272, -0.180788,
		35.687027, 38.183495, 42.277653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199863, 37.511707, 42.116009>,  <35.867130, 37.519005, 42.404205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199863, 37.511707, 42.116009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.342270, 37.874321, 42.025276>,  <35.427715, 38.091888, 41.970837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.342270, 37.874321, 42.025276>,  <35.199863, 37.511707, 42.116009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342270, 37.874321, 42.025276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293360, -0.122041, -0.948180,
		-0.887238, 0.404111, 0.222492,
		0.356016, 0.906532, -0.226830,
		35.449074, 38.146282, 41.957226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641331, 37.920475, 41.630119>,  <35.199863, 37.511707, 42.116009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641331, 37.920475, 41.630119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.990135, 38.103676, 41.561031>,  <35.199417, 38.213596, 41.519577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.990135, 38.103676, 41.561031>,  <34.641331, 37.920475, 41.630119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990135, 38.103676, 41.561031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108179, -0.163815, -0.980542,
		-0.477381, 0.873728, -0.093303,
		0.872012, 0.457999, -0.172722,
		35.251740, 38.241077, 41.509216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546570, 38.364555, 41.019299>,  <34.641331, 37.920475, 41.630119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546570, 38.364555, 41.019299> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.939651, 38.310226, 41.069645>,  <35.175503, 38.277630, 41.099854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.939651, 38.310226, 41.069645>,  <34.546570, 38.364555, 41.019299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939651, 38.310226, 41.069645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090473, -0.240897, -0.966325,
		0.161566, 0.961000, -0.224443,
		0.982706, -0.135819, 0.125865,
		35.234463, 38.269482, 41.107403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.857864, 38.644737, 40.427933>,  <34.546570, 38.364555, 41.019299>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.857864, 38.644737, 40.427933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.141434, 38.389778, 40.548695>,  <35.311577, 38.236801, 40.621151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.141434, 38.389778, 40.548695>,  <34.857864, 38.644737, 40.427933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141434, 38.389778, 40.548695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158385, -0.273252, -0.948814,
		0.687273, 0.720452, -0.092759,
		0.708922, -0.637402, 0.301908,
		35.354111, 38.198559, 40.639267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480927, 38.860306, 40.010269>,  <34.857864, 38.644737, 40.427933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480927, 38.860306, 40.010269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.517509, 38.485920, 40.146275>,  <35.539459, 38.261288, 40.227879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.517509, 38.485920, 40.146275>,  <35.480927, 38.860306, 40.010269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517509, 38.485920, 40.146275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063724, -0.335243, -0.939974,
		0.993768, 0.107636, 0.028982,
		0.091460, -0.935963, 0.340013,
		35.544949, 38.205132, 40.248280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066273, 39.350285, 39.875771>,  <35.480927, 38.860306, 40.010269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066273, 39.350285, 39.875771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.444481, 39.475807, 39.841091>,  <36.671406, 39.551121, 39.820286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.444481, 39.475807, 39.841091>,  <36.066273, 39.350285, 39.875771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444481, 39.475807, 39.841091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079515, 0.480825, 0.873204,
		0.315699, -0.818740, 0.479582,
		0.945522, 0.313803, -0.086693,
		36.728138, 39.569950, 39.815083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421291, 39.069996, 40.506557>,  <36.066273, 39.350285, 39.875771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421291, 39.069996, 40.506557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.655384, 39.362953, 40.367359>,  <36.795841, 39.538727, 40.283840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.655384, 39.362953, 40.367359>,  <36.421291, 39.069996, 40.506557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655384, 39.362953, 40.367359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139835, 0.513894, 0.846380,
		0.798716, -0.446668, 0.403163,
		0.585233, 0.732394, -0.347996,
		36.830956, 39.582672, 40.262962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998550, 39.090073, 40.896172>,  <36.421291, 39.069996, 40.506557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998550, 39.090073, 40.896172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.970882, 39.453003, 40.730293>,  <36.954281, 39.670761, 40.630768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.970882, 39.453003, 40.730293>,  <36.998550, 39.090073, 40.896172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970882, 39.453003, 40.730293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171088, 0.420322, 0.891099,
		0.982825, -0.009312, -0.184307,
		-0.069171, 0.907327, -0.414696,
		36.950130, 39.725201, 40.605885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613258, 39.446396, 41.083179>,  <36.998550, 39.090073, 40.896172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613258, 39.446396, 41.083179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.325523, 39.709736, 40.994526>,  <37.152882, 39.867741, 40.941334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.325523, 39.709736, 40.994526>,  <37.613258, 39.446396, 41.083179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325523, 39.709736, 40.994526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147446, 0.456491, 0.877426,
		0.678829, 0.598489, -0.425444,
		-0.719341, 0.658352, -0.221634,
		37.109722, 39.907242, 40.928036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846436, 40.045864, 41.366177>,  <37.613258, 39.446396, 41.083179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846436, 40.045864, 41.366177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.458515, 40.135796, 41.328358>,  <37.225761, 40.189754, 41.305668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.458515, 40.135796, 41.328358>,  <37.846436, 40.045864, 41.366177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458515, 40.135796, 41.328358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001906, 0.394612, 0.918846,
		0.243894, 0.890917, -0.383123,
		-0.969800, 0.224831, -0.094545,
		37.167576, 40.203243, 41.299995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.829964, 40.705456, 41.663750>,  <37.846436, 40.045864, 41.366177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.829964, 40.705456, 41.663750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.453003, 40.572865, 41.681637>,  <37.226826, 40.493309, 41.692371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.453003, 40.572865, 41.681637>,  <37.829964, 40.705456, 41.663750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453003, 40.572865, 41.681637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141361, 0.515882, 0.844916,
		-0.303144, 0.789928, -0.533026,
		-0.942402, -0.331480, 0.044721,
		37.170284, 40.473419, 41.695053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457855, 41.342613, 41.778564>,  <37.829964, 40.705456, 41.663750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457855, 41.342613, 41.778564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.233131, 41.027889, 41.880779>,  <37.098297, 40.839054, 41.942108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.233131, 41.027889, 41.880779>,  <37.457855, 41.342613, 41.778564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233131, 41.027889, 41.880779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255677, 0.458916, 0.850897,
		-0.786762, 0.412711, -0.458994,
		-0.561814, -0.786808, 0.255537,
		37.064587, 40.791847, 41.957439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860153, 41.596291, 42.133331>,  <37.457855, 41.342613, 41.778564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860153, 41.596291, 42.133331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.921471, 41.224838, 42.268471>,  <36.958260, 41.001968, 42.349556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.921471, 41.224838, 42.268471>,  <36.860153, 41.596291, 42.133331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921471, 41.224838, 42.268471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084754, 0.328278, 0.940771,
		-0.984539, -0.172850, -0.028382,
		0.153295, -0.928632, 0.337852,
		36.967461, 40.946247, 42.369827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350632, 41.628841, 42.758404>,  <36.860153, 41.596291, 42.133331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350632, 41.628841, 42.758404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.579517, 41.301491, 42.779697>,  <36.716850, 41.105080, 42.792473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.579517, 41.301491, 42.779697>,  <36.350632, 41.628841, 42.758404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579517, 41.301491, 42.779697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036087, 0.089978, 0.995290,
		-0.819308, -0.567600, 0.081020,
		0.572217, -0.818373, 0.053237,
		36.751183, 41.055981, 42.795670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029110, 41.338875, 43.201115>,  <36.350632, 41.628841, 42.758404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029110, 41.338875, 43.201115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.401611, 41.196606, 43.232758>,  <36.625114, 41.111244, 43.251743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.401611, 41.196606, 43.232758>,  <36.029110, 41.338875, 43.201115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401611, 41.196606, 43.232758> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066739, 0.379934, 0.922603,
		-0.358201, -0.853900, 0.377553,
		0.931256, -0.355675, 0.079105,
		36.680988, 41.089905, 43.256489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006172, 41.081348, 43.847305>,  <36.029110, 41.338875, 43.201115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006172, 41.081348, 43.847305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.392666, 41.122948, 43.753002>,  <36.624561, 41.147907, 43.696419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.392666, 41.122948, 43.753002>,  <36.006172, 41.081348, 43.847305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392666, 41.122948, 43.753002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198327, 0.283987, 0.938093,
		0.164508, -0.953172, 0.253773,
		0.966232, 0.103993, -0.235758,
		36.682537, 41.154148, 43.682274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412453, 40.563828, 44.299194>,  <36.006172, 41.081348, 43.847305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412453, 40.563828, 44.299194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.639317, 40.874149, 44.188595>,  <36.775436, 41.060345, 44.122234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.639317, 40.874149, 44.188595>,  <36.412453, 40.563828, 44.299194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639317, 40.874149, 44.188595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311004, 0.109121, 0.944123,
		0.762629, -0.621463, -0.179390,
		0.567162, 0.775807, -0.276496,
		36.809464, 41.106892, 44.105644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042366, 40.508434, 44.657822>,  <36.412453, 40.563828, 44.299194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042366, 40.508434, 44.657822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.095837, 40.886505, 44.538643>,  <37.127918, 41.113346, 44.467136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.095837, 40.886505, 44.538643>,  <37.042366, 40.508434, 44.657822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095837, 40.886505, 44.538643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310457, 0.245570, 0.918320,
		0.941141, -0.215260, -0.260610,
		0.133679, 0.945177, -0.297945,
		37.135941, 41.170059, 44.449261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728577, 40.761559, 44.802822>,  <37.042366, 40.508434, 44.657822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728577, 40.761559, 44.802822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.504578, 41.092915, 44.797478>,  <37.370178, 41.291729, 44.794273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.504578, 41.092915, 44.797478>,  <37.728577, 40.761559, 44.802822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504578, 41.092915, 44.797478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178348, 0.136278, 0.974485,
		0.809070, 0.543328, -0.224056,
		-0.559998, 0.828386, -0.013358,
		37.336578, 41.341431, 44.793472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.420677, 40.721458, 44.695007>,  <37.728577, 40.761559, 44.802822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.420677, 40.721458, 44.695007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.741394, 40.531155, 44.839664>,  <38.933823, 40.416973, 44.926460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.741394, 40.531155, 44.839664>,  <38.420677, 40.721458, 44.695007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741394, 40.531155, 44.839664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294992, -0.211201, -0.931866,
		0.519724, 0.853842, -0.028993,
		0.801790, -0.475760, 0.361643,
		38.981930, 40.388428, 44.948158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878399, 40.880783, 44.140713>,  <38.420677, 40.721458, 44.695007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878399, 40.880783, 44.140713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.017773, 40.573486, 44.355522>,  <39.101395, 40.389107, 44.484409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.017773, 40.573486, 44.355522>,  <38.878399, 40.880783, 44.140713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017773, 40.573486, 44.355522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335898, -0.432540, -0.836709,
		0.875082, 0.471922, 0.107341,
		0.348432, -0.768244, 0.537025,
		39.122303, 40.343014, 44.516628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490059, 40.817226, 43.866199>,  <38.878399, 40.880783, 44.140713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490059, 40.817226, 43.866199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.399315, 40.467125, 44.037064>,  <39.344868, 40.257065, 44.139584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.399315, 40.467125, 44.037064>,  <39.490059, 40.817226, 43.866199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399315, 40.467125, 44.037064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308553, -0.480598, -0.820866,
		0.923758, -0.054420, 0.379091,
		-0.226862, -0.875251, 0.427165,
		39.331257, 40.204548, 44.165215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086617, 40.362503, 43.708702>,  <39.490059, 40.817226, 43.866199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086617, 40.362503, 43.708702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.813881, 40.090351, 43.816170>,  <39.650242, 39.927059, 43.880650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.813881, 40.090351, 43.816170>,  <40.086617, 40.362503, 43.708702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813881, 40.090351, 43.816170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248701, -0.561021, -0.789559,
		0.687930, -0.471531, 0.551735,
		-0.681836, -0.680379, 0.268673,
		39.609329, 39.886238, 43.896770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383018, 39.717873, 43.654835>,  <40.086617, 40.362503, 43.708702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383018, 39.717873, 43.654835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.989441, 39.674545, 43.598091>,  <39.753296, 39.648548, 43.564045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.989441, 39.674545, 43.598091>,  <40.383018, 39.717873, 43.654835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989441, 39.674545, 43.598091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175811, -0.451024, -0.875024,
		0.030797, -0.885915, 0.462825,
		-0.983942, -0.108317, -0.141863,
		39.694260, 39.642052, 43.555531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410995, 39.097473, 43.434765>,  <40.383018, 39.717873, 43.654835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410995, 39.097473, 43.434765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.051750, 39.232048, 43.321487>,  <39.836201, 39.312794, 43.253521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.051750, 39.232048, 43.321487>,  <40.410995, 39.097473, 43.434765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051750, 39.232048, 43.321487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049971, -0.561729, -0.825811,
		-0.436911, -0.755825, 0.487686,
		-0.898115, 0.336436, -0.283195,
		39.782314, 39.332981, 43.236530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251041, 38.618103, 42.893196>,  <40.410995, 39.097473, 43.434765>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251041, 38.618103, 42.893196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.968452, 38.897617, 42.848301>,  <39.798901, 39.065327, 42.821365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.968452, 38.897617, 42.848301>,  <40.251041, 38.618103, 42.893196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968452, 38.897617, 42.848301> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207098, -0.355753, -0.911345,
		-0.676764, -0.620595, 0.396046,
		-0.706471, 0.698785, -0.112237,
		39.756512, 39.107254, 42.814629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698837, 38.271149, 42.627323>,  <40.251041, 38.618103, 42.893196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698837, 38.271149, 42.627323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.676643, 38.660988, 42.540539>,  <39.663326, 38.894894, 42.488468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.676643, 38.660988, 42.540539>,  <39.698837, 38.271149, 42.627323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676643, 38.660988, 42.540539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017691, -0.216304, -0.976166,
		-0.998303, -0.058005, -0.005239,
		-0.055489, 0.974602, -0.216963,
		39.659996, 38.953369, 42.475449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238235, 38.264759, 42.150986>,  <39.698837, 38.271149, 42.627323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238235, 38.264759, 42.150986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.428398, 38.613335, 42.102684>,  <39.542496, 38.822479, 42.073704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.428398, 38.613335, 42.102684>,  <39.238235, 38.264759, 42.150986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428398, 38.613335, 42.102684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050336, -0.163976, -0.985179,
		-0.878323, 0.462287, -0.121821,
		0.475411, 0.871437, -0.120755,
		39.571022, 38.874767, 42.066456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914852, 38.613792, 41.548164>,  <39.238235, 38.264759, 42.150986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914852, 38.613792, 41.548164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.278446, 38.771320, 41.602798>,  <39.496601, 38.865837, 41.635578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.278446, 38.771320, 41.602798>,  <38.914852, 38.613792, 41.548164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.278446, 38.771320, 41.602798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189745, -0.099179, -0.976811,
		-0.371142, 0.913821, -0.164877,
		0.908983, 0.393820, 0.136583,
		39.551140, 38.889465, 41.643772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094223, 39.139637, 40.931705>,  <38.914852, 38.613792, 41.548164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094223, 39.139637, 40.931705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.441490, 39.024776, 41.093609>,  <39.649849, 38.955860, 41.190750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.441490, 39.024776, 41.093609>,  <39.094223, 39.139637, 40.931705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441490, 39.024776, 41.093609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409888, -0.044917, -0.911029,
		0.279782, 0.956832, 0.078704,
		0.868167, -0.287150, 0.404761,
		39.701939, 38.938633, 41.215038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580082, 39.611969, 40.635105>,  <39.094223, 39.139637, 40.931705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580082, 39.611969, 40.635105> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.790535, 39.303730, 40.778973>,  <39.916805, 39.118786, 40.865292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.790535, 39.303730, 40.778973>,  <39.580082, 39.611969, 40.635105>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790535, 39.303730, 40.778973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492076, -0.069073, -0.867808,
		0.693576, 0.633565, 0.342853,
		0.526131, -0.770600, 0.359670,
		39.948376, 39.072552, 40.886875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316845, 39.692101, 40.424370>,  <39.580082, 39.611969, 40.635105>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316845, 39.692101, 40.424370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.278851, 39.309574, 40.534954>,  <40.256054, 39.080055, 40.601303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.278851, 39.309574, 40.534954>,  <40.316845, 39.692101, 40.424370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278851, 39.309574, 40.534954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608336, -0.275586, -0.744298,
		0.787976, 0.097484, 0.607940,
		-0.094982, -0.956321, 0.276458,
		40.250355, 39.022678, 40.617893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848804, 39.506645, 40.162830>,  <40.316845, 39.692101, 40.424370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848804, 39.506645, 40.162830> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.645947, 39.168255, 40.228725>,  <40.524231, 38.965221, 40.268261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.645947, 39.168255, 40.228725>,  <40.848804, 39.506645, 40.162830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645947, 39.168255, 40.228725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515546, -0.450941, -0.728605,
		0.690666, -0.284577, 0.664829,
		-0.507142, -0.845972, 0.164737,
		40.493805, 38.914463, 40.278145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.328638, 40.148197, 31.365772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.512716, 39.879093, 31.134043>,  <28.623163, 39.717632, 30.995005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.512716, 39.879093, 31.134043>,  <28.328638, 40.148197, 31.365772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512716, 39.879093, 31.134043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182039, -0.710164, 0.680095,
		-0.868954, -0.207518, -0.449283,
		0.460196, -0.672758, -0.579324,
		28.650776, 39.677265, 30.960245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.836460, 39.627232, 31.119547>,  <28.328638, 40.148197, 31.365772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.836460, 39.627232, 31.119547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.203842, 39.469357, 31.129839>,  <28.424271, 39.374630, 31.136015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.203842, 39.469357, 31.129839>,  <27.836460, 39.627232, 31.119547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.203842, 39.469357, 31.129839> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336425, -0.745352, 0.575560,
		-0.207987, -0.537282, -0.817355,
		0.918455, -0.394688, 0.025731,
		28.479378, 39.350948, 31.137558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.673079, 39.014637, 31.141909>,  <27.836460, 39.627232, 31.119547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.673079, 39.014637, 31.141909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.057337, 39.005669, 31.252653>,  <28.287891, 39.000290, 31.319099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.057337, 39.005669, 31.252653>,  <27.673079, 39.014637, 31.141909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.057337, 39.005669, 31.252653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212644, -0.700641, 0.681091,
		0.178712, -0.713162, -0.677836,
		0.960648, -0.022419, 0.276863,
		28.345531, 38.998943, 31.335712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.910971, 38.322845, 30.969416>,  <27.673079, 39.014637, 31.141909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.910971, 38.322845, 30.969416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.139660, 38.467125, 31.264177>,  <28.276873, 38.553692, 31.441034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.139660, 38.467125, 31.264177>,  <27.910971, 38.322845, 30.969416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.139660, 38.467125, 31.264177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172947, -0.825010, 0.538004,
		0.802013, -0.435034, -0.409293,
		0.571721, 0.360700, 0.736906,
		28.311176, 38.575336, 31.485249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435146, 37.751347, 31.142466>,  <27.910971, 38.322845, 30.969416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.435146, 37.751347, 31.142466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.442228, 37.986156, 31.466215>,  <28.446478, 38.127045, 31.660465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.442228, 37.986156, 31.466215>,  <28.435146, 37.751347, 31.142466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442228, 37.986156, 31.466215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071079, -0.806713, 0.586653,
		0.997314, -0.067915, 0.027444,
		0.017703, 0.587028, 0.809373,
		28.447538, 38.162266, 31.709026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925936, 37.494213, 31.596371>,  <28.435146, 37.751347, 31.142466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925936, 37.494213, 31.596371> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.664721, 37.700939, 31.817801>,  <28.507992, 37.824974, 31.950659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.664721, 37.700939, 31.817801>,  <28.925936, 37.494213, 31.596371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.664721, 37.700939, 31.817801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065720, -0.689525, 0.721273,
		0.754470, 0.507398, 0.416320,
		-0.653036, 0.516819, 0.553573,
		28.468809, 37.855984, 31.983871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.123064, 37.457546, 32.259411>,  <28.925936, 37.494213, 31.596371>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.123064, 37.457546, 32.259411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.746689, 37.564983, 32.341869>,  <28.520864, 37.629444, 32.391346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.746689, 37.564983, 32.341869>,  <29.123064, 37.457546, 32.259411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.746689, 37.564983, 32.341869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029273, -0.671109, 0.740780,
		0.337311, 0.690994, 0.639334,
		-0.940938, 0.268589, 0.206145,
		28.464407, 37.645561, 32.403713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094873, 37.585819, 32.946129>,  <29.123064, 37.457546, 32.259411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.094873, 37.585819, 32.946129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.707499, 37.515072, 32.875881>,  <28.475073, 37.472622, 32.833733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.707499, 37.515072, 32.875881>,  <29.094873, 37.585819, 32.946129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707499, 37.515072, 32.875881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019089, -0.649896, 0.759783,
		-0.248520, 0.739156, 0.626008,
		-0.968439, -0.176872, -0.175622,
		28.416967, 37.462009, 32.823196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736343, 37.554646, 33.591751>,  <29.094873, 37.585819, 32.946129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736343, 37.554646, 33.591751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.486238, 37.352791, 33.353630>,  <28.336176, 37.231678, 33.210758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.486238, 37.352791, 33.353630>,  <28.736343, 37.554646, 33.591751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486238, 37.352791, 33.353630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152880, -0.668825, 0.727531,
		-0.765296, 0.545907, 0.341040,
		-0.625260, -0.504638, -0.595307,
		28.298660, 37.201401, 33.175037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021154, 37.352104, 33.998470>,  <28.736343, 37.554646, 33.591751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.021154, 37.352104, 33.998470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.062529, 37.101803, 33.689217>,  <28.087353, 36.951622, 33.503666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.062529, 37.101803, 33.689217>,  <28.021154, 37.352104, 33.998470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.062529, 37.101803, 33.689217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203505, -0.774175, 0.599366,
		-0.973595, 0.095341, -0.207421,
		0.103436, -0.625751, -0.773134,
		28.093559, 36.914078, 33.457275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521933, 36.836151, 34.097649>,  <28.021154, 37.352104, 33.998470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521933, 36.836151, 34.097649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.747080, 36.649651, 33.824654>,  <27.882168, 36.537750, 33.660858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.747080, 36.649651, 33.824654>,  <27.521933, 36.836151, 34.097649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.747080, 36.649651, 33.824654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189024, -0.876437, 0.442863,
		-0.804641, -0.120269, -0.581454,
		0.562870, -0.466255, -0.682484,
		27.915941, 36.509773, 33.619907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.180529, 36.194839, 34.033627>,  <27.521933, 36.836151, 34.097649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.180529, 36.194839, 34.033627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.536673, 36.131401, 33.862930>,  <27.750359, 36.093338, 33.760513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.536673, 36.131401, 33.862930>,  <27.180529, 36.194839, 34.033627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.536673, 36.131401, 33.862930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070961, -0.974248, 0.214022,
		-0.449694, -0.160274, -0.878685,
		0.890359, -0.158597, -0.426741,
		27.803780, 36.083820, 33.734909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.034531, 35.628689, 33.626778>,  <27.180529, 36.194839, 34.033627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.034531, 35.628689, 33.626778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.425743, 35.624432, 33.710056>,  <27.660471, 35.621876, 33.760021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.425743, 35.624432, 33.710056>,  <27.034531, 35.628689, 33.626778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.425743, 35.624432, 33.710056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040031, -0.989699, 0.137457,
		0.204586, -0.142771, -0.968381,
		0.978030, -0.010644, 0.208194,
		27.719152, 35.621239, 33.772514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258488, 35.073006, 33.242451>,  <27.034531, 35.628689, 33.626778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.258488, 35.073006, 33.242451> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.555368, 35.138191, 33.502476>,  <27.733498, 35.177303, 33.658489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.555368, 35.138191, 33.502476>,  <27.258488, 35.073006, 33.242451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.555368, 35.138191, 33.502476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058283, -0.950615, 0.304851,
		0.667636, -0.264148, -0.696052,
		0.742203, 0.162961, 0.650060,
		27.778028, 35.187080, 33.697495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.887846, 34.708408, 33.149303>,  <27.258488, 35.073006, 33.242451>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.887846, 34.708408, 33.149303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.903290, 34.780670, 33.542419>,  <27.912556, 34.824028, 33.778290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.903290, 34.780670, 33.542419>,  <27.887846, 34.708408, 33.149303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.903290, 34.780670, 33.542419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158301, -0.972207, 0.172493,
		0.986636, 0.148916, -0.066136,
		0.038611, 0.180657, 0.982788,
		27.914873, 34.834866, 33.837257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.404989, 34.211365, 33.417248>,  <27.887846, 34.708408, 33.149303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.404989, 34.211365, 33.417248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.193899, 34.331451, 33.735085>,  <28.067245, 34.403503, 33.925785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.193899, 34.331451, 33.735085>,  <28.404989, 34.211365, 33.417248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193899, 34.331451, 33.735085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067948, -0.917540, 0.391794,
		0.846692, 0.260752, 0.463812,
		-0.527727, 0.300214, 0.794591,
		28.035582, 34.421516, 33.973461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743216, 33.912144, 34.051014>,  <28.404989, 34.211365, 33.417248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743216, 33.912144, 34.051014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.364311, 33.994511, 34.149231>,  <28.136969, 34.043930, 34.208160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.364311, 33.994511, 34.149231>,  <28.743216, 33.912144, 34.051014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.364311, 33.994511, 34.149231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097189, -0.914738, 0.392185,
		0.305366, 0.347638, 0.886509,
		-0.947262, 0.205919, 0.245543,
		28.080133, 34.056286, 34.222893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666481, 33.843632, 34.808525>,  <28.743216, 33.912144, 34.051014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666481, 33.843632, 34.808525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.306820, 33.791035, 34.641560>,  <28.091024, 33.759476, 34.541378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.306820, 33.791035, 34.641560>,  <28.666481, 33.843632, 34.808525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.306820, 33.791035, 34.641560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114186, -0.850267, 0.513817,
		-0.422481, 0.509662, 0.749503,
		-0.899150, -0.131495, -0.417418,
		28.037075, 33.751587, 34.516335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.452574, 33.511295, 35.367558>,  <28.666481, 33.843632, 34.808525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.452574, 33.511295, 35.367558> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.808781, 33.692211, 35.387184>,  <29.022505, 33.800762, 35.398960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.808781, 33.692211, 35.387184>,  <28.452574, 33.511295, 35.367558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.808781, 33.692211, 35.387184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450051, -0.860021, -0.240453,
		-0.066554, 0.236212, -0.969420,
		0.890519, 0.452291, 0.049070,
		29.075937, 33.827900, 35.401905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.059679, 33.272602, 35.776268>,  <28.452574, 33.511295, 35.367558>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.059679, 33.272602, 35.776268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.450922, 33.355785, 35.779408>,  <29.685667, 33.405693, 35.781292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.450922, 33.355785, 35.779408>,  <29.059679, 33.272602, 35.776268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450922, 33.355785, 35.779408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206214, 0.963465, 0.170913,
		0.027981, -0.168790, 0.985255,
		0.978107, 0.207956, 0.007848,
		29.744354, 33.418171, 35.781761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.129326, 33.823769, 36.313992>,  <29.059679, 33.272602, 35.776268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.129326, 33.823769, 36.313992> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.480877, 33.847977, 36.124714>,  <29.691807, 33.862503, 36.011147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.480877, 33.847977, 36.124714>,  <29.129326, 33.823769, 36.313992>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.480877, 33.847977, 36.124714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021926, 0.995996, 0.086670,
		0.476543, -0.065797, 0.876686,
		0.878878, 0.060525, -0.473192,
		29.744539, 33.866135, 35.982758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450319, 34.171890, 36.709000>,  <29.129326, 33.823769, 36.313992>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450319, 34.171890, 36.709000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.634474, 34.223866, 36.357735>,  <29.744967, 34.255051, 36.146976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.634474, 34.223866, 36.357735>,  <29.450319, 34.171890, 36.709000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634474, 34.223866, 36.357735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005652, 0.989639, 0.143467,
		0.887700, -0.061087, 0.456351,
		0.460387, 0.129935, -0.878158,
		29.772589, 34.262848, 36.094288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907608, 34.737129, 36.827686>,  <29.450319, 34.171890, 36.709000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907608, 34.737129, 36.827686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.871941, 34.694073, 36.431614>,  <29.850540, 34.668240, 36.193970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.871941, 34.694073, 36.431614>,  <29.907608, 34.737129, 36.827686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.871941, 34.694073, 36.431614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011370, 0.993968, -0.109076,
		0.995952, -0.020984, -0.087408,
		-0.089170, -0.107641, -0.990183,
		29.845190, 34.661781, 36.134560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276924, 35.379616, 36.626366>,  <29.907608, 34.737129, 36.827686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276924, 35.379616, 36.626366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.060507, 35.250721, 36.315639>,  <29.930656, 35.173386, 36.129204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.060507, 35.250721, 36.315639>,  <30.276924, 35.379616, 36.626366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.060507, 35.250721, 36.315639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182383, 0.946657, -0.265662,
		0.820981, -0.002057, -0.570952,
		-0.541042, -0.322236, -0.776812,
		29.898193, 35.154049, 36.082596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491592, 35.804180, 36.052326>,  <30.276924, 35.379616, 36.626366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491592, 35.804180, 36.052326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.133896, 35.667179, 35.937073>,  <29.919277, 35.584976, 35.867920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.133896, 35.667179, 35.937073>,  <30.491592, 35.804180, 36.052326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133896, 35.667179, 35.937073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240006, 0.910317, -0.337223,
		0.377791, -0.232406, -0.896249,
		-0.894243, -0.342505, -0.288131,
		29.865623, 35.564426, 35.850632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422369, 35.935917, 35.383751>,  <30.491592, 35.804180, 36.052326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422369, 35.935917, 35.383751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.038202, 35.897419, 35.488316>,  <29.807703, 35.874321, 35.551056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.038202, 35.897419, 35.488316>,  <30.422369, 35.935917, 35.383751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038202, 35.897419, 35.488316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158404, 0.960621, -0.228286,
		-0.229144, -0.260659, -0.937843,
		-0.960417, -0.096248, 0.261410,
		29.750076, 35.868546, 35.566738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.998434, 35.967964, 34.824753>,  <30.422369, 35.935917, 35.383751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.998434, 35.967964, 34.824753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.758980, 36.049747, 35.134548>,  <29.615307, 36.098816, 35.320427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.758980, 36.049747, 35.134548>,  <29.998434, 35.967964, 34.824753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758980, 36.049747, 35.134548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211707, 0.892112, -0.399145,
		-0.772537, -0.402907, -0.490768,
		-0.598638, 0.204455, 0.774487,
		29.579388, 36.111084, 35.366894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450989, 36.315651, 34.511505>,  <29.998434, 35.967964, 34.824753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450989, 36.315651, 34.511505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.389723, 36.421467, 34.892357>,  <29.352962, 36.484959, 35.120869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.389723, 36.421467, 34.892357>,  <29.450989, 36.315651, 34.511505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389723, 36.421467, 34.892357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085607, 0.956328, -0.279479,
		-0.984485, -0.124316, -0.123831,
		-0.153167, 0.264542, 0.952133,
		29.343773, 36.500828, 35.177998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.791943, 36.683525, 34.593220>,  <29.450989, 36.315651, 34.511505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.791943, 36.683525, 34.593220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.049107, 36.800125, 34.876541>,  <29.203405, 36.870083, 35.046535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.049107, 36.800125, 34.876541>,  <28.791943, 36.683525, 34.593220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.049107, 36.800125, 34.876541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011702, 0.928380, -0.371448,
		-0.765852, 0.230519, 0.600276,
		0.642910, 0.291498, 0.708304,
		29.241980, 36.887573, 35.089031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460936, 37.206387, 34.872150>,  <28.791943, 36.683525, 34.593220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460936, 37.206387, 34.872150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.838381, 37.238113, 35.000717>,  <29.064848, 37.257149, 35.077858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.838381, 37.238113, 35.000717>,  <28.460936, 37.206387, 34.872150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.838381, 37.238113, 35.000717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038347, 0.938156, -0.344081,
		-0.328826, 0.337004, 0.882214,
		0.943612, 0.079313, 0.321414,
		29.121464, 37.261906, 35.097141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.493029, 37.795120, 35.376205>,  <28.460936, 37.206387, 34.872150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.493029, 37.795120, 35.376205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.868099, 37.744808, 35.246624>,  <29.093142, 37.714622, 35.168877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.868099, 37.744808, 35.246624>,  <28.493029, 37.795120, 35.376205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.868099, 37.744808, 35.246624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064134, 0.978821, -0.194411,
		0.341545, 0.161518, 0.925883,
		0.937675, -0.125781, -0.323953,
		29.149401, 37.707073, 35.149437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.810274, 38.340969, 35.697346>,  <28.493029, 37.795120, 35.376205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.810274, 38.340969, 35.697346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.043802, 38.209717, 35.400299>,  <29.183920, 38.130966, 35.222073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.043802, 38.209717, 35.400299>,  <28.810274, 38.340969, 35.697346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043802, 38.209717, 35.400299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281460, 0.939764, -0.193970,
		0.761533, -0.095773, 0.641012,
		0.583822, -0.328134, -0.742617,
		29.218948, 38.111275, 35.177513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321594, 38.748619, 35.814671>,  <28.810274, 38.340969, 35.697346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321594, 38.748619, 35.814671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.392641, 38.625294, 35.440849>,  <29.435268, 38.551296, 35.216557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.392641, 38.625294, 35.440849>,  <29.321594, 38.748619, 35.814671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.392641, 38.625294, 35.440849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379977, 0.897495, -0.223874,
		0.907783, -0.315346, 0.276563,
		0.177616, -0.308317, -0.934555,
		29.445927, 38.532799, 35.160484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.107712, 38.840046, 35.628407>,  <29.321594, 38.748619, 35.814671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.107712, 38.840046, 35.628407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.900640, 38.830940, 35.286297>,  <29.776398, 38.825478, 35.081032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.900640, 38.830940, 35.286297>,  <30.107712, 38.840046, 35.628407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900640, 38.830940, 35.286297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407290, 0.872555, -0.269744,
		0.752413, -0.487985, -0.442432,
		-0.517677, -0.022761, -0.855273,
		29.745338, 38.824112, 35.029716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539404, 39.150085, 35.171700>,  <30.107712, 38.840046, 35.628407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539404, 39.150085, 35.171700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.194845, 39.166740, 34.969208>,  <29.988110, 39.176735, 34.847713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.194845, 39.166740, 34.969208>,  <30.539404, 39.150085, 35.171700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194845, 39.166740, 34.969208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288576, 0.860287, -0.420274,
		0.417999, -0.508107, -0.753063,
		-0.861395, 0.041642, -0.506226,
		29.936426, 39.179234, 34.817341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.759783, 39.443832, 34.429920>,  <30.539404, 39.150085, 35.171700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.759783, 39.443832, 34.429920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.363640, 39.499249, 34.429356>,  <30.125954, 39.532497, 34.429016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.363640, 39.499249, 34.429356>,  <30.759783, 39.443832, 34.429920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363640, 39.499249, 34.429356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121983, 0.867050, -0.483057,
		-0.065700, -0.478570, -0.875588,
		-0.990355, 0.138544, -0.001412,
		30.066534, 39.540813, 34.428932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601862, 39.693981, 33.683788>,  <30.759783, 39.443832, 34.429920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601862, 39.693981, 33.683788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.318550, 39.800678, 33.945225>,  <30.148563, 39.864697, 34.102089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.318550, 39.800678, 33.945225>,  <30.601862, 39.693981, 33.683788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318550, 39.800678, 33.945225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119452, 0.867224, -0.483378,
		-0.695753, -0.420440, -0.582373,
		-0.708279, 0.266746, 0.653596,
		30.106066, 39.880703, 34.141304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925110, 39.924767, 33.236935>,  <30.601862, 39.693981, 33.683788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.925110, 39.924767, 33.236935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.928419, 40.084831, 33.603497>,  <29.930405, 40.180870, 33.823433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.928419, 40.084831, 33.603497>,  <29.925110, 39.924767, 33.236935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928419, 40.084831, 33.603497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322143, 0.868646, -0.376402,
		-0.946655, -0.292100, 0.136097,
		0.008273, 0.400166, 0.916406,
		29.930901, 40.204880, 33.878418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441877, 40.543865, 33.234070>,  <29.925110, 39.924767, 33.236935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441877, 40.543865, 33.234070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.579584, 40.617966, 33.602234>,  <29.662209, 40.662426, 33.823132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.579584, 40.617966, 33.602234>,  <29.441877, 40.543865, 33.234070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.579584, 40.617966, 33.602234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283739, 0.955029, -0.086092,
		-0.894971, -0.231519, 0.381349,
		0.344267, 0.185253, 0.920414,
		29.682865, 40.673542, 33.878357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848639, 40.945354, 33.495464>,  <29.441877, 40.543865, 33.234070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848639, 40.945354, 33.495464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.204418, 41.019890, 33.662395>,  <29.417885, 41.064613, 33.762554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.204418, 41.019890, 33.662395>,  <28.848639, 40.945354, 33.495464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204418, 41.019890, 33.662395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205741, 0.978605, 0.001532,
		-0.408112, -0.087224, 0.908756,
		0.889447, 0.186343, 0.417326,
		29.471252, 41.075794, 33.787594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648607, 41.383823, 34.029377>,  <28.848639, 40.945354, 33.495464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648607, 41.383823, 34.029377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.043190, 41.441399, 33.997913>,  <29.279940, 41.475945, 33.979034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.043190, 41.441399, 33.997913>,  <28.648607, 41.383823, 34.029377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.043190, 41.441399, 33.997913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137975, 0.987464, 0.076667,
		0.088705, -0.064776, 0.993949,
		0.986455, 0.143941, -0.078656,
		29.339127, 41.484581, 33.974316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.875723, 41.757141, 34.627331>,  <28.648607, 41.383823, 34.029377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.875723, 41.757141, 34.627331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.159369, 41.842896, 34.358646>,  <29.329556, 41.894348, 34.197437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.159369, 41.842896, 34.358646>,  <28.875723, 41.757141, 34.627331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.159369, 41.842896, 34.358646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169711, 0.976545, 0.132510,
		0.684365, 0.020033, 0.728864,
		0.709114, 0.214381, -0.671713,
		29.372103, 41.907211, 34.157131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.406727, 36.669289, 45.455109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.030025, 36.739479, 45.569862>,  <40.804005, 36.781593, 45.638714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.030025, 36.739479, 45.569862>,  <41.406727, 36.669289, 45.455109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030025, 36.739479, 45.569862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334879, 0.567537, 0.752169,
		-0.030833, 0.804432, -0.593244,
		-0.941756, 0.175473, 0.286887,
		40.747498, 36.792122, 45.655930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350456, 37.301746, 45.579575>,  <41.406727, 36.669289, 45.455109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350456, 37.301746, 45.579575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.031490, 37.172104, 45.783176>,  <40.840111, 37.094318, 45.905338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.031490, 37.172104, 45.783176>,  <41.350456, 37.301746, 45.579575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031490, 37.172104, 45.783176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266123, 0.568167, 0.778694,
		-0.541576, 0.756401, -0.366815,
		-0.797417, -0.324104, 0.509001,
		40.792267, 37.074871, 45.935875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.090771, 37.869278, 45.896397>,  <41.350456, 37.301746, 45.579575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.090771, 37.869278, 45.896397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.986065, 37.543217, 46.103088>,  <40.923241, 37.347580, 46.227104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.986065, 37.543217, 46.103088>,  <41.090771, 37.869278, 45.896397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986065, 37.543217, 46.103088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227463, 0.468209, 0.853839,
		-0.937946, 0.341038, 0.062858,
		-0.261761, -0.815153, 0.516728,
		40.907536, 37.298672, 46.258106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838627, 38.098789, 46.565647>,  <41.090771, 37.869278, 45.896397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838627, 38.098789, 46.565647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.858818, 37.711445, 46.663410>,  <40.870934, 37.479038, 46.722069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.858818, 37.711445, 46.663410>,  <40.838627, 38.098789, 46.565647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858818, 37.711445, 46.663410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086151, 0.248030, 0.964914,
		-0.995003, -0.027651, 0.095945,
		0.050478, -0.968358, 0.244408,
		40.873962, 37.420937, 46.736732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329819, 37.950424, 47.001320>,  <40.838627, 38.098789, 46.565647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329819, 37.950424, 47.001320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.579945, 37.648609, 47.080975>,  <40.730022, 37.467522, 47.128769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.579945, 37.648609, 47.080975>,  <40.329819, 37.950424, 47.001320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579945, 37.648609, 47.080975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056177, 0.210996, 0.975871,
		-0.778346, -0.621416, 0.089551,
		0.625317, -0.754535, 0.199137,
		40.767540, 37.422249, 47.140717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053436, 37.452129, 47.619419>,  <40.329819, 37.950424, 47.001320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053436, 37.452129, 47.619419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.451965, 37.417862, 47.618614>,  <40.691082, 37.397301, 47.618130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.451965, 37.417862, 47.618614>,  <40.053436, 37.452129, 47.619419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451965, 37.417862, 47.618614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023548, 0.251118, 0.967670,
		-0.082397, -0.964158, 0.252212,
		0.996321, -0.085672, -0.002013,
		40.750862, 37.392162, 47.618011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242420, 37.126823, 48.247852>,  <40.053436, 37.452129, 47.619419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242420, 37.126823, 48.247852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.592709, 37.276806, 48.126183>,  <40.802883, 37.366795, 48.053181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.592709, 37.276806, 48.126183>,  <40.242420, 37.126823, 48.247852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.592709, 37.276806, 48.126183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251772, 0.182927, 0.950341,
		0.411976, -0.908817, 0.065791,
		0.875721, 0.374953, -0.304176,
		40.855427, 37.389290, 48.034931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934933, 36.829819, 48.616947>,  <40.242420, 37.126823, 48.247852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934933, 36.829819, 48.616947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.017632, 37.198658, 48.486107>,  <41.067253, 37.419960, 48.407600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.017632, 37.198658, 48.486107>,  <40.934933, 36.829819, 48.616947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017632, 37.198658, 48.486107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289367, 0.261742, 0.920738,
		0.934624, -0.285015, -0.212708,
		0.206750, 0.922094, -0.327105,
		41.079655, 37.475285, 48.387974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.592552, 37.025169, 48.788486>,  <40.934933, 36.829819, 48.616947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.592552, 37.025169, 48.788486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.394493, 37.371525, 48.760006>,  <41.275658, 37.579338, 48.742916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.394493, 37.371525, 48.760006>,  <41.592552, 37.025169, 48.788486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394493, 37.371525, 48.760006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304621, 0.249780, 0.919139,
		0.813653, 0.433422, -0.387445,
		-0.495151, 0.865884, -0.071205,
		41.245949, 37.631290, 48.738644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.099731, 37.573254, 48.983147>,  <41.592552, 37.025169, 48.788486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.099731, 37.573254, 48.983147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.732243, 37.723476, 49.031998>,  <41.511749, 37.813610, 49.061310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.732243, 37.723476, 49.031998>,  <42.099731, 37.573254, 48.983147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.732243, 37.723476, 49.031998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252990, 0.322240, 0.912227,
		0.303236, 0.868977, -0.391059,
		-0.918719, 0.375555, 0.122128,
		41.456627, 37.836143, 49.068634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.242054, 38.177883, 49.387978>,  <42.099731, 37.573254, 48.983147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.242054, 38.177883, 49.387978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.842777, 38.176334, 49.411976>,  <41.603210, 38.175404, 49.426376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.842777, 38.176334, 49.411976>,  <42.242054, 38.177883, 49.387978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.842777, 38.176334, 49.411976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055766, 0.313254, 0.948031,
		-0.022466, 0.949662, -0.312471,
		-0.998191, -0.003873, 0.059997,
		41.543320, 38.175171, 49.429974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.035515, 38.832726, 49.794964>,  <42.242054, 38.177883, 49.387978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.035515, 38.832726, 49.794964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.736973, 38.567768, 49.820827>,  <41.557846, 38.408794, 49.836346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.736973, 38.567768, 49.820827>,  <42.035515, 38.832726, 49.794964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736973, 38.567768, 49.820827> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115214, 0.224272, 0.967692,
		-0.655496, 0.714796, -0.243705,
		-0.746359, -0.662396, 0.064654,
		41.513065, 38.369049, 49.840225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395000, 39.218887, 49.995525>,  <42.035515, 38.832726, 49.794964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395000, 39.218887, 49.995525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.379044, 38.837662, 50.115570>,  <41.369469, 38.608925, 50.187599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.379044, 38.837662, 50.115570>,  <41.395000, 39.218887, 49.995525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379044, 38.837662, 50.115570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297912, 0.298040, 0.906874,
		-0.953759, -0.053229, -0.295821,
		-0.039894, -0.953068, 0.300116,
		41.367077, 38.551743, 50.205605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185673, 39.778664, 50.389545>,  <41.395000, 39.218887, 49.995525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185673, 39.778664, 50.389545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.962788, 40.053234, 50.576450>,  <40.829056, 40.217976, 50.688595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.962788, 40.053234, 50.576450>,  <41.185673, 39.778664, 50.389545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962788, 40.053234, 50.576450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799711, -0.292111, -0.524531,
		-0.223556, -0.665954, 0.711708,
		-0.557211, 0.686423, 0.467267,
		40.795624, 40.259163, 50.716629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441231, 39.485756, 50.692715>,  <41.185673, 39.778664, 50.389545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441231, 39.485756, 50.692715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.444424, 39.870033, 50.581715>,  <40.446339, 40.100601, 50.515114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.444424, 39.870033, 50.581715>,  <40.441231, 39.485756, 50.692715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444424, 39.870033, 50.581715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655963, -0.204424, -0.726584,
		-0.754751, 0.187829, 0.628546,
		0.007984, 0.960693, -0.277498,
		40.446819, 40.158241, 50.498466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737274, 39.695480, 50.557037>,  <40.441231, 39.485756, 50.692715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737274, 39.695480, 50.557037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.939884, 39.981647, 50.364536>,  <40.061451, 40.153347, 50.249035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.939884, 39.981647, 50.364536>,  <39.737274, 39.695480, 50.557037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939884, 39.981647, 50.364536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582874, -0.127186, -0.802547,
		-0.635368, 0.687020, 0.352578,
		0.506522, 0.715421, -0.481256,
		40.091843, 40.196274, 50.220158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202450, 40.037136, 50.138596>,  <39.737274, 39.695480, 50.557037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202450, 40.037136, 50.138596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.552750, 40.127468, 49.967918>,  <39.762928, 40.181667, 49.865513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.552750, 40.127468, 49.967918>,  <39.202450, 40.037136, 50.138596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552750, 40.127468, 49.967918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432764, -0.024483, -0.901175,
		-0.213955, 0.973860, 0.076288,
		0.875750, 0.225825, -0.426690,
		39.815475, 40.195217, 49.839912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027462, 40.565887, 49.625347>,  <39.202450, 40.037136, 50.138596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027462, 40.565887, 49.625347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.397610, 40.468975, 49.508728>,  <39.619698, 40.410828, 49.438755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.397610, 40.468975, 49.508728>,  <39.027462, 40.565887, 49.625347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397610, 40.468975, 49.508728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235263, 0.236007, -0.942843,
		0.297238, 0.941064, 0.161393,
		0.925365, -0.242279, -0.291547,
		39.675220, 40.396290, 49.421265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265308, 41.126720, 49.250641>,  <39.027462, 40.565887, 49.625347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265308, 41.126720, 49.250641> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.465412, 40.796459, 49.146309>,  <39.585476, 40.598301, 49.083710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.465412, 40.796459, 49.146309>,  <39.265308, 41.126720, 49.250641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465412, 40.796459, 49.146309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197952, 0.184205, -0.962748,
		0.842944, 0.533257, -0.071290,
		0.500260, -0.825655, -0.260834,
		39.615490, 40.548763, 49.068058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559711, 41.294125, 48.655685>,  <39.265308, 41.126720, 49.250641>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559711, 41.294125, 48.655685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.592831, 40.895626, 48.645527>,  <39.612701, 40.656528, 48.639431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.592831, 40.895626, 48.645527>,  <39.559711, 41.294125, 48.655685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592831, 40.895626, 48.645527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000666, 0.025541, -0.999674,
		0.996566, 0.082751, 0.002779,
		0.082794, -0.996243, -0.025398,
		39.617668, 40.596752, 48.637909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130630, 41.219971, 48.231136>,  <39.559711, 41.294125, 48.655685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130630, 41.219971, 48.231136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.930538, 40.874733, 48.203308>,  <39.810482, 40.667591, 48.186611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.930538, 40.874733, 48.203308>,  <40.130630, 41.219971, 48.231136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930538, 40.874733, 48.203308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076981, 0.124356, -0.989247,
		0.862462, -0.489499, -0.128649,
		-0.500233, -0.863091, -0.069570,
		39.780468, 40.615807, 48.182438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441940, 40.822979, 47.670479>,  <40.130630, 41.219971, 48.231136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441940, 40.822979, 47.670479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.079521, 40.660915, 47.719353>,  <39.862068, 40.563679, 47.748676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.079521, 40.660915, 47.719353>,  <40.441940, 40.822979, 47.670479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079521, 40.660915, 47.719353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092775, -0.091528, -0.991471,
		0.412883, -0.909655, 0.045341,
		-0.906047, -0.405155, 0.122183,
		39.807709, 40.539368, 47.756008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418671, 40.282375, 47.108040>,  <40.441940, 40.822979, 47.670479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418671, 40.282375, 47.108040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.039120, 40.342464, 47.219078>,  <39.811390, 40.378517, 47.285702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.039120, 40.342464, 47.219078>,  <40.418671, 40.282375, 47.108040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039120, 40.342464, 47.219078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292131, -0.084980, -0.952595,
		-0.119516, -0.984993, 0.124522,
		-0.948881, 0.150227, 0.277591,
		39.754456, 40.387531, 47.302357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065224, 39.810467, 46.677238>,  <40.418671, 40.282375, 47.108040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065224, 39.810467, 46.677238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.785252, 40.071388, 46.793579>,  <39.617268, 40.227943, 46.863384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.785252, 40.071388, 46.793579>,  <40.065224, 39.810467, 46.677238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785252, 40.071388, 46.793579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410423, -0.034067, -0.911259,
		-0.584512, -0.757189, 0.291566,
		-0.699928, 0.652307, 0.290855,
		39.575272, 40.267082, 46.880836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378246, 39.506065, 46.660614>,  <40.065224, 39.810467, 46.677238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378246, 39.506065, 46.660614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.321686, 39.900738, 46.628433>,  <39.287750, 40.137539, 46.609123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.321686, 39.900738, 46.628433>,  <39.378246, 39.506065, 46.660614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321686, 39.900738, 46.628433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274466, -0.117159, -0.954433,
		-0.951144, -0.112878, 0.287376,
		-0.141403, 0.986678, -0.080454,
		39.279266, 40.196739, 46.604298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761017, 39.649895, 46.274803>,  <39.378246, 39.506065, 46.660614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761017, 39.649895, 46.274803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.942638, 40.005367, 46.249222>,  <39.051613, 40.218651, 46.233871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.942638, 40.005367, 46.249222>,  <38.761017, 39.649895, 46.274803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942638, 40.005367, 46.249222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308979, 0.089730, -0.946827,
		-0.835684, 0.449669, 0.315324,
		0.454053, 0.888677, -0.063952,
		39.078854, 40.271969, 46.230038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366322, 39.974365, 45.873257>,  <38.761017, 39.649895, 46.274803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366322, 39.974365, 45.873257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.712391, 40.173908, 45.852787>,  <38.920033, 40.293636, 45.840504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.712391, 40.173908, 45.852787>,  <38.366322, 39.974365, 45.873257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712391, 40.173908, 45.852787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110517, 0.090127, -0.989779,
		-0.489151, 0.861982, 0.133108,
		0.865169, 0.498862, -0.051178,
		38.971943, 40.323566, 45.837433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213882, 40.360119, 45.300388>,  <38.366322, 39.974365, 45.873257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213882, 40.360119, 45.300388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.609467, 40.342945, 45.357128>,  <38.846817, 40.332642, 45.391174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.609467, 40.342945, 45.357128>,  <38.213882, 40.360119, 45.300388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609467, 40.342945, 45.357128> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141411, -0.013155, -0.989864,
		0.044365, 0.998991, -0.006939,
		0.988956, -0.042934, 0.141852,
		38.906155, 40.330067, 45.399685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033379, 41.128265, 45.373253>,  <38.213882, 40.360119, 45.300388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033379, 41.128265, 45.373253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.721199, 41.347115, 45.252224>,  <37.533890, 41.478424, 45.179607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.721199, 41.347115, 45.252224>,  <38.033379, 41.128265, 45.373253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721199, 41.347115, 45.252224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012209, 0.497190, 0.867556,
		0.625097, 0.673391, -0.394713,
		-0.780452, 0.547125, -0.302570,
		37.487064, 41.511253, 45.161453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132931, 41.864487, 45.346260>,  <38.033379, 41.128265, 45.373253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132931, 41.864487, 45.346260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.734188, 41.846306, 45.372231>,  <37.494942, 41.835396, 45.387814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.734188, 41.846306, 45.372231>,  <38.132931, 41.864487, 45.346260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734188, 41.846306, 45.372231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035785, 0.472772, 0.880458,
		-0.070715, 0.880012, -0.469658,
		-0.996854, -0.045455, 0.064923,
		37.435131, 41.832668, 45.391708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970364, 42.346771, 45.832939>,  <38.132931, 41.864487, 45.346260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970364, 42.346771, 45.832939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.628551, 42.141293, 45.802238>,  <37.423466, 42.018005, 45.783817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.628551, 42.141293, 45.802238>,  <37.970364, 42.346771, 45.832939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628551, 42.141293, 45.802238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222372, 0.228286, 0.947859,
		-0.469391, 0.827042, -0.309309,
		-0.854531, -0.513698, -0.076755,
		37.372192, 41.987183, 45.779213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578312, 42.729080, 46.126575>,  <37.970364, 42.346771, 45.832939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578312, 42.729080, 46.126575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.375378, 42.384621, 46.139454>,  <37.253616, 42.177944, 46.147182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.375378, 42.384621, 46.139454>,  <37.578312, 42.729080, 46.126575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375378, 42.384621, 46.139454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220889, 0.166065, 0.961057,
		-0.832956, 0.480469, -0.274469,
		-0.507338, -0.861145, 0.032195,
		37.223175, 42.126278, 46.149113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975536, 42.826210, 46.547966>,  <37.578312, 42.729080, 46.126575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975536, 42.826210, 46.547966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.034554, 42.430798, 46.560871>,  <37.069965, 42.193550, 46.568615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.034554, 42.430798, 46.560871>,  <36.975536, 42.826210, 46.547966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034554, 42.430798, 46.560871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135782, 0.012067, 0.990665,
		-0.979691, -0.150545, -0.132444,
		0.147542, -0.988529, 0.032264,
		37.078815, 42.134239, 46.570549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425961, 42.558346, 47.029423>,  <36.975536, 42.826210, 46.547966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425961, 42.558346, 47.029423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.719296, 42.286430, 47.033539>,  <36.895298, 42.123280, 47.036007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.719296, 42.286430, 47.033539>,  <36.425961, 42.558346, 47.029423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719296, 42.286430, 47.033539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047763, -0.036420, 0.998195,
		-0.678186, -0.732504, -0.059177,
		0.733336, -0.679788, 0.010287,
		36.939297, 42.082493, 47.036625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237225, 42.056053, 47.464565>,  <36.425961, 42.558346, 47.029423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237225, 42.056053, 47.464565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.633335, 42.002647, 47.448975>,  <36.871002, 41.970604, 47.439621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.633335, 42.002647, 47.448975>,  <36.237225, 42.056053, 47.464565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633335, 42.002647, 47.448975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033867, -0.040326, 0.998612,
		-0.134903, -0.990226, -0.035412,
		0.990280, -0.133516, -0.038976,
		36.930420, 41.962593, 47.437283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916019, 41.246864, 47.522919>,  <36.237225, 42.056053, 47.464565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916019, 41.246864, 47.522919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.868942, 40.886959, 47.690998>,  <35.840698, 40.671013, 47.791847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.868942, 40.886959, 47.690998>,  <35.916019, 41.246864, 47.522919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868942, 40.886959, 47.690998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100161, -0.410226, -0.906467,
		0.987986, -0.148769, -0.041843,
		-0.117689, -0.899768, 0.420199,
		35.833637, 40.617027, 47.817059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345463, 40.831871, 47.275921>,  <35.916019, 41.246864, 47.522919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345463, 40.831871, 47.275921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.048161, 40.590836, 47.392162>,  <35.869778, 40.446213, 47.461906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.048161, 40.590836, 47.392162>,  <36.345463, 40.831871, 47.275921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048161, 40.590836, 47.392162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103634, -0.325430, -0.939870,
		0.660929, -0.728682, 0.179429,
		-0.743258, -0.602593, 0.290602,
		35.825184, 40.410057, 47.479343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540031, 40.197510, 46.928551>,  <36.345463, 40.831871, 47.275921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540031, 40.197510, 46.928551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.161255, 40.117836, 47.029446>,  <35.933987, 40.070034, 47.089981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.161255, 40.117836, 47.029446>,  <36.540031, 40.197510, 46.928551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161255, 40.117836, 47.029446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104827, -0.550480, -0.828241,
		0.303820, -0.810739, 0.500395,
		-0.946945, -0.199181, 0.252235,
		35.877171, 40.058083, 47.105118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367668, 39.410839, 46.869099>,  <36.540031, 40.197510, 46.928551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367668, 39.410839, 46.869099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.019230, 39.603004, 46.828312>,  <35.810165, 39.718304, 46.803841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.019230, 39.603004, 46.828312>,  <36.367668, 39.410839, 46.869099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019230, 39.603004, 46.828312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208712, -0.550078, -0.808612,
		-0.444555, -0.683097, 0.579439,
		-0.871097, 0.480408, -0.101969,
		35.757900, 39.747128, 46.797722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959946, 38.903881, 46.635845>,  <36.367668, 39.410839, 46.869099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959946, 38.903881, 46.635845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.786476, 39.251617, 46.541042>,  <35.682396, 39.460258, 46.484161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.786476, 39.251617, 46.541042>,  <35.959946, 38.903881, 46.635845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.786476, 39.251617, 46.541042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197138, -0.348196, -0.916459,
		-0.879241, -0.350719, 0.322383,
		-0.433672, 0.869342, -0.237008,
		35.656376, 39.512421, 46.469940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437351, 38.767460, 46.195290>,  <35.959946, 38.903881, 46.635845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437351, 38.767460, 46.195290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.461105, 39.156910, 46.107166>,  <35.475357, 39.390579, 46.054291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.461105, 39.156910, 46.107166>,  <35.437351, 38.767460, 46.195290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461105, 39.156910, 46.107166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113975, -0.212641, -0.970460,
		-0.991707, 0.082737, 0.098341,
		0.059382, 0.973621, -0.220308,
		35.478920, 39.448997, 46.041073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919117, 38.911182, 45.695862>,  <35.437351, 38.767460, 46.195290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919117, 38.911182, 45.695862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.172382, 39.218765, 45.660500>,  <35.324341, 39.403316, 45.639282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.172382, 39.218765, 45.660500>,  <34.919117, 38.911182, 45.695862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172382, 39.218765, 45.660500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018963, -0.129593, -0.991386,
		-0.773789, 0.626029, -0.096634,
		0.633159, 0.768956, -0.088406,
		35.362331, 39.449451, 45.633976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.518616, 35.867435, 50.741550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.817982, 36.122944, 50.670177>,  <38.997601, 36.276249, 50.627354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.817982, 36.122944, 50.670177>,  <38.518616, 35.867435, 50.741550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817982, 36.122944, 50.670177> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209373, -0.027724, -0.977443,
		-0.629313, 0.768894, 0.112993,
		0.748417, 0.638775, -0.178432,
		39.042507, 36.314575, 50.616650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239853, 36.362831, 50.247746>,  <38.518616, 35.867435, 50.741550>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239853, 36.362831, 50.247746> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.635803, 36.387093, 50.196415>,  <38.873375, 36.401649, 50.165615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.635803, 36.387093, 50.196415>,  <38.239853, 36.362831, 50.247746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635803, 36.387093, 50.196415> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129676, 0.018867, -0.991377,
		-0.057714, 0.997980, 0.026542,
		0.989875, 0.060658, -0.128325,
		38.932766, 36.405289, 50.157917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347237, 36.933559, 49.732960>,  <38.239853, 36.362831, 50.247746>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347237, 36.933559, 49.732960> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.681408, 36.713924, 49.742538>,  <38.881908, 36.582146, 49.748287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.681408, 36.713924, 49.742538>,  <38.347237, 36.933559, 49.732960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681408, 36.713924, 49.742538> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140660, 0.171487, -0.975093,
		0.531301, 0.817985, 0.220498,
		0.835425, -0.549083, 0.023947,
		38.932034, 36.549198, 49.749722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851120, 37.276180, 49.308186>,  <38.347237, 36.933559, 49.732960>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851120, 37.276180, 49.308186> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.957657, 36.890957, 49.324043>,  <39.021580, 36.659821, 49.333557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.957657, 36.890957, 49.324043>,  <38.851120, 37.276180, 49.308186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957657, 36.890957, 49.324043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151589, -0.082467, -0.984997,
		0.951883, 0.256340, -0.167955,
		0.266345, -0.963062, 0.039641,
		39.037560, 36.602039, 49.335934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066616, 37.152905, 48.583305>,  <38.851120, 37.276180, 49.308186>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066616, 37.152905, 48.583305> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.038494, 36.781815, 48.729935>,  <39.021622, 36.559158, 48.817913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.038494, 36.781815, 48.729935>,  <39.066616, 37.152905, 48.583305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038494, 36.781815, 48.729935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003585, -0.367246, -0.930117,
		0.997519, -0.066702, 0.022492,
		-0.070301, -0.927729, 0.366574,
		39.017403, 36.503494, 48.839909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583942, 36.855907, 48.223999>,  <39.066616, 37.152905, 48.583305>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583942, 36.855907, 48.223999> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.305519, 36.597416, 48.349148>,  <39.138466, 36.442322, 48.424236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.305519, 36.597416, 48.349148>,  <39.583942, 36.855907, 48.223999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305519, 36.597416, 48.349148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092445, -0.351471, -0.931623,
		0.712007, -0.677390, 0.184904,
		-0.696060, -0.646229, 0.312871,
		39.096703, 36.403549, 48.443008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705276, 36.204884, 47.907112>,  <39.583942, 36.855907, 48.223999>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705276, 36.204884, 47.907112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.329353, 36.133232, 48.023502>,  <39.103798, 36.090240, 48.093338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.329353, 36.133232, 48.023502>,  <39.705276, 36.204884, 47.907112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.329353, 36.133232, 48.023502> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193756, -0.422059, -0.885621,
		0.281453, -0.888695, 0.361947,
		-0.939810, -0.179132, 0.290980,
		39.047409, 36.079494, 48.110798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635311, 35.553871, 47.593941>,  <39.705276, 36.204884, 47.907112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635311, 35.553871, 47.593941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.281467, 35.727409, 47.662338>,  <39.069160, 35.831532, 47.703377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.281467, 35.727409, 47.662338>,  <39.635311, 35.553871, 47.593941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281467, 35.727409, 47.662338> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311745, -0.277480, -0.908746,
		-0.346814, -0.857192, 0.380713,
		-0.884610, 0.433851, 0.170991,
		39.016083, 35.857563, 47.713634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327919, 34.940590, 47.403915>,  <39.635311, 35.553871, 47.593941>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327919, 34.940590, 47.403915> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.059723, 35.237293, 47.397755>,  <38.898808, 35.415318, 47.394058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.059723, 35.237293, 47.397755>,  <39.327919, 34.940590, 47.403915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059723, 35.237293, 47.397755> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502907, -0.469647, -0.725614,
		-0.545466, -0.478769, 0.687930,
		-0.670485, 0.741763, -0.015400,
		38.858578, 35.459824, 47.393135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650841, 34.606724, 47.524090>,  <39.327919, 34.940590, 47.403915>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650841, 34.606724, 47.524090> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.570362, 34.957733, 47.349979>,  <38.522076, 35.168339, 47.245514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.570362, 34.957733, 47.349979>,  <38.650841, 34.606724, 47.524090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570362, 34.957733, 47.349979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606264, -0.460586, -0.648309,
		-0.769392, 0.133455, 0.624681,
		-0.201199, 0.877525, -0.435280,
		38.510002, 35.220989, 47.219395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007954, 34.687420, 47.379700>,  <38.650841, 34.606724, 47.524090>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007954, 34.687420, 47.379700> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.160992, 34.936649, 47.106819>,  <38.252815, 35.086185, 46.943089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.160992, 34.936649, 47.106819>,  <38.007954, 34.687420, 47.379700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160992, 34.936649, 47.106819> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609707, -0.384510, -0.693115,
		-0.694176, 0.681126, 0.232781,
		0.382592, 0.623072, -0.682205,
		38.275768, 35.123569, 46.902157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326248, 34.961918, 47.183010>,  <38.007954, 34.687420, 47.379700>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326248, 34.961918, 47.183010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.611359, 35.014805, 46.907482>,  <37.782425, 35.046535, 46.742165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.611359, 35.014805, 46.907482>,  <37.326248, 34.961918, 47.183010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611359, 35.014805, 46.907482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590493, -0.416868, -0.691042,
		-0.378512, 0.899300, -0.219062,
		0.712774, 0.132213, -0.688820,
		37.825191, 35.054470, 46.700836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.688755, 35.450672, 47.269817>,  <37.326248, 34.961918, 47.183010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.688755, 35.450672, 47.269817> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.293961, 35.482422, 47.325771>,  <36.057083, 35.501472, 47.359344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.293961, 35.482422, 47.325771>,  <36.688755, 35.450672, 47.269817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293961, 35.482422, 47.325771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150817, 0.758898, 0.633505,
		-0.055872, 0.646354, -0.760989,
		-0.986981, 0.079375, 0.139882,
		35.997868, 35.506233, 47.367737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554127, 36.113518, 47.370270>,  <36.688755, 35.450672, 47.269817>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554127, 36.113518, 47.370270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.219345, 35.972172, 47.537434>,  <36.018478, 35.887363, 47.637730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.219345, 35.972172, 47.537434>,  <36.554127, 36.113518, 47.370270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219345, 35.972172, 47.537434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032919, 0.729724, 0.682949,
		-0.546285, 0.585353, -0.599112,
		-0.836952, -0.353362, 0.417906,
		35.968258, 35.866161, 47.662804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289253, 36.708385, 47.721668>,  <36.554127, 36.113518, 47.370270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289253, 36.708385, 47.721668> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.059700, 36.412243, 47.861687>,  <35.921967, 36.234558, 47.945698>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.059700, 36.412243, 47.861687>,  <36.289253, 36.708385, 47.721668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059700, 36.412243, 47.861687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109224, 0.492820, 0.863249,
		-0.811620, 0.457171, -0.363686,
		-0.573884, -0.740353, 0.350049,
		35.887535, 36.190136, 47.966702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678497, 37.040913, 47.899624>,  <36.289253, 36.708385, 47.721668>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678497, 37.040913, 47.899624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.715672, 36.714241, 48.127449>,  <35.737976, 36.518238, 48.264145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.715672, 36.714241, 48.127449>,  <35.678497, 37.040913, 47.899624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715672, 36.714241, 48.127449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208318, 0.543429, 0.813196,
		-0.973636, -0.194223, -0.119626,
		0.092933, -0.816678, 0.569563,
		35.743553, 36.469238, 48.298317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443798, 37.392799, 48.443405>,  <35.678497, 37.040913, 47.899624>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443798, 37.392799, 48.443405> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.522823, 37.017254, 48.556194>,  <35.570240, 36.791927, 48.623867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.522823, 37.017254, 48.556194>,  <35.443798, 37.392799, 48.443405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522823, 37.017254, 48.556194> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047156, 0.278211, 0.959362,
		-0.979155, -0.202835, 0.010692,
		0.197567, -0.938859, 0.281977,
		35.582092, 36.735596, 48.640789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899445, 37.091614, 48.851017>,  <35.443798, 37.392799, 48.443405>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899445, 37.091614, 48.851017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.264423, 36.961929, 48.950874>,  <35.483410, 36.884121, 49.010788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.264423, 36.961929, 48.950874>,  <34.899445, 37.091614, 48.851017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264423, 36.961929, 48.950874> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074792, 0.467686, 0.880725,
		-0.402294, -0.822289, 0.402492,
		0.912450, -0.324207, 0.249648,
		35.538158, 36.864666, 49.025768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926926, 36.872711, 49.609138>,  <34.899445, 37.091614, 48.851017>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926926, 36.872711, 49.609138> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.312592, 36.919395, 49.513832>,  <35.543991, 36.947407, 49.456646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.312592, 36.919395, 49.513832>,  <34.926926, 36.872711, 49.609138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312592, 36.919395, 49.513832> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140717, 0.536386, 0.832159,
		0.224927, -0.835864, 0.500739,
		0.964161, 0.116713, -0.238268,
		35.601841, 36.954411, 49.442352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261593, 36.637714, 50.163448>,  <34.926926, 36.872711, 49.609138>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261593, 36.637714, 50.163448> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.514511, 36.878872, 49.968834>,  <35.666264, 37.023567, 49.852066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.514511, 36.878872, 49.968834>,  <35.261593, 36.637714, 50.163448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514511, 36.878872, 49.968834> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224359, 0.458596, 0.859856,
		0.741526, -0.652844, 0.154704,
		0.632299, 0.602897, -0.486533,
		35.704201, 37.059742, 49.822876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842831, 36.642933, 50.539062>,  <35.261593, 36.637714, 50.163448>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842831, 36.642933, 50.539062> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.902710, 36.965126, 50.309704>,  <35.938637, 37.158443, 50.172089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.902710, 36.965126, 50.309704>,  <35.842831, 36.642933, 50.539062>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902710, 36.965126, 50.309704> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518796, 0.429701, 0.739059,
		0.841690, -0.408111, -0.353558,
		0.149693, 0.805483, -0.573401,
		35.947617, 37.206772, 50.137684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601898, 36.732304, 50.562855>,  <35.842831, 36.642933, 50.539062>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601898, 36.732304, 50.562855> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.418285, 37.071194, 50.455891>,  <36.308117, 37.274529, 50.391712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.418285, 37.071194, 50.455891>,  <36.601898, 36.732304, 50.562855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418285, 37.071194, 50.455891> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455709, 0.482917, 0.747743,
		0.762640, 0.221375, -0.607760,
		-0.459030, 0.847221, -0.267409,
		36.280575, 37.325359, 50.375668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158024, 37.263546, 50.624172>,  <36.601898, 36.732304, 50.562855>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158024, 37.263546, 50.624172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.805378, 37.452332, 50.625446>,  <36.593792, 37.565605, 50.626209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.805378, 37.452332, 50.625446>,  <37.158024, 37.263546, 50.624172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805378, 37.452332, 50.625446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383951, 0.713248, 0.586395,
		0.274490, 0.518193, -0.810019,
		-0.881611, 0.471967, 0.003181,
		36.540894, 37.593922, 50.626400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307232, 37.928940, 50.529430>,  <37.158024, 37.263546, 50.624172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307232, 37.928940, 50.529430> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.944183, 37.955544, 50.695225>,  <36.726353, 37.971504, 50.794701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.944183, 37.955544, 50.695225>,  <37.307232, 37.928940, 50.529430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944183, 37.955544, 50.695225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361540, 0.625606, 0.691308,
		-0.213325, 0.777299, -0.591860,
		-0.907624, 0.066508, 0.414482,
		36.671898, 37.975494, 50.819569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266712, 38.618153, 50.602245>,  <37.307232, 37.928940, 50.529430>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266712, 38.618153, 50.602245> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.019062, 38.445545, 50.864685>,  <36.870472, 38.341980, 51.022148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.019062, 38.445545, 50.864685>,  <37.266712, 38.618153, 50.602245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019062, 38.445545, 50.864685> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316024, 0.627940, 0.711211,
		-0.718895, 0.647675, -0.252405,
		-0.619128, -0.431520, 0.656103,
		36.833324, 38.316090, 51.061516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951530, 39.111065, 50.919216>,  <37.266712, 38.618153, 50.602245>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951530, 39.111065, 50.919216> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.904221, 38.814907, 51.183887>,  <36.875835, 38.637211, 51.342690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.904221, 38.814907, 51.183887>,  <36.951530, 39.111065, 50.919216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904221, 38.814907, 51.183887> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279022, 0.614731, 0.737735,
		-0.952974, 0.271876, 0.133882,
		-0.118271, -0.740398, 0.661682,
		36.868740, 38.592789, 51.382393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705208, 39.739750, 50.615265>,  <36.951530, 39.111065, 50.919216>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705208, 39.739750, 50.615265> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.428471, 40.024883, 50.661263>,  <36.262428, 40.195965, 50.688862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.428471, 40.024883, 50.661263>,  <36.705208, 39.739750, 50.615265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428471, 40.024883, 50.661263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349539, -0.191286, -0.917187,
		-0.631805, -0.674743, 0.381503,
		-0.691842, 0.712833, 0.114993,
		36.220917, 40.238731, 50.695759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040161, 39.518883, 50.419823>,  <36.705208, 39.739750, 50.615265>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040161, 39.518883, 50.419823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.998955, 39.915485, 50.388092>,  <35.974232, 40.153446, 50.369053>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.998955, 39.915485, 50.388092>,  <36.040161, 39.518883, 50.419823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998955, 39.915485, 50.388092> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268160, -0.104486, -0.957691,
		-0.957850, -0.077386, 0.276648,
		-0.103018, 0.991511, -0.079330,
		35.968048, 40.212940, 50.364292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535599, 39.693874, 50.013489>,  <36.040161, 39.518883, 50.419823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535599, 39.693874, 50.013489> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.738075, 40.035603, 49.966316>,  <35.859562, 40.240639, 49.938015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.738075, 40.035603, 49.966316>,  <35.535599, 39.693874, 50.013489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738075, 40.035603, 49.966316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256455, 0.018554, -0.966378,
		-0.823409, 0.519415, 0.228486,
		0.506191, 0.854321, -0.117929,
		35.889931, 40.291901, 49.930939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089489, 40.112267, 49.765648>,  <35.535599, 39.693874, 50.013489>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089489, 40.112267, 49.765648> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.429134, 40.291840, 49.654320>,  <35.632923, 40.399582, 49.587521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.429134, 40.291840, 49.654320>,  <35.089489, 40.112267, 49.765648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429134, 40.291840, 49.654320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362286, 0.111529, -0.925370,
		-0.384386, 0.886579, 0.257342,
		0.849115, 0.448931, -0.278325,
		35.683868, 40.426517, 49.570824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933762, 40.688030, 49.193684>,  <35.089489, 40.112267, 49.765648>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933762, 40.688030, 49.193684> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.322598, 40.601372, 49.157673>,  <35.555901, 40.549377, 49.136066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.322598, 40.601372, 49.157673>,  <34.933762, 40.688030, 49.193684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322598, 40.601372, 49.157673> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054732, 0.163717, -0.984988,
		0.228128, 0.962426, 0.147290,
		0.972092, -0.216642, -0.090024,
		35.614223, 40.536381, 49.130665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095394, 41.043053, 48.582809>,  <34.933762, 40.688030, 49.193684>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095394, 41.043053, 48.582809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.430702, 40.827858, 48.618298>,  <35.631889, 40.698742, 48.639591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.430702, 40.827858, 48.618298>,  <35.095394, 41.043053, 48.582809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430702, 40.827858, 48.618298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025321, -0.200952, -0.979274,
		0.544663, 0.818651, -0.182075,
		0.838272, -0.537985, 0.088722,
		35.682182, 40.666462, 48.644913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.548958, 41.366848, 48.127327>,  <35.095394, 41.043053, 48.582809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.548958, 41.366848, 48.127327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.662308, 40.989452, 48.196068>,  <35.730320, 40.763016, 48.237312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.662308, 40.989452, 48.196068>,  <35.548958, 41.366848, 48.127327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662308, 40.989452, 48.196068> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067849, -0.159021, -0.984941,
		0.956605, 0.290772, 0.018952,
		0.283379, -0.943485, 0.171849,
		35.747322, 40.706406, 48.247623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344307, 41.565075, 48.046070>,  <35.548958, 41.366848, 48.127327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344307, 41.565075, 48.046070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.712154, 41.672436, 47.931351>,  <36.932865, 41.736851, 47.862518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.712154, 41.672436, 47.931351>,  <36.344307, 41.565075, 48.046070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712154, 41.672436, 47.931351> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348096, -0.218554, 0.911627,
		0.182002, -0.938187, -0.294417,
		0.919622, 0.268404, -0.286802,
		36.988041, 41.752956, 47.845310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833645, 41.099102, 48.307167>,  <36.344307, 41.565075, 48.046070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833645, 41.099102, 48.307167> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.036266, 41.441463, 48.265545>,  <37.157841, 41.646881, 48.240570>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.036266, 41.441463, 48.265545>,  <36.833645, 41.099102, 48.307167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.036266, 41.441463, 48.265545> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347317, -0.092096, 0.933214,
		0.789158, -0.508868, -0.343922,
		0.506557, 0.855904, -0.104060,
		37.188232, 41.698235, 48.234325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508038, 40.977592, 48.587391>,  <36.833645, 41.099102, 48.307167>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508038, 40.977592, 48.587391> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.507359, 41.377514, 48.579556>,  <37.506950, 41.617466, 48.574856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.507359, 41.377514, 48.579556>,  <37.508038, 40.977592, 48.587391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507359, 41.377514, 48.579556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467382, 0.018113, 0.883870,
		0.884054, -0.007651, -0.467323,
		-0.001702, 0.999807, -0.019589,
		37.506847, 41.677456, 48.573677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.112061, 41.199474, 48.856621>,  <37.508038, 40.977592, 48.587391>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.112061, 41.199474, 48.856621> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.896954, 41.533775, 48.901031>,  <37.767887, 41.734356, 48.927677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.896954, 41.533775, 48.901031>,  <38.112061, 41.199474, 48.856621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896954, 41.533775, 48.901031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566975, 0.261036, 0.781281,
		0.623972, 0.483100, -0.614226,
		-0.537772, 0.835748, 0.111027,
		37.735622, 41.784500, 48.934338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642822, 41.609379, 49.010311>,  <38.112061, 41.199474, 48.856621>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642822, 41.609379, 49.010311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.320503, 41.820526, 49.117680>,  <38.127113, 41.947212, 49.182102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.320503, 41.820526, 49.117680>,  <38.642822, 41.609379, 49.010311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320503, 41.820526, 49.117680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519432, 0.412329, 0.748448,
		0.284400, 0.742525, -0.606443,
		-0.805796, 0.527865, 0.268425,
		38.078766, 41.978886, 49.198208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965721, 42.205372, 49.333076>,  <38.642822, 41.609379, 49.010311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965721, 42.205372, 49.333076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.600021, 42.242538, 49.490818>,  <38.380600, 42.264839, 49.585461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.600021, 42.242538, 49.490818>,  <38.965721, 42.205372, 49.333076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600021, 42.242538, 49.490818> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403656, 0.125419, 0.906274,
		0.034747, 0.987744, -0.152170,
		-0.914251, 0.092914, 0.394350,
		38.325745, 42.270412, 49.609123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941933, 42.930389, 49.720318>,  <38.965721, 42.205372, 49.333076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941933, 42.930389, 49.720318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.663754, 42.680408, 49.862186>,  <38.496845, 42.530418, 49.947308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.663754, 42.680408, 49.862186>,  <38.941933, 42.930389, 49.720318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.663754, 42.680408, 49.862186> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437098, 0.023850, 0.899098,
		-0.570352, 0.780299, 0.256578,
		-0.695446, -0.624952, 0.354670,
		38.455120, 42.492924, 49.968586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623833, 43.175179, 50.364326>,  <38.941933, 42.930389, 49.720318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623833, 43.175179, 50.364326> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.536549, 42.785370, 50.385059>,  <38.484177, 42.551483, 50.397499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.536549, 42.785370, 50.385059>,  <38.623833, 43.175179, 50.364326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536549, 42.785370, 50.385059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351694, -0.028986, 0.935666,
		-0.910327, 0.222402, 0.349060,
		-0.218212, -0.974524, 0.051831,
		38.471085, 42.493011, 50.400608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335373, 43.107811, 51.038288>,  <38.623833, 43.175179, 50.364326>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335373, 43.107811, 51.038288> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.458752, 42.748413, 50.913342>,  <38.532780, 42.532776, 50.838371>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.458752, 42.748413, 50.913342>,  <38.335373, 43.107811, 51.038288>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.458752, 42.748413, 50.913342> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361495, -0.193028, 0.912174,
		-0.879877, -0.394274, 0.265262,
		0.308443, -0.898492, -0.312369,
		38.551285, 42.478867, 50.819630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.824100, 37.889374, 35.701366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196564, 37.754208, 35.756138>,  <38.420044, 37.673107, 35.789001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196564, 37.754208, 35.756138>,  <37.824100, 37.889374, 35.701366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196564, 37.754208, 35.756138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061841, 0.223747, 0.972683,
		-0.359322, -0.914194, 0.187448,
		0.931162, -0.337914, 0.136932,
		38.475914, 37.652832, 35.797218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872162, 37.292130, 36.213253>,  <37.824100, 37.889374, 35.701366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872162, 37.292130, 36.213253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237160, 37.455132, 36.198875>,  <38.456158, 37.552933, 36.190247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237160, 37.455132, 36.198875>,  <37.872162, 37.292130, 36.213253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237160, 37.455132, 36.198875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041734, -0.005314, 0.999115,
		0.406953, -0.913188, -0.021856,
		0.912495, 0.407504, -0.035949,
		38.510910, 37.577381, 36.188091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340233, 36.970142, 36.636662>,  <37.872162, 37.292130, 36.213253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340233, 36.970142, 36.636662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428356, 37.358212, 36.596207>,  <38.481228, 37.591053, 36.571934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.428356, 37.358212, 36.596207>,  <38.340233, 36.970142, 36.636662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428356, 37.358212, 36.596207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218162, 0.150067, 0.964306,
		0.950721, -0.190378, 0.244715,
		0.220306, 0.970173, -0.101139,
		38.494450, 37.649265, 36.565865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.404972, 37.062965, 37.216972>,  <38.340233, 36.970142, 36.636662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.404972, 37.062965, 37.216972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433468, 37.440266, 37.087234>,  <38.450565, 37.666645, 37.009392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433468, 37.440266, 37.087234>,  <38.404972, 37.062965, 37.216972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433468, 37.440266, 37.087234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312767, 0.329897, 0.890699,
		0.947155, 0.037994, 0.318520,
		0.071238, 0.943252, -0.324347,
		38.454838, 37.723240, 36.989929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586300, 37.431652, 37.798016>,  <38.404972, 37.062965, 37.216972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586300, 37.431652, 37.798016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459167, 37.737740, 37.574078>,  <38.382889, 37.921391, 37.439716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.459167, 37.737740, 37.574078>,  <38.586300, 37.431652, 37.798016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459167, 37.737740, 37.574078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329510, 0.464508, 0.821983,
		0.889048, 0.445725, 0.104512,
		-0.317831, 0.765220, -0.559841,
		38.363819, 37.967304, 37.406124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819752, 37.998856, 38.157055>,  <38.586300, 37.431652, 37.798016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819752, 37.998856, 38.157055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499390, 38.103214, 37.941467>,  <38.307171, 38.165829, 37.812115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499390, 38.103214, 37.941467>,  <38.819752, 37.998856, 38.157055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499390, 38.103214, 37.941467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343428, 0.537197, 0.770375,
		0.490516, 0.802094, -0.340646,
		-0.800907, 0.260893, -0.538965,
		38.259117, 38.181484, 37.779778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818722, 38.701157, 38.173634>,  <38.819752, 37.998856, 38.157055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818722, 38.701157, 38.173634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456516, 38.541798, 38.115215>,  <38.239193, 38.446182, 38.080166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456516, 38.541798, 38.115215>,  <38.818722, 38.701157, 38.173634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456516, 38.541798, 38.115215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370848, 0.575784, 0.728659,
		-0.206207, 0.713969, -0.669124,
		-0.905511, -0.398398, -0.146043,
		38.184864, 38.422279, 38.071404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383415, 39.295044, 38.302105>,  <38.818722, 38.701157, 38.173634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383415, 39.295044, 38.302105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102680, 39.015301, 38.247963>,  <37.934238, 38.847454, 38.215477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102680, 39.015301, 38.247963>,  <38.383415, 39.295044, 38.302105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102680, 39.015301, 38.247963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641570, 0.538041, 0.546717,
		-0.309524, 0.470547, -0.826305,
		-0.701842, -0.699355, -0.135352,
		37.892128, 38.805492, 38.207355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781025, 39.597996, 38.142162>,  <38.383415, 39.295044, 38.302105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781025, 39.597996, 38.142162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671337, 39.244801, 38.294556>,  <37.605526, 39.032883, 38.385990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.671337, 39.244801, 38.294556>,  <37.781025, 39.597996, 38.142162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671337, 39.244801, 38.294556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699313, 0.455035, 0.551276,
		-0.660126, -0.115254, -0.742260,
		-0.274217, -0.882984, 0.380979,
		37.589073, 38.979904, 38.408848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067627, 39.665337, 38.185371>,  <37.781025, 39.597996, 38.142162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067627, 39.665337, 38.185371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198956, 39.386280, 38.440090>,  <37.277752, 39.218845, 38.592922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198956, 39.386280, 38.440090>,  <37.067627, 39.665337, 38.185371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198956, 39.386280, 38.440090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570931, 0.390504, 0.722180,
		-0.752491, -0.600673, -0.270092,
		0.328322, -0.697638, 0.636794,
		37.297451, 39.176991, 38.631126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458752, 39.433449, 38.470753>,  <37.067627, 39.665337, 38.185371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458752, 39.433449, 38.470753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746552, 39.316551, 38.722759>,  <36.919231, 39.246414, 38.873962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746552, 39.316551, 38.722759>,  <36.458752, 39.433449, 38.470753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746552, 39.316551, 38.722759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580573, 0.244726, 0.776559,
		-0.381124, -0.924502, 0.006412,
		0.719500, -0.292242, 0.630012,
		36.962402, 39.228878, 38.911762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209583, 39.149982, 39.137840>,  <36.458752, 39.433449, 38.470753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209583, 39.149982, 39.137840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571850, 39.267681, 39.259945>,  <36.789211, 39.338299, 39.333210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.571850, 39.267681, 39.259945>,  <36.209583, 39.149982, 39.137840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571850, 39.267681, 39.259945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416894, 0.486856, 0.767575,
		0.077234, -0.822431, 0.563598,
		0.905668, 0.294243, 0.305264,
		36.843552, 39.355953, 39.351524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787521, 38.516167, 39.429916>,  <36.209583, 39.149982, 39.137840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787521, 38.516167, 39.429916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676586, 38.210037, 39.662251>,  <35.610023, 38.026360, 39.801651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676586, 38.210037, 39.662251>,  <35.787521, 38.516167, 39.429916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676586, 38.210037, 39.662251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209011, -0.542008, -0.813967,
		0.937762, -0.347145, -0.009640,
		-0.277340, -0.765322, 0.580831,
		35.593384, 37.980442, 39.836498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084213, 37.967178, 39.096138>,  <35.787521, 38.516167, 39.429916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084213, 37.967178, 39.096138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779411, 37.826637, 39.313725>,  <35.596531, 37.742313, 39.444275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779411, 37.826637, 39.313725>,  <36.084213, 37.967178, 39.096138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779411, 37.826637, 39.313725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191703, -0.679962, -0.707744,
		0.618543, -0.643585, 0.450780,
		-0.762007, -0.351354, 0.543963,
		35.550808, 37.721230, 39.476913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928436, 37.378487, 38.736431>,  <36.084213, 37.967178, 39.096138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928436, 37.378487, 38.736431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597198, 37.397198, 38.959881>,  <35.398457, 37.408424, 39.093952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597198, 37.397198, 38.959881>,  <35.928436, 37.378487, 38.736431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597198, 37.397198, 38.959881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455270, -0.637551, -0.621497,
		0.327081, -0.768987, 0.549252,
		-0.828099, 0.046778, 0.558627,
		35.348770, 37.411232, 39.127468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587605, 36.812160, 38.571583>,  <35.928436, 37.378487, 38.736431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587605, 36.812160, 38.571583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297894, 37.003040, 38.770664>,  <35.124069, 37.117569, 38.890114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297894, 37.003040, 38.770664>,  <35.587605, 36.812160, 38.571583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297894, 37.003040, 38.770664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677907, -0.624698, -0.387549,
		0.125978, -0.618090, 0.775948,
		-0.724274, 0.477197, 0.497706,
		35.080612, 37.146198, 38.919975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123394, 36.264229, 38.891140>,  <35.587605, 36.812160, 38.571583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123394, 36.264229, 38.891140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925919, 36.607540, 38.835091>,  <34.807434, 36.813526, 38.801460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925919, 36.607540, 38.835091>,  <35.123394, 36.264229, 38.891140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925919, 36.607540, 38.835091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763088, -0.504821, -0.403549,
		-0.417091, -0.092305, 0.904165,
		-0.493691, 0.858275, -0.140120,
		34.777813, 36.865021, 38.793053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550259, 36.211636, 39.201279>,  <35.123394, 36.264229, 38.891140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550259, 36.211636, 39.201279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478180, 36.503071, 38.936951>,  <34.434933, 36.677933, 38.778355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478180, 36.503071, 38.936951>,  <34.550259, 36.211636, 39.201279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478180, 36.503071, 38.936951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782750, -0.513064, -0.352231,
		-0.595676, 0.453788, 0.662756,
		-0.180198, 0.728589, -0.660824,
		34.424122, 36.721649, 38.738705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920460, 36.314461, 39.272327>,  <34.550259, 36.211636, 39.201279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920460, 36.314461, 39.272327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982971, 36.486378, 38.916607>,  <34.020477, 36.589527, 38.703175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982971, 36.486378, 38.916607>,  <33.920460, 36.314461, 39.272327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982971, 36.486378, 38.916607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853654, -0.394128, -0.340496,
		-0.496841, 0.812368, 0.305299,
		0.156281, 0.429793, -0.889300,
		34.029854, 36.615314, 38.649818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316658, 36.649185, 39.024494>,  <33.920460, 36.314461, 39.272327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316658, 36.649185, 39.024494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515179, 36.550552, 38.691536>,  <33.634289, 36.491371, 38.491760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.515179, 36.550552, 38.691536>,  <33.316658, 36.649185, 39.024494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515179, 36.550552, 38.691536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841938, -0.370547, -0.392218,
		-0.211727, 0.895484, -0.391510,
		0.496298, -0.246584, -0.832397,
		33.664066, 36.476578, 38.441818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822845, 36.661438, 38.522896>,  <33.316658, 36.649185, 39.024494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822845, 36.661438, 38.522896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106346, 36.494179, 38.295628>,  <33.276447, 36.393826, 38.159267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106346, 36.494179, 38.295628>,  <32.822845, 36.661438, 38.522896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106346, 36.494179, 38.295628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703506, -0.478773, -0.525220,
		-0.052407, 0.771965, -0.633501,
		0.708755, -0.418146, -0.568173,
		33.318974, 36.368736, 38.125175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488995, 36.687901, 37.800858>,  <32.822845, 36.661438, 38.522896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488995, 36.687901, 37.800858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757759, 36.392841, 37.827404>,  <32.919018, 36.215805, 37.843330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757759, 36.392841, 37.827404>,  <32.488995, 36.687901, 37.800858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757759, 36.392841, 37.827404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600853, -0.595302, -0.533470,
		0.433021, 0.318571, -0.843211,
		0.671914, -0.737650, 0.066364,
		32.959332, 36.171547, 37.847313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548485, 36.415054, 37.199978>,  <32.488995, 36.687901, 37.800858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548485, 36.415054, 37.199978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704952, 36.118080, 37.417519>,  <32.798832, 35.939896, 37.548042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704952, 36.118080, 37.417519>,  <32.548485, 36.415054, 37.199978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704952, 36.118080, 37.417519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556658, -0.661458, -0.502599,
		0.732884, -0.106142, -0.672023,
		0.391168, -0.742434, 0.543856,
		32.822304, 35.895351, 37.580677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.789909, 35.810417, 36.758121>,  <32.548485, 36.415054, 37.199978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.789909, 35.810417, 36.758121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704243, 35.618774, 37.098614>,  <32.652843, 35.503788, 37.302910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.704243, 35.618774, 37.098614>,  <32.789909, 35.810417, 36.758121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704243, 35.618774, 37.098614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605729, -0.618520, -0.500525,
		0.766307, -0.622809, -0.157744,
		-0.214163, -0.479106, 0.851230,
		32.639996, 35.475044, 37.353981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627773, 35.180347, 36.580162>,  <32.789909, 35.810417, 36.758121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627773, 35.180347, 36.580162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471672, 35.196415, 36.948093>,  <32.378014, 35.206055, 37.168854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.471672, 35.196415, 36.948093>,  <32.627773, 35.180347, 36.580162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471672, 35.196415, 36.948093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787539, -0.532101, -0.310887,
		0.476956, -0.845728, 0.239287,
		-0.390250, 0.040169, 0.919832,
		32.354595, 35.208466, 37.224045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414925, 34.432148, 36.751266>,  <32.627773, 35.180347, 36.580162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414925, 34.432148, 36.751266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.214130, 34.694176, 36.977150>,  <32.093655, 34.851391, 37.112679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.214130, 34.694176, 36.977150>,  <32.414925, 34.432148, 36.751266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214130, 34.694176, 36.977150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862660, -0.425933, -0.272762,
		0.061852, -0.624076, 0.778911,
		-0.501988, 0.655065, 0.564711,
		32.063534, 34.890694, 37.146564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858477, 34.128128, 37.225540>,  <32.414925, 34.432148, 36.751266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858477, 34.128128, 37.225540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771225, 34.505367, 37.125156>,  <31.718874, 34.731712, 37.064926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771225, 34.505367, 37.125156>,  <31.858477, 34.128128, 37.225540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771225, 34.505367, 37.125156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909151, -0.289853, -0.299049,
		-0.354774, 0.162926, 0.920647,
		-0.218129, 0.943102, -0.250957,
		31.705786, 34.788300, 37.049870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199993, 33.905296, 37.930229>,  <31.858477, 34.128128, 37.225540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199993, 33.905296, 37.930229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306934, 33.552986, 37.773888>,  <32.371101, 33.341602, 37.680084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306934, 33.552986, 37.773888>,  <32.199993, 33.905296, 37.930229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306934, 33.552986, 37.773888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115206, -0.431923, 0.894522,
		-0.956686, -0.194126, -0.216947,
		0.267355, -0.880771, -0.390850,
		32.387142, 33.288754, 37.656631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979528, 33.409363, 38.391579>,  <32.199993, 33.905296, 37.930229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979528, 33.409363, 38.391579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297516, 33.231510, 38.226498>,  <32.488308, 33.124798, 38.127449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297516, 33.231510, 38.226498>,  <31.979528, 33.409363, 38.391579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297516, 33.231510, 38.226498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283942, -0.328476, 0.900822,
		-0.536099, -0.833310, -0.134878,
		0.794968, -0.444632, -0.412707,
		32.536007, 33.098122, 38.102684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992687, 32.636528, 38.572445>,  <31.979528, 33.409363, 38.391579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992687, 32.636528, 38.572445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382164, 32.696003, 38.503380>,  <32.615849, 32.731689, 38.461941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382164, 32.696003, 38.503380>,  <31.992687, 32.636528, 38.572445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382164, 32.696003, 38.503380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217800, -0.384595, 0.897023,
		0.066973, -0.911031, -0.406862,
		0.973693, 0.148691, -0.172665,
		32.674271, 32.740612, 38.451580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373108, 32.199780, 38.950905>,  <31.992687, 32.636528, 38.572445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373108, 32.199780, 38.950905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685173, 32.443035, 38.892227>,  <32.872410, 32.588989, 38.857021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.685173, 32.443035, 38.892227>,  <32.373108, 32.199780, 38.950905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.685173, 32.443035, 38.892227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354732, -0.236902, 0.904457,
		0.515281, -0.757660, -0.400547,
		0.780161, 0.608136, -0.146696,
		32.919220, 32.625477, 38.848217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004452, 31.777462, 39.032520>,  <32.373108, 32.199780, 38.950905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004452, 31.777462, 39.032520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071136, 32.168972, 39.080196>,  <33.111149, 32.403877, 39.108803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.071136, 32.168972, 39.080196>,  <33.004452, 31.777462, 39.032520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071136, 32.168972, 39.080196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199804, -0.151906, 0.967989,
		0.965549, -0.137563, -0.220888,
		0.166714, 0.978775, 0.119187,
		33.121151, 32.462605, 39.115952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651897, 31.800768, 39.486805>,  <33.004452, 31.777462, 39.032520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651897, 31.800768, 39.486805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544437, 32.186050, 39.483681>,  <33.479961, 32.417221, 39.481808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.544437, 32.186050, 39.483681>,  <33.651897, 31.800768, 39.486805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544437, 32.186050, 39.483681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465717, 0.136982, 0.874267,
		0.843169, 0.231236, -0.485382,
		-0.268651, 0.963206, -0.007808,
		33.463840, 32.475014, 39.481339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283924, 32.147251, 39.740170>,  <33.651897, 31.800768, 39.486805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283924, 32.147251, 39.740170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966763, 32.383999, 39.798122>,  <33.776466, 32.526047, 39.832893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966763, 32.383999, 39.798122>,  <34.283924, 32.147251, 39.740170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966763, 32.383999, 39.798122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363838, 0.269129, 0.891735,
		0.488797, 0.759777, -0.428739,
		-0.792906, 0.591869, 0.144886,
		33.728889, 32.561558, 39.841587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514694, 32.812588, 39.986694>,  <34.283924, 32.147251, 39.740170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514694, 32.812588, 39.986694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135365, 32.779530, 40.109234>,  <33.907764, 32.759693, 40.182758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135365, 32.779530, 40.109234>,  <34.514694, 32.812588, 39.986694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135365, 32.779530, 40.109234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269728, 0.298498, 0.915503,
		-0.167106, 0.950825, -0.260781,
		-0.948326, -0.082646, 0.306344,
		33.850868, 32.754734, 40.201138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364468, 33.382515, 40.337990>,  <34.514694, 32.812588, 39.986694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364468, 33.382515, 40.337990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067177, 33.149448, 40.469513>,  <33.888802, 33.009609, 40.548428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067177, 33.149448, 40.469513>,  <34.364468, 33.382515, 40.337990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067177, 33.149448, 40.469513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141460, 0.343488, 0.928442,
		-0.653916, 0.736554, -0.172865,
		-0.743224, -0.582670, 0.328805,
		33.844208, 32.974648, 40.568153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189091, 33.729504, 40.875645>,  <34.364468, 33.382515, 40.337990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189091, 33.729504, 40.875645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987583, 33.390633, 40.943188>,  <33.866680, 33.187309, 40.983711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.987583, 33.390633, 40.943188>,  <34.189091, 33.729504, 40.875645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.987583, 33.390633, 40.943188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199528, 0.076071, 0.976935,
		-0.840480, 0.525840, 0.130713,
		-0.503768, -0.847175, 0.168856,
		33.836452, 33.136478, 40.993843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670258, 33.845184, 41.445347>,  <34.189091, 33.729504, 40.875645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670258, 33.845184, 41.445347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767490, 33.457493, 41.429829>,  <33.825829, 33.224876, 41.420517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.767490, 33.457493, 41.429829>,  <33.670258, 33.845184, 41.445347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767490, 33.457493, 41.429829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181346, 0.006119, 0.983400,
		-0.952903, -0.246082, 0.177254,
		0.243082, -0.969230, -0.038795,
		33.840416, 33.166725, 41.418190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359867, 33.528355, 41.975178>,  <33.670258, 33.845184, 41.445347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359867, 33.528355, 41.975178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630947, 33.240044, 41.916939>,  <33.793594, 33.067059, 41.881996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630947, 33.240044, 41.916939>,  <33.359867, 33.528355, 41.975178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630947, 33.240044, 41.916939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112224, -0.094303, 0.989198,
		-0.726721, -0.686723, 0.016979,
		0.677703, -0.720777, -0.145598,
		33.834259, 33.023811, 41.873260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239029, 33.025837, 42.428440>,  <33.359867, 33.528355, 41.975178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239029, 33.025837, 42.428440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624889, 32.988903, 42.329704>,  <33.856403, 32.966743, 42.270462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624889, 32.988903, 42.329704>,  <33.239029, 33.025837, 42.428440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624889, 32.988903, 42.329704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230726, -0.156772, 0.960306,
		-0.127360, -0.983310, -0.129928,
		0.964648, -0.092326, -0.246842,
		33.914284, 32.961205, 42.255653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485703, 32.442436, 42.832123>,  <33.239029, 33.025837, 42.428440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485703, 32.442436, 42.832123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796139, 32.680370, 42.748352>,  <33.982399, 32.823132, 42.698090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796139, 32.680370, 42.748352>,  <33.485703, 32.442436, 42.832123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796139, 32.680370, 42.748352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230054, 0.042163, 0.972264,
		0.587165, -0.802743, -0.104122,
		0.776088, 0.594833, -0.209431,
		34.028965, 32.858822, 42.685524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015450, 32.180714, 43.190998>,  <33.485703, 32.442436, 42.832123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015450, 32.180714, 43.190998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151340, 32.542885, 43.089180>,  <34.232876, 32.760185, 43.028088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151340, 32.542885, 43.089180>,  <34.015450, 32.180714, 43.190998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151340, 32.542885, 43.089180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342244, 0.133081, 0.930139,
		0.876045, -0.403111, -0.264665,
		0.339727, 0.905423, -0.254547,
		34.253258, 32.814510, 43.012817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635887, 32.234177, 43.474739>,  <34.015450, 32.180714, 43.190998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635887, 32.234177, 43.474739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567783, 32.619698, 43.392677>,  <34.526920, 32.851009, 43.343441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567783, 32.619698, 43.392677>,  <34.635887, 32.234177, 43.474739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567783, 32.619698, 43.392677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294041, 0.248404, 0.922949,
		0.940505, 0.096820, -0.325693,
		-0.170263, 0.963805, -0.205157,
		34.516705, 32.908840, 43.331131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.245052, 32.632256, 43.706947>,  <34.635887, 32.234177, 43.474739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.245052, 32.632256, 43.706947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951874, 32.904190, 43.697117>,  <34.775967, 33.067352, 43.691219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951874, 32.904190, 43.697117>,  <35.245052, 32.632256, 43.706947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951874, 32.904190, 43.697117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264098, 0.317651, 0.910687,
		0.626928, 0.660995, -0.412366,
		-0.732948, 0.679841, -0.024577,
		34.731991, 33.108143, 43.689743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572407, 33.325302, 43.874409>,  <35.245052, 32.632256, 43.706947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572407, 33.325302, 43.874409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184631, 33.396873, 43.941540>,  <34.951965, 33.439816, 43.981819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184631, 33.396873, 43.941540>,  <35.572407, 33.325302, 43.874409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184631, 33.396873, 43.941540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243694, 0.623705, 0.742702,
		0.028218, 0.760905, -0.648250,
		-0.969442, 0.178932, 0.167828,
		34.893799, 33.450554, 43.991890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630302, 34.054810, 44.047840>,  <35.572407, 33.325302, 43.874409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630302, 34.054810, 44.047840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305061, 33.875572, 44.196472>,  <35.109917, 33.768028, 44.285652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.305061, 33.875572, 44.196472>,  <35.630302, 34.054810, 44.047840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305061, 33.875572, 44.196472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037148, 0.597089, 0.801314,
		-0.580932, 0.665355, -0.468850,
		-0.813104, -0.448092, 0.371585,
		35.061131, 33.741146, 44.307949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069679, 34.587345, 44.092766>,  <35.630302, 34.054810, 44.047840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069679, 34.587345, 44.092766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993168, 34.282288, 44.339920>,  <34.947262, 34.099251, 44.488213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993168, 34.282288, 44.339920>,  <35.069679, 34.587345, 44.092766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993168, 34.282288, 44.339920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006338, 0.628535, 0.777756,
		-0.981516, 0.152681, -0.115389,
		-0.191275, -0.762648, 0.617885,
		34.935787, 34.053493, 44.525284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559574, 34.904526, 44.605225>,  <35.069679, 34.587345, 44.092766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559574, 34.904526, 44.605225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726803, 34.600254, 44.803852>,  <34.827141, 34.417690, 44.923031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726803, 34.600254, 44.803852>,  <34.559574, 34.904526, 44.605225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726803, 34.600254, 44.803852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002098, 0.545826, 0.837896,
		-0.908411, -0.351343, 0.226599,
		0.418072, -0.760678, 0.496572,
		34.852226, 34.372051, 44.952824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297684, 34.927280, 45.283775>,  <34.559574, 34.904526, 44.605225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297684, 34.927280, 45.283775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594826, 34.665134, 45.338409>,  <34.773113, 34.507847, 45.371189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.594826, 34.665134, 45.338409>,  <34.297684, 34.927280, 45.283775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594826, 34.665134, 45.338409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291564, 0.500384, 0.815234,
		-0.602621, -0.565781, 0.562796,
		0.742858, -0.655368, 0.136581,
		34.817684, 34.468525, 45.379383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246620, 34.674183, 46.076416>,  <34.297684, 34.927280, 45.283775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246620, 34.674183, 46.076416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615509, 34.605793, 45.937698>,  <34.836842, 34.564758, 45.854469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615509, 34.605793, 45.937698>,  <34.246620, 34.674183, 46.076416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615509, 34.605793, 45.937698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379700, 0.569799, 0.728805,
		0.072992, -0.803801, 0.590403,
		0.922226, -0.170979, -0.346794,
		34.892178, 34.554501, 45.833660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571255, 34.316193, 46.607948>,  <34.246620, 34.674183, 46.076416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571255, 34.316193, 46.607948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865360, 34.471333, 46.385612>,  <35.041824, 34.564415, 46.252209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865360, 34.471333, 46.385612>,  <34.571255, 34.316193, 46.607948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865360, 34.471333, 46.385612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317922, 0.526924, 0.788211,
		0.598593, -0.756257, 0.264124,
		0.735264, 0.387847, -0.555844,
		35.085941, 34.587685, 46.218861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122608, 34.232964, 46.985363>,  <34.571255, 34.316193, 46.607948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122608, 34.232964, 46.985363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208927, 34.527378, 46.728714>,  <35.260719, 34.704029, 46.574726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.208927, 34.527378, 46.728714>,  <35.122608, 34.232964, 46.985363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208927, 34.527378, 46.728714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489005, 0.487297, 0.723475,
		0.845165, -0.469882, -0.254767,
		0.215801, 0.736038, -0.641621,
		35.273666, 34.748188, 46.536228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843018, 34.338261, 47.101406>,  <35.122608, 34.232964, 46.985363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843018, 34.338261, 47.101406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672222, 34.661541, 46.939178>,  <35.569744, 34.855511, 46.841843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672222, 34.661541, 46.939178>,  <35.843018, 34.338261, 47.101406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672222, 34.661541, 46.939178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560526, 0.588518, 0.582630,
		0.709569, 0.021444, -0.704310,
		-0.426993, 0.808200, -0.405573,
		35.544125, 34.903999, 46.817505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442276, 34.765675, 46.964630>,  <35.843018, 34.338261, 47.101406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442276, 34.765675, 46.964630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106583, 34.979641, 47.003727>,  <35.905167, 35.108021, 47.027184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.106583, 34.979641, 47.003727>,  <36.442276, 34.765675, 46.964630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106583, 34.979641, 47.003727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453605, 0.589548, 0.668338,
		0.299880, 0.605228, -0.737408,
		-0.839234, 0.534914, 0.097741,
		35.854813, 35.140114, 47.033051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975105, 34.867222, 46.392529>,  <36.442276, 34.765675, 46.964630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975105, 34.867222, 46.392529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367512, 34.845402, 46.318092>,  <37.602955, 34.832310, 46.273430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.367512, 34.845402, 46.318092>,  <36.975105, 34.867222, 46.392529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367512, 34.845402, 46.318092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178873, -0.625168, -0.759717,
		-0.074894, 0.778582, -0.623058,
		0.981017, -0.054550, -0.186089,
		37.661816, 34.829037, 46.262264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031631, 35.073425, 45.731781>,  <36.975105, 34.867222, 46.392529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031631, 35.073425, 45.731781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366840, 34.866245, 45.800430>,  <37.567966, 34.741940, 45.841618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.366840, 34.866245, 45.800430>,  <37.031631, 35.073425, 45.731781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366840, 34.866245, 45.800430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132944, -0.498873, -0.856418,
		0.529195, 0.694880, -0.486923,
		0.838021, -0.517945, 0.171621,
		37.618248, 34.710861, 45.851917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401402, 35.127773, 45.134827>,  <37.031631, 35.073425, 45.731781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401402, 35.127773, 45.134827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615822, 34.837273, 45.306969>,  <37.744476, 34.662971, 45.410255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615822, 34.837273, 45.306969>,  <37.401402, 35.127773, 45.134827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615822, 34.837273, 45.306969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090611, -0.457345, -0.884661,
		0.839308, 0.513220, -0.179355,
		0.536052, -0.726251, 0.430357,
		37.776638, 34.619396, 45.436077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989510, 35.119980, 44.693192>,  <37.401402, 35.127773, 45.134827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989510, 35.119980, 44.693192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923546, 34.762737, 44.860603>,  <37.883968, 34.548393, 44.961052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923546, 34.762737, 44.860603>,  <37.989510, 35.119980, 44.693192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923546, 34.762737, 44.860603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034418, -0.429296, -0.902508,
		0.985708, -0.134425, 0.101532,
		-0.164907, -0.893104, 0.418534,
		37.874073, 34.494804, 44.986164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481373, 34.666309, 44.297092>,  <37.989510, 35.119980, 44.693192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481373, 34.666309, 44.297092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229794, 34.399487, 44.456821>,  <38.078846, 34.239391, 44.552658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229794, 34.399487, 44.456821>,  <38.481373, 34.666309, 44.297092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229794, 34.399487, 44.456821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148116, -0.607031, -0.780753,
		0.763209, -0.431906, 0.480592,
		-0.628946, -0.667062, 0.399319,
		38.041111, 34.199368, 44.576618>
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
