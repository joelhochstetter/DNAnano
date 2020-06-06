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
	<24.495010, 34.896076, 34.950867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.138470, 34.938484, 35.127167>,  <23.924545, 34.963928, 35.232944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.138470, 34.938484, 35.127167>,  <24.495010, 34.896076, 34.950867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.138470, 34.938484, 35.127167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244577, -0.931087, -0.270664,
		0.381678, -0.349052, 0.855853,
		-0.891349, 0.106016, 0.440746,
		23.871065, 34.970287, 35.259392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.634369, 34.634846, 35.629681>,  <24.495010, 34.896076, 34.950867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.634369, 34.634846, 35.629681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.942535, 34.887562, 35.595524>,  <25.127436, 35.039192, 35.575027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.942535, 34.887562, 35.595524>,  <24.634369, 34.634846, 35.629681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.942535, 34.887562, 35.595524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220495, -0.138370, 0.965523,
		0.598195, -0.762686, -0.245910,
		0.770418, 0.631793, -0.085396,
		25.173660, 35.077099, 35.569904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.049591, 34.279385, 36.028423>,  <24.634369, 34.634846, 35.629681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.049591, 34.279385, 36.028423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.227638, 34.637081, 36.009617>,  <25.334467, 34.851700, 35.998333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.227638, 34.637081, 36.009617>,  <25.049591, 34.279385, 36.028423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.227638, 34.637081, 36.009617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346640, -0.123658, 0.929811,
		0.825659, -0.430171, -0.365021,
		0.445116, 0.894238, -0.047015,
		25.361174, 34.905354, 35.995514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.682470, 34.201782, 36.168896>,  <25.049591, 34.279385, 36.028423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.682470, 34.201782, 36.168896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604445, 34.581406, 36.267879>,  <25.557629, 34.809181, 36.327271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604445, 34.581406, 36.267879>,  <25.682470, 34.201782, 36.168896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.604445, 34.581406, 36.267879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440934, -0.140518, 0.886472,
		0.876086, 0.282033, -0.391062,
		-0.195063, 0.949058, 0.247464,
		25.545925, 34.866123, 36.342117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.314266, 34.541664, 36.444496>,  <25.682470, 34.201782, 36.168896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.314266, 34.541664, 36.444496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.997570, 34.723682, 36.607510>,  <25.807552, 34.832893, 36.705318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.997570, 34.723682, 36.607510>,  <26.314266, 34.541664, 36.444496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.997570, 34.723682, 36.607510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453608, -0.008868, 0.891157,
		0.409129, 0.890425, -0.199390,
		-0.791741, 0.455043, 0.407532,
		25.760048, 34.860195, 36.729771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.726274, 35.100506, 36.429813>,  <26.314266, 34.541664, 36.444496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.726274, 35.100506, 36.429813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.079676, 34.933815, 36.344238>,  <27.291716, 34.833801, 36.292892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.079676, 34.933815, 36.344238>,  <26.726274, 35.100506, 36.429813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.079676, 34.933815, 36.344238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333979, -0.240147, -0.911475,
		0.328456, 0.876739, -0.351347,
		0.883501, -0.416722, -0.213935,
		27.344727, 34.808800, 36.280056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.845690, 35.226185, 35.756683>,  <26.726274, 35.100506, 36.429813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.845690, 35.226185, 35.756683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.093086, 34.915600, 35.804962>,  <27.241524, 34.729248, 35.833931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.093086, 34.915600, 35.804962>,  <26.845690, 35.226185, 35.756683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.093086, 34.915600, 35.804962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267295, -0.352331, -0.896892,
		0.738932, 0.522459, -0.425460,
		0.618493, -0.776466, 0.120698,
		27.278633, 34.682659, 35.841171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.954353, 35.108242, 35.103565>,  <26.845690, 35.226185, 35.756683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.954353, 35.108242, 35.103565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.051733, 34.778149, 35.307415>,  <27.110161, 34.580093, 35.429726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.051733, 34.778149, 35.307415>,  <26.954353, 35.108242, 35.103565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.051733, 34.778149, 35.307415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349601, -0.564778, -0.747532,
		0.904716, 0.003819, -0.425997,
		0.243449, -0.825234, 0.509629,
		27.124767, 34.530579, 35.460304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.451723, 34.741413, 34.669819>,  <26.954353, 35.108242, 35.103565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.451723, 34.741413, 34.669819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265892, 34.490997, 34.920338>,  <27.154394, 34.340748, 35.070648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265892, 34.490997, 34.920338>,  <27.451723, 34.741413, 34.669819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.265892, 34.490997, 34.920338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105480, -0.663095, -0.741067,
		0.879229, -0.410343, 0.242023,
		-0.464576, -0.626038, 0.626295,
		27.126518, 34.303185, 35.108227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.694626, 34.107132, 34.581512>,  <27.451723, 34.741413, 34.669819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.694626, 34.107132, 34.581512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340322, 34.024002, 34.747520>,  <27.127741, 33.974125, 34.847126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340322, 34.024002, 34.747520>,  <27.694626, 34.107132, 34.581512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340322, 34.024002, 34.747520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163651, -0.696898, -0.698249,
		0.434340, -0.686398, 0.583272,
		-0.885758, -0.207824, 0.415020,
		27.074594, 33.961655, 34.872028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682207, 33.380764, 34.580227>,  <27.694626, 34.107132, 34.581512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682207, 33.380764, 34.580227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.293131, 33.444832, 34.647419>,  <27.059685, 33.483273, 34.687733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.293131, 33.444832, 34.647419>,  <27.682207, 33.380764, 34.580227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.293131, 33.444832, 34.647419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229074, -0.778958, -0.583738,
		0.037354, -0.606277, 0.794376,
		-0.972692, 0.160166, 0.167979,
		27.001324, 33.492882, 34.697811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.372026, 32.646450, 34.740086>,  <27.682207, 33.380764, 34.580227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.372026, 32.646450, 34.740086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.092419, 32.908916, 34.626369>,  <26.924654, 33.066395, 34.558140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.092419, 32.908916, 34.626369>,  <27.372026, 32.646450, 34.740086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.092419, 32.908916, 34.626369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414056, -0.695516, -0.587209,
		-0.583036, -0.292757, 0.757867,
		-0.699019, 0.656164, -0.284293,
		26.882713, 33.105766, 34.541080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.677555, 32.307152, 34.863548>,  <27.372026, 32.646450, 34.740086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.677555, 32.307152, 34.863548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.597412, 32.581387, 34.583599>,  <26.549326, 32.745926, 34.415630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.597412, 32.581387, 34.583599>,  <26.677555, 32.307152, 34.863548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.597412, 32.581387, 34.583599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499307, -0.686081, -0.529136,
		-0.842941, 0.243437, 0.479780,
		-0.200357, 0.685588, -0.699876,
		26.537306, 32.787064, 34.373638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.008051, 32.138313, 34.680309>,  <26.677555, 32.307152, 34.863548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.008051, 32.138313, 34.680309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.116503, 32.408264, 34.405785>,  <26.181574, 32.570236, 34.241070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.116503, 32.408264, 34.405785>,  <26.008051, 32.138313, 34.680309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.116503, 32.408264, 34.405785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432931, -0.551327, -0.713168,
		-0.859686, 0.490487, 0.142696,
		0.271128, 0.674878, -0.686315,
		26.197842, 32.610729, 34.199890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.434277, 32.447998, 34.442722>,  <26.008051, 32.138313, 34.680309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.434277, 32.447998, 34.442722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.697491, 32.451611, 34.141548>,  <25.855419, 32.453777, 33.960846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.697491, 32.451611, 34.141548>,  <25.434277, 32.447998, 34.442722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.697491, 32.451611, 34.141548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645619, -0.507824, -0.570343,
		-0.387508, 0.861414, -0.328335,
		0.658038, 0.009034, -0.752931,
		25.894901, 32.454319, 33.915668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.038013, 32.258533, 33.993446>,  <25.434277, 32.447998, 34.442722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.038013, 32.258533, 33.993446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.360989, 32.267235, 33.757626>,  <25.554773, 32.272457, 33.616135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.360989, 32.267235, 33.757626>,  <25.038013, 32.258533, 33.993446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.360989, 32.267235, 33.757626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516068, -0.458168, -0.723710,
		-0.285857, 0.888599, -0.358716,
		0.807440, 0.021755, -0.589548,
		25.603220, 32.273762, 33.580761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.763063, 32.245449, 33.347847>,  <25.038013, 32.258533, 33.993446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.763063, 32.245449, 33.347847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141903, 32.121296, 33.315193>,  <25.369207, 32.046803, 33.295601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.141903, 32.121296, 33.315193>,  <24.763063, 32.245449, 33.347847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.141903, 32.121296, 33.315193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301215, -0.771843, -0.559935,
		0.110786, 0.554904, -0.824504,
		0.947099, -0.310386, -0.081636,
		25.426033, 32.028179, 33.290703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.864439, 31.997107, 32.723213>,  <24.763063, 32.245449, 33.347847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.864439, 31.997107, 32.723213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.199377, 31.834526, 32.869442>,  <25.400341, 31.736977, 32.957180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.199377, 31.834526, 32.869442>,  <24.864439, 31.997107, 32.723213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.199377, 31.834526, 32.869442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151176, -0.814817, -0.559660,
		0.525354, 0.413363, -0.743730,
		0.837347, -0.406454, 0.365577,
		25.450581, 31.712589, 32.979115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.295273, 31.645838, 32.180996>,  <24.864439, 31.997107, 32.723213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.295273, 31.645838, 32.180996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.417290, 31.467138, 32.517414>,  <25.490499, 31.359919, 32.719265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.417290, 31.467138, 32.517414>,  <25.295273, 31.645838, 32.180996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.417290, 31.467138, 32.517414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093810, -0.892942, -0.440289,
		0.947707, 0.055408, -0.314294,
		0.305042, -0.446749, 0.841050,
		25.508802, 31.333113, 32.769730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.678276, 31.075346, 31.903175>,  <25.295273, 31.645838, 32.180996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.678276, 31.075346, 31.903175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.635815, 30.990461, 32.291752>,  <25.610338, 30.939529, 32.524899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.635815, 30.990461, 32.291752>,  <25.678276, 31.075346, 31.903175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.635815, 30.990461, 32.291752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002495, -0.977014, -0.213158,
		0.994347, -0.020204, 0.104244,
		-0.106154, -0.212213, 0.971441,
		25.603968, 30.926798, 32.583183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.265806, 30.523180, 32.118603>,  <25.678276, 31.075346, 31.903175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.265806, 30.523180, 32.118603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960617, 30.508074, 32.376732>,  <25.777504, 30.499010, 32.531609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.960617, 30.508074, 32.376732>,  <26.265806, 30.523180, 32.118603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.960617, 30.508074, 32.376732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167962, -0.952424, -0.254319,
		0.624227, -0.302429, 0.720332,
		-0.762974, -0.037765, 0.645325,
		25.731724, 30.496744, 32.570328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.230003, 29.843863, 32.443497>,  <26.265806, 30.523180, 32.118603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.230003, 29.843863, 32.443497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.857731, 29.982859, 32.489254>,  <25.634367, 30.066256, 32.516708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.857731, 29.982859, 32.489254>,  <26.230003, 29.843863, 32.443497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.857731, 29.982859, 32.489254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365586, -0.871905, -0.325774,
		-0.013462, -0.345013, 0.938501,
		-0.930680, 0.347488, 0.114394,
		25.578527, 30.087105, 32.523571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.913727, 29.313175, 32.722923>,  <26.230003, 29.843863, 32.443497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.913727, 29.313175, 32.722923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.606897, 29.536528, 32.596554>,  <25.422800, 29.670540, 32.520733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.606897, 29.536528, 32.596554>,  <25.913727, 29.313175, 32.722923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.606897, 29.536528, 32.596554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507245, -0.829357, -0.234243,
		-0.392811, -0.019430, 0.919414,
		-0.767074, 0.558382, -0.315924,
		25.376776, 29.704042, 32.501778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.349743, 28.999384, 32.929855>,  <25.913727, 29.313175, 32.722923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.349743, 28.999384, 32.929855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.236263, 29.225151, 32.619770>,  <25.168175, 29.360611, 32.433720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.236263, 29.225151, 32.619770>,  <25.349743, 28.999384, 32.929855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.236263, 29.225151, 32.619770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486620, -0.781335, -0.390790,
		-0.826267, 0.266366, 0.496319,
		-0.283698, 0.564416, -0.775210,
		25.151154, 29.394476, 32.387207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.621296, 28.735771, 32.807755>,  <25.349743, 28.999384, 32.929855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.621296, 28.735771, 32.807755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.763390, 28.891369, 32.467758>,  <24.848646, 28.984728, 32.263760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.763390, 28.891369, 32.467758>,  <24.621296, 28.735771, 32.807755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.763390, 28.891369, 32.467758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255242, -0.834384, -0.488523,
		-0.899256, 0.390494, -0.197113,
		0.355233, 0.388996, -0.849995,
		24.869959, 29.008068, 32.212761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.429741, 28.256460, 32.231190>,  <24.621296, 28.735771, 32.807755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.429741, 28.256460, 32.231190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.631451, 28.490770, 31.977394>,  <24.752476, 28.631357, 31.825117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.631451, 28.490770, 31.977394>,  <24.429741, 28.256460, 32.231190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.631451, 28.490770, 31.977394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019781, -0.742390, -0.669676,
		-0.863317, 0.325150, -0.385956,
		0.504275, 0.585777, -0.634486,
		24.782734, 28.666504, 31.787048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.999695, 28.405252, 31.679409>,  <24.429741, 28.256460, 32.231190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.999695, 28.405252, 31.679409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.386637, 28.385149, 31.580053>,  <24.618801, 28.373087, 31.520439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.386637, 28.385149, 31.580053>,  <23.999695, 28.405252, 31.679409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.386637, 28.385149, 31.580053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176868, -0.835852, -0.519681,
		-0.181497, 0.546649, -0.817456,
		0.967355, -0.050261, -0.248390,
		24.676844, 28.370071, 31.505537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.128759, 28.270653, 30.943163>,  <23.999695, 28.405252, 31.679409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.128759, 28.270653, 30.943163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.494242, 28.150852, 31.053028>,  <24.713531, 28.078972, 31.118946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.494242, 28.150852, 31.053028>,  <24.128759, 28.270653, 30.943163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.494242, 28.150852, 31.053028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086629, -0.803902, -0.588420,
		0.397033, 0.513849, -0.760476,
		0.913707, -0.299501, 0.274661,
		24.768354, 28.061003, 31.135427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.659897, 28.123573, 30.327644>,  <24.128759, 28.270653, 30.943163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.659897, 28.123573, 30.327644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.711678, 27.903055, 30.657326>,  <24.742746, 27.770744, 30.855135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.711678, 27.903055, 30.657326>,  <24.659897, 28.123573, 30.327644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.711678, 27.903055, 30.657326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036760, -0.827960, -0.559581,
		0.990904, 0.102737, -0.086916,
		0.129453, -0.551296, 0.824205,
		24.750513, 27.737667, 30.904587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.256405, 27.719784, 30.337193>,  <24.659897, 28.123573, 30.327644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.256405, 27.719784, 30.337193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.023973, 27.491667, 30.569439>,  <24.884516, 27.354795, 30.708786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.023973, 27.491667, 30.569439>,  <25.256405, 27.719784, 30.337193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.023973, 27.491667, 30.569439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296360, -0.812711, -0.501669,
		0.757971, -0.119438, 0.641260,
		-0.581077, -0.570294, 0.580615,
		24.849649, 27.320578, 30.743624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.613966, 27.136534, 30.437958>,  <25.256405, 27.719784, 30.337193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.613966, 27.136534, 30.437958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.277973, 26.991379, 30.599325>,  <25.076378, 26.904285, 30.696146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.277973, 26.991379, 30.599325>,  <25.613966, 27.136534, 30.437958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.277973, 26.991379, 30.599325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255349, -0.920357, -0.296209,
		0.478780, -0.145797, 0.865744,
		-0.839980, -0.362886, 0.403420,
		25.025980, 26.882513, 30.720350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.401205, 27.194889, 30.437878>,  <25.613966, 27.136534, 30.437958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.401205, 27.194889, 30.437878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761353, 27.030273, 30.381351>,  <26.977442, 26.931503, 30.347437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.761353, 27.030273, 30.381351>,  <26.401205, 27.194889, 30.437878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.761353, 27.030273, 30.381351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320953, 0.408833, 0.854309,
		-0.293810, -0.814549, 0.500186,
		0.900369, -0.411541, -0.141313,
		27.031464, 26.906811, 30.338957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.689360, 26.897816, 31.120131>,  <26.401205, 27.194889, 30.437878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.689360, 26.897816, 31.120131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978481, 26.982292, 30.856934>,  <27.151955, 27.032978, 30.699015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978481, 26.982292, 30.856934>,  <26.689360, 26.897816, 31.120131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.978481, 26.982292, 30.856934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486811, 0.520190, 0.701725,
		0.490481, -0.827526, 0.273183,
		0.722802, 0.211194, -0.657992,
		27.195322, 27.045650, 30.659536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.338614, 26.809446, 31.495485>,  <26.689360, 26.897816, 31.120131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.338614, 26.809446, 31.495485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385996, 27.059637, 31.187006>,  <27.414425, 27.209751, 31.001919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385996, 27.059637, 31.187006>,  <27.338614, 26.809446, 31.495485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385996, 27.059637, 31.187006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460655, 0.653415, 0.600704,
		0.879639, -0.426413, -0.210730,
		0.118454, 0.625477, -0.771199,
		27.421532, 27.247280, 30.955647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.046894, 27.009827, 31.367916>,  <27.338614, 26.809446, 31.495485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.046894, 27.009827, 31.367916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792582, 27.295362, 31.250467>,  <27.639994, 27.466684, 31.179998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792582, 27.295362, 31.250467>,  <28.046894, 27.009827, 31.367916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.792582, 27.295362, 31.250467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404524, 0.632128, 0.660889,
		0.657377, 0.301403, -0.690660,
		-0.635780, 0.713842, -0.293622,
		27.601847, 27.509516, 31.162380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559088, 27.670851, 31.146610>,  <28.046894, 27.009827, 31.367916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559088, 27.670851, 31.146610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190678, 27.748259, 31.281818>,  <27.969631, 27.794704, 31.362944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.190678, 27.748259, 31.281818>,  <28.559088, 27.670851, 31.146610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.190678, 27.748259, 31.281818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341221, 0.819373, 0.460647,
		-0.187821, 0.539609, -0.820698,
		-0.921027, 0.193521, 0.338021,
		27.914370, 27.806314, 31.383224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378332, 28.401114, 30.941307>,  <28.559088, 27.670851, 31.146610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.378332, 28.401114, 30.941307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.168941, 28.302475, 31.267536>,  <28.043306, 28.243292, 31.463274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.168941, 28.302475, 31.267536>,  <28.378332, 28.401114, 30.941307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.168941, 28.302475, 31.267536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382911, 0.787009, 0.483731,
		-0.761152, 0.565514, -0.317556,
		-0.523477, -0.246597, 0.815575,
		28.011898, 28.228497, 31.512209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.982063, 28.926270, 31.148979>,  <28.378332, 28.401114, 30.941307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.982063, 28.926270, 31.148979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.995754, 28.730801, 31.497698>,  <28.003969, 28.613520, 31.706928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.995754, 28.730801, 31.497698>,  <27.982063, 28.926270, 31.148979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.995754, 28.730801, 31.497698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259524, 0.846729, 0.464431,
		-0.965130, 0.210355, 0.155805,
		0.034229, -0.488672, 0.871796,
		28.006023, 28.584200, 31.759237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.724319, 29.391859, 31.673983>,  <27.982063, 28.926270, 31.148979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.724319, 29.391859, 31.673983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867779, 29.121258, 31.931265>,  <27.953856, 28.958897, 32.085636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867779, 29.121258, 31.931265>,  <27.724319, 29.391859, 31.673983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867779, 29.121258, 31.931265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316170, 0.736356, 0.598177,
		-0.878297, -0.011174, 0.477984,
		0.358651, -0.676502, 0.643207,
		27.975374, 28.918306, 32.124226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.356653, 29.425402, 32.233231>,  <27.724319, 29.391859, 31.673983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.356653, 29.425402, 32.233231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.700542, 29.260283, 32.353546>,  <27.906876, 29.161211, 32.425735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.700542, 29.260283, 32.353546>,  <27.356653, 29.425402, 32.233231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.700542, 29.260283, 32.353546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055095, 0.660416, 0.748875,
		-0.507779, -0.627254, 0.590519,
		0.859724, -0.412798, 0.300787,
		27.958460, 29.136444, 32.443783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274801, 29.461071, 32.874420>,  <27.356653, 29.425402, 32.233231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.274801, 29.461071, 32.874420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.666414, 29.431950, 32.798321>,  <27.901382, 29.414476, 32.752663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.666414, 29.431950, 32.798321>,  <27.274801, 29.461071, 32.874420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.666414, 29.431950, 32.798321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191575, 0.646504, 0.738466,
		0.069231, -0.759429, 0.646897,
		0.979033, -0.072805, -0.190246,
		27.960125, 29.410109, 32.741245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.531300, 29.397816, 33.506916>,  <27.274801, 29.461071, 32.874420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.531300, 29.397816, 33.506916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.848722, 29.509539, 33.290672>,  <28.039177, 29.576572, 33.160927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.848722, 29.509539, 33.290672>,  <27.531300, 29.397816, 33.506916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.848722, 29.509539, 33.290672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343508, 0.527699, 0.776876,
		0.502258, -0.802200, 0.322820,
		0.793561, 0.279301, -0.540603,
		28.086790, 29.593330, 33.128490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199272, 29.232298, 33.979187>,  <27.531300, 29.397816, 33.506916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199272, 29.232298, 33.979187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.281546, 29.505592, 33.698933>,  <28.330910, 29.669569, 33.530781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.281546, 29.505592, 33.698933>,  <28.199272, 29.232298, 33.979187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.281546, 29.505592, 33.698933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445623, 0.572017, 0.688634,
		0.871272, -0.453858, -0.186811,
		0.205683, 0.683235, -0.700632,
		28.343250, 29.710562, 33.488743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.836609, 29.420973, 34.245564>,  <28.199272, 29.232298, 33.979187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.836609, 29.420973, 34.245564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.727964, 29.712210, 33.993813>,  <28.662777, 29.886951, 33.842762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.727964, 29.712210, 33.993813>,  <28.836609, 29.420973, 34.245564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.727964, 29.712210, 33.993813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474082, 0.670332, 0.570878,
		0.837539, -0.143316, -0.527246,
		-0.271613, 0.728090, -0.629373,
		28.646481, 29.930637, 33.805000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.380127, 29.922670, 34.265247>,  <28.836609, 29.420973, 34.245564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.380127, 29.922670, 34.265247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073772, 30.135250, 34.120483>,  <28.889959, 30.262798, 34.033627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.073772, 30.135250, 34.120483>,  <29.380127, 29.922670, 34.265247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073772, 30.135250, 34.120483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365192, 0.822816, 0.435441,
		0.529200, 0.201332, -0.824265,
		-0.765886, 0.531450, -0.361909,
		28.844006, 30.294685, 34.011909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.709484, 30.558693, 33.981773>,  <29.380127, 29.922670, 34.265247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.709484, 30.558693, 33.981773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.324276, 30.662062, 34.012272>,  <29.093151, 30.724083, 34.030571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.324276, 30.662062, 34.012272>,  <29.709484, 30.558693, 33.981773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324276, 30.662062, 34.012272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268590, 0.943153, 0.195759,
		-0.021321, 0.208998, -0.977684,
		-0.963018, 0.258423, 0.076243,
		29.035370, 30.739588, 34.035145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.620604, 31.215576, 33.573521>,  <29.709484, 30.558693, 33.981773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.620604, 31.215576, 33.573521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331434, 31.182018, 33.847847>,  <29.157932, 31.161884, 34.012444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331434, 31.182018, 33.847847>,  <29.620604, 31.215576, 33.573521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331434, 31.182018, 33.847847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285424, 0.867686, 0.407006,
		-0.629219, 0.489982, -0.603325,
		-0.722923, -0.083893, 0.685817,
		29.114557, 31.156851, 34.053593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.270542, 31.858120, 33.654636>,  <29.620604, 31.215576, 33.573521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.270542, 31.858120, 33.654636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.176723, 31.680773, 34.000679>,  <29.120432, 31.574364, 34.208305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.176723, 31.680773, 34.000679>,  <29.270542, 31.858120, 33.654636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.176723, 31.680773, 34.000679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067771, 0.880310, 0.469532,
		-0.969740, 0.168756, -0.176425,
		-0.234546, -0.443368, 0.865109,
		29.106359, 31.547762, 34.260212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.048388, 32.406933, 33.968185>,  <29.270542, 31.858120, 33.654636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.048388, 32.406933, 33.968185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072628, 32.155972, 34.278717>,  <29.087172, 32.005394, 34.465038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.072628, 32.155972, 34.278717>,  <29.048388, 32.406933, 33.968185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072628, 32.155972, 34.278717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196726, 0.770015, 0.606940,
		-0.978584, 0.115944, 0.170089,
		0.060600, -0.627402, 0.776334,
		29.090809, 31.967751, 34.511616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.464632, 32.573933, 34.567940>,  <29.048388, 32.406933, 33.968185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.464632, 32.573933, 34.567940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.797434, 32.394356, 34.698303>,  <28.997116, 32.286610, 34.776520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.797434, 32.394356, 34.698303>,  <28.464632, 32.573933, 34.567940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.797434, 32.394356, 34.698303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113142, 0.712431, 0.692561,
		-0.543106, -0.539341, 0.643542,
		0.832006, -0.448946, 0.325904,
		29.047035, 32.259670, 34.796074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.393509, 32.774006, 35.229149>,  <28.464632, 32.573933, 34.567940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.393509, 32.774006, 35.229149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.754528, 32.601768, 35.229885>,  <28.971140, 32.498428, 35.230328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.754528, 32.601768, 35.229885>,  <28.393509, 32.774006, 35.229149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.754528, 32.601768, 35.229885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358065, 0.752889, 0.552221,
		-0.239167, -0.497745, 0.833696,
		0.902546, -0.430590, 0.001841,
		29.025291, 32.472591, 35.230438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670307, 32.791210, 35.910034>,  <28.393509, 32.774006, 35.229149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670307, 32.791210, 35.910034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989645, 32.738724, 35.674942>,  <29.181248, 32.707233, 35.533886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989645, 32.738724, 35.674942>,  <28.670307, 32.791210, 35.910034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989645, 32.738724, 35.674942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434241, 0.801630, 0.410883,
		0.417229, -0.583243, 0.696956,
		0.798345, -0.131215, -0.587731,
		29.229149, 32.699360, 35.498623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.274618, 32.990215, 36.346375>,  <28.670307, 32.791210, 35.910034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.274618, 32.990215, 36.346375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433474, 32.987579, 35.979279>,  <29.528786, 32.985996, 35.759022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.433474, 32.987579, 35.979279>,  <29.274618, 32.990215, 36.346375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433474, 32.987579, 35.979279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354208, 0.923597, 0.146645,
		0.846651, -0.383308, 0.369130,
		0.397137, -0.006592, -0.917736,
		29.552614, 32.985603, 35.703957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.868931, 33.262688, 36.500988>,  <29.274618, 32.990215, 36.346375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.868931, 33.262688, 36.500988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.797045, 33.329617, 36.113235>,  <29.753914, 33.369774, 35.880585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.797045, 33.329617, 36.113235>,  <29.868931, 33.262688, 36.500988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.797045, 33.329617, 36.113235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589061, 0.807525, 0.030178,
		0.787851, -0.565603, -0.243688,
		-0.179716, 0.167323, -0.969384,
		29.743130, 33.379814, 35.822422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532669, 33.447971, 36.281136>,  <29.868931, 33.262688, 36.500988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532669, 33.447971, 36.281136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.260523, 33.557980, 36.009411>,  <30.097235, 33.623985, 35.846375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.260523, 33.557980, 36.009411>,  <30.532669, 33.447971, 36.281136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.260523, 33.557980, 36.009411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511843, 0.841711, -0.171869,
		0.524520, -0.464637, -0.713437,
		-0.680364, 0.275019, -0.679315,
		30.056414, 33.640484, 35.805614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874739, 33.615974, 35.659767>,  <30.532669, 33.447971, 36.281136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874739, 33.615974, 35.659767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527590, 33.814373, 35.671013>,  <30.319302, 33.933411, 35.677761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527590, 33.814373, 35.671013>,  <30.874739, 33.615974, 35.659767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527590, 33.814373, 35.671013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490812, 0.864806, -0.105899,
		-0.076835, -0.078110, -0.993979,
		-0.867871, 0.495994, 0.028110,
		30.267229, 33.963173, 35.679447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848986, 34.110195, 35.073452>,  <30.874739, 33.615974, 35.659767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848986, 34.110195, 35.073452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592188, 34.232998, 35.354477>,  <30.438108, 34.306679, 35.523090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592188, 34.232998, 35.354477>,  <30.848986, 34.110195, 35.073452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592188, 34.232998, 35.354477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355468, 0.931081, -0.082047,
		-0.679328, 0.197064, -0.706880,
		-0.641994, 0.307010, 0.702559,
		30.399590, 34.325100, 35.565243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.469114, 33.700840, 35.257881>,  <30.848986, 34.110195, 35.073452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.469114, 33.700840, 35.257881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747572, 33.921326, 35.441856>,  <31.914646, 34.053616, 35.552242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.747572, 33.921326, 35.441856>,  <31.469114, 33.700840, 35.257881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.747572, 33.921326, 35.441856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314424, -0.810059, 0.494916,
		0.645385, -0.199915, -0.737233,
		0.696143, 0.551215, 0.459942,
		31.956415, 34.086689, 35.579838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160828, 33.344406, 35.210800>,  <31.469114, 33.700840, 35.257881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160828, 33.344406, 35.210800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094173, 33.570583, 35.533913>,  <32.054180, 33.706291, 35.727779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094173, 33.570583, 35.533913>,  <32.160828, 33.344406, 35.210800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094173, 33.570583, 35.533913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456076, -0.682129, 0.571572,
		0.874200, 0.463654, -0.144216,
		-0.166638, 0.565442, 0.807779,
		32.044182, 33.740215, 35.776245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786873, 33.650513, 35.604450>,  <32.160828, 33.344406, 35.210800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786873, 33.650513, 35.604450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469505, 33.510368, 35.803539>,  <32.279083, 33.426281, 35.922993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469505, 33.510368, 35.803539>,  <32.786873, 33.650513, 35.604450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469505, 33.510368, 35.803539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544925, -0.773190, 0.324399,
		0.271175, 0.528606, 0.804387,
		-0.793424, -0.350362, 0.497721,
		32.231480, 33.405258, 35.952854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908558, 33.565704, 36.357021>,  <32.786873, 33.650513, 35.604450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908558, 33.565704, 36.357021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636292, 33.298302, 36.237152>,  <32.472931, 33.137859, 36.165230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636292, 33.298302, 36.237152>,  <32.908558, 33.565704, 36.357021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636292, 33.298302, 36.237152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661839, -0.736510, 0.139726,
		-0.314117, -0.103227, 0.943756,
		-0.680662, -0.668504, -0.299669,
		32.432095, 33.097752, 36.147251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860718, 33.039719, 36.781078>,  <32.908558, 33.565704, 36.357021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860718, 33.039719, 36.781078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769485, 32.910103, 36.413822>,  <32.714745, 32.832333, 36.193470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.769485, 32.910103, 36.413822>,  <32.860718, 33.039719, 36.781078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769485, 32.910103, 36.413822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696537, -0.713194, 0.078673,
		-0.680304, -0.621573, 0.388373,
		-0.228085, -0.324038, -0.918138,
		32.701061, 32.812893, 36.138382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671097, 32.325954, 36.890854>,  <32.860718, 33.039719, 36.781078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671097, 32.325954, 36.890854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843021, 32.423336, 36.543064>,  <32.946175, 32.481766, 36.334389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843021, 32.423336, 36.543064>,  <32.671097, 32.325954, 36.890854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843021, 32.423336, 36.543064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667291, -0.734361, 0.124242,
		-0.608264, -0.633596, -0.478090,
		0.429810, 0.243453, -0.869479,
		32.971966, 32.496372, 36.282219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482800, 32.242542, 36.822803>,  <32.671097, 32.325954, 36.890854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482800, 32.242542, 36.822803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757408, 32.186920, 37.108280>,  <33.922173, 32.153545, 37.279568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757408, 32.186920, 37.108280>,  <33.482800, 32.242542, 36.822803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757408, 32.186920, 37.108280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325459, 0.818959, 0.472634,
		-0.650209, -0.556749, 0.516972,
		0.686517, -0.139058, 0.713693,
		33.963364, 32.145203, 37.322388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170586, 32.285473, 37.575550>,  <33.482800, 32.242542, 36.822803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170586, 32.285473, 37.575550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556969, 32.388813, 37.581024>,  <33.788799, 32.450817, 37.584309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556969, 32.388813, 37.581024>,  <33.170586, 32.285473, 37.575550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556969, 32.388813, 37.581024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203929, 0.727782, 0.654788,
		0.159207, -0.635285, 0.755689,
		0.965954, 0.258353, 0.013685,
		33.846756, 32.466320, 37.585129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258480, 32.638512, 38.143925>,  <33.170586, 32.285473, 37.575550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258480, 32.638512, 38.143925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626484, 32.765091, 38.051449>,  <33.847286, 32.841038, 37.995964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626484, 32.765091, 38.051449>,  <33.258480, 32.638512, 38.143925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626484, 32.765091, 38.051449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165605, 0.848572, 0.502495,
		0.355194, -0.424012, 0.833097,
		0.920007, 0.316448, -0.231190,
		33.902485, 32.860023, 37.982094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651295, 32.805004, 38.784588>,  <33.258480, 32.638512, 38.143925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651295, 32.805004, 38.784588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800968, 33.005859, 38.472733>,  <33.890774, 33.126373, 38.285618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.800968, 33.005859, 38.472733>,  <33.651295, 32.805004, 38.784588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800968, 33.005859, 38.472733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073190, 0.822102, 0.564616,
		0.924463, -0.268331, 0.270863,
		0.374181, 0.502142, -0.779642,
		33.913223, 33.156502, 38.238838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248806, 33.171017, 39.058689>,  <33.651295, 32.805004, 38.784588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248806, 33.171017, 39.058689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148743, 33.371197, 38.727154>,  <34.088703, 33.491306, 38.528233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.148743, 33.371197, 38.727154>,  <34.248806, 33.171017, 39.058689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148743, 33.371197, 38.727154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344330, 0.846073, 0.406936,
		0.904908, -0.183595, -0.383972,
		-0.250158, 0.500453, -0.828836,
		34.073696, 33.521332, 38.478504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621372, 33.636219, 39.026985>,  <34.248806, 33.171017, 39.058689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621372, 33.636219, 39.026985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359131, 33.796780, 38.771156>,  <34.201786, 33.893116, 38.617657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359131, 33.796780, 38.771156>,  <34.621372, 33.636219, 39.026985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359131, 33.796780, 38.771156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106087, 0.887567, 0.448298,
		0.747613, 0.226056, -0.624478,
		-0.655607, 0.401403, -0.639575,
		34.162449, 33.917202, 38.579285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853096, 34.339401, 38.962616>,  <34.621372, 33.636219, 39.026985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853096, 34.339401, 38.962616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477032, 34.354603, 38.827175>,  <34.251392, 34.363724, 38.745911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.477032, 34.354603, 38.827175>,  <34.853096, 34.339401, 38.962616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477032, 34.354603, 38.827175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134828, 0.871159, 0.472126,
		0.312920, 0.489528, -0.813907,
		-0.940161, 0.038000, -0.338605,
		34.194984, 34.366001, 38.725594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771770, 34.957092, 38.529331>,  <34.853096, 34.339401, 38.962616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771770, 34.957092, 38.529331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415466, 34.859035, 38.682407>,  <34.201683, 34.800201, 38.774254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415466, 34.859035, 38.682407>,  <34.771770, 34.957092, 38.529331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415466, 34.859035, 38.682407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082873, 0.915544, 0.393587,
		-0.446856, 0.318876, -0.835845,
		-0.890759, -0.245145, 0.382690,
		34.148239, 34.785492, 38.797215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378448, 35.601849, 38.534752>,  <34.771770, 34.957092, 38.529331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378448, 35.601849, 38.534752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182579, 35.368286, 38.793758>,  <34.065056, 35.228149, 38.949162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.182579, 35.368286, 38.793758>,  <34.378448, 35.601849, 38.534752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182579, 35.368286, 38.793758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199838, 0.798035, 0.568511,
		-0.848694, 0.148988, -0.507465,
		-0.489677, -0.583903, 0.647514,
		34.035675, 35.193115, 38.988014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908344, 36.022385, 38.908615>,  <34.378448, 35.601849, 38.534752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908344, 36.022385, 38.908615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943027, 35.716988, 39.164600>,  <33.963837, 35.533749, 39.318192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943027, 35.716988, 39.164600>,  <33.908344, 36.022385, 38.908615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943027, 35.716988, 39.164600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044549, 0.638769, 0.768108,
		-0.995237, -0.095113, 0.021375,
		0.086710, -0.763497, 0.639964,
		33.969040, 35.487938, 39.356590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489166, 36.186306, 39.341267>,  <33.908344, 36.022385, 38.908615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489166, 36.186306, 39.341267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723396, 35.920124, 39.526424>,  <33.863934, 35.760414, 39.637520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723396, 35.920124, 39.526424>,  <33.489166, 36.186306, 39.341267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723396, 35.920124, 39.526424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131431, 0.485536, 0.864280,
		-0.799893, -0.566938, 0.196855,
		0.585574, -0.665459, 0.462891,
		33.899067, 35.720486, 39.665291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122803, 35.999413, 39.928017>,  <33.489166, 36.186306, 39.341267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122803, 35.999413, 39.928017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479118, 35.851513, 40.033680>,  <33.692909, 35.762772, 40.097076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479118, 35.851513, 40.033680>,  <33.122803, 35.999413, 39.928017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479118, 35.851513, 40.033680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179720, 0.247245, 0.952140,
		-0.417367, -0.895630, 0.153792,
		0.890789, -0.369753, 0.264154,
		33.746357, 35.740585, 40.112926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113605, 35.507027, 40.593868>,  <33.122803, 35.999413, 39.928017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113605, 35.507027, 40.593868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493652, 35.631424, 40.584335>,  <33.721680, 35.706062, 40.578617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493652, 35.631424, 40.584335>,  <33.113605, 35.507027, 40.593868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493652, 35.631424, 40.584335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054724, 0.241435, 0.968873,
		0.307069, -0.919234, 0.246409,
		0.950112, 0.310995, -0.023833,
		33.778687, 35.724720, 40.577187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354771, 35.454704, 41.281998>,  <33.113605, 35.507027, 40.593868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354771, 35.454704, 41.281998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652901, 35.675026, 41.131741>,  <33.831779, 35.807217, 41.041588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652901, 35.675026, 41.131741>,  <33.354771, 35.454704, 41.281998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652901, 35.675026, 41.131741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122833, 0.440342, 0.889388,
		0.655289, -0.709024, 0.260541,
		0.745325, 0.550803, -0.375643,
		33.876499, 35.840267, 41.019047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009838, 35.315735, 41.649021>,  <33.354771, 35.454704, 41.281998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009838, 35.315735, 41.649021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018070, 35.686222, 41.498447>,  <34.023010, 35.908512, 41.408104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018070, 35.686222, 41.498447>,  <34.009838, 35.315735, 41.649021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018070, 35.686222, 41.498447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065596, 0.374455, 0.924922,
		0.997634, -0.043729, -0.053049,
		0.020581, 0.926214, -0.376437,
		34.024246, 35.964085, 41.385517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433327, 35.706825, 42.137493>,  <34.009838, 35.315735, 41.649021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433327, 35.706825, 42.137493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224014, 35.982864, 41.937515>,  <34.098427, 36.148487, 41.817528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224014, 35.982864, 41.937515>,  <34.433327, 35.706825, 42.137493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224014, 35.982864, 41.937515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047748, 0.562008, 0.825752,
		0.850822, 0.455970, -0.261136,
		-0.523279, 0.690100, -0.499941,
		34.067032, 36.189896, 41.787533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775436, 36.328629, 42.449753>,  <34.433327, 35.706825, 42.137493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775436, 36.328629, 42.449753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435844, 36.432354, 42.265579>,  <34.232090, 36.494587, 42.155075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435844, 36.432354, 42.265579>,  <34.775436, 36.328629, 42.449753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435844, 36.432354, 42.265579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214722, 0.626859, 0.748960,
		0.482840, 0.734714, -0.476508,
		-0.848976, 0.259311, -0.460432,
		34.181152, 36.510147, 42.127449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799835, 37.033546, 42.436050>,  <34.775436, 36.328629, 42.449753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799835, 37.033546, 42.436050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413834, 36.934490, 42.401558>,  <34.182232, 36.875057, 42.380863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413834, 36.934490, 42.401558>,  <34.799835, 37.033546, 42.436050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413834, 36.934490, 42.401558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230832, 0.646223, 0.727401,
		-0.124409, 0.721852, -0.680773,
		-0.965007, -0.247639, -0.086231,
		34.124332, 36.860199, 42.375690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337330, 37.696781, 42.227493>,  <34.799835, 37.033546, 42.436050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337330, 37.696781, 42.227493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139141, 37.416325, 42.432594>,  <34.020229, 37.248051, 42.555653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139141, 37.416325, 42.432594>,  <34.337330, 37.696781, 42.227493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139141, 37.416325, 42.432594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261723, 0.683370, 0.681547,
		-0.828259, 0.203486, -0.522092,
		-0.495467, -0.701141, 0.512751,
		33.990501, 37.205982, 42.586418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735397, 38.104252, 42.585732>,  <34.337330, 37.696781, 42.227493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735397, 38.104252, 42.585732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677979, 37.754742, 42.771599>,  <33.643528, 37.545036, 42.883118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677979, 37.754742, 42.771599>,  <33.735397, 38.104252, 42.585732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677979, 37.754742, 42.771599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267747, 0.486310, 0.831754,
		-0.952736, -0.005016, -0.303759,
		-0.143549, -0.873772, 0.464668,
		33.634914, 37.492611, 42.910999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092846, 38.154408, 42.918720>,  <33.735397, 38.104252, 42.585732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092846, 38.154408, 42.918720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280701, 37.863911, 43.119526>,  <33.393414, 37.689613, 43.240009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.280701, 37.863911, 43.119526>,  <33.092846, 38.154408, 42.918720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280701, 37.863911, 43.119526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189628, 0.472371, 0.860759,
		-0.862252, -0.499444, 0.084130,
		0.469641, -0.726238, 0.502011,
		33.421593, 37.646038, 43.270130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682621, 37.774967, 43.595577>,  <33.092846, 38.154408, 42.918720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682621, 37.774967, 43.595577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074638, 37.735043, 43.664352>,  <33.309849, 37.711086, 43.705616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074638, 37.735043, 43.664352>,  <32.682621, 37.774967, 43.595577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074638, 37.735043, 43.664352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111454, 0.440309, 0.890901,
		-0.164626, -0.892281, 0.420396,
		0.980039, -0.099811, 0.171935,
		33.368649, 37.705101, 43.715935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761395, 37.560276, 44.357822>,  <32.682621, 37.774967, 43.595577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761395, 37.560276, 44.357822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107563, 37.720116, 44.236916>,  <33.315266, 37.816021, 44.164371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107563, 37.720116, 44.236916>,  <32.761395, 37.560276, 44.357822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107563, 37.720116, 44.236916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024008, 0.569515, 0.821631,
		0.500469, -0.718314, 0.483277,
		0.865421, 0.399598, -0.302270,
		33.367188, 37.839996, 44.146233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015396, 37.578609, 44.922951>,  <32.761395, 37.560276, 44.357822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015396, 37.578609, 44.922951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276863, 37.808098, 44.725544>,  <33.433743, 37.945793, 44.607101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.276863, 37.808098, 44.725544>,  <33.015396, 37.578609, 44.922951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276863, 37.808098, 44.725544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278364, 0.424133, 0.861757,
		0.703728, -0.700680, 0.117538,
		0.653668, 0.573724, -0.493519,
		33.472965, 37.980213, 44.577488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696342, 37.578156, 45.293423>,  <33.015396, 37.578609, 44.922951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696342, 37.578156, 45.293423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689747, 37.913464, 45.075420>,  <33.685791, 38.114647, 44.944618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689747, 37.913464, 45.075420>,  <33.696342, 37.578156, 45.293423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689747, 37.913464, 45.075420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348415, 0.515733, 0.782705,
		0.937195, -0.176983, -0.300569,
		-0.016488, 0.838270, -0.545006,
		33.684799, 38.164944, 44.911919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242962, 37.835777, 45.494892>,  <33.696342, 37.578156, 45.293423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242962, 37.835777, 45.494892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067051, 38.156013, 45.332092>,  <33.961506, 38.348156, 45.234413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067051, 38.156013, 45.332092>,  <34.242962, 37.835777, 45.494892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067051, 38.156013, 45.332092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451006, 0.588757, 0.670789,
		0.776653, 0.111438, -0.619993,
		-0.439777, 0.800591, -0.407001,
		33.935120, 38.396191, 45.209991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854862, 38.358345, 45.496002>,  <34.242962, 37.835777, 45.494892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854862, 38.358345, 45.496002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507183, 38.553242, 45.462322>,  <34.298576, 38.670181, 45.442112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.507183, 38.553242, 45.462322>,  <34.854862, 38.358345, 45.496002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507183, 38.553242, 45.462322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342707, 0.716388, 0.607734,
		0.356434, 0.499385, -0.789664,
		-0.869199, 0.487240, -0.084202,
		34.246422, 38.699413, 45.437061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141991, 39.094452, 45.501888>,  <34.854862, 38.358345, 45.496002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141991, 39.094452, 45.501888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756508, 39.076210, 45.607109>,  <34.525219, 39.065266, 45.670242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756508, 39.076210, 45.607109>,  <35.141991, 39.094452, 45.501888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756508, 39.076210, 45.607109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150865, 0.719886, 0.677499,
		-0.220263, 0.692593, -0.686876,
		-0.963703, -0.045602, 0.263052,
		34.467396, 39.062531, 45.686024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822865, 39.799000, 45.651161>,  <35.141991, 39.094452, 45.501888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822865, 39.799000, 45.651161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.612713, 39.522072, 45.849014>,  <34.486622, 39.355915, 45.967728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.612713, 39.522072, 45.849014>,  <34.822865, 39.799000, 45.651161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612713, 39.522072, 45.849014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000772, 0.581718, 0.813390,
		-0.850867, 0.426957, -0.306157,
		-0.525380, -0.692323, 0.494636,
		34.455097, 39.314373, 45.997406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519997, 40.209003, 46.148109>,  <34.822865, 39.799000, 45.651161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519997, 40.209003, 46.148109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464119, 39.846497, 46.307693>,  <34.430592, 39.628994, 46.403446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.464119, 39.846497, 46.307693>,  <34.519997, 40.209003, 46.148109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464119, 39.846497, 46.307693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050733, 0.395833, 0.916920,
		-0.988894, 0.148330, -0.009318,
		-0.139695, -0.906264, 0.398962,
		34.422211, 39.574619, 46.427383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951763, 40.230545, 46.573299>,  <34.519997, 40.209003, 46.148109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951763, 40.230545, 46.573299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122711, 39.895927, 46.710438>,  <34.225281, 39.695156, 46.792721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122711, 39.895927, 46.710438>,  <33.951763, 40.230545, 46.573299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122711, 39.895927, 46.710438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017825, 0.386949, 0.921929,
		-0.903900, -0.387894, 0.180283,
		0.427371, -0.836546, 0.342849,
		34.250923, 39.644962, 46.813293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588860, 40.086746, 47.222942>,  <33.951763, 40.230545, 46.573299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588860, 40.086746, 47.222942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941566, 39.898163, 47.217121>,  <34.153191, 39.785011, 47.213627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941566, 39.898163, 47.217121>,  <33.588860, 40.086746, 47.222942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941566, 39.898163, 47.217121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295260, 0.527632, 0.796509,
		-0.367840, -0.706634, 0.604452,
		0.881768, -0.471458, -0.014556,
		34.206097, 39.756725, 47.212753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533577, 39.790924, 47.858292>,  <33.588860, 40.086746, 47.222942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533577, 39.790924, 47.858292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917816, 39.817303, 47.750282>,  <34.148357, 39.833130, 47.685478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917816, 39.817303, 47.750282>,  <33.533577, 39.790924, 47.858292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917816, 39.817303, 47.750282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231850, 0.345713, 0.909246,
		0.153312, -0.936020, 0.316799,
		0.960594, 0.065948, -0.270018,
		34.205994, 39.837086, 47.669277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840317, 39.660122, 48.459232>,  <33.533577, 39.790924, 47.858292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840317, 39.660122, 48.459232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124577, 39.816231, 48.225082>,  <34.295132, 39.909897, 48.084591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124577, 39.816231, 48.225082>,  <33.840317, 39.660122, 48.459232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124577, 39.816231, 48.225082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405455, 0.452791, 0.794095,
		0.574968, -0.801666, 0.163536,
		0.710646, 0.390272, -0.585380,
		34.337772, 39.933311, 48.049469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378311, 39.356060, 48.716347>,  <33.840317, 39.660122, 48.459232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378311, 39.356060, 48.716347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513397, 39.690289, 48.543018>,  <34.594448, 39.890827, 48.439022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513397, 39.690289, 48.543018>,  <34.378311, 39.356060, 48.716347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513397, 39.690289, 48.543018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470554, 0.248833, 0.846559,
		0.815186, -0.489796, -0.309147,
		0.337715, 0.835573, -0.433320,
		34.614712, 39.940960, 48.413021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096664, 39.498489, 48.877514>,  <34.378311, 39.356060, 48.716347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096664, 39.498489, 48.877514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946274, 39.862392, 48.807106>,  <34.856041, 40.080734, 48.764862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946274, 39.862392, 48.807106>,  <35.096664, 39.498489, 48.877514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946274, 39.862392, 48.807106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354042, 0.316582, 0.880017,
		0.856328, 0.268546, -0.441120,
		-0.375975, 0.909758, -0.176022,
		34.833481, 40.135319, 48.754299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452122, 39.830708, 49.375042>,  <35.096664, 39.498489, 48.877514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452122, 39.830708, 49.375042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179489, 40.090134, 49.239510>,  <35.015907, 40.245789, 49.158192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179489, 40.090134, 49.239510>,  <35.452122, 39.830708, 49.375042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179489, 40.090134, 49.239510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028895, 0.486544, 0.873178,
		0.731169, 0.585354, -0.350361,
		-0.681585, 0.648564, -0.338831,
		34.975014, 40.284702, 49.137859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629200, 40.486492, 49.656517>,  <35.452122, 39.830708, 49.375042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629200, 40.486492, 49.656517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250263, 40.548046, 49.544186>,  <35.022900, 40.584980, 49.476788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250263, 40.548046, 49.544186>,  <35.629200, 40.486492, 49.656517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250263, 40.548046, 49.544186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186923, 0.446310, 0.875138,
		0.260007, 0.881548, -0.394043,
		-0.947342, 0.153886, -0.280825,
		34.966061, 40.594212, 49.459938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507179, 41.181767, 49.678242>,  <35.629200, 40.486492, 49.656517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507179, 41.181767, 49.678242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143913, 41.017380, 49.710075>,  <34.925953, 40.918747, 49.729176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143913, 41.017380, 49.710075>,  <35.507179, 41.181767, 49.678242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143913, 41.017380, 49.710075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102081, 0.401802, 0.910019,
		-0.405969, 0.818326, -0.406856,
		-0.908168, -0.410971, 0.079584,
		34.871464, 40.894089, 49.733952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010906, 41.781120, 49.998302>,  <35.507179, 41.181767, 49.678242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010906, 41.781120, 49.998302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818726, 41.434147, 50.050034>,  <34.703419, 41.225964, 50.081074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818726, 41.434147, 50.050034>,  <35.010906, 41.781120, 49.998302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818726, 41.434147, 50.050034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219316, 0.261614, 0.939925,
		-0.849156, 0.423225, -0.315935,
		-0.480453, -0.867432, 0.129331,
		34.674591, 41.173916, 50.088833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397049, 42.006699, 50.373882>,  <35.010906, 41.781120, 49.998302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397049, 42.006699, 50.373882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445164, 41.616753, 50.448887>,  <34.474033, 41.382786, 50.493889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445164, 41.616753, 50.448887>,  <34.397049, 42.006699, 50.373882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445164, 41.616753, 50.448887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246622, 0.153620, 0.956859,
		-0.961618, -0.161341, -0.221946,
		0.120285, -0.974870, 0.187514,
		34.481251, 41.324291, 50.505142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665329, 41.733303, 50.616428>,  <34.397049, 42.006699, 50.373882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665329, 41.733303, 50.616428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983326, 41.518799, 50.729851>,  <34.174126, 41.390095, 50.797905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983326, 41.518799, 50.729851>,  <33.665329, 41.733303, 50.616428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983326, 41.518799, 50.729851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347846, -0.020041, 0.937337,
		-0.496975, -0.843814, -0.202469,
		0.794996, -0.536261, 0.283558,
		34.221825, 41.357922, 50.814919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431793, 41.103577, 50.896057>,  <33.665329, 41.733303, 50.616428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431793, 41.103577, 50.896057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780785, 41.228134, 51.046692>,  <33.990181, 41.302868, 51.137074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780785, 41.228134, 51.046692>,  <33.431793, 41.103577, 50.896057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780785, 41.228134, 51.046692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378243, -0.057563, 0.923915,
		0.309378, -0.948536, 0.067560,
		0.872478, 0.311393, 0.376586,
		34.042526, 41.321552, 51.159668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781693, 40.580341, 51.286110>,  <33.431793, 41.103577, 50.896057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781693, 40.580341, 51.286110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918354, 40.926773, 51.432087>,  <34.000351, 41.134632, 51.519672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918354, 40.926773, 51.432087>,  <33.781693, 40.580341, 51.286110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918354, 40.926773, 51.432087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391864, -0.221669, 0.892919,
		0.854235, -0.448074, 0.263652,
		0.341650, 0.866079, 0.364942,
		34.020847, 41.186596, 51.541569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049068, 40.376789, 51.902023>,  <33.781693, 40.580341, 51.286110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049068, 40.376789, 51.902023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934589, 40.759995, 51.908939>,  <33.865902, 40.989918, 51.913090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934589, 40.759995, 51.908939>,  <34.049068, 40.376789, 51.902023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934589, 40.759995, 51.908939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599099, -0.192999, 0.777067,
		0.747776, 0.212042, 0.629181,
		-0.286202, 0.958014, 0.017286,
		33.848728, 41.047398, 51.914124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314667, 40.845768, 52.557827>,  <34.049068, 40.376789, 51.902023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314667, 40.845768, 52.557827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960228, 40.976368, 52.426239>,  <33.747562, 41.054729, 52.347286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960228, 40.976368, 52.426239>,  <34.314667, 40.845768, 52.557827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960228, 40.976368, 52.426239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404844, -0.199641, 0.892325,
		0.225672, 0.923871, 0.309086,
		-0.886100, 0.326505, -0.328970,
		33.694397, 41.074318, 52.327549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985268, 41.342766, 53.039333>,  <34.314667, 40.845768, 52.557827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985268, 41.342766, 53.039333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690971, 41.168888, 52.831593>,  <33.514393, 41.064560, 52.706947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690971, 41.168888, 52.831593>,  <33.985268, 41.342766, 53.039333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690971, 41.168888, 52.831593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431988, -0.289379, 0.854193,
		-0.521601, 0.852820, 0.025127,
		-0.735744, -0.434694, -0.519348,
		33.470249, 41.038479, 52.675789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602631, 41.330070, 53.515388>,  <33.985268, 41.342766, 53.039333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602631, 41.330070, 53.515388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774338, 41.044342, 53.736469>,  <34.877361, 40.872906, 53.869118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774338, 41.044342, 53.736469>,  <34.602631, 41.330070, 53.515388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774338, 41.044342, 53.736469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300037, -0.464412, -0.833246,
		0.851885, 0.523514, 0.014966,
		0.429266, -0.714321, 0.552700,
		34.903118, 40.830048, 53.902279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306568, 41.353642, 53.355549>,  <34.602631, 41.330070, 53.515388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306568, 41.353642, 53.355549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173386, 40.991184, 53.459896>,  <35.093475, 40.773712, 53.522503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.173386, 40.991184, 53.459896>,  <35.306568, 41.353642, 53.355549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173386, 40.991184, 53.459896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468714, -0.399096, -0.788054,
		0.818199, -0.140112, 0.557601,
		-0.332952, -0.906141, 0.260867,
		35.073502, 40.719341, 53.538155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804955, 40.853897, 53.055042>,  <35.306568, 41.353642, 53.355549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804955, 40.853897, 53.055042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479649, 40.635616, 53.135845>,  <35.284466, 40.504646, 53.184326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479649, 40.635616, 53.135845>,  <35.804955, 40.853897, 53.055042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479649, 40.635616, 53.135845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284663, -0.675885, -0.679814,
		0.507507, -0.495368, 0.705016,
		-0.813268, -0.545702, 0.202003,
		35.235668, 40.471905, 53.196445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848976, 40.132828, 53.386497>,  <35.804955, 40.853897, 53.055042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848976, 40.132828, 53.386497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543526, 40.177624, 53.132149>,  <35.360256, 40.204502, 52.979542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543526, 40.177624, 53.132149>,  <35.848976, 40.132828, 53.386497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543526, 40.177624, 53.132149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472081, -0.575018, -0.668202,
		-0.440465, -0.810440, 0.386235,
		-0.763630, 0.111986, -0.635868,
		35.314438, 40.211220, 52.941387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555382, 39.486492, 53.266827>,  <35.848976, 40.132828, 53.386497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555382, 39.486492, 53.266827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471210, 39.732395, 52.962776>,  <35.420708, 39.879936, 52.780346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471210, 39.732395, 52.962776>,  <35.555382, 39.486492, 53.266827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471210, 39.732395, 52.962776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458377, -0.624731, -0.632141,
		-0.863488, -0.481444, -0.150330,
		-0.210425, 0.614754, -0.760131,
		35.408081, 39.916821, 52.734737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241692, 39.130486, 52.846428>,  <35.555382, 39.486492, 53.266827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241692, 39.130486, 52.846428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341579, 39.415806, 52.584484>,  <35.401512, 39.586998, 52.427319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341579, 39.415806, 52.584484>,  <35.241692, 39.130486, 52.846428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341579, 39.415806, 52.584484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370346, -0.695228, -0.616037,
		-0.894697, -0.088688, -0.437782,
		0.249723, 0.713297, -0.654863,
		35.416496, 39.629795, 52.388023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977089, 38.958488, 52.213879>,  <35.241692, 39.130486, 52.846428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977089, 38.958488, 52.213879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259621, 39.218151, 52.100952>,  <35.429138, 39.373947, 52.033195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259621, 39.218151, 52.100952>,  <34.977089, 38.958488, 52.213879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259621, 39.218151, 52.100952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227555, -0.585865, -0.777805,
		-0.670315, 0.485142, -0.561530,
		0.706326, 0.649153, -0.282318,
		35.471519, 39.412895, 52.016258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913479, 38.816139, 51.581894>,  <34.977089, 38.958488, 52.213879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913479, 38.816139, 51.581894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255585, 39.018551, 51.626541>,  <35.460846, 39.139999, 51.653328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255585, 39.018551, 51.626541>,  <34.913479, 38.816139, 51.581894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255585, 39.018551, 51.626541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418373, -0.547205, -0.724936,
		-0.305765, 0.666707, -0.679714,
		0.855262, 0.506033, 0.111616,
		35.512165, 39.170361, 51.660027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036106, 39.151134, 50.921608>,  <34.913479, 38.816139, 51.581894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036106, 39.151134, 50.921608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393147, 39.103020, 51.095406>,  <35.607372, 39.074150, 51.199684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393147, 39.103020, 51.095406>,  <35.036106, 39.151134, 50.921608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393147, 39.103020, 51.095406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324587, -0.497394, -0.804514,
		0.312888, 0.859145, -0.404933,
		0.892605, -0.120287, 0.434496,
		35.660927, 39.066933, 51.225754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721939, 39.415195, 50.529934>,  <35.036106, 39.151134, 50.921608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721939, 39.415195, 50.529934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879566, 39.124195, 50.754593>,  <35.974144, 38.949596, 50.889389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879566, 39.124195, 50.754593>,  <35.721939, 39.415195, 50.529934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879566, 39.124195, 50.754593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448333, -0.381300, -0.808460,
		0.802313, 0.570396, 0.175904,
		0.394069, -0.727502, 0.561650,
		35.997787, 38.905945, 50.923088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347458, 39.274395, 50.130230>,  <35.721939, 39.415195, 50.529934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347458, 39.274395, 50.130230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295544, 38.972828, 50.387836>,  <36.264397, 38.791885, 50.542400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295544, 38.972828, 50.387836>,  <36.347458, 39.274395, 50.130230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295544, 38.972828, 50.387836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519758, -0.604852, -0.603329,
		0.844398, 0.256430, 0.470357,
		-0.129785, -0.753922, 0.644017,
		36.256607, 38.746651, 50.581043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048962, 38.869564, 50.142090>,  <36.347458, 39.274395, 50.130230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048962, 38.869564, 50.142090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735146, 38.649216, 50.255951>,  <36.546856, 38.517006, 50.324268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735146, 38.649216, 50.255951>,  <37.048962, 38.869564, 50.142090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735146, 38.649216, 50.255951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310354, -0.746280, -0.588852,
		0.536817, -0.373635, 0.756455,
		-0.784543, -0.550874, 0.284657,
		36.499783, 38.483952, 50.341347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385864, 38.270893, 50.066608>,  <37.048962, 38.869564, 50.142090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385864, 38.270893, 50.066608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009968, 38.139561, 50.104729>,  <36.784431, 38.060760, 50.127602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009968, 38.139561, 50.104729>,  <37.385864, 38.270893, 50.066608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009968, 38.139561, 50.104729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131464, -0.604355, -0.785794,
		0.315596, -0.725916, 0.611102,
		-0.939743, -0.328332, 0.095300,
		36.728046, 38.041061, 50.133320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385448, 37.489079, 50.106945>,  <37.385864, 38.270893, 50.066608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385448, 37.489079, 50.106945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017277, 37.602333, 49.999130>,  <36.796375, 37.670284, 49.934441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017277, 37.602333, 49.999130>,  <37.385448, 37.489079, 50.106945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017277, 37.602333, 49.999130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007901, -0.675881, -0.736968,
		-0.390835, -0.680455, 0.619862,
		-0.920427, 0.283135, -0.269534,
		36.741150, 37.687275, 49.918270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095959, 36.893341, 49.945274>,  <37.385448, 37.489079, 50.106945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095959, 36.893341, 49.945274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.871834, 37.160801, 49.749741>,  <36.737358, 37.321278, 49.632420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.871834, 37.160801, 49.749741>,  <37.095959, 36.893341, 49.945274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871834, 37.160801, 49.749741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125740, -0.514676, -0.848114,
		-0.818680, -0.536677, 0.204305,
		-0.560314, 0.668645, -0.488837,
		36.703739, 37.361393, 49.603088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602074, 36.484978, 49.600754>,  <37.095959, 36.893341, 49.945274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602074, 36.484978, 49.600754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603973, 36.835907, 49.408806>,  <36.605114, 37.046467, 49.293636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603973, 36.835907, 49.408806>,  <36.602074, 36.484978, 49.600754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603973, 36.835907, 49.408806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180666, -0.472730, -0.862488,
		-0.983533, -0.082603, -0.160747,
		0.004746, 0.877327, -0.479870,
		36.605396, 37.099106, 49.264847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139278, 36.344048, 49.065323>,  <36.602074, 36.484978, 49.600754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139278, 36.344048, 49.065323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388939, 36.648666, 48.995491>,  <36.538734, 36.831440, 48.953594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388939, 36.648666, 48.995491>,  <36.139278, 36.344048, 49.065323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388939, 36.648666, 48.995491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274530, -0.422960, -0.863561,
		-0.731485, 0.491064, -0.473059,
		0.624149, 0.761551, -0.174577,
		36.576183, 36.877132, 48.943119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006966, 36.553429, 48.356388>,  <36.139278, 36.344048, 49.065323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006966, 36.553429, 48.356388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357903, 36.728909, 48.434166>,  <36.568466, 36.834194, 48.480831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.357903, 36.728909, 48.434166>,  <36.006966, 36.553429, 48.356388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357903, 36.728909, 48.434166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334984, -0.269790, -0.902773,
		-0.343585, 0.857180, -0.383655,
		0.877346, 0.438698, 0.194446,
		36.621105, 36.860519, 48.492500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186481, 36.940147, 47.756931>,  <36.006966, 36.553429, 48.356388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186481, 36.940147, 47.756931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538887, 36.899414, 47.941734>,  <36.750328, 36.874973, 48.052616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538887, 36.899414, 47.941734>,  <36.186481, 36.940147, 47.756931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538887, 36.899414, 47.941734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406696, -0.335889, -0.849574,
		0.241694, 0.936381, -0.254509,
		0.881012, -0.101829, 0.462005,
		36.803192, 36.868866, 48.080338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584278, 37.253342, 47.350674>,  <36.186481, 36.940147, 47.756931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584278, 37.253342, 47.350674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832783, 37.011272, 47.549793>,  <36.981884, 36.866032, 47.669266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.832783, 37.011272, 47.549793>,  <36.584278, 37.253342, 47.350674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832783, 37.011272, 47.549793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347548, -0.356563, -0.867221,
		0.702316, 0.711777, -0.011190,
		0.621258, -0.605175, 0.497797,
		37.019161, 36.829720, 47.699131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301571, 37.223698, 46.854530>,  <36.584278, 37.253342, 47.350674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301571, 37.223698, 46.854530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280529, 36.914639, 47.107590>,  <37.267902, 36.729202, 47.259426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280529, 36.914639, 47.107590>,  <37.301571, 37.223698, 46.854530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280529, 36.914639, 47.107590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537987, -0.555659, -0.633887,
		0.841310, 0.307013, 0.444904,
		-0.052604, -0.772648, 0.632651,
		37.264748, 36.682842, 47.297386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892258, 36.802963, 46.785351>,  <37.301571, 37.223698, 46.854530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892258, 36.802963, 46.785351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652256, 36.540092, 46.967827>,  <37.508255, 36.382370, 47.077312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.652256, 36.540092, 46.967827>,  <37.892258, 36.802963, 46.785351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652256, 36.540092, 46.967827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281052, -0.707052, -0.648912,
		0.749005, -0.261134, 0.608934,
		-0.600001, -0.657181, 0.456194,
		37.472256, 36.342937, 47.104687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233265, 36.122089, 46.784668>,  <37.892258, 36.802963, 46.785351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233265, 36.122089, 46.784668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863800, 35.999920, 46.877251>,  <37.642120, 35.926617, 46.932800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863800, 35.999920, 46.877251>,  <38.233265, 36.122089, 46.784668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863800, 35.999920, 46.877251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190950, -0.890473, -0.413033,
		0.332254, -0.337305, 0.880814,
		-0.923658, -0.305424, 0.231455,
		37.586704, 35.908295, 46.946686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266335, 35.308807, 46.977352>,  <38.233265, 36.122089, 46.784668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266335, 35.308807, 46.977352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911301, 35.426952, 46.835957>,  <37.698280, 35.497837, 46.751122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.911301, 35.426952, 46.835957>,  <38.266335, 35.308807, 46.977352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911301, 35.426952, 46.835957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054687, -0.829519, -0.555795,
		-0.457382, -0.473985, 0.752422,
		-0.887587, 0.295358, -0.353486,
		37.645023, 35.515560, 46.729912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868565, 34.701031, 46.857620>,  <38.266335, 35.308807, 46.977352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868565, 34.701031, 46.857620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639294, 34.929241, 46.622345>,  <37.501732, 35.066170, 46.481182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639294, 34.929241, 46.622345>,  <37.868565, 34.701031, 46.857620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639294, 34.929241, 46.622345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202228, -0.794084, -0.573179,
		-0.794084, -0.209587, 0.570530,
		0.573179, -0.570530, 0.588185,
		37.467339, 35.100399, 46.445889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323593, 34.218185, 46.662476>,  <37.868565, 34.701031, 46.857620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323593, 34.218185, 46.662476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339184, 34.523491, 46.404510>,  <37.348537, 34.706673, 46.249729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.339184, 34.523491, 46.404510>,  <37.323593, 34.218185, 46.662476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339184, 34.523491, 46.404510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109071, -0.638299, -0.762022,
		-0.993270, 0.100042, 0.058371,
		0.038976, 0.763260, -0.644915,
		37.350876, 34.752468, 46.211037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768482, 34.060040, 46.220932>,  <37.323593, 34.218185, 46.662476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768482, 34.060040, 46.220932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984509, 34.321552, 46.008930>,  <37.114124, 34.478458, 45.881729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.984509, 34.321552, 46.008930>,  <36.768482, 34.060040, 46.220932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984509, 34.321552, 46.008930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115057, -0.566471, -0.816010,
		-0.833722, 0.501679, -0.230709,
		0.540065, 0.653781, -0.530001,
		37.146526, 34.517685, 45.849930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362614, 34.305618, 45.685104>,  <36.768482, 34.060040, 46.220932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362614, 34.305618, 45.685104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745842, 34.343674, 45.577000>,  <36.975780, 34.366508, 45.512138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.745842, 34.343674, 45.577000>,  <36.362614, 34.305618, 45.685104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745842, 34.343674, 45.577000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165138, -0.587472, -0.792216,
		-0.234141, 0.803633, -0.547131,
		0.958075, 0.095138, -0.270261,
		37.033264, 34.372215, 45.495922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336452, 34.314743, 45.054558>,  <36.362614, 34.305618, 45.685104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336452, 34.314743, 45.054558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732487, 34.259434, 45.044689>,  <36.970108, 34.226250, 45.038769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.732487, 34.259434, 45.044689>,  <36.336452, 34.314743, 45.054558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732487, 34.259434, 45.044689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087728, -0.471653, -0.877409,
		0.109684, 0.870876, -0.479108,
		0.990087, -0.138269, -0.024668,
		37.029514, 34.217953, 45.037289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515869, 34.569576, 44.421227>,  <36.336452, 34.314743, 45.054558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515869, 34.569576, 44.421227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784309, 34.307777, 44.560520>,  <36.945374, 34.150700, 44.644096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784309, 34.307777, 44.560520>,  <36.515869, 34.569576, 44.421227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784309, 34.307777, 44.560520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083404, -0.400079, -0.912678,
		0.736664, 0.641539, -0.213904,
		0.671096, -0.654496, 0.348231,
		36.985638, 34.111427, 44.664989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099545, 34.622768, 43.968651>,  <36.515869, 34.569576, 44.421227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099545, 34.622768, 43.968651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149872, 34.265217, 44.140770>,  <37.180069, 34.050686, 44.244041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149872, 34.265217, 44.140770>,  <37.099545, 34.622768, 43.968651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149872, 34.265217, 44.140770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065551, -0.440291, -0.895459,
		0.989886, 0.084457, -0.113990,
		0.125816, -0.893874, 0.430301,
		37.187618, 33.997055, 44.269859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531948, 34.232475, 43.617722>,  <37.099545, 34.622768, 43.968651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531948, 34.232475, 43.617722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340679, 33.936527, 43.807014>,  <37.225918, 33.758961, 43.920589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340679, 33.936527, 43.807014>,  <37.531948, 34.232475, 43.617722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340679, 33.936527, 43.807014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062998, -0.508543, -0.858729,
		0.876004, -0.440433, 0.196561,
		-0.478172, -0.739867, 0.473231,
		37.197227, 33.714565, 43.948982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881439, 33.454315, 43.461666>,  <37.531948, 34.232475, 43.617722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881439, 33.454315, 43.461666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500378, 33.419384, 43.578167>,  <37.271740, 33.398426, 43.648067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.500378, 33.419384, 43.578167>,  <37.881439, 33.454315, 43.461666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500378, 33.419384, 43.578167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179201, -0.612592, -0.769817,
		0.245642, -0.785561, 0.567939,
		-0.952652, -0.087325, 0.291251,
		37.214581, 33.393188, 43.665543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671192, 32.752857, 43.335606>,  <37.881439, 33.454315, 43.461666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671192, 32.752857, 43.335606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329178, 32.959763, 43.350342>,  <37.123970, 33.083908, 43.359184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329178, 32.959763, 43.350342>,  <37.671192, 32.752857, 43.335606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329178, 32.959763, 43.350342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420069, -0.649200, -0.634099,
		-0.304078, -0.557652, 0.772374,
		-0.855031, 0.517266, 0.036845,
		37.072670, 33.114941, 43.361397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112247, 32.235840, 43.419880>,  <37.671192, 32.752857, 43.335606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112247, 32.235840, 43.419880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924370, 32.565674, 43.293736>,  <36.811646, 32.763573, 43.218048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924370, 32.565674, 43.293736>,  <37.112247, 32.235840, 43.419880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924370, 32.565674, 43.293736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495247, -0.541817, -0.679092,
		-0.730837, -0.162779, 0.662858,
		-0.469690, 0.824583, -0.315364,
		36.783463, 32.813049, 43.199127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425583, 32.066868, 43.395164>,  <37.112247, 32.235840, 43.419880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425583, 32.066868, 43.395164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436619, 32.379192, 43.145500>,  <36.443241, 32.566586, 42.995701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436619, 32.379192, 43.145500>,  <36.425583, 32.066868, 43.395164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436619, 32.379192, 43.145500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395156, -0.565019, -0.724296,
		-0.918199, 0.266623, 0.292954,
		0.027590, 0.780810, -0.624159,
		36.444897, 32.613434, 42.958252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900150, 31.904142, 42.892975>,  <36.425583, 32.066868, 43.395164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900150, 31.904142, 42.892975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070930, 32.217678, 42.712616>,  <36.173401, 32.405800, 42.604401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070930, 32.217678, 42.712616>,  <35.900150, 31.904142, 42.892975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070930, 32.217678, 42.712616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348110, -0.317727, -0.881968,
		-0.834584, 0.533520, 0.137208,
		0.426953, 0.783840, -0.450894,
		36.199017, 32.452831, 42.577347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348526, 32.335239, 42.482330>,  <35.900150, 31.904142, 42.892975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348526, 32.335239, 42.482330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713230, 32.346149, 42.318401>,  <35.932053, 32.352695, 42.220043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.713230, 32.346149, 42.318401>,  <35.348526, 32.335239, 42.482330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713230, 32.346149, 42.318401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380067, -0.322286, -0.866995,
		-0.155726, 0.946250, -0.283481,
		0.911756, 0.027272, -0.409827,
		35.986755, 32.354332, 42.195454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229820, 32.628899, 41.923168>,  <35.348526, 32.335239, 42.482330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229820, 32.628899, 41.923168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597862, 32.482510, 41.867348>,  <35.818687, 32.394676, 41.833855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597862, 32.482510, 41.867348>,  <35.229820, 32.628899, 41.923168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597862, 32.482510, 41.867348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315155, -0.480201, -0.818587,
		0.232571, 0.797163, -0.557173,
		0.920102, -0.365975, -0.139549,
		35.873894, 32.372719, 41.825481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378807, 32.761192, 41.219719>,  <35.229820, 32.628899, 41.923168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378807, 32.761192, 41.219719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643108, 32.470520, 41.294922>,  <35.801689, 32.296116, 41.340046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643108, 32.470520, 41.294922>,  <35.378807, 32.761192, 41.219719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643108, 32.470520, 41.294922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222374, -0.428749, -0.875628,
		0.716909, 0.536762, -0.444890,
		0.660750, -0.726678, 0.188012,
		35.841335, 32.252518, 41.351326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861568, 32.723011, 40.615421>,  <35.378807, 32.761192, 41.219719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861568, 32.723011, 40.615421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912235, 32.375996, 40.807812>,  <35.942635, 32.167786, 40.923244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912235, 32.375996, 40.807812>,  <35.861568, 32.723011, 40.615421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912235, 32.375996, 40.807812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278385, -0.496481, -0.822197,
		0.952080, -0.029749, -0.304398,
		0.126668, -0.867538, 0.480971,
		35.950237, 32.115734, 40.952103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468578, 32.334515, 40.235958>,  <35.861568, 32.723011, 40.615421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468578, 32.334515, 40.235958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222015, 32.075695, 40.415455>,  <36.074078, 31.920403, 40.523151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222015, 32.075695, 40.415455>,  <36.468578, 32.334515, 40.235958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222015, 32.075695, 40.415455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049367, -0.600519, -0.798085,
		0.785879, -0.469792, 0.402107,
		-0.616407, -0.647049, 0.448743,
		36.037094, 31.881580, 40.550079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658672, 31.687302, 39.953018>,  <36.468578, 32.334515, 40.235958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658672, 31.687302, 39.953018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301186, 31.606316, 40.113159>,  <36.086693, 31.557724, 40.209244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.301186, 31.606316, 40.113159>,  <36.658672, 31.687302, 39.953018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301186, 31.606316, 40.113159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150549, -0.705288, -0.692751,
		0.422623, -0.679394, 0.599845,
		-0.893714, -0.202466, 0.400353,
		36.033070, 31.545576, 40.233265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600853, 30.942616, 40.153923>,  <36.658672, 31.687302, 39.953018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600853, 30.942616, 40.153923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256886, 31.125051, 40.062252>,  <36.050507, 31.234514, 40.007248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256886, 31.125051, 40.062252>,  <36.600853, 30.942616, 40.153923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256886, 31.125051, 40.062252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176216, -0.686648, -0.705310,
		-0.479052, -0.566123, 0.670831,
		-0.859917, 0.456091, -0.229181,
		35.998909, 31.261879, 39.993496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951077, 31.195393, 40.850460>,  <36.600853, 30.942616, 40.153923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951077, 31.195393, 40.850460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160889, 30.873177, 40.740211>,  <37.286777, 30.679848, 40.674061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160889, 30.873177, 40.740211>,  <36.951077, 31.195393, 40.850460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160889, 30.873177, 40.740211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799889, 0.355380, 0.483613,
		-0.291619, -0.474140, 0.830752,
		0.524533, -0.805541, -0.275624,
		37.318249, 30.631514, 40.657524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228497, 30.871189, 41.460831>,  <36.951077, 31.195393, 40.850460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228497, 30.871189, 41.460831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473408, 30.774042, 41.159863>,  <37.620354, 30.715754, 40.979282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473408, 30.774042, 41.159863>,  <37.228497, 30.871189, 41.460831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473408, 30.774042, 41.159863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787026, 0.278177, 0.550644,
		0.075572, -0.929319, 0.361463,
		0.612274, -0.242867, -0.752420,
		37.657089, 30.701181, 40.934135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757164, 30.578741, 41.760086>,  <37.228497, 30.871189, 41.460831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757164, 30.578741, 41.760086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869347, 30.732376, 41.408218>,  <37.936657, 30.824556, 41.197098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869347, 30.732376, 41.408218>,  <37.757164, 30.578741, 41.760086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869347, 30.732376, 41.408218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706197, 0.538129, 0.460112,
		0.650099, -0.750263, -0.120317,
		0.280459, 0.384086, -0.879671,
		37.953484, 30.847603, 41.144318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500458, 30.465208, 41.676147>,  <37.757164, 30.578741, 41.760086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500458, 30.465208, 41.676147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417732, 30.759813, 41.418537>,  <38.368095, 30.936577, 41.263969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417732, 30.759813, 41.418537>,  <38.500458, 30.465208, 41.676147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417732, 30.759813, 41.418537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761508, 0.534468, 0.366674,
		0.614274, -0.414599, -0.671398,
		-0.206818, 0.736513, -0.644030,
		38.355686, 30.980766, 41.225327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130341, 30.744886, 41.542122>,  <38.500458, 30.465208, 41.676147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130341, 30.744886, 41.542122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870625, 31.035543, 41.452312>,  <38.714794, 31.209938, 41.398426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870625, 31.035543, 41.452312>,  <39.130341, 30.744886, 41.542122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870625, 31.035543, 41.452312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585453, 0.665973, 0.462303,
		0.485456, 0.168720, -0.857826,
		-0.649289, 0.726645, -0.224523,
		38.675838, 31.253536, 41.384956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587971, 31.220234, 41.360653>,  <39.130341, 30.744886, 41.542122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587971, 31.220234, 41.360653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241207, 31.387554, 41.469086>,  <39.033150, 31.487946, 41.534145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241207, 31.387554, 41.469086>,  <39.587971, 31.220234, 41.360653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241207, 31.387554, 41.469086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496039, 0.670425, 0.551794,
		0.049073, 0.612826, -0.788693,
		-0.866913, 0.418300, 0.271086,
		38.981133, 31.513044, 41.550411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815037, 31.779520, 41.441711>,  <39.587971, 31.220234, 41.360653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815037, 31.779520, 41.441711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460285, 31.840662, 41.616108>,  <39.247437, 31.877348, 41.720745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460285, 31.840662, 41.616108>,  <39.815037, 31.779520, 41.441711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460285, 31.840662, 41.616108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396712, 0.735617, 0.549078,
		-0.236790, 0.659926, -0.713042,
		-0.886876, 0.152856, 0.435987,
		39.194221, 31.886518, 41.746902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830162, 32.488297, 41.624355>,  <39.815037, 31.779520, 41.441711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830162, 32.488297, 41.624355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524906, 32.368813, 41.853580>,  <39.341755, 32.297123, 41.991116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.524906, 32.368813, 41.853580>,  <39.830162, 32.488297, 41.624355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.524906, 32.368813, 41.853580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233115, 0.699819, 0.675212,
		-0.602728, 0.648867, -0.464424,
		-0.763135, -0.298705, 0.573061,
		39.295967, 32.279202, 42.025497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564560, 33.183884, 41.897438>,  <39.830162, 32.488297, 41.624355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564560, 33.183884, 41.897438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438824, 32.897205, 42.146450>,  <39.363384, 32.725197, 42.295856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438824, 32.897205, 42.146450>,  <39.564560, 33.183884, 41.897438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438824, 32.897205, 42.146450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232412, 0.577711, 0.782454,
		-0.920422, 0.390637, -0.015027,
		-0.314337, -0.716696, 0.622527,
		39.344524, 32.682198, 42.333206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998764, 33.431755, 42.411507>,  <39.564560, 33.183884, 41.897438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998764, 33.431755, 42.411507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186932, 33.119526, 42.576145>,  <39.299831, 32.932190, 42.674931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.186932, 33.119526, 42.576145>,  <38.998764, 33.431755, 42.411507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.186932, 33.119526, 42.576145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238978, 0.561692, 0.792080,
		-0.849467, -0.274247, 0.450771,
		0.470421, -0.780571, 0.411600,
		39.328056, 32.885353, 42.699627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003716, 33.608849, 43.088749>,  <38.998764, 33.431755, 42.411507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003716, 33.608849, 43.088749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251804, 33.295307, 43.100685>,  <39.400658, 33.107182, 43.107845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251804, 33.295307, 43.100685>,  <39.003716, 33.608849, 43.088749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251804, 33.295307, 43.100685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465784, 0.398622, 0.790029,
		-0.631164, -0.476097, 0.612343,
		0.620224, -0.783857, 0.029837,
		39.437870, 33.060150, 43.109634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919212, 33.401016, 43.796345>,  <39.003716, 33.608849, 43.088749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919212, 33.401016, 43.796345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259754, 33.255756, 43.644913>,  <39.464077, 33.168598, 43.554054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259754, 33.255756, 43.644913>,  <38.919212, 33.401016, 43.796345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259754, 33.255756, 43.644913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501946, 0.354138, 0.789073,
		-0.152484, -0.861805, 0.483779,
		0.851351, -0.363152, -0.378579,
		39.515160, 33.146812, 43.531338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150585, 32.814575, 44.195915>,  <38.919212, 33.401016, 43.796345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150585, 32.814575, 44.195915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474518, 32.961277, 44.012756>,  <39.668877, 33.049297, 43.902863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474518, 32.961277, 44.012756>,  <39.150585, 32.814575, 44.195915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474518, 32.961277, 44.012756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385949, 0.254760, 0.886646,
		0.441838, -0.894754, 0.064762,
		0.809828, 0.366759, -0.457892,
		39.717468, 33.071304, 43.875389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772778, 32.528378, 44.584068>,  <39.150585, 32.814575, 44.195915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772778, 32.528378, 44.584068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899521, 32.865772, 44.410572>,  <39.975567, 33.068211, 44.306473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899521, 32.865772, 44.410572>,  <39.772778, 32.528378, 44.584068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899521, 32.865772, 44.410572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273686, 0.356543, 0.893293,
		0.908128, -0.401758, -0.117876,
		0.316859, 0.843486, -0.433743,
		39.994579, 33.118816, 44.280449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434074, 32.683147, 44.918968>,  <39.772778, 32.528378, 44.584068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434074, 32.683147, 44.918968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316261, 33.029190, 44.756565>,  <40.245575, 33.236816, 44.659122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.316261, 33.029190, 44.756565>,  <40.434074, 32.683147, 44.918968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316261, 33.029190, 44.756565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202572, 0.471716, 0.858166,
		0.933924, 0.170512, -0.314183,
		-0.294533, 0.865107, -0.406006,
		40.227901, 33.288723, 44.634762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860825, 33.103703, 45.271591>,  <40.434074, 32.683147, 44.918968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860825, 33.103703, 45.271591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.570103, 33.332253, 45.119125>,  <40.395672, 33.469383, 45.027645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.570103, 33.332253, 45.119125>,  <40.860825, 33.103703, 45.271591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570103, 33.332253, 45.119125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096297, 0.634232, 0.767123,
		0.680063, 0.520841, -0.515983,
		-0.726802, 0.571379, -0.381162,
		40.352062, 33.503666, 45.004776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112942, 33.872002, 45.172428>,  <40.860825, 33.103703, 45.271591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112942, 33.872002, 45.172428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713326, 33.878845, 45.188583>,  <40.473557, 33.882950, 45.198277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713326, 33.878845, 45.188583>,  <41.112942, 33.872002, 45.172428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713326, 33.878845, 45.188583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040378, 0.718344, 0.694515,
		-0.017129, 0.695478, -0.718344,
		-0.999038, 0.017109, 0.040386,
		40.413612, 33.883976, 45.200699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877003, 34.600922, 45.117569>,  <41.112942, 33.872002, 45.172428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877003, 34.600922, 45.117569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576962, 34.411503, 45.302216>,  <40.396935, 34.297852, 45.413006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.576962, 34.411503, 45.302216>,  <40.877003, 34.600922, 45.117569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576962, 34.411503, 45.302216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098700, 0.770379, 0.629900,
		-0.653911, 0.426930, -0.624605,
		-0.750106, -0.473547, 0.461621,
		40.351929, 34.269440, 45.440701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400406, 35.173882, 45.219452>,  <40.877003, 34.600922, 45.117569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400406, 35.173882, 45.219452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220329, 34.894123, 45.441505>,  <40.112282, 34.726269, 45.574738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220329, 34.894123, 45.441505>,  <40.400406, 35.173882, 45.219452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220329, 34.894123, 45.441505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275771, 0.700204, 0.658532,
		-0.849281, 0.143377, -0.508100,
		-0.450192, -0.699398, 0.555131,
		40.085270, 34.684303, 45.608044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712830, 35.391773, 45.431026>,  <40.400406, 35.173882, 45.219452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712830, 35.391773, 45.431026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840988, 35.129192, 45.704208>,  <39.917881, 34.971645, 45.868118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840988, 35.129192, 45.704208>,  <39.712830, 35.391773, 45.431026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840988, 35.129192, 45.704208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342807, 0.591744, 0.729604,
		-0.883080, -0.467881, -0.035444,
		0.320394, -0.656449, 0.682951,
		39.937107, 34.932259, 45.909092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277687, 35.563499, 46.049061>,  <39.712830, 35.391773, 45.431026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277687, 35.563499, 46.049061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543991, 35.310879, 46.208012>,  <39.703773, 35.159306, 46.303383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543991, 35.310879, 46.208012>,  <39.277687, 35.563499, 46.049061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543991, 35.310879, 46.208012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344029, 0.212775, 0.914533,
		-0.662125, -0.745569, -0.075615,
		0.665758, -0.631549, 0.397381,
		39.743717, 35.121414, 46.327225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867714, 35.241196, 46.557999>,  <39.277687, 35.563499, 46.049061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867714, 35.241196, 46.557999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247002, 35.192154, 46.675194>,  <39.474575, 35.162727, 46.745510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247002, 35.192154, 46.675194>,  <38.867714, 35.241196, 46.557999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247002, 35.192154, 46.675194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253828, 0.261967, 0.931099,
		-0.190916, -0.957256, 0.217281,
		0.948221, -0.122609, 0.292992,
		39.531467, 35.155373, 46.763092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821461, 34.811531, 47.166302>,  <38.867714, 35.241196, 46.557999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821461, 34.811531, 47.166302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168030, 35.007786, 47.203377>,  <39.375969, 35.125538, 47.225620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168030, 35.007786, 47.203377>,  <38.821461, 34.811531, 47.166302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168030, 35.007786, 47.203377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237828, 0.242291, 0.940602,
		0.439037, -0.837001, 0.326613,
		0.866420, 0.490636, 0.092687,
		39.427956, 35.154976, 47.231182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145466, 34.686451, 47.862335>,  <38.821461, 34.811531, 47.166302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145466, 34.686451, 47.862335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308388, 35.029011, 47.735416>,  <39.406139, 35.234547, 47.659264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.308388, 35.029011, 47.735416>,  <39.145466, 34.686451, 47.862335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.308388, 35.029011, 47.735416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290286, 0.450799, 0.844106,
		0.865932, -0.251700, 0.432214,
		0.407302, 0.856404, -0.317297,
		39.430580, 35.285931, 47.640228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465332, 34.901829, 48.515400>,  <39.145466, 34.686451, 47.862335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465332, 34.901829, 48.515400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438198, 35.214252, 48.267094>,  <39.421917, 35.401707, 48.118111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438198, 35.214252, 48.267094>,  <39.465332, 34.901829, 48.515400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438198, 35.214252, 48.267094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007376, 0.621789, 0.783151,
		0.997669, 0.057704, -0.036417,
		-0.067835, 0.781057, -0.620765,
		39.417847, 35.448570, 48.080864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947834, 35.410435, 48.783482>,  <39.465332, 34.901829, 48.515400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947834, 35.410435, 48.783482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688648, 35.606350, 48.550159>,  <39.533138, 35.723900, 48.410164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688648, 35.606350, 48.550159>,  <39.947834, 35.410435, 48.783482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688648, 35.606350, 48.550159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058207, 0.731746, 0.679087,
		0.759443, 0.473977, -0.445637,
		-0.647965, 0.489789, -0.583308,
		39.494259, 35.753288, 48.375168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201260, 36.112648, 48.856815>,  <39.947834, 35.410435, 48.783482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201260, 36.112648, 48.856815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827480, 36.156017, 48.721138>,  <39.603214, 36.182037, 48.639732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.827480, 36.156017, 48.721138>,  <40.201260, 36.112648, 48.856815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827480, 36.156017, 48.721138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087138, 0.853943, 0.513019,
		0.345274, 0.508946, -0.788518,
		-0.934448, 0.108422, -0.339193,
		39.547146, 36.188545, 48.619381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155849, 36.859695, 48.575722>,  <40.201260, 36.112648, 48.856815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.155849, 36.859695, 48.575722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799587, 36.712349, 48.682335>,  <39.585831, 36.623943, 48.746304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799587, 36.712349, 48.682335>,  <40.155849, 36.859695, 48.575722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799587, 36.712349, 48.682335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180733, 0.824730, 0.535869,
		-0.417213, 0.429104, -0.801126,
		-0.890656, -0.368362, 0.266535,
		39.532391, 36.601841, 48.762295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687016, 37.452106, 48.467770>,  <40.155849, 36.859695, 48.575722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687016, 37.452106, 48.467770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495411, 37.193008, 48.704742>,  <39.380447, 37.037548, 48.846924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.495411, 37.193008, 48.704742>,  <39.687016, 37.452106, 48.467770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495411, 37.193008, 48.704742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244037, 0.746555, 0.618952,
		-0.843206, 0.151910, -0.515682,
		-0.479009, -0.647749, 0.592428,
		39.351707, 36.998684, 48.882469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018642, 37.724461, 48.698166>,  <39.687016, 37.452106, 48.467770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018642, 37.724461, 48.698166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104565, 37.462463, 48.987949>,  <39.156116, 37.305267, 49.161819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.104565, 37.462463, 48.987949>,  <39.018642, 37.724461, 48.698166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.104565, 37.462463, 48.987949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212026, 0.692813, 0.689242,
		-0.953365, -0.301657, 0.009943,
		0.214803, -0.654991, 0.724463,
		39.169006, 37.265965, 49.205288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496155, 37.808846, 49.168400>,  <39.018642, 37.724461, 48.698166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496155, 37.808846, 49.168400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764503, 37.596153, 49.375168>,  <38.925510, 37.468540, 49.499229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.764503, 37.596153, 49.375168>,  <38.496155, 37.808846, 49.168400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.764503, 37.596153, 49.375168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050312, 0.728080, 0.683644,
		-0.739867, -0.432628, 0.515199,
		0.670869, -0.531726, 0.516916,
		38.965763, 37.436634, 49.530243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477520, 37.956120, 49.871853>,  <38.496155, 37.808846, 49.168400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477520, 37.956120, 49.871853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846935, 37.803967, 49.891415>,  <39.068584, 37.712673, 49.903152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846935, 37.803967, 49.891415>,  <38.477520, 37.956120, 49.871853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846935, 37.803967, 49.891415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283081, 0.762157, 0.582222,
		-0.258744, -0.523857, 0.811558,
		0.923535, -0.380383, 0.048909,
		39.123997, 37.689850, 49.906086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715534, 38.102154, 50.622452>,  <38.477520, 37.956120, 49.871853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715534, 38.102154, 50.622452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048439, 38.045479, 50.408062>,  <39.248180, 38.011475, 50.279430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048439, 38.045479, 50.408062>,  <38.715534, 38.102154, 50.622452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048439, 38.045479, 50.408062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498188, 0.615271, 0.610942,
		0.243205, -0.775478, 0.582654,
		0.832262, -0.141687, -0.535970,
		39.298119, 38.002972, 50.247272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252018, 37.989769, 51.120457>,  <38.715534, 38.102154, 50.622452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252018, 37.989769, 51.120457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439781, 38.083931, 50.780048>,  <39.552441, 38.140427, 50.575802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439781, 38.083931, 50.780048>,  <39.252018, 37.989769, 51.120457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439781, 38.083931, 50.780048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498026, 0.725284, 0.475325,
		0.729140, -0.646946, 0.223192,
		0.469388, 0.235423, -0.851030,
		39.580605, 38.154552, 50.524742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038692, 38.000992, 51.364578>,  <39.252018, 37.989769, 51.120457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038692, 38.000992, 51.364578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011642, 38.210453, 51.024879>,  <39.995415, 38.336132, 50.821060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.011642, 38.210453, 51.024879>,  <40.038692, 38.000992, 51.364578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.011642, 38.210453, 51.024879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649032, 0.669557, 0.361180,
		0.757750, -0.526762, -0.385145,
		-0.067620, 0.523655, -0.849242,
		39.991356, 38.367550, 50.770107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675518, 38.155746, 51.179546>,  <40.038692, 38.000992, 51.364578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675518, 38.155746, 51.179546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475670, 38.431213, 50.969360>,  <40.355762, 38.596493, 50.843250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.475670, 38.431213, 50.969360>,  <40.675518, 38.155746, 51.179546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.475670, 38.431213, 50.969360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468236, 0.725046, 0.505038,
		0.728790, 0.006288, -0.684709,
		-0.499621, 0.688671, -0.525462,
		40.325783, 38.637814, 50.811722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152225, 38.758080, 51.072067>,  <40.675518, 38.155746, 51.179546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152225, 38.758080, 51.072067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783131, 38.893124, 50.997688>,  <40.561676, 38.974152, 50.953060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.783131, 38.893124, 50.997688>,  <41.152225, 38.758080, 51.072067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783131, 38.893124, 50.997688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226090, 0.864834, 0.448270,
		0.312159, 0.371593, -0.874343,
		-0.922735, 0.337611, -0.185952,
		40.506310, 38.994408, 50.941902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284863, 39.392136, 50.790787>,  <41.152225, 38.758080, 51.072067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284863, 39.392136, 50.790787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913944, 39.397915, 50.940407>,  <40.691395, 39.401382, 51.030178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.913944, 39.397915, 50.940407>,  <41.284863, 39.392136, 50.790787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913944, 39.397915, 50.940407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230354, 0.809664, 0.539797,
		-0.295055, 0.586715, -0.754127,
		-0.927297, 0.014446, 0.374048,
		40.635754, 39.402248, 51.052620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169949, 40.164299, 50.900227>,  <41.284863, 39.392136, 50.790787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169949, 40.164299, 50.900227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867268, 39.963943, 51.068279>,  <40.685658, 39.843731, 51.169109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867268, 39.963943, 51.068279>,  <41.169949, 40.164299, 50.900227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867268, 39.963943, 51.068279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165570, 0.768519, 0.618033,
		-0.632444, 0.398107, -0.664474,
		-0.756704, -0.500888, 0.420131,
		40.640255, 39.813679, 51.194317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884975, 40.760712, 50.433804>,  <41.169949, 40.164299, 50.900227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884975, 40.760712, 50.433804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871819, 41.101162, 50.224232>,  <40.863926, 41.305431, 50.098488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.871819, 41.101162, 50.224232>,  <40.884975, 40.760712, 50.433804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871819, 41.101162, 50.224232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193053, -0.508927, -0.838882,
		-0.980637, -0.128735, -0.147576,
		-0.032888, 0.851129, -0.523926,
		40.861954, 41.356499, 50.067055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274387, 40.757603, 49.921341>,  <40.884975, 40.760712, 50.433804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274387, 40.757603, 49.921341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525597, 41.037167, 49.784454>,  <40.676323, 41.204906, 49.702324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.525597, 41.037167, 49.784454>,  <40.274387, 40.757603, 49.921341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525597, 41.037167, 49.784454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067978, -0.388804, -0.918810,
		-0.775220, 0.600297, -0.196667,
		0.628023, 0.698910, -0.342215,
		40.714005, 41.246841, 49.681789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971977, 41.057056, 49.386909>,  <40.274387, 40.757603, 49.921341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971977, 41.057056, 49.386909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.349049, 41.158943, 49.300682>,  <40.575291, 41.220078, 49.248947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.349049, 41.158943, 49.300682>,  <39.971977, 41.057056, 49.386909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349049, 41.158943, 49.300682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089400, -0.429605, -0.898581,
		-0.321496, 0.866347, -0.382209,
		0.942681, 0.254721, -0.215567,
		40.631851, 41.235359, 49.236012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930565, 41.320675, 48.690472>,  <39.971977, 41.057056, 49.386909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930565, 41.320675, 48.690472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309120, 41.205349, 48.748753>,  <40.536251, 41.136154, 48.783722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.309120, 41.205349, 48.748753>,  <39.930565, 41.320675, 48.690472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309120, 41.205349, 48.748753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029147, -0.525405, -0.850353,
		0.321722, 0.800515, -0.505639,
		0.946385, -0.288315, 0.145701,
		40.593037, 41.118855, 48.792461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286308, 41.450699, 48.102333>,  <39.930565, 41.320675, 48.690472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286308, 41.450699, 48.102333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519722, 41.176701, 48.276814>,  <40.659771, 41.012302, 48.381500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519722, 41.176701, 48.276814>,  <40.286308, 41.450699, 48.102333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519722, 41.176701, 48.276814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107919, -0.597781, -0.794362,
		0.804886, 0.416463, -0.422749,
		0.583534, -0.684994, 0.436201,
		40.694782, 40.971203, 48.407673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570946, 41.186699, 47.536640>,  <40.286308, 41.450699, 48.102333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570946, 41.186699, 47.536640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647484, 40.929142, 47.832962>,  <40.693405, 40.774609, 48.010754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647484, 40.929142, 47.832962>,  <40.570946, 41.186699, 47.536640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647484, 40.929142, 47.832962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172902, -0.765055, -0.620319,
		0.966175, -0.009393, -0.257718,
		0.191342, -0.643896, 0.740801,
		40.704887, 40.735973, 48.055202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166542, 40.818909, 47.425323>,  <40.570946, 41.186699, 47.536640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166542, 40.818909, 47.425323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.949318, 40.577221, 47.658562>,  <40.818981, 40.432209, 47.798504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.949318, 40.577221, 47.658562>,  <41.166542, 40.818909, 47.425323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949318, 40.577221, 47.658562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056878, -0.666351, -0.743466,
		0.837762, -0.436915, 0.327505,
		-0.543065, -0.604220, 0.583094,
		40.786400, 40.395954, 47.833488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510056, 40.111057, 47.260456>,  <41.166542, 40.818909, 47.425323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510056, 40.111057, 47.260456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145267, 40.056408, 47.415195>,  <40.926395, 40.023617, 47.508038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145267, 40.056408, 47.415195>,  <41.510056, 40.111057, 47.260456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145267, 40.056408, 47.415195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192531, -0.690120, -0.697615,
		0.362282, -0.710681, 0.603062,
		-0.911967, -0.136626, 0.386846,
		40.871677, 40.015419, 47.531250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503239, 39.429718, 47.209419>,  <41.510056, 40.111057, 47.260456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.503239, 39.429718, 47.209419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118179, 39.534397, 47.237209>,  <40.887146, 39.597206, 47.253883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.118179, 39.534397, 47.237209>,  <41.503239, 39.429718, 47.209419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.118179, 39.534397, 47.237209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250468, -0.763225, -0.595612,
		-0.102845, -0.590764, 0.800262,
		-0.962647, 0.261696, 0.069473,
		40.829384, 39.612907, 47.258053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107140, 38.763390, 47.293415>,  <41.503239, 39.429718, 47.209419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107140, 38.763390, 47.293415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831230, 39.029957, 47.180210>,  <40.665684, 39.189896, 47.112286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.831230, 39.029957, 47.180210>,  <41.107140, 38.763390, 47.293415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.831230, 39.029957, 47.180210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447804, -0.699837, -0.556506,
		-0.568927, -0.257131, 0.781157,
		-0.689778, 0.666416, -0.283011,
		40.624298, 39.229881, 47.095306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487537, 38.379578, 47.334148>,  <41.107140, 38.763390, 47.293415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487537, 38.379578, 47.334148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378971, 38.691742, 47.108837>,  <40.313831, 38.879040, 46.973648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378971, 38.691742, 47.108837>,  <40.487537, 38.379578, 47.334148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378971, 38.691742, 47.108837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346561, -0.625239, -0.699265,
		-0.897902, 0.005419, 0.440161,
		-0.271417, 0.780415, -0.563281,
		40.297546, 38.925865, 46.939854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817402, 38.320366, 47.026730>,  <40.487537, 38.379578, 47.334148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817402, 38.320366, 47.026730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961559, 38.595863, 46.775097>,  <40.048054, 38.761162, 46.624119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961559, 38.595863, 46.775097>,  <39.817402, 38.320366, 47.026730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961559, 38.595863, 46.775097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473173, -0.446211, -0.759607,
		-0.803878, 0.571426, 0.165081,
		0.360398, 0.688744, -0.629083,
		40.069679, 38.802486, 46.586372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260048, 38.519958, 46.767242>,  <39.817402, 38.320366, 47.026730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260048, 38.519958, 46.767242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567028, 38.587505, 46.519855>,  <39.751217, 38.628033, 46.371422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567028, 38.587505, 46.519855>,  <39.260048, 38.519958, 46.767242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567028, 38.587505, 46.519855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495600, -0.455698, -0.739406,
		-0.406693, 0.873971, -0.266037,
		0.767451, 0.168863, -0.618469,
		39.797264, 38.638165, 46.334316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984154, 38.546577, 46.072941>,  <39.260048, 38.519958, 46.767242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984154, 38.546577, 46.072941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370533, 38.484417, 45.990196>,  <39.602360, 38.447121, 45.940548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370533, 38.484417, 45.990196>,  <38.984154, 38.546577, 46.072941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370533, 38.484417, 45.990196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249659, -0.349981, -0.902875,
		0.067911, 0.923777, -0.376862,
		0.965950, -0.155402, -0.206861,
		39.660316, 38.437798, 45.928139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074303, 38.680714, 45.328289>,  <38.984154, 38.546577, 46.072941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074303, 38.680714, 45.328289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387138, 38.449707, 45.421936>,  <39.574841, 38.311104, 45.478127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387138, 38.449707, 45.421936>,  <39.074303, 38.680714, 45.328289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387138, 38.449707, 45.421936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150670, -0.539785, -0.828209,
		0.604683, 0.612455, -0.509173,
		0.782085, -0.577521, 0.234120,
		39.621765, 38.276451, 45.492172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478256, 38.511383, 44.701797>,  <39.074303, 38.680714, 45.328289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478256, 38.511383, 44.701797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619385, 38.223087, 44.940475>,  <39.704063, 38.050110, 45.083683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.619385, 38.223087, 44.940475>,  <39.478256, 38.511383, 44.701797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619385, 38.223087, 44.940475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056724, -0.620058, -0.782502,
		0.933969, 0.309931, -0.177887,
		0.352822, -0.720743, 0.596696,
		39.725231, 38.006863, 45.119484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138004, 38.287426, 44.379971>,  <39.478256, 38.511383, 44.701797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138004, 38.287426, 44.379971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018715, 37.982918, 44.610287>,  <39.947140, 37.800213, 44.748478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018715, 37.982918, 44.610287>,  <40.138004, 38.287426, 44.379971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018715, 37.982918, 44.610287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293369, -0.647146, -0.703660,
		0.908293, -0.040931, 0.416327,
		-0.298226, -0.761267, 0.575790,
		39.929249, 37.754539, 44.783024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728237, 37.774067, 44.252628>,  <40.138004, 38.287426, 44.379971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728237, 37.774067, 44.252628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413643, 37.570961, 44.393261>,  <40.224884, 37.449097, 44.477638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413643, 37.570961, 44.393261>,  <40.728237, 37.774067, 44.252628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413643, 37.570961, 44.393261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196387, -0.745328, -0.637117,
		0.585549, -0.432039, 0.685911,
		-0.786488, -0.507768, 0.351579,
		40.177696, 37.418633, 44.498734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939007, 37.149353, 44.615070>,  <40.728237, 37.774067, 44.252628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939007, 37.149353, 44.615070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563675, 37.053020, 44.515839>,  <40.338478, 36.995220, 44.456299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563675, 37.053020, 44.515839>,  <40.939007, 37.149353, 44.615070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563675, 37.053020, 44.515839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340733, -0.765895, -0.545258,
		-0.058684, -0.596158, 0.800720,
		-0.938327, -0.240834, -0.248076,
		40.282177, 36.980770, 44.441414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914398, 36.432297, 44.652699>,  <40.939007, 37.149353, 44.615070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914398, 36.432297, 44.652699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577877, 36.504971, 44.449051>,  <40.375965, 36.548576, 44.326862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577877, 36.504971, 44.449051>,  <40.914398, 36.432297, 44.652699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577877, 36.504971, 44.449051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148940, -0.827466, -0.541404,
		-0.519643, -0.531312, 0.669088,
		-0.841301, 0.181683, -0.509120,
		40.325485, 36.559475, 44.296314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471596, 35.743694, 44.601887>,  <40.914398, 36.432297, 44.652699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471596, 35.743694, 44.601887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360081, 35.997898, 44.313885>,  <40.293171, 36.150421, 44.141083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.360081, 35.997898, 44.313885>,  <40.471596, 35.743694, 44.601887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.360081, 35.997898, 44.313885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134137, -0.716611, -0.684453,
		-0.950938, -0.287399, 0.114540,
		-0.278792, 0.635508, -0.720003,
		40.276443, 36.188549, 44.097885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136253, 35.328842, 44.233330>,  <40.471596, 35.743694, 44.601887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136253, 35.328842, 44.233330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196720, 35.628807, 43.975716>,  <40.233002, 35.808788, 43.821148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.196720, 35.628807, 43.975716>,  <40.136253, 35.328842, 44.233330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196720, 35.628807, 43.975716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008129, -0.650554, -0.759417,
		-0.988475, 0.120034, -0.092245,
		0.151166, 0.749915, -0.644032,
		40.242069, 35.853783, 43.782505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669834, 35.247768, 43.640556>,  <40.136253, 35.328842, 44.233330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669834, 35.247768, 43.640556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993080, 35.462063, 43.542637>,  <40.187027, 35.590641, 43.483883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993080, 35.462063, 43.542637>,  <39.669834, 35.247768, 43.640556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993080, 35.462063, 43.542637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098849, -0.533067, -0.840279,
		-0.580666, 0.654846, -0.483739,
		0.808119, 0.535739, -0.244803,
		40.235516, 35.622784, 43.469196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594967, 35.455017, 42.940262>,  <39.669834, 35.247768, 43.640556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594967, 35.455017, 42.940262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989811, 35.489140, 42.994427>,  <40.226719, 35.509613, 43.026924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989811, 35.489140, 42.994427>,  <39.594967, 35.455017, 42.940262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989811, 35.489140, 42.994427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159943, -0.495889, -0.853529,
		-0.005662, 0.864186, -0.503142,
		0.987110, 0.085307, 0.135413,
		40.285942, 35.514732, 43.035049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.928471, 35.525047, 42.281239>,  <39.594967, 35.455017, 42.940262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.928471, 35.525047, 42.281239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248215, 35.449280, 42.509323>,  <40.440063, 35.403820, 42.646175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248215, 35.449280, 42.509323>,  <39.928471, 35.525047, 42.281239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248215, 35.449280, 42.509323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409848, -0.522061, -0.747982,
		0.439369, 0.831608, -0.339681,
		0.799362, -0.189423, 0.570210,
		40.488022, 35.392452, 42.680386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528339, 35.679222, 41.884148>,  <39.928471, 35.525047, 42.281239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528339, 35.679222, 41.884148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647263, 35.422470, 42.166878>,  <40.718616, 35.268421, 42.336517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647263, 35.422470, 42.166878>,  <40.528339, 35.679222, 41.884148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647263, 35.422470, 42.166878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397084, -0.590115, -0.702915,
		0.868293, 0.489651, 0.079433,
		0.297308, -0.641877, 0.706825,
		40.736454, 35.229908, 42.378925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269787, 35.685482, 41.841122>,  <40.528339, 35.679222, 41.884148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269787, 35.685482, 41.841122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126484, 35.356010, 42.016941>,  <41.040501, 35.158329, 42.122433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.126484, 35.356010, 42.016941>,  <41.269787, 35.685482, 41.841122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126484, 35.356010, 42.016941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422154, -0.562841, -0.710630,
		0.832728, -0.069030, 0.549362,
		-0.358258, -0.823677, 0.439552,
		41.019005, 35.108906, 42.148808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.802105, 35.254162, 41.744263>,  <41.269787, 35.685482, 41.841122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.802105, 35.254162, 41.744263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.508781, 34.997726, 41.834824>,  <41.332787, 34.843864, 41.889160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.508781, 34.997726, 41.834824>,  <41.802105, 35.254162, 41.744263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.508781, 34.997726, 41.834824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394125, -0.672169, -0.626781,
		0.554006, -0.370392, 0.745578,
		-0.733309, -0.641091, 0.226405,
		41.288788, 34.805401, 41.902744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.139088, 34.574791, 41.764610>,  <41.802105, 35.254162, 41.744263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.139088, 34.574791, 41.764610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745308, 34.537964, 41.704773>,  <41.509041, 34.515869, 41.668869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745308, 34.537964, 41.704773>,  <42.139088, 34.574791, 41.764610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745308, 34.537964, 41.704773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174615, -0.420392, -0.890382,
		0.019083, -0.902660, 0.429931,
		-0.984452, -0.092063, -0.149596,
		41.449974, 34.510345, 41.659893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.098190, 33.910431, 41.458767>,  <42.139088, 34.574791, 41.764610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.098190, 33.910431, 41.458767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755707, 34.094955, 41.365723>,  <41.550217, 34.205669, 41.309898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.755707, 34.094955, 41.365723>,  <42.098190, 33.910431, 41.458767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755707, 34.094955, 41.365723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038585, -0.391876, -0.919209,
		-0.515196, -0.796005, 0.317726,
		-0.856204, 0.461313, -0.232607,
		41.498844, 34.233349, 41.295940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629963, 33.356480, 41.111500>,  <42.098190, 33.910431, 41.458767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629963, 33.356480, 41.111500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.464882, 33.703903, 41.001747>,  <41.365833, 33.912357, 40.935898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.464882, 33.703903, 41.001747>,  <41.629963, 33.356480, 41.111500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464882, 33.703903, 41.001747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083434, -0.336008, -0.938156,
		-0.907036, -0.364289, 0.211139,
		-0.412704, 0.868558, -0.274378,
		41.341072, 33.964470, 40.919434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.115547, 33.158882, 40.609646>,  <41.629963, 33.356480, 41.111500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.115547, 33.158882, 40.609646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213032, 33.542980, 40.555195>,  <41.271523, 33.773441, 40.522526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213032, 33.542980, 40.555195>,  <41.115547, 33.158882, 40.609646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213032, 33.542980, 40.555195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092575, -0.162749, -0.982315,
		-0.965420, 0.226797, -0.128558,
		0.243709, 0.960248, -0.136125,
		41.286144, 33.831055, 40.514359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646683, 33.328327, 40.112701>,  <41.115547, 33.158882, 40.609646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.646683, 33.328327, 40.112701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938469, 33.599918, 40.079559>,  <41.113541, 33.762875, 40.059673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938469, 33.599918, 40.079559>,  <40.646683, 33.328327, 40.112701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938469, 33.599918, 40.079559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043560, -0.074769, -0.996249,
		-0.682625, 0.730342, -0.024966,
		0.729469, 0.678977, -0.082853,
		41.157310, 33.803612, 40.054703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453857, 33.667610, 39.578495>,  <40.646683, 33.328327, 40.112701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453857, 33.667610, 39.578495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840870, 33.758171, 39.623440>,  <41.073078, 33.812508, 39.650406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.840870, 33.758171, 39.623440>,  <40.453857, 33.667610, 39.578495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840870, 33.758171, 39.623440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138506, -0.103066, -0.984984,
		-0.211424, 0.968565, -0.131078,
		0.967531, 0.226404, 0.112362,
		41.131130, 33.826092, 39.657146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681599, 34.191238, 39.024765>,  <40.453857, 33.667610, 39.578495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681599, 34.191238, 39.024765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035568, 34.037846, 39.130486>,  <41.247948, 33.945808, 39.193920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035568, 34.037846, 39.130486>,  <40.681599, 34.191238, 39.024765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035568, 34.037846, 39.130486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391202, 0.304055, -0.868627,
		0.252741, 0.872061, 0.419083,
		0.884920, -0.383484, 0.264305,
		41.301044, 33.922802, 39.209778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147594, 34.659996, 38.757835>,  <40.681599, 34.191238, 39.024765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147594, 34.659996, 38.757835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368614, 34.330391, 38.807934>,  <41.501228, 34.132626, 38.837994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368614, 34.330391, 38.807934>,  <41.147594, 34.659996, 38.757835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368614, 34.330391, 38.807934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289409, 0.048764, -0.955963,
		0.781620, 0.564466, 0.265422,
		0.552551, -0.824015, 0.125247,
		41.534378, 34.083187, 38.845509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.748833, 34.887642, 38.421890>,  <41.147594, 34.659996, 38.757835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.748833, 34.887642, 38.421890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.720554, 34.489212, 38.443172>,  <41.703587, 34.250153, 38.455944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.720554, 34.489212, 38.443172>,  <41.748833, 34.887642, 38.421890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.720554, 34.489212, 38.443172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360210, -0.075237, -0.929832,
		0.930188, -0.046570, 0.364117,
		-0.070697, -0.996078, 0.053210,
		41.699345, 34.190388, 38.459137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346855, 34.650551, 38.070896>,  <41.748833, 34.887642, 38.421890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.346855, 34.650551, 38.070896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151752, 34.302822, 38.102833>,  <42.034691, 34.094185, 38.121994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151752, 34.302822, 38.102833>,  <42.346855, 34.650551, 38.070896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.151752, 34.302822, 38.102833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297283, -0.251397, -0.921098,
		0.820801, -0.425537, 0.381055,
		-0.487758, -0.869320, 0.079842,
		42.005424, 34.042027, 38.126785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.852486, 34.144150, 37.785294>,  <42.346855, 34.650551, 38.070896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.852486, 34.144150, 37.785294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488556, 33.978157, 37.784260>,  <42.270199, 33.878563, 37.783638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488556, 33.978157, 37.784260>,  <42.852486, 34.144150, 37.785294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488556, 33.978157, 37.784260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159717, -0.344406, -0.925135,
		0.383021, -0.842126, 0.379629,
		-0.909827, -0.414980, -0.002587,
		42.215607, 33.853664, 37.783485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.920879, 33.315823, 37.503220>,  <42.852486, 34.144150, 37.785294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.920879, 33.315823, 37.503220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.559681, 33.484863, 37.472229>,  <42.342960, 33.586288, 37.453636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.559681, 33.484863, 37.472229>,  <42.920879, 33.315823, 37.503220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.559681, 33.484863, 37.472229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013829, -0.208821, -0.977856,
		-0.429424, -0.881930, 0.194409,
		-0.902997, 0.422603, -0.077477,
		42.288780, 33.611645, 37.448986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209934, 32.855824, 37.317562>,  <42.920879, 33.315823, 37.503220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209934, 32.855824, 37.317562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233482, 33.221630, 37.157471>,  <42.247612, 33.441116, 37.061417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.233482, 33.221630, 37.157471>,  <42.209934, 32.855824, 37.317562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233482, 33.221630, 37.157471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023411, -0.402083, -0.915304,
		-0.997991, 0.044511, -0.045080,
		0.058867, 0.914521, -0.400233,
		42.251141, 33.495987, 37.037399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.790051, 32.790054, 36.733047>,  <42.209934, 32.855824, 37.317562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.790051, 32.790054, 36.733047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060741, 33.081638, 36.691753>,  <42.223156, 33.256588, 36.666977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060741, 33.081638, 36.691753>,  <41.790051, 32.790054, 36.733047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060741, 33.081638, 36.691753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177616, -0.297725, -0.937983,
		-0.714489, 0.616421, -0.330953,
		0.676726, 0.728962, -0.103235,
		42.263760, 33.300327, 36.660782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681541, 33.205292, 36.067535>,  <41.790051, 32.790054, 36.733047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681541, 33.205292, 36.067535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.061138, 33.253551, 36.184052>,  <42.288898, 33.282509, 36.253960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.061138, 33.253551, 36.184052>,  <41.681541, 33.205292, 36.067535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.061138, 33.253551, 36.184052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309527, -0.180708, -0.933562,
		-0.059997, 0.976108, -0.208836,
		0.948996, 0.120652, 0.291290,
		42.345837, 33.289745, 36.271439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062443, 33.678783, 35.641510>,  <41.681541, 33.205292, 36.067535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062443, 33.678783, 35.641510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.309990, 33.398739, 35.783978>,  <42.458519, 33.230713, 35.869457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.309990, 33.398739, 35.783978>,  <42.062443, 33.678783, 35.641510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.309990, 33.398739, 35.783978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368219, -0.141950, -0.918839,
		0.693845, 0.699784, 0.169945,
		0.618865, -0.700109, 0.356165,
		42.495651, 33.188705, 35.890827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667610, 33.226376, 35.274021>,  <42.062443, 33.678783, 35.641510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667610, 33.226376, 35.274021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.588928, 32.931610, 35.015327>,  <41.541721, 32.754749, 34.860111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.588928, 32.931610, 35.015327>,  <41.667610, 33.226376, 35.274021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.588928, 32.931610, 35.015327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935944, -0.337637, 0.100051,
		-0.292090, -0.585627, 0.756124,
		-0.196703, -0.736914, -0.646735,
		41.529919, 32.710537, 34.821308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.884781, 32.672497, 35.574192>,  <41.667610, 33.226376, 35.274021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.884781, 32.672497, 35.574192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891308, 32.599148, 35.181030>,  <41.895226, 32.555138, 34.945133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.891308, 32.599148, 35.181030>,  <41.884781, 32.672497, 35.574192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891308, 32.599148, 35.181030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971784, -0.228438, 0.058754,
		-0.235307, -0.956132, 0.174474,
		0.016320, -0.183377, -0.982907,
		41.896202, 32.544136, 34.886158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.115829, 31.995386, 35.455490>,  <41.884781, 32.672497, 35.574192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.115829, 31.995386, 35.455490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223675, 32.205883, 35.132908>,  <42.288383, 32.332180, 34.939358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223675, 32.205883, 35.132908>,  <42.115829, 31.995386, 35.455490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223675, 32.205883, 35.132908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918360, -0.392454, 0.050937,
		-0.289693, -0.754354, -0.589091,
		0.269616, 0.526241, -0.806460,
		42.304558, 32.363754, 34.890968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.301598, 31.451986, 36.053852>,  <42.115829, 31.995386, 35.455490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.301598, 31.451986, 36.053852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.663944, 31.611629, 35.997124>,  <42.881351, 31.707415, 35.963085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.663944, 31.611629, 35.997124>,  <42.301598, 31.451986, 36.053852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.663944, 31.611629, 35.997124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312435, -0.855717, -0.412473,
		-0.285981, 0.329336, -0.899863,
		0.905869, 0.399108, -0.141822,
		42.935703, 31.731361, 35.954578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.572834, 31.272438, 35.307083>,  <42.301598, 31.451986, 36.053852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.572834, 31.272438, 35.307083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.892574, 31.388445, 35.517582>,  <43.084419, 31.458050, 35.643883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.892574, 31.388445, 35.517582>,  <42.572834, 31.272438, 35.307083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.892574, 31.388445, 35.517582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516388, -0.779372, -0.354856,
		0.307228, 0.555401, -0.772749,
		0.799346, 0.290017, 0.526247,
		43.132378, 31.475451, 35.675457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.107815, 31.102673, 34.816189>,  <42.572834, 31.272438, 35.307083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.107815, 31.102673, 34.816189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.256367, 31.118406, 35.187248>,  <43.345497, 31.127846, 35.409882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.256367, 31.118406, 35.187248>,  <43.107815, 31.102673, 34.816189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.256367, 31.118406, 35.187248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421071, -0.897588, -0.130516,
		0.827510, 0.439076, -0.349913,
		0.371384, 0.039335, 0.927646,
		43.367783, 31.130207, 35.465542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.668503, 30.718363, 34.664478>,  <43.107815, 31.102673, 34.816189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.668503, 30.718363, 34.664478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.663059, 30.740931, 35.063805>,  <43.659794, 30.754471, 35.303402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.663059, 30.740931, 35.063805>,  <43.668503, 30.718363, 34.664478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.663059, 30.740931, 35.063805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458637, -0.886834, 0.056373,
		0.888520, 0.458631, -0.013807,
		-0.013610, 0.056421, 0.998314,
		43.658978, 30.757856, 35.363300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.355659, 30.724619, 34.859856>,  <43.668503, 30.718363, 34.664478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.355659, 30.724619, 34.859856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.136127, 30.611242, 35.174419>,  <44.004410, 30.543217, 35.363159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.136127, 30.611242, 35.174419>,  <44.355659, 30.724619, 34.859856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.136127, 30.611242, 35.174419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430795, -0.902117, -0.024498,
		0.716381, 0.325338, 0.617215,
		-0.548830, -0.283443, 0.786413,
		43.971478, 30.526209, 35.410343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.844311, 30.411959, 35.359264>,  <44.355659, 30.724619, 34.859856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.844311, 30.411959, 35.359264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.491478, 30.258099, 35.468060>,  <44.279778, 30.165783, 35.533337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.491478, 30.258099, 35.468060>,  <44.844311, 30.411959, 35.359264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.491478, 30.258099, 35.468060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372470, -0.922933, -0.097268,
		0.288442, 0.015509, 0.957372,
		-0.882081, -0.384649, 0.271989,
		44.226852, 30.142704, 35.549656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.941681, 30.012768, 36.033543>,  <44.844311, 30.411959, 35.359264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.941681, 30.012768, 36.033543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.603912, 29.899401, 35.851719>,  <44.401249, 29.831381, 35.742626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.603912, 29.899401, 35.851719>,  <44.941681, 30.012768, 36.033543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.603912, 29.899401, 35.851719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423536, -0.872787, -0.242613,
		-0.327972, -0.397390, 0.857039,
		-0.844424, -0.283416, -0.454559,
		44.350586, 29.814377, 35.715351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.804020, 29.333586, 36.256916>,  <44.941681, 30.012768, 36.033543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.804020, 29.333586, 36.256916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.608654, 29.354511, 35.908501>,  <44.491432, 29.367067, 35.699451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.608654, 29.354511, 35.908501>,  <44.804020, 29.333586, 36.256916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.608654, 29.354511, 35.908501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292595, -0.930595, -0.219959,
		-0.822093, -0.362294, 0.439212,
		-0.488418, 0.052316, -0.871040,
		44.462128, 29.370207, 35.647190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.730736, 28.620676, 36.106853>,  <44.804020, 29.333586, 36.256916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.730736, 28.620676, 36.106853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.605289, 28.815594, 35.780861>,  <44.530022, 28.932545, 35.585266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.605289, 28.815594, 35.780861>,  <44.730736, 28.620676, 36.106853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.605289, 28.815594, 35.780861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134445, -0.826846, -0.546122,
		-0.939985, -0.280840, 0.193795,
		-0.313612, 0.487292, -0.814981,
		44.511208, 28.961781, 35.536366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.236908, 28.171343, 35.776421>,  <44.730736, 28.620676, 36.106853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.236908, 28.171343, 35.776421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.399853, 28.399731, 35.491310>,  <44.497620, 28.536764, 35.320244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.399853, 28.399731, 35.491310>,  <44.236908, 28.171343, 35.776421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.399853, 28.399731, 35.491310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408418, -0.811970, -0.417012,
		-0.816853, -0.121234, -0.563963,
		0.407365, 0.570970, -0.712774,
		44.522060, 28.571022, 35.277477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.057526, 27.950525, 35.187115>,  <44.236908, 28.171343, 35.776421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.057526, 27.950525, 35.187115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.368065, 28.156969, 35.042389>,  <44.554390, 28.280836, 34.955555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.368065, 28.156969, 35.042389>,  <44.057526, 27.950525, 35.187115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.368065, 28.156969, 35.042389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284792, -0.799329, -0.529119,
		-0.562293, 0.307739, -0.767543,
		0.776350, 0.516110, -0.361816,
		44.600971, 28.311802, 34.933846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.060040, 27.942362, 34.442429>,  <44.057526, 27.950525, 35.187115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.060040, 27.942362, 34.442429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.439392, 28.013773, 34.547276>,  <44.667004, 28.056620, 34.610184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.439392, 28.013773, 34.547276>,  <44.060040, 27.942362, 34.442429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.439392, 28.013773, 34.547276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301978, -0.760853, -0.574380,
		0.096894, 0.623884, -0.775487,
		0.948378, 0.178526, 0.262122,
		44.723904, 28.067331, 34.625912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.490185, 27.985926, 33.821758>,  <44.060040, 27.942362, 34.442429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.490185, 27.985926, 33.821758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.732464, 27.894777, 34.126705>,  <44.877831, 27.840088, 34.309673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.732464, 27.894777, 34.126705>,  <44.490185, 27.985926, 33.821758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.732464, 27.894777, 34.126705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307716, -0.816488, -0.488526,
		0.733788, 0.530491, -0.424422,
		0.605694, -0.227873, 0.762370,
		44.914173, 27.826416, 34.355415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.074169, 27.765499, 33.564472>,  <44.490185, 27.985926, 33.821758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.074169, 27.765499, 33.564472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.149109, 27.644966, 33.938446>,  <45.194073, 27.572647, 34.162830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.149109, 27.644966, 33.938446>,  <45.074169, 27.765499, 33.564472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.149109, 27.644966, 33.938446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476052, -0.804692, -0.354748,
		0.859230, 0.511537, -0.007306,
		0.187345, -0.301332, 0.934934,
		45.205311, 27.554567, 34.218925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.722908, 27.726402, 33.608006>,  <45.074169, 27.765499, 33.564472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.722908, 27.726402, 33.608006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.584274, 27.484280, 33.894638>,  <45.501095, 27.339006, 34.066616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.584274, 27.484280, 33.894638>,  <45.722908, 27.726402, 33.608006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.584274, 27.484280, 33.894638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614285, -0.723793, -0.314290,
		0.708896, 0.331255, 0.622685,
		-0.346585, -0.605305, 0.716579,
		45.480297, 27.302689, 34.109612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.355000, 27.330727, 34.022999>,  <45.722908, 27.726402, 33.608006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.355000, 27.330727, 34.022999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.017921, 27.116293, 34.042912>,  <45.815674, 26.987633, 34.054859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.017921, 27.116293, 34.042912>,  <46.355000, 27.330727, 34.022999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.017921, 27.116293, 34.042912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529309, -0.841842, -0.105516,
		0.098473, -0.062568, 0.993171,
		-0.842695, -0.536084, 0.049781,
		45.765114, 26.955467, 34.057846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.557201, 26.612734, 34.290852>,  <46.355000, 27.330727, 34.022999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.557201, 26.612734, 34.290852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.189556, 26.558786, 34.142776>,  <45.968967, 26.526419, 34.053932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.189556, 26.558786, 34.142776>,  <46.557201, 26.612734, 34.290852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.189556, 26.558786, 34.142776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322468, -0.797349, -0.510145,
		-0.226365, -0.588255, 0.776347,
		-0.919115, -0.134868, -0.370186,
		45.913822, 26.518326, 34.031719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.396564, 25.930033, 34.438305>,  <46.557201, 26.612734, 34.290852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.396564, 25.930033, 34.438305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.158112, 26.042418, 34.137459>,  <46.015038, 26.109848, 33.956951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.158112, 26.042418, 34.137459>,  <46.396564, 25.930033, 34.438305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.158112, 26.042418, 34.137459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437815, -0.671483, -0.597854,
		-0.672978, -0.685705, 0.277325,
		-0.596170, 0.280926, -0.752105,
		45.979271, 26.126705, 33.911823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.464600, 25.376135, 34.032990>,  <46.396564, 25.930033, 34.438305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.464600, 25.376135, 34.032990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.281471, 25.625751, 33.779701>,  <46.171597, 25.775522, 33.627728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.281471, 25.625751, 33.779701>,  <46.464600, 25.376135, 34.032990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.281471, 25.625751, 33.779701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390225, -0.498925, -0.773820,
		-0.798828, -0.601370, -0.015100,
		-0.457818, 0.624041, -0.633225,
		46.144127, 25.812963, 33.589733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.063869, 24.938946, 33.584915>,  <46.464600, 25.376135, 34.032990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.063869, 24.938946, 33.584915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.153446, 25.271887, 33.382118>,  <46.207191, 25.471651, 33.260441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.153446, 25.271887, 33.382118>,  <46.063869, 24.938946, 33.584915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.153446, 25.271887, 33.382118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305144, -0.553931, -0.774627,
		-0.925601, 0.018766, -0.378036,
		0.223943, 0.832351, -0.506993,
		46.220631, 25.521591, 33.230019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.666309, 24.975672, 32.949310>,  <46.063869, 24.938946, 33.584915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.666309, 24.975672, 32.949310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.015858, 25.166071, 32.909752>,  <46.225586, 25.280310, 32.886017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.015858, 25.166071, 32.909752>,  <45.666309, 24.975672, 32.949310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.015858, 25.166071, 32.909752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170523, -0.490609, -0.854532,
		-0.455275, 0.729884, -0.509896,
		0.873869, 0.475996, -0.098900,
		46.278019, 25.308870, 32.880081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.590237, 25.208778, 32.349503>,  <45.666309, 24.975672, 32.949310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.590237, 25.208778, 32.349503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.979420, 25.202311, 32.441677>,  <46.212929, 25.198429, 32.496983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.979420, 25.202311, 32.441677>,  <45.590237, 25.208778, 32.349503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.979420, 25.202311, 32.441677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208020, -0.372418, -0.904451,
		0.100443, 0.927924, -0.358982,
		0.972954, -0.016170, 0.230433,
		46.271305, 25.197460, 32.510807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.230099, 25.624161, 31.835344>,  <45.590237, 25.208778, 32.349503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.230099, 25.624161, 31.835344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.194538, 25.435055, 31.484667>,  <45.173203, 25.321590, 31.274261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.194538, 25.435055, 31.484667>,  <45.230099, 25.624161, 31.835344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.194538, 25.435055, 31.484667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496504, 0.741993, -0.450478,
		0.863470, -0.475331, 0.168762,
		-0.088906, -0.472765, -0.876692,
		45.167866, 25.293226, 31.221659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.957546, 25.596361, 31.530434>,  <45.230099, 25.624161, 31.835344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.957546, 25.596361, 31.530434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.644192, 25.632164, 31.284412>,  <45.456177, 25.653646, 31.136799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.644192, 25.632164, 31.284412>,  <45.957546, 25.596361, 31.530434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.644192, 25.632164, 31.284412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428808, 0.794175, -0.430592,
		0.449918, -0.601061, -0.660530,
		-0.783388, 0.089509, -0.615054,
		45.409176, 25.659018, 31.099895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.306145, 25.661007, 30.901150>,  <45.957546, 25.596361, 31.530434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.306145, 25.661007, 30.901150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.929657, 25.791239, 30.865122>,  <45.703766, 25.869377, 30.843506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.929657, 25.791239, 30.865122>,  <46.306145, 25.661007, 30.901150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.929657, 25.791239, 30.865122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308217, 0.718547, -0.623452,
		-0.138264, -0.614563, -0.776656,
		-0.941215, 0.325579, -0.090070,
		45.647293, 25.888912, 30.838100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.182568, 25.722321, 30.191738>,  <46.306145, 25.661007, 30.901150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.182568, 25.722321, 30.191738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.933842, 25.984900, 30.362581>,  <45.784607, 26.142447, 30.465088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.933842, 25.984900, 30.362581>,  <46.182568, 25.722321, 30.191738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.933842, 25.984900, 30.362581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115362, 0.616188, -0.779104,
		-0.774622, -0.435185, -0.458883,
		-0.621813, 0.656449, 0.427109,
		45.747299, 26.181835, 30.490713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.490917, 25.833748, 29.825375>,  <46.182568, 25.722321, 30.191738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.490917, 25.833748, 29.825375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.655533, 26.134321, 30.031670>,  <45.754303, 26.314665, 30.155447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.655533, 26.134321, 30.031670>,  <45.490917, 25.833748, 29.825375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.655533, 26.134321, 30.031670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019907, 0.558333, -0.829378,
		-0.911176, 0.351585, 0.214816,
		0.411536, 0.751433, 0.515738,
		45.778996, 26.359751, 30.186392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.097691, 26.366350, 29.640219>,  <45.490917, 25.833748, 29.825375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.097691, 26.366350, 29.640219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.447971, 26.498823, 29.780767>,  <45.658138, 26.578306, 29.865097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.447971, 26.498823, 29.780767>,  <45.097691, 26.366350, 29.640219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.447971, 26.498823, 29.780767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094292, 0.596403, -0.797127,
		-0.473555, 0.731178, 0.491044,
		0.875702, 0.331182, 0.351374,
		45.710682, 26.598177, 29.886179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.157570, 26.902302, 29.279318>,  <45.097691, 26.366350, 29.640219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.157570, 26.902302, 29.279318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.490658, 26.926521, 29.499468>,  <45.690510, 26.941053, 29.631557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.490658, 26.926521, 29.499468>,  <45.157570, 26.902302, 29.279318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.490658, 26.926521, 29.499468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327873, 0.747068, -0.578264,
		-0.446179, 0.661985, 0.602246,
		0.832720, 0.060549, 0.550373,
		45.740475, 26.944687, 29.664579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.511497, 27.542467, 29.113420>,  <45.157570, 26.902302, 29.279318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.511497, 27.542467, 29.113420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.818878, 27.349237, 29.281290>,  <46.003307, 27.233299, 29.382011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.818878, 27.349237, 29.281290>,  <45.511497, 27.542467, 29.113420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.818878, 27.349237, 29.281290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636153, 0.505758, -0.582682,
		0.069225, 0.714738, 0.695958,
		0.768451, -0.483072, 0.419672,
		46.049412, 27.204315, 29.407192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.883102, 27.947948, 29.234665>,  <45.511497, 27.542467, 29.113420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.883102, 27.947948, 29.234665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.487461, 27.994242, 29.271044>,  <44.250076, 28.022017, 29.292871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.487461, 27.994242, 29.271044>,  <44.883102, 27.947948, 29.234665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.487461, 27.994242, 29.271044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135757, 0.478532, 0.867512,
		0.056878, 0.870410, -0.489032,
		-0.989108, 0.115732, 0.090947,
		44.190727, 28.028961, 29.298328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.682762, 28.675753, 29.247803>,  <44.883102, 27.947948, 29.234665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.682762, 28.675753, 29.247803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.473366, 28.440300, 29.494207>,  <44.347729, 28.299028, 29.642050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.473366, 28.440300, 29.494207>,  <44.682762, 28.675753, 29.247803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.473366, 28.440300, 29.494207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061279, 0.695110, 0.716287,
		-0.849824, 0.412719, -0.327813,
		-0.523492, -0.588630, 0.616012,
		44.316319, 28.263710, 29.679010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.112442, 29.088501, 29.388575>,  <44.682762, 28.675753, 29.247803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.112442, 29.088501, 29.388575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152199, 28.811779, 29.674658>,  <44.176052, 28.645746, 29.846308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.152199, 28.811779, 29.674658>,  <44.112442, 29.088501, 29.388575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.152199, 28.811779, 29.674658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062787, 0.712976, 0.698372,
		-0.993065, -0.114320, 0.027429,
		0.099394, -0.691807, 0.715209,
		44.182018, 28.604237, 29.889221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518806, 29.179111, 29.876898>,  <44.112442, 29.088501, 29.388575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.518806, 29.179111, 29.876898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815228, 28.990025, 30.067631>,  <43.993080, 28.876572, 30.182072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.815228, 28.990025, 30.067631>,  <43.518806, 29.179111, 29.876898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.815228, 28.990025, 30.067631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051135, 0.668369, 0.742070,
		-0.669492, -0.574299, 0.471127,
		0.741057, -0.472719, 0.476834,
		44.037544, 28.848209, 30.210682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.428207, 29.377089, 30.530813>,  <43.518806, 29.179111, 29.876898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.428207, 29.377089, 30.530813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.792053, 29.217939, 30.578648>,  <44.010361, 29.122450, 30.607349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.792053, 29.217939, 30.578648>,  <43.428207, 29.377089, 30.530813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.792053, 29.217939, 30.578648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040552, 0.371503, 0.927546,
		-0.413471, -0.838859, 0.354059,
		0.909614, -0.397871, 0.119588,
		44.064938, 29.098577, 30.614525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.402981, 29.331545, 31.211418>,  <43.428207, 29.377089, 30.530813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.402981, 29.331545, 31.211418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.788586, 29.293453, 31.112127>,  <44.019947, 29.270599, 31.052553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.788586, 29.293453, 31.112127>,  <43.402981, 29.331545, 31.211418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.788586, 29.293453, 31.112127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259275, 0.543319, 0.798487,
		0.058827, -0.834108, 0.548455,
		0.964010, -0.095228, -0.248225,
		44.077789, 29.264885, 31.037661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.660339, 29.045349, 31.766195>,  <43.402981, 29.331545, 31.211418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.660339, 29.045349, 31.766195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.974556, 29.191145, 31.566166>,  <44.163086, 29.278622, 31.446148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.974556, 29.191145, 31.566166>,  <43.660339, 29.045349, 31.766195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.974556, 29.191145, 31.566166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337910, 0.424335, 0.840093,
		0.518405, -0.828906, 0.210167,
		0.785540, 0.364491, -0.500073,
		44.210217, 29.300491, 31.416143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.326057, 28.975286, 32.224689>,  <43.660339, 29.045349, 31.766195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.326057, 28.975286, 32.224689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.450546, 29.259064, 31.971758>,  <44.525238, 29.429329, 31.820000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.450546, 29.259064, 31.971758>,  <44.326057, 28.975286, 32.224689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.450546, 29.259064, 31.971758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292347, 0.561636, 0.774015,
		0.904255, -0.425746, -0.032612,
		0.311217, 0.709441, -0.632327,
		44.543911, 29.471895, 31.782061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.015335, 29.081495, 32.372684>,  <44.326057, 28.975286, 32.224689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.015335, 29.081495, 32.372684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.903309, 29.417812, 32.187370>,  <44.836094, 29.619602, 32.076183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.903309, 29.417812, 32.187370>,  <45.015335, 29.081495, 32.372684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.903309, 29.417812, 32.187370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439617, 0.541348, 0.716714,
		0.853406, -0.002943, -0.521238,
		-0.280062, 0.840793, -0.463283,
		44.819290, 29.670050, 32.048386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.535023, 29.560478, 32.479576>,  <45.015335, 29.081495, 32.372684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.535023, 29.560478, 32.479576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.213478, 29.780745, 32.389626>,  <45.020550, 29.912905, 32.335655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.213478, 29.780745, 32.389626>,  <45.535023, 29.560478, 32.479576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.213478, 29.780745, 32.389626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224483, 0.630965, 0.742624,
		0.550829, 0.546486, -0.630825,
		-0.803863, 0.550668, -0.224877,
		44.972321, 29.945946, 32.322163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.845478, 30.196468, 32.553604>,  <45.535023, 29.560478, 32.479576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.845478, 30.196468, 32.553604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.451229, 30.254515, 32.588226>,  <45.214680, 30.289343, 32.609001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.451229, 30.254515, 32.588226>,  <45.845478, 30.196468, 32.553604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.451229, 30.254515, 32.588226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166258, 0.741524, 0.650001,
		0.030142, 0.655045, -0.754988,
		-0.985622, 0.145115, 0.086555,
		45.155544, 30.298050, 32.614193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.627167, 30.838711, 32.354485>,  <45.845478, 30.196468, 32.553604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.627167, 30.838711, 32.354485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.340195, 30.743271, 32.616283>,  <45.168011, 30.686007, 32.773361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.340195, 30.743271, 32.616283>,  <45.627167, 30.838711, 32.354485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.340195, 30.743271, 32.616283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045716, 0.921365, 0.386001,
		-0.695126, 0.306851, -0.650109,
		-0.717433, -0.238599, 0.654493,
		45.124966, 30.671692, 32.812630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.269146, 31.412685, 32.458817>,  <45.627167, 30.838711, 32.354485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.269146, 31.412685, 32.458817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.145882, 31.189978, 32.767372>,  <45.071922, 31.056353, 32.952507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.145882, 31.189978, 32.767372>,  <45.269146, 31.412685, 32.458817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.145882, 31.189978, 32.767372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010099, 0.812722, 0.582564,
		-0.951279, 0.171736, -0.256076,
		-0.308165, -0.556767, 0.771391,
		45.053432, 31.022947, 32.998791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.764301, 31.747116, 32.659210>,  <45.269146, 31.412685, 32.458817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.764301, 31.747116, 32.659210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.864456, 31.517220, 32.970844>,  <44.924549, 31.379282, 33.157825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.864456, 31.517220, 32.970844>,  <44.764301, 31.747116, 32.659210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.864456, 31.517220, 32.970844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123197, 0.779267, 0.614464,
		-0.960275, -0.249836, 0.124314,
		0.250389, -0.574740, 0.779089,
		44.939571, 31.344797, 33.204571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.339127, 31.960554, 33.147507>,  <44.764301, 31.747116, 32.659210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.339127, 31.960554, 33.147507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.652008, 31.792643, 33.331657>,  <44.839737, 31.691896, 33.442146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.652008, 31.792643, 33.331657>,  <44.339127, 31.960554, 33.147507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.652008, 31.792643, 33.331657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001580, 0.737598, 0.675238,
		-0.623025, -0.528899, 0.576287,
		0.782200, -0.419779, 0.460377,
		44.886669, 31.666708, 33.469772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.277298, 32.162415, 33.936951>,  <44.339127, 31.960554, 33.147507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.277298, 32.162415, 33.936951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.655430, 32.036045, 33.904598>,  <44.882309, 31.960224, 33.885189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.655430, 32.036045, 33.904598>,  <44.277298, 32.162415, 33.936951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.655430, 32.036045, 33.904598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250469, 0.544548, 0.800457,
		-0.208841, -0.776955, 0.593908,
		0.945331, -0.315924, -0.080879,
		44.939030, 31.941267, 33.880333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.511505, 31.845663, 34.638721>,  <44.277298, 32.162415, 33.936951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.511505, 31.845663, 34.638721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.844921, 31.947332, 34.442513>,  <45.044971, 32.008335, 34.324787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.844921, 31.947332, 34.442513>,  <44.511505, 31.845663, 34.638721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.844921, 31.947332, 34.442513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390097, 0.357937, 0.848355,
		0.391206, -0.898486, 0.199201,
		0.833536, 0.254174, -0.490524,
		45.094982, 32.023586, 34.295357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.976318, 31.458897, 35.042534>,  <44.511505, 31.845663, 34.638721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.976318, 31.458897, 35.042534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.177933, 31.745163, 34.849136>,  <45.298901, 31.916924, 34.733097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.177933, 31.745163, 34.849136>,  <44.976318, 31.458897, 35.042534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.177933, 31.745163, 34.849136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222499, 0.433319, 0.873343,
		0.834530, -0.547775, 0.059174,
		0.504037, 0.715666, -0.483498,
		45.329144, 31.959862, 34.704086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.501808, 31.571024, 35.513809>,  <44.976318, 31.458897, 35.042534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.501808, 31.571024, 35.513809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.500465, 31.869078, 35.247047>,  <45.499660, 32.047909, 35.086990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.500465, 31.869078, 35.247047>,  <45.501808, 31.571024, 35.513809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.500465, 31.869078, 35.247047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465525, 0.591401, 0.658431,
		0.885028, -0.308251, -0.348864,
		-0.003357, 0.745135, -0.666905,
		45.499458, 32.092617, 35.046974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.176331, 31.883038, 35.511951>,  <45.501808, 31.571024, 35.513809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.176331, 31.883038, 35.511951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.925816, 32.169685, 35.389168>,  <45.775505, 32.341675, 35.315498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.925816, 32.169685, 35.389168>,  <46.176331, 31.883038, 35.511951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.925816, 32.169685, 35.389168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434037, 0.647594, 0.626286,
		0.647594, 0.259001, -0.716617,
		-0.626286, 0.716617, -0.306961,
		45.737930, 32.384670, 35.297081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.536972, 32.590069, 35.450214>,  <46.176331, 31.883038, 35.511951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.536972, 32.590069, 35.450214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.152843, 32.692394, 35.494652>,  <45.922367, 32.753788, 35.521317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.152843, 32.692394, 35.494652>,  <46.536972, 32.590069, 35.450214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.152843, 32.692394, 35.494652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230126, 0.501765, 0.833831,
		0.157560, 0.826312, -0.540725,
		-0.960321, 0.255813, 0.111098,
		45.864746, 32.769138, 35.527981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.630634, 33.216904, 35.780220>,  <46.536972, 32.590069, 35.450214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.630634, 33.216904, 35.780220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.240711, 33.131119, 35.804756>,  <46.006760, 33.079647, 35.819477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.240711, 33.131119, 35.804756>,  <46.630634, 33.216904, 35.780220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.240711, 33.131119, 35.804756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007366, 0.243891, 0.969775,
		-0.222945, 0.945791, -0.236166,
		-0.974803, -0.214467, 0.061340,
		45.948269, 33.066780, 35.823158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.127335, 33.713856, 35.794971>,  <46.630634, 33.216904, 35.780220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.127335, 33.713856, 35.794971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.070717, 34.095158, 35.901760>,  <47.036747, 34.323940, 35.965832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.070717, 34.095158, 35.901760>,  <47.127335, 33.713856, 35.794971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.070717, 34.095158, 35.901760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802602, 0.268373, -0.532734,
		-0.579478, 0.138863, -0.803070,
		-0.141545, 0.953254, 0.266968,
		47.028252, 34.381134, 35.981850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.930489, 34.150581, 35.223499>,  <47.127335, 33.713856, 35.794971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.930489, 34.150581, 35.223499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.115250, 34.387016, 35.487999>,  <47.226109, 34.528877, 35.646698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.115250, 34.387016, 35.487999>,  <46.930489, 34.150581, 35.223499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.115250, 34.387016, 35.487999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686486, 0.233806, -0.688529,
		-0.561588, 0.771976, -0.297779,
		0.461905, 0.591091, 0.661253,
		47.253822, 34.564342, 35.686375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.027451, 34.893879, 34.957775>,  <46.930489, 34.150581, 35.223499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.027451, 34.893879, 34.957775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.341099, 34.767284, 35.171310>,  <47.529289, 34.691330, 35.299431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.341099, 34.767284, 35.171310>,  <47.027451, 34.893879, 34.957775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.341099, 34.767284, 35.171310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577963, 0.059045, -0.813924,
		0.226073, 0.946758, 0.229215,
		0.784123, -0.316485, 0.533843,
		47.576336, 34.672340, 35.331463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.648224, 35.296383, 34.673889>,  <47.027451, 34.893879, 34.957775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.648224, 35.296383, 34.673889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.798359, 34.946426, 34.796318>,  <47.888439, 34.736450, 34.869774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.798359, 34.946426, 34.796318>,  <47.648224, 35.296383, 34.673889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.798359, 34.946426, 34.796318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662501, 0.022283, -0.748730,
		0.648240, 0.483799, 0.587982,
		0.375337, -0.874896, 0.306072,
		47.910961, 34.683956, 34.888138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.111889, 40.312561, 43.445061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.718357, 40.257156, 43.490482>,  <35.482239, 40.223915, 43.517735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.718357, 40.257156, 43.490482>,  <36.111889, 40.312561, 43.445061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718357, 40.257156, 43.490482> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007176, -0.603016, -0.797697,
		0.178963, -0.785612, 0.592271,
		-0.983830, -0.138508, 0.113555,
		35.423206, 40.215603, 43.524548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052288, 39.604397, 43.393890>,  <36.111889, 40.312561, 43.445061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052288, 39.604397, 43.393890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.688316, 39.765255, 43.353275>,  <35.469933, 39.861771, 43.328907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.688316, 39.765255, 43.353275>,  <36.052288, 39.604397, 43.393890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688316, 39.765255, 43.353275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166843, -0.579019, -0.798060,
		-0.379732, -0.709235, 0.593960,
		-0.909927, 0.402147, -0.101541,
		35.415337, 39.885899, 43.322811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445728, 39.136868, 43.455414>,  <36.052288, 39.604397, 43.393890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445728, 39.136868, 43.455414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.342113, 39.447350, 43.225491>,  <35.279945, 39.633640, 43.087536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.342113, 39.447350, 43.225491>,  <35.445728, 39.136868, 43.455414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342113, 39.447350, 43.225491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164871, -0.621920, -0.765528,
		-0.951692, -0.103529, 0.289073,
		-0.259034, 0.776207, -0.574808,
		35.264404, 39.680210, 43.053047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922237, 38.865273, 43.109280>,  <35.445728, 39.136868, 43.455414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922237, 38.865273, 43.109280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.031345, 39.163239, 42.865738>,  <35.096809, 39.342018, 42.719612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.031345, 39.163239, 42.865738>,  <34.922237, 38.865273, 43.109280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031345, 39.163239, 42.865738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213942, -0.570041, -0.793273,
		-0.937989, 0.346642, 0.003876,
		0.272772, 0.744911, -0.608854,
		35.113178, 39.386711, 42.683083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364742, 38.947231, 42.524654>,  <34.922237, 38.865273, 43.109280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364742, 38.947231, 42.524654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.683731, 39.156059, 42.403671>,  <34.875126, 39.281357, 42.331081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.683731, 39.156059, 42.403671>,  <34.364742, 38.947231, 42.524654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683731, 39.156059, 42.403671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076582, -0.409656, -0.909020,
		-0.598474, 0.748082, -0.286708,
		0.797474, 0.522068, -0.302458,
		34.922974, 39.312679, 42.312935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209553, 39.218262, 41.772884>,  <34.364742, 38.947231, 42.524654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209553, 39.218262, 41.772884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.608440, 39.247120, 41.765499>,  <34.847775, 39.264435, 41.761066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.608440, 39.247120, 41.765499>,  <34.209553, 39.218262, 41.772884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608440, 39.247120, 41.765499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017059, -0.462672, -0.886366,
		-0.072490, 0.883590, -0.462618,
		0.997223, 0.072144, -0.018466,
		34.907608, 39.268764, 41.759960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303471, 39.297363, 41.077770>,  <34.209553, 39.218262, 41.772884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303471, 39.297363, 41.077770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.656738, 39.181789, 41.225574>,  <34.868698, 39.112446, 41.314259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.656738, 39.181789, 41.225574>,  <34.303471, 39.297363, 41.077770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656738, 39.181789, 41.225574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169992, -0.537054, -0.826242,
		0.437176, 0.792521, -0.425191,
		0.883165, -0.288934, 0.369509,
		34.921688, 39.095108, 41.336426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733364, 39.453438, 40.543850>,  <34.303471, 39.297363, 41.077770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733364, 39.453438, 40.543850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.925781, 39.182335, 40.766289>,  <35.041229, 39.019672, 40.899754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.925781, 39.182335, 40.766289>,  <34.733364, 39.453438, 40.543850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925781, 39.182335, 40.766289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288130, -0.476857, -0.830415,
		0.827998, 0.559692, -0.034106,
		0.481040, -0.677755, 0.556101,
		35.070095, 38.979008, 40.933121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.237953, 39.224300, 40.052387>,  <34.733364, 39.453438, 40.543850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.237953, 39.224300, 40.052387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.289333, 38.956703, 40.345222>,  <35.320160, 38.796146, 40.520924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.289333, 38.956703, 40.345222>,  <35.237953, 39.224300, 40.052387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289333, 38.956703, 40.345222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448954, -0.619000, -0.644422,
		0.884275, 0.411447, 0.220838,
		0.128447, -0.668992, 0.732087,
		35.327866, 38.756004, 40.564850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921505, 38.962147, 40.041451>,  <35.237953, 39.224300, 40.052387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921505, 38.962147, 40.041451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.708889, 38.676243, 40.223259>,  <35.581318, 38.504700, 40.332344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.708889, 38.676243, 40.223259>,  <35.921505, 38.962147, 40.041451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.708889, 38.676243, 40.223259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405888, -0.685915, -0.603966,
		0.743451, -0.136547, 0.654703,
		-0.531541, -0.714755, 0.454521,
		35.549427, 38.461815, 40.359615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410690, 38.406597, 40.187977>,  <35.921505, 38.962147, 40.041451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410690, 38.406597, 40.187977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.064278, 38.206608, 40.189522>,  <35.856430, 38.086617, 40.190449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.064278, 38.206608, 40.189522>,  <36.410690, 38.406597, 40.187977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064278, 38.206608, 40.189522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394258, -0.687634, -0.609688,
		0.307483, -0.526487, 0.792632,
		-0.866034, -0.499970, 0.003864,
		35.804466, 38.056618, 40.190681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565540, 37.721180, 40.252766>,  <36.410690, 38.406597, 40.187977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565540, 37.721180, 40.252766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.204365, 37.713120, 40.081047>,  <35.987659, 37.708282, 39.978016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.204365, 37.713120, 40.081047>,  <36.565540, 37.721180, 40.252766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204365, 37.713120, 40.081047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275878, -0.793103, -0.543027,
		-0.329534, -0.608754, 0.721683,
		-0.902939, -0.020151, -0.429297,
		35.933483, 37.707073, 39.952259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298958, 36.924946, 40.302879>,  <36.565540, 37.721180, 40.252766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298958, 36.924946, 40.302879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.136089, 37.124928, 39.997135>,  <36.038368, 37.244919, 39.813686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.136089, 37.124928, 39.997135>,  <36.298958, 36.924946, 40.302879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136089, 37.124928, 39.997135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223754, -0.756775, -0.614187,
		-0.885518, -0.421111, 0.196272,
		-0.407175, 0.499957, -0.764363,
		36.013935, 37.274914, 39.767826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897739, 36.430138, 39.975689>,  <36.298958, 36.924946, 40.302879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897739, 36.430138, 39.975689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.893829, 36.710526, 39.690441>,  <35.891483, 36.878757, 39.519291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.893829, 36.710526, 39.690441>,  <35.897739, 36.430138, 39.975689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893829, 36.710526, 39.690441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154402, -0.703544, -0.693676,
		-0.987960, -0.116886, -0.101357,
		-0.009772, 0.700973, -0.713121,
		35.890900, 36.920818, 39.476505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382511, 36.148964, 39.442955>,  <35.897739, 36.430138, 39.975689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382511, 36.148964, 39.442955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.616341, 36.417675, 39.260975>,  <35.756638, 36.578903, 39.151787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.616341, 36.417675, 39.260975>,  <35.382511, 36.148964, 39.442955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616341, 36.417675, 39.260975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011938, -0.567803, -0.823078,
		-0.811252, 0.475720, -0.339943,
		0.584575, 0.671781, -0.454952,
		35.791714, 36.619209, 39.124489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052425, 36.227001, 38.847027>,  <35.382511, 36.148964, 39.442955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052425, 36.227001, 38.847027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.426624, 36.359745, 38.798504>,  <35.651142, 36.439392, 38.769390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.426624, 36.359745, 38.798504>,  <35.052425, 36.227001, 38.847027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426624, 36.359745, 38.798504> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107428, -0.594207, -0.797106,
		-0.336604, 0.732660, -0.591530,
		0.935498, 0.331855, -0.121304,
		35.707275, 36.459301, 38.762112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133991, 36.385582, 38.150181>,  <35.052425, 36.227001, 38.847027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133991, 36.385582, 38.150181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.524811, 36.354832, 38.229641>,  <35.759304, 36.336380, 38.277317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.524811, 36.354832, 38.229641>,  <35.133991, 36.385582, 38.150181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524811, 36.354832, 38.229641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152819, -0.396651, -0.905160,
		0.148382, 0.914744, -0.375800,
		0.977051, -0.076880, 0.198647,
		35.817924, 36.331768, 38.289234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450409, 36.703648, 37.584496>,  <35.133991, 36.385582, 38.150181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450409, 36.703648, 37.584496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.711220, 36.460617, 37.765915>,  <35.867706, 36.314800, 37.874767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.711220, 36.460617, 37.765915>,  <35.450409, 36.703648, 37.584496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711220, 36.460617, 37.765915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244233, -0.398001, -0.884277,
		0.717780, 0.687346, -0.111118,
		0.652030, -0.607577, 0.453550,
		35.906830, 36.278343, 37.901981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953072, 36.729210, 37.206066>,  <35.450409, 36.703648, 37.584496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953072, 36.729210, 37.206066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.062599, 36.393219, 37.393456>,  <36.128315, 36.191624, 37.505890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.062599, 36.393219, 37.393456>,  <35.953072, 36.729210, 37.206066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062599, 36.393219, 37.393456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326197, -0.377109, -0.866824,
		0.904776, 0.390166, 0.170739,
		0.273818, -0.839976, 0.468470,
		36.144745, 36.141228, 37.533997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620609, 36.613564, 37.052536>,  <35.953072, 36.729210, 37.206066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620609, 36.613564, 37.052536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.508503, 36.248001, 37.169998>,  <36.441238, 36.028664, 37.240475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.508503, 36.248001, 37.169998>,  <36.620609, 36.613564, 37.052536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508503, 36.248001, 37.169998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356399, -0.383118, -0.852174,
		0.891310, -0.134172, 0.433087,
		-0.280262, -0.913903, 0.293658,
		36.424423, 35.973831, 37.258095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224194, 36.220245, 36.969139>,  <36.620609, 36.613564, 37.052536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224194, 36.220245, 36.969139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.903988, 35.981018, 36.984581>,  <36.711864, 35.837482, 36.993847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.903988, 35.981018, 36.984581>,  <37.224194, 36.220245, 36.969139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903988, 35.981018, 36.984581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399575, -0.580619, -0.709381,
		0.446671, -0.552446, 0.703767,
		-0.800515, -0.598068, 0.038602,
		36.663834, 35.801598, 36.996162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468807, 35.512413, 37.221977>,  <37.224194, 36.220245, 36.969139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468807, 35.512413, 37.221977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.134838, 35.467934, 37.006371>,  <36.934456, 35.441246, 36.877007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.134838, 35.467934, 37.006371>,  <37.468807, 35.512413, 37.221977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134838, 35.467934, 37.006371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422511, -0.757105, -0.498273,
		-0.352682, -0.643760, 0.679109,
		-0.834925, -0.111199, -0.539012,
		36.884361, 35.434574, 36.844666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117443, 35.190479, 37.082317>,  <37.468807, 35.512413, 37.221977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117443, 35.190479, 37.082317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.509720, 35.254585, 37.037502>,  <38.745087, 35.293049, 37.010612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.509720, 35.254585, 37.037502>,  <38.117443, 35.190479, 37.082317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509720, 35.254585, 37.037502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080602, 0.853331, 0.515102,
		0.178157, -0.496128, 0.849775,
		0.980696, 0.160262, -0.112038,
		38.803928, 35.302666, 37.003891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523327, 35.224754, 37.792381>,  <38.117443, 35.190479, 37.082317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523327, 35.224754, 37.792381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.701221, 35.443851, 37.508919>,  <38.807961, 35.575310, 37.338840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.701221, 35.443851, 37.508919>,  <38.523327, 35.224754, 37.792381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701221, 35.443851, 37.508919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126742, 0.744757, 0.655189,
		0.886647, -0.381204, 0.261801,
		0.444739, 0.547741, -0.708652,
		38.834644, 35.608173, 37.296322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030975, 35.510643, 38.141376>,  <38.523327, 35.224754, 37.792381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030975, 35.510643, 38.141376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.989677, 35.723423, 37.805195>,  <38.964897, 35.851089, 37.603485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.989677, 35.723423, 37.805195>,  <39.030975, 35.510643, 38.141376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989677, 35.723423, 37.805195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037926, 0.846463, 0.531094,
		0.993932, 0.022960, -0.107571,
		-0.103249, 0.531951, -0.840457,
		38.958702, 35.883007, 37.553059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542625, 35.992222, 38.157890>,  <39.030975, 35.510643, 38.141376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542625, 35.992222, 38.157890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.239246, 36.113903, 37.927338>,  <39.057220, 36.186913, 37.789005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.239246, 36.113903, 37.927338>,  <39.542625, 35.992222, 38.157890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239246, 36.113903, 37.927338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074167, 0.838356, 0.540054,
		0.647500, 0.452351, -0.613288,
		-0.758448, 0.304199, -0.576385,
		39.011711, 36.205162, 37.754421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644093, 36.733147, 37.974346>,  <39.542625, 35.992222, 38.157890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644093, 36.733147, 37.974346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.254421, 36.661987, 37.918728>,  <39.020618, 36.619289, 37.885357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.254421, 36.661987, 37.918728>,  <39.644093, 36.733147, 37.974346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254421, 36.661987, 37.918728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225564, 0.739096, 0.634711,
		-0.010152, 0.649682, -0.760138,
		-0.974176, -0.177903, -0.139042,
		38.962170, 36.608616, 37.877014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374020, 37.316502, 37.814484>,  <39.644093, 36.733147, 37.974346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374020, 37.316502, 37.814484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.028931, 37.130203, 37.893253>,  <38.821877, 37.018425, 37.940517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.028931, 37.130203, 37.893253>,  <39.374020, 37.316502, 37.814484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028931, 37.130203, 37.893253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315043, 0.799681, 0.511134,
		-0.395540, 0.378928, -0.836637,
		-0.862726, -0.465750, 0.196927,
		38.770111, 36.990479, 37.952332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.912975, 37.774334, 37.762993>,  <39.374020, 37.316502, 37.814484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.912975, 37.774334, 37.762993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.726990, 37.521610, 38.011063>,  <38.615398, 37.369976, 38.159904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.726990, 37.521610, 38.011063>,  <38.912975, 37.774334, 37.762993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726990, 37.521610, 38.011063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232930, 0.763126, 0.602811,
		-0.854138, 0.135829, -0.501996,
		-0.464965, -0.631814, 0.620176,
		38.587502, 37.332066, 38.197117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379353, 38.156521, 38.062553>,  <38.912975, 37.774334, 37.762993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379353, 38.156521, 38.062553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.408230, 37.843605, 38.310040>,  <38.425556, 37.655853, 38.458530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.408230, 37.843605, 38.310040>,  <38.379353, 38.156521, 38.062553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408230, 37.843605, 38.310040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251158, 0.586081, 0.770343,
		-0.965250, -0.211011, -0.154167,
		0.072197, -0.782294, 0.618711,
		38.429890, 37.608917, 38.495651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870903, 38.259258, 38.622540>,  <38.379353, 38.156521, 38.062553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870903, 38.259258, 38.622540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.125549, 37.986008, 38.765682>,  <38.278336, 37.822060, 38.851566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.125549, 37.986008, 38.765682>,  <37.870903, 38.259258, 38.622540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125549, 37.986008, 38.765682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149871, 0.345596, 0.926338,
		-0.756477, -0.643354, 0.117631,
		0.636617, -0.683124, 0.357855,
		38.316536, 37.781071, 38.873039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507153, 37.873951, 39.249252>,  <37.870903, 38.259258, 38.622540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507153, 37.873951, 39.249252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.904781, 37.860882, 39.290733>,  <38.143360, 37.853039, 39.315620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.904781, 37.860882, 39.290733>,  <37.507153, 37.873951, 39.249252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904781, 37.860882, 39.290733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092779, 0.242420, 0.965725,
		-0.056692, -0.969621, 0.237952,
		0.994071, -0.032672, 0.103704,
		38.203003, 37.851082, 39.321846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636814, 37.393353, 39.729126>,  <37.507153, 37.873951, 39.249252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636814, 37.393353, 39.729126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.953274, 37.637054, 39.707619>,  <38.143150, 37.783276, 39.694714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.953274, 37.637054, 39.707619>,  <37.636814, 37.393353, 39.729126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953274, 37.637054, 39.707619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069052, 0.176323, 0.981907,
		0.607710, -0.773125, 0.181568,
		0.791151, 0.609253, -0.053767,
		38.190620, 37.819832, 39.691490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895741, 37.329342, 40.331024>,  <37.636814, 37.393353, 39.729126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895741, 37.329342, 40.331024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.095726, 37.655777, 40.215069>,  <38.215717, 37.851639, 40.145496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.095726, 37.655777, 40.215069>,  <37.895741, 37.329342, 40.331024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095726, 37.655777, 40.215069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083608, 0.287681, 0.954070,
		0.861999, -0.501241, 0.075600,
		0.499968, 0.816086, -0.289889,
		38.245716, 37.900604, 40.128101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509232, 37.415878, 40.754444>,  <37.895741, 37.329342, 40.331024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509232, 37.415878, 40.754444> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.449886, 37.775833, 40.590401>,  <38.414280, 37.991806, 40.491974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.449886, 37.775833, 40.590401>,  <38.509232, 37.415878, 40.754444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449886, 37.775833, 40.590401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108413, 0.397398, 0.911220,
		0.982973, 0.179650, 0.038601,
		-0.148360, 0.899889, -0.410108,
		38.405376, 38.045799, 40.467369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676453, 37.859348, 41.224747>,  <38.509232, 37.415878, 40.754444>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676453, 37.859348, 41.224747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.493935, 38.149044, 41.017952>,  <38.384426, 38.322861, 40.893875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.493935, 38.149044, 41.017952>,  <38.676453, 37.859348, 41.224747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493935, 38.149044, 41.017952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185240, 0.490954, 0.851264,
		0.870335, 0.484192, -0.089860,
		-0.456292, 0.724239, -0.516986,
		38.357048, 38.366318, 40.862858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090500, 38.543800, 41.305687>,  <38.676453, 37.859348, 41.224747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090500, 38.543800, 41.305687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.703915, 38.619629, 41.236385>,  <38.471966, 38.665127, 41.194805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.703915, 38.619629, 41.236385>,  <39.090500, 38.543800, 41.305687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703915, 38.619629, 41.236385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014684, 0.632727, 0.774235,
		0.256399, 0.750811, -0.608721,
		-0.966459, 0.189575, -0.173256,
		38.413979, 38.676502, 41.184410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057838, 39.205925, 41.462811>,  <39.090500, 38.543800, 41.305687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057838, 39.205925, 41.462811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.668491, 39.114769, 41.452797>,  <38.434883, 39.060074, 41.446789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.668491, 39.114769, 41.452797>,  <39.057838, 39.205925, 41.462811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668491, 39.114769, 41.452797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167580, 0.632726, 0.756026,
		-0.156455, 0.740083, -0.654063,
		-0.973365, -0.227892, -0.025030,
		38.376480, 39.046402, 41.445290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709785, 39.795280, 41.496754>,  <39.057838, 39.205925, 41.462811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709785, 39.795280, 41.496754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.421158, 39.537540, 41.598061>,  <38.247982, 39.382896, 41.658844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.421158, 39.537540, 41.598061>,  <38.709785, 39.795280, 41.496754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421158, 39.537540, 41.598061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289990, 0.613465, 0.734551,
		-0.628682, 0.456586, -0.629515,
		-0.721571, -0.644352, 0.253269,
		38.204685, 39.344234, 41.674042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042118, 40.189980, 41.693810>,  <38.709785, 39.795280, 41.496754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042118, 40.189980, 41.693810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.988743, 39.836689, 41.873631>,  <37.956718, 39.624714, 41.981522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.988743, 39.836689, 41.873631>,  <38.042118, 40.189980, 41.693810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988743, 39.836689, 41.873631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352796, 0.466229, 0.811274,
		-0.926137, -0.050347, -0.373813,
		-0.133437, -0.883230, 0.449554,
		37.948711, 39.571720, 42.008495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.426311, 40.307575, 42.021469> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.570843, 39.993336, 42.222374>,  <37.657562, 39.804790, 42.342918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.570843, 39.993336, 42.222374>,  <37.426311, 40.307575, 42.021469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570843, 39.993336, 42.222374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481314, 0.304203, 0.822069,
		-0.798610, -0.538785, -0.268204,
		0.361330, -0.785603, 0.502264,
		37.679241, 39.757656, 42.373055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881443, 40.044411, 42.385891>,  <37.426311, 40.307575, 42.021469>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881443, 40.044411, 42.385891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.220612, 39.930702, 42.564873>,  <37.424114, 39.862476, 42.672264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.220612, 39.930702, 42.564873>,  <36.881443, 40.044411, 42.385891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220612, 39.930702, 42.564873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309237, 0.420343, 0.853044,
		-0.430586, -0.861684, 0.268509,
		0.847920, -0.284276, 0.447458,
		37.474987, 39.845421, 42.699112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705410, 39.712978, 42.988804>,  <36.881443, 40.044411, 42.385891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705410, 39.712978, 42.988804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.077496, 39.848667, 43.044846>,  <37.300747, 39.930080, 43.078472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.077496, 39.848667, 43.044846>,  <36.705410, 39.712978, 42.988804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077496, 39.848667, 43.044846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255830, 0.325594, 0.910242,
		0.263152, -0.882564, 0.389654,
		0.930216, 0.339217, 0.140106,
		37.356560, 39.950436, 43.086876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840050, 39.511990, 43.666981>,  <36.705410, 39.712978, 42.988804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840050, 39.511990, 43.666981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.123062, 39.777954, 43.571239>,  <37.292870, 39.937534, 43.513794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.123062, 39.777954, 43.571239>,  <36.840050, 39.511990, 43.666981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123062, 39.777954, 43.571239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013183, 0.326215, 0.945204,
		0.706561, -0.671915, 0.222041,
		0.707530, 0.664916, -0.239349,
		37.335320, 39.977428, 43.499435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264183, 39.509911, 44.226204>,  <36.840050, 39.511990, 43.666981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264183, 39.509911, 44.226204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.352077, 39.846283, 44.028397>,  <37.404812, 40.048107, 43.909714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.352077, 39.846283, 44.028397>,  <37.264183, 39.509911, 44.226204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352077, 39.846283, 44.028397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098957, 0.485077, 0.868854,
		0.970528, -0.239852, 0.023372,
		0.219734, 0.840934, -0.494516,
		37.417999, 40.098564, 43.880043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747116, 39.883450, 44.602779>,  <37.264183, 39.509911, 44.226204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747116, 39.883450, 44.602779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.645054, 40.196514, 44.375679>,  <37.583817, 40.384354, 44.239418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.645054, 40.196514, 44.375679>,  <37.747116, 39.883450, 44.602779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645054, 40.196514, 44.375679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171253, 0.614486, 0.770117,
		0.951613, 0.099272, -0.290824,
		-0.255158, 0.782657, -0.567752,
		37.568508, 40.431313, 44.205353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293655, 40.346989, 44.567421>,  <37.747116, 39.883450, 44.602779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293655, 40.346989, 44.567421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.952896, 40.548790, 44.511204>,  <37.748440, 40.669868, 44.477474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.952896, 40.548790, 44.511204>,  <38.293655, 40.346989, 44.567421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952896, 40.548790, 44.511204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189366, 0.546935, 0.815477,
		0.488274, 0.668089, -0.561468,
		-0.851897, 0.504499, -0.140541,
		37.697327, 40.700138, 44.469040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399616, 40.955032, 44.855179>,  <38.293655, 40.346989, 44.567421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399616, 40.955032, 44.855179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.002190, 40.986671, 44.822742>,  <37.763733, 41.005653, 44.803280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.002190, 40.986671, 44.822742>,  <38.399616, 40.955032, 44.855179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002190, 40.986671, 44.822742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002307, 0.701575, 0.712592,
		0.113255, 0.708192, -0.696877,
		-0.993563, 0.079097, -0.081090,
		37.704121, 41.010399, 44.798416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245205, 41.693748, 44.825268>,  <38.399616, 40.955032, 44.855179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245205, 41.693748, 44.825268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.927483, 41.498653, 44.970150>,  <37.736851, 41.381596, 45.057079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.927483, 41.498653, 44.970150>,  <38.245205, 41.693748, 44.825268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927483, 41.498653, 44.970150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110124, 0.701924, 0.703687,
		-0.597456, 0.519053, -0.611253,
		-0.794304, -0.487736, 0.362208,
		37.689190, 41.352333, 45.078812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803211, 42.232269, 45.099464>,  <38.245205, 41.693748, 44.825268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803211, 42.232269, 45.099464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.698723, 41.882904, 45.263863>,  <37.636032, 41.673286, 45.362503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.698723, 41.882904, 45.263863>,  <37.803211, 42.232269, 45.099464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698723, 41.882904, 45.263863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016310, 0.421723, 0.906578,
		-0.965142, 0.243518, -0.095916,
		-0.261218, -0.873412, 0.410995,
		37.620358, 41.620880, 45.387161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374485, 42.421284, 45.594440>,  <37.803211, 42.232269, 45.099464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374485, 42.421284, 45.594440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.466377, 42.054615, 45.725243>,  <37.521515, 41.834614, 45.803722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.466377, 42.054615, 45.725243>,  <37.374485, 42.421284, 45.594440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466377, 42.054615, 45.725243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189998, 0.371768, 0.908674,
		-0.954528, -0.146623, 0.259574,
		0.229734, -0.916673, 0.327005,
		37.535297, 41.779613, 45.823345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182655, 42.460152, 46.215446>,  <37.374485, 42.421284, 45.594440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182655, 42.460152, 46.215446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.405842, 42.129192, 46.241016>,  <37.539753, 41.930618, 46.256359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.405842, 42.129192, 46.241016>,  <37.182655, 42.460152, 46.215446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405842, 42.129192, 46.241016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325989, 0.289373, 0.899997,
		-0.763152, -0.481332, 0.431183,
		0.557970, -0.827395, 0.063926,
		37.573235, 41.880974, 46.260193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146523, 42.172844, 46.957951>,  <37.182655, 42.460152, 46.215446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146523, 42.172844, 46.957951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.474060, 42.018021, 46.788395>,  <37.670582, 41.925125, 46.686661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.474060, 42.018021, 46.788395>,  <37.146523, 42.172844, 46.957951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474060, 42.018021, 46.788395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488410, 0.081817, 0.868770,
		-0.301583, -0.918418, 0.256038,
		0.818842, -0.387058, -0.423890,
		37.719711, 41.901905, 46.661228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332542, 41.774670, 47.510960>,  <37.146523, 42.172844, 46.957951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332542, 41.774670, 47.510960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.646420, 41.825470, 47.268265>,  <37.834747, 41.855949, 47.122646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.646420, 41.825470, 47.268265>,  <37.332542, 41.774670, 47.510960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646420, 41.825470, 47.268265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575440, 0.214708, 0.789157,
		0.230504, -0.968385, 0.095391,
		0.784688, 0.127012, -0.606738,
		37.881828, 41.863571, 47.086243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803764, 41.329479, 47.731731>,  <37.332542, 41.774670, 47.510960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803764, 41.329479, 47.731731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.009697, 41.604477, 47.526871>,  <38.133255, 41.769474, 47.403954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.009697, 41.604477, 47.526871>,  <37.803764, 41.329479, 47.731731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009697, 41.604477, 47.526871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472561, 0.270868, 0.838640,
		0.715287, -0.673780, -0.185432,
		0.514831, 0.687496, -0.512151,
		38.164146, 41.810726, 47.373226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444725, 41.347515, 48.059658>,  <37.803764, 41.329479, 47.731731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444725, 41.347515, 48.059658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.436001, 41.702099, 47.874741>,  <38.430767, 41.914848, 47.763790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.436001, 41.702099, 47.874741>,  <38.444725, 41.347515, 48.059658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436001, 41.702099, 47.874741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420938, 0.427563, 0.800000,
		0.906827, -0.177150, -0.382469,
		-0.021809, 0.886458, -0.462295,
		38.429459, 41.968037, 47.736053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174072, 41.710190, 48.164768>,  <38.444725, 41.347515, 48.059658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174072, 41.710190, 48.164768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.910019, 41.992676, 48.062408>,  <38.751587, 42.162167, 48.000992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.910019, 41.992676, 48.062408>,  <39.174072, 41.710190, 48.164768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910019, 41.992676, 48.062408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294231, 0.556564, 0.776958,
		0.691122, 0.437605, -0.575198,
		-0.660135, 0.706214, -0.255897,
		38.711979, 42.204540, 47.985638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611511, 42.199940, 48.316124>,  <39.174072, 41.710190, 48.164768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611511, 42.199940, 48.316124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.244911, 42.358223, 48.292656>,  <39.024952, 42.453194, 48.278576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.244911, 42.358223, 48.292656>,  <39.611511, 42.199940, 48.316124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244911, 42.358223, 48.292656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215213, 0.611357, 0.761528,
		0.337213, 0.685314, -0.645471,
		-0.916499, 0.395711, -0.058669,
		38.969963, 42.476936, 48.275055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715984, 42.912312, 48.363846>,  <39.611511, 42.199940, 48.316124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715984, 42.912312, 48.363846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.335415, 42.844173, 48.466438>,  <39.107075, 42.803291, 48.527992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.335415, 42.844173, 48.466438>,  <39.715984, 42.912312, 48.363846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335415, 42.844173, 48.466438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173833, 0.390352, 0.904106,
		-0.254128, 0.904769, -0.341777,
		-0.951421, -0.170346, 0.256478,
		39.049988, 42.793068, 48.543381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589756, 43.477810, 48.667675>,  <39.715984, 42.912312, 48.363846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589756, 43.477810, 48.667675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.302368, 43.229855, 48.793869>,  <39.129936, 43.081081, 48.869587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.302368, 43.229855, 48.793869>,  <39.589756, 43.477810, 48.667675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302368, 43.229855, 48.793869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006481, 0.459519, 0.888144,
		-0.695525, 0.636063, -0.334169,
		-0.718473, -0.619892, 0.315484,
		39.086826, 43.043888, 48.888515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016605, 43.846622, 48.991722>,  <39.589756, 43.477810, 48.667675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016605, 43.846622, 48.991722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.022678, 43.483864, 49.160152>,  <39.026321, 43.266209, 49.261211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.022678, 43.483864, 49.160152>,  <39.016605, 43.846622, 48.991722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022678, 43.483864, 49.160152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183931, 0.411404, 0.892701,
		-0.982822, -0.090999, -0.160562,
		0.015179, -0.906899, 0.421075,
		39.027233, 43.211796, 49.286476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493145, 43.908215, 49.473118>,  <39.016605, 43.846622, 48.991722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493145, 43.908215, 49.473118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.685860, 43.578808, 49.592911>,  <38.801491, 43.381165, 49.664787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.685860, 43.578808, 49.592911>,  <38.493145, 43.908215, 49.473118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685860, 43.578808, 49.592911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261928, 0.190802, 0.946038,
		-0.836225, -0.534235, -0.123777,
		0.481790, -0.823521, 0.299484,
		38.830399, 43.331753, 49.682755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068302, 43.613937, 49.801968>,  <38.493145, 43.908215, 49.473118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068302, 43.613937, 49.801968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.439804, 43.531147, 49.924984>,  <38.662704, 43.481472, 49.998795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.439804, 43.531147, 49.924984>,  <38.068302, 43.613937, 49.801968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439804, 43.531147, 49.924984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253606, 0.250350, 0.934350,
		-0.270381, -0.945773, 0.180023,
		0.928751, -0.206976, 0.307543,
		38.718430, 43.469055, 50.017246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817551, 43.760315, 50.455238>,  <38.068302, 43.613937, 49.801968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817551, 43.760315, 50.455238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.454033, 43.712711, 50.615208>,  <37.235924, 43.684151, 50.711189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.454033, 43.712711, 50.615208>,  <37.817551, 43.760315, 50.455238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454033, 43.712711, 50.615208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308349, -0.454167, -0.835855,
		0.281106, -0.882932, 0.376046,
		-0.908790, -0.119010, 0.399921,
		37.181396, 43.677010, 50.735184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568645, 43.027439, 50.440727>,  <37.817551, 43.760315, 50.455238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568645, 43.027439, 50.440727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.223736, 43.221806, 50.497826>,  <37.016792, 43.338425, 50.532085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.223736, 43.221806, 50.497826>,  <37.568645, 43.027439, 50.440727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223736, 43.221806, 50.497826> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416862, -0.520904, -0.744906,
		-0.287605, -0.701815, 0.651720,
		-0.862270, 0.485916, 0.142746,
		36.965054, 43.367580, 50.540649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157974, 42.546829, 50.182556>,  <37.568645, 43.027439, 50.440727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157974, 42.546829, 50.182556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.935940, 42.874981, 50.237488>,  <36.802719, 43.071873, 50.270447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.935940, 42.874981, 50.237488>,  <37.157974, 42.546829, 50.182556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935940, 42.874981, 50.237488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537219, -0.227536, -0.812172,
		-0.635041, -0.524600, 0.567025,
		-0.555084, 0.820379, 0.137331,
		36.769413, 43.121094, 50.278687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465878, 42.310165, 50.139450>,  <37.157974, 42.546829, 50.182556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465878, 42.310165, 50.139450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.460220, 42.706280, 50.084118>,  <36.456825, 42.943947, 50.050919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.460220, 42.706280, 50.084118>,  <36.465878, 42.310165, 50.139450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460220, 42.706280, 50.084118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577560, -0.121023, -0.807327,
		-0.816225, 0.068482, 0.573660,
		-0.014139, 0.990285, -0.138335,
		36.455978, 43.003365, 50.042618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788048, 42.535564, 50.128162>,  <36.465878, 42.310165, 50.139450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788048, 42.535564, 50.128162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.997890, 42.801701, 49.915707>,  <36.123795, 42.961384, 49.788235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.997890, 42.801701, 49.915707>,  <35.788048, 42.535564, 50.128162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997890, 42.801701, 49.915707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554220, -0.206677, -0.806303,
		-0.646242, 0.717359, 0.260322,
		0.524606, 0.665342, -0.531138,
		36.155273, 43.001305, 49.756367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317093, 42.980896, 49.792912>,  <35.788048, 42.535564, 50.128162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317093, 42.980896, 49.792912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.632462, 43.021908, 49.550297>,  <35.821682, 43.046513, 49.404728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.632462, 43.021908, 49.550297>,  <35.317093, 42.980896, 49.792912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632462, 43.021908, 49.550297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584281, -0.183559, -0.790520,
		-0.192385, 0.977647, -0.084817,
		0.788419, 0.102527, -0.606535,
		35.868988, 43.052666, 49.368336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083794, 43.247772, 49.184937>,  <35.317093, 42.980896, 49.792912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083794, 43.247772, 49.184937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.443752, 43.114872, 49.071949>,  <35.659729, 43.035133, 49.004154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.443752, 43.114872, 49.071949>,  <35.083794, 43.247772, 49.184937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443752, 43.114872, 49.071949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363932, -0.215280, -0.906206,
		0.240273, 0.918296, -0.314646,
		0.899901, -0.332247, -0.282471,
		35.713722, 43.015198, 48.987209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230709, 43.527298, 48.488014>,  <35.083794, 43.247772, 49.184937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230709, 43.527298, 48.488014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.461716, 43.202030, 48.516949>,  <35.600319, 43.006870, 48.534309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.461716, 43.202030, 48.516949>,  <35.230709, 43.527298, 48.488014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.461716, 43.202030, 48.516949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189534, -0.219740, -0.956970,
		0.794076, 0.538951, -0.281026,
		0.577512, -0.813171, 0.072341,
		35.634968, 42.958080, 48.538651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393253, 43.462940, 47.826252>,  <35.230709, 43.527298, 48.488014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393253, 43.462940, 47.826252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.549278, 43.128105, 47.979687>,  <35.642895, 42.927204, 48.071747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.549278, 43.128105, 47.979687>,  <35.393253, 43.462940, 47.826252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549278, 43.128105, 47.979687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007739, -0.413590, -0.910430,
		0.920755, 0.358095, -0.154848,
		0.390064, -0.837085, 0.383587,
		35.666298, 42.876980, 48.094761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915413, 43.298851, 47.395905>,  <35.393253, 43.462940, 47.826252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915413, 43.298851, 47.395905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.793682, 42.952179, 47.554020>,  <35.720646, 42.744175, 47.648891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.793682, 42.952179, 47.554020>,  <35.915413, 43.298851, 47.395905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793682, 42.952179, 47.554020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061521, -0.396225, -0.916090,
		0.950579, -0.303108, 0.067262,
		-0.304325, -0.866678, 0.395291,
		35.702385, 42.692177, 47.672607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227966, 42.824272, 47.067604>,  <35.915413, 43.298851, 47.395905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227966, 42.824272, 47.067604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.923283, 42.623039, 47.230923>,  <35.740475, 42.502300, 47.328915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.923283, 42.623039, 47.230923>,  <36.227966, 42.824272, 47.067604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923283, 42.623039, 47.230923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108893, -0.521805, -0.846086,
		0.638705, -0.688931, 0.342681,
		-0.761707, -0.503084, 0.408299,
		35.694771, 42.472115, 47.353413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328884, 42.110806, 47.019390>,  <36.227966, 42.824272, 47.067604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328884, 42.110806, 47.019390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.933048, 42.140873, 47.068493>,  <35.695549, 42.158913, 47.097954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.933048, 42.140873, 47.068493>,  <36.328884, 42.110806, 47.019390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933048, 42.140873, 47.068493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143895, -0.494802, -0.857010,
		-0.003679, -0.865749, 0.500465,
		-0.989586, 0.075168, 0.122756,
		35.636173, 42.163422, 47.105320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020462, 41.363209, 46.802437>,  <36.328884, 42.110806, 47.019390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020462, 41.363209, 46.802437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.719097, 41.623459, 46.764366>,  <35.538277, 41.779610, 46.741524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.719097, 41.623459, 46.764366>,  <36.020462, 41.363209, 46.802437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719097, 41.623459, 46.764366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307671, -0.476740, -0.823442,
		-0.581129, -0.591105, 0.559359,
		-0.753410, 0.650625, -0.095182,
		35.493073, 41.818645, 46.735813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471771, 40.960724, 46.733856>,  <36.020462, 41.363209, 46.802437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471771, 40.960724, 46.733856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.342384, 41.310734, 46.589798>,  <35.264751, 41.520741, 46.503361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.342384, 41.310734, 46.589798>,  <35.471771, 40.960724, 46.733856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342384, 41.310734, 46.589798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303766, -0.456488, -0.836268,
		-0.896157, -0.161101, 0.413459,
		-0.323462, 0.875023, -0.360148,
		35.245346, 41.573242, 46.481754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885826, 40.788002, 46.447815>,  <35.471771, 40.960724, 46.733856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885826, 40.788002, 46.447815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.974720, 41.137253, 46.274261>,  <35.028057, 41.346806, 46.170132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.974720, 41.137253, 46.274261>,  <34.885826, 40.788002, 46.447815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974720, 41.137253, 46.274261> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197085, -0.395593, -0.897031,
		-0.954865, 0.284865, 0.084166,
		0.222238, 0.873131, -0.433881,
		35.041389, 41.399193, 46.144096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308006, 40.955475, 46.023720>,  <34.885826, 40.788002, 46.447815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308006, 40.955475, 46.023720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.623436, 41.155704, 45.880848>,  <34.812695, 41.275841, 45.795124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.623436, 41.155704, 45.880848>,  <34.308006, 40.955475, 46.023720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623436, 41.155704, 45.880848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285395, -0.216584, -0.933617,
		-0.544701, 0.838165, -0.027933,
		0.788575, 0.500570, -0.357182,
		34.860008, 41.305874, 45.773693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128159, 40.811207, 45.378098>,  <34.308006, 40.955475, 46.023720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128159, 40.811207, 45.378098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.477753, 41.003777, 45.351631>,  <34.687508, 41.119320, 45.335751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.477753, 41.003777, 45.351631>,  <34.128159, 40.811207, 45.378098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477753, 41.003777, 45.351631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020538, -0.172622, -0.984774,
		-0.485518, 0.859319, -0.160757,
		0.873985, 0.481427, -0.066163,
		34.739948, 41.148205, 45.331783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134098, 41.193783, 44.719074>,  <34.128159, 40.811207, 45.378098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134098, 41.193783, 44.719074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.521240, 41.137707, 44.802601>,  <34.753525, 41.104061, 44.852718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.521240, 41.137707, 44.802601>,  <34.134098, 41.193783, 44.719074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521240, 41.137707, 44.802601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140959, -0.385255, -0.911981,
		0.208302, 0.912099, -0.353109,
		0.967854, -0.140193, 0.208818,
		34.811596, 41.095650, 44.865246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567951, 41.472908, 44.121368>,  <34.134098, 41.193783, 44.719074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567951, 41.472908, 44.121368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.798466, 41.205681, 44.309654>,  <34.936775, 41.045345, 44.422626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.798466, 41.205681, 44.309654>,  <34.567951, 41.472908, 44.121368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798466, 41.205681, 44.309654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133234, -0.491474, -0.860641,
		0.806313, 0.558693, -0.194221,
		0.576288, -0.668069, 0.470718,
		34.971352, 41.005260, 44.450871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183842, 41.358784, 43.745499>,  <34.567951, 41.472908, 44.121368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183842, 41.358784, 43.745499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.154629, 41.027969, 43.968456>,  <35.137100, 40.829483, 44.102230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.154629, 41.027969, 43.968456>,  <35.183842, 41.358784, 43.745499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154629, 41.027969, 43.968456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208806, -0.559177, -0.802322,
		0.975226, 0.057788, 0.213530,
		-0.073036, -0.827032, 0.557390,
		35.132717, 40.779861, 44.135674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804695, 40.953060, 43.676285>,  <35.183842, 41.358784, 43.745499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804695, 40.953060, 43.676285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.516567, 40.693211, 43.773548>,  <35.343693, 40.537300, 43.831905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.516567, 40.693211, 43.773548>,  <35.804695, 40.953060, 43.676285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516567, 40.693211, 43.773548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075539, -0.421932, -0.903475,
		0.689519, -0.632421, 0.352997,
		-0.720318, -0.649628, 0.243157,
		35.300472, 40.498322, 43.846497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<47.183060, 26.264870, 32.761593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.893665, 25.988821, 32.768505>,  <46.720028, 25.823191, 32.772652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.893665, 25.988821, 32.768505>,  <47.183060, 26.264870, 32.761593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.893665, 25.988821, 32.768505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609100, 0.649924, 0.454528,
		-0.324910, 0.318319, -0.890565,
		-0.723485, -0.690124, 0.017279,
		46.676620, 25.781784, 32.773689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.429058, 26.561417, 32.499451>,  <47.183060, 26.264870, 32.761593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.429058, 26.561417, 32.499451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.346500, 26.240194, 32.723057>,  <46.296967, 26.047461, 32.857220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.346500, 26.240194, 32.723057>,  <46.429058, 26.561417, 32.499451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.346500, 26.240194, 32.723057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490868, 0.579203, 0.650824,
		-0.846434, -0.140080, -0.513738,
		-0.206391, -0.803057, 0.559019,
		46.284584, 25.999277, 32.890762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.771915, 26.656809, 32.728172>,  <46.429058, 26.561417, 32.499451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.771915, 26.656809, 32.728172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.858978, 26.364868, 32.987385>,  <45.911217, 26.189703, 33.142910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.858978, 26.364868, 32.987385>,  <45.771915, 26.656809, 32.728172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.858978, 26.364868, 32.987385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505926, 0.483417, 0.714386,
		-0.834665, -0.483344, -0.264033,
		0.217656, -0.729853, 0.648028,
		45.924274, 26.145912, 33.181793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.135433, 26.448828, 32.987946>,  <45.771915, 26.656809, 32.728172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.135433, 26.448828, 32.987946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.397324, 26.335873, 33.268398>,  <45.554459, 26.268099, 33.436668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.397324, 26.335873, 33.268398>,  <45.135433, 26.448828, 32.987946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.397324, 26.335873, 33.268398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503506, 0.528889, 0.683197,
		-0.563748, -0.800333, 0.204095,
		0.654729, -0.282388, 0.701133,
		45.593742, 26.251156, 33.478737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.746410, 26.266323, 33.639904>,  <45.135433, 26.448828, 32.987946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.746410, 26.266323, 33.639904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.117363, 26.350801, 33.763424>,  <45.339935, 26.401489, 33.837536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.117363, 26.350801, 33.763424>,  <44.746410, 26.266323, 33.639904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.117363, 26.350801, 33.763424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374112, 0.519228, 0.768402,
		0.001945, -0.828129, 0.560534,
		0.927381, 0.211197, 0.308804,
		45.395576, 26.414160, 33.856064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.732452, 26.209021, 34.331959>,  <44.746410, 26.266323, 33.639904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.732452, 26.209021, 34.331959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.030170, 26.456844, 34.232220>,  <45.208801, 26.605539, 34.172379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.030170, 26.456844, 34.232220>,  <44.732452, 26.209021, 34.331959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.030170, 26.456844, 34.232220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397242, 0.710824, 0.580454,
		0.536865, -0.332980, 0.775178,
		0.744295, 0.619559, -0.249343,
		45.253460, 26.642712, 34.157417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.017849, 26.555103, 35.050098>,  <44.732452, 26.209021, 34.331959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.017849, 26.555103, 35.050098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.141438, 26.780916, 34.743938>,  <45.215591, 26.916405, 34.560242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.141438, 26.780916, 34.743938>,  <45.017849, 26.555103, 35.050098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.141438, 26.780916, 34.743938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134998, 0.822662, 0.552271,
		0.941441, -0.067310, 0.330391,
		0.308974, 0.564533, -0.765400,
		45.234131, 26.950275, 34.514317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.286194, 27.073635, 35.391609>,  <45.017849, 26.555103, 35.050098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.286194, 27.073635, 35.391609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.317657, 27.227480, 35.023720>,  <45.336536, 27.319786, 34.802986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.317657, 27.227480, 35.023720>,  <45.286194, 27.073635, 35.391609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.317657, 27.227480, 35.023720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032377, 0.923079, 0.383245,
		0.996376, -0.000368, 0.085062,
		0.078660, 0.384610, -0.919721,
		45.341255, 27.342863, 34.747803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.755493, 27.713745, 35.304562>,  <45.286194, 27.073635, 35.391609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.755493, 27.713745, 35.304562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.506115, 27.754421, 34.994469>,  <45.356487, 27.778826, 34.808414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.506115, 27.754421, 34.994469>,  <45.755493, 27.713745, 35.304562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.506115, 27.754421, 34.994469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273418, 0.900550, 0.338011,
		0.732503, 0.422692, -0.533639,
		-0.623443, 0.101688, -0.775228,
		45.319080, 27.784927, 34.761902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.855934, 28.465986, 35.055767>,  <45.755493, 27.713745, 35.304562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.855934, 28.465986, 35.055767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.510170, 28.336178, 34.902157>,  <45.302711, 28.258293, 34.809990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.510170, 28.336178, 34.902157>,  <45.855934, 28.465986, 35.055767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.510170, 28.336178, 34.902157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423281, 0.881913, 0.207514,
		0.271336, 0.341930, -0.899700,
		-0.864413, -0.324520, -0.384027,
		45.250847, 28.238821, 34.786949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.665588, 28.969450, 34.631958>,  <45.855934, 28.465986, 35.055767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.665588, 28.969450, 34.631958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.325130, 28.777308, 34.716625>,  <45.120853, 28.662022, 34.767426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.325130, 28.777308, 34.716625>,  <45.665588, 28.969450, 34.631958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.325130, 28.777308, 34.716625> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417058, 0.863699, 0.282996,
		-0.318759, 0.152592, -0.935472,
		-0.851149, -0.480354, 0.211673,
		45.069786, 28.633202, 34.780128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.151402, 29.357698, 34.383423>,  <45.665588, 28.969450, 34.631958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.151402, 29.357698, 34.383423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.949600, 29.133690, 34.646286>,  <44.828522, 28.999285, 34.804005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.949600, 29.133690, 34.646286>,  <45.151402, 29.357698, 34.383423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.949600, 29.133690, 34.646286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473640, 0.815880, 0.331669,
		-0.721904, -0.143930, -0.676860,
		-0.504499, -0.560021, 0.657158,
		44.798252, 28.965683, 34.843433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.429813, 29.525768, 34.352531>,  <45.151402, 29.357698, 34.383423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.429813, 29.525768, 34.352531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.472225, 29.364191, 34.715981>,  <44.497673, 29.267244, 34.934048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.472225, 29.364191, 34.715981>,  <44.429813, 29.525768, 34.352531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.472225, 29.364191, 34.715981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612801, 0.693078, 0.379630,
		-0.783092, -0.597053, -0.174053,
		0.106027, -0.403945, 0.908618,
		44.504032, 29.243008, 34.988567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.765251, 29.340334, 34.571999>,  <44.429813, 29.525768, 34.352531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.765251, 29.340334, 34.571999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.975216, 29.372732, 34.910915>,  <44.101196, 29.392172, 35.114265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.975216, 29.372732, 34.910915>,  <43.765251, 29.340334, 34.571999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.975216, 29.372732, 34.910915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673992, 0.647489, 0.355657,
		-0.519805, -0.757758, 0.394469,
		0.524916, 0.080997, 0.847291,
		44.132690, 29.397032, 35.165104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.279888, 29.367836, 35.150158>,  <43.765251, 29.340334, 34.571999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.279888, 29.367836, 35.150158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.618977, 29.505646, 35.311485>,  <43.822430, 29.588331, 35.408283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.618977, 29.505646, 35.311485>,  <43.279888, 29.367836, 35.150158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.618977, 29.505646, 35.311485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503279, 0.762587, 0.406412,
		-0.167548, -0.547508, 0.819855,
		0.847725, 0.344522, 0.403320,
		43.873295, 29.609003, 35.432480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.018402, 29.699844, 35.680359>,  <43.279888, 29.367836, 35.150158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.018402, 29.699844, 35.680359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.394207, 29.832466, 35.645966>,  <43.619690, 29.912039, 35.625328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.394207, 29.832466, 35.645966>,  <43.018402, 29.699844, 35.680359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.394207, 29.832466, 35.645966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293865, 0.909202, 0.294951,
		0.175969, -0.251841, 0.951636,
		0.939510, 0.331554, -0.085984,
		43.676060, 29.931932, 35.620171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.135090, 30.073172, 36.257370>,  <43.018402, 29.699844, 35.680359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.135090, 30.073172, 36.257370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.409657, 30.203094, 35.997116>,  <43.574398, 30.281048, 35.840961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.409657, 30.203094, 35.997116>,  <43.135090, 30.073172, 36.257370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.409657, 30.203094, 35.997116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228023, 0.945722, 0.231551,
		0.690533, -0.010580, 0.723224,
		0.686418, 0.324805, -0.650639,
		43.615582, 30.300537, 35.801926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.475983, 30.612549, 36.682175>,  <43.135090, 30.073172, 36.257370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.475983, 30.612549, 36.682175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.539864, 30.668802, 36.291336>,  <43.578194, 30.702555, 36.056831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.539864, 30.668802, 36.291336>,  <43.475983, 30.612549, 36.682175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539864, 30.668802, 36.291336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121956, 0.985029, 0.121843,
		0.979603, 0.099703, 0.174464,
		0.159704, 0.140634, -0.977096,
		43.587772, 30.710993, 35.998207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016052, 31.150026, 36.573364>,  <43.475983, 30.612549, 36.682175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.016052, 31.150026, 36.573364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.792088, 31.152411, 36.241951>,  <43.657707, 31.153841, 36.043102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.792088, 31.152411, 36.241951>,  <44.016052, 31.150026, 36.573364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.792088, 31.152411, 36.241951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228846, 0.959963, 0.161557,
		0.796322, 0.280063, -0.536131,
		-0.559912, 0.005960, -0.828531,
		43.624115, 31.154198, 35.993393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.192234, 31.876688, 36.279274>,  <44.016052, 31.150026, 36.573364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.192234, 31.876688, 36.279274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.863155, 31.753599, 36.088078>,  <43.665707, 31.679747, 35.973362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.863155, 31.753599, 36.088078>,  <44.192234, 31.876688, 36.279274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.863155, 31.753599, 36.088078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333011, 0.942328, -0.033483,
		0.460726, 0.131629, -0.877728,
		-0.822700, -0.307720, -0.477989,
		43.616344, 31.661283, 35.944679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.993584, 32.503193, 35.973675>,  <44.192234, 31.876688, 36.279274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.993584, 32.503193, 35.973675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.675404, 32.262520, 35.944736>,  <43.484493, 32.118118, 35.927376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.675404, 32.262520, 35.944736>,  <43.993584, 32.503193, 35.973675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.675404, 32.262520, 35.944736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605668, 0.785281, 0.128458,
		-0.020481, 0.145998, -0.989073,
		-0.795454, -0.601680, -0.072343,
		43.436768, 32.082016, 35.923035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.631615, 32.877731, 36.132290>,  <43.993584, 32.503193, 35.973675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.631615, 32.877731, 36.132290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.993546, 32.990833, 36.004955>,  <45.210705, 33.058693, 35.928555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.993546, 32.990833, 36.004955>,  <44.631615, 32.877731, 36.132290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.993546, 32.990833, 36.004955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124037, -0.540189, -0.832353,
		-0.407314, 0.792620, -0.453705,
		0.904826, 0.282753, -0.318341,
		45.264992, 33.075661, 35.909454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.634686, 33.131516, 35.425068>,  <44.631615, 32.877731, 36.132290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.634686, 33.131516, 35.425068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.018749, 33.032288, 35.476547>,  <45.249187, 32.972752, 35.507435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.018749, 33.032288, 35.476547>,  <44.634686, 33.131516, 35.425068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.018749, 33.032288, 35.476547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074607, -0.216260, -0.973481,
		0.269321, 0.944295, -0.189136,
		0.960156, -0.248068, 0.128695,
		45.306797, 32.957867, 35.515156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.009838, 33.322186, 34.733372>,  <44.634686, 33.131516, 35.425068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.009838, 33.322186, 34.733372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.216125, 33.030163, 34.912724>,  <45.339897, 32.854950, 35.020336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.216125, 33.030163, 34.912724>,  <45.009838, 33.322186, 34.733372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.216125, 33.030163, 34.912724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020691, -0.512578, -0.858391,
		0.856507, 0.451968, -0.249241,
		0.515721, -0.730061, 0.448378,
		45.370842, 32.811146, 35.047237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.455425, 33.195316, 34.340527>,  <45.009838, 33.322186, 34.733372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.455425, 33.195316, 34.340527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.461525, 32.859268, 34.557400>,  <45.465183, 32.657639, 34.687523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.461525, 32.859268, 34.557400>,  <45.455425, 33.195316, 34.340527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.461525, 32.859268, 34.557400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128636, -0.536089, -0.834303,
		0.991575, 0.082463, 0.099897,
		0.015245, -0.840124, 0.542180,
		45.466099, 32.607231, 34.720055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.074608, 32.860081, 34.030998>,  <45.455425, 33.195316, 34.340527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.074608, 32.860081, 34.030998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.852726, 32.583778, 34.216537>,  <45.719597, 32.417995, 34.327862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.852726, 32.583778, 34.216537>,  <46.074608, 32.860081, 34.030998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.852726, 32.583778, 34.216537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113927, -0.489168, -0.864717,
		0.824209, -0.532510, 0.192649,
		-0.554708, -0.690759, 0.463843,
		45.686314, 32.376549, 34.355690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.146191, 32.340534, 33.555454>,  <46.074608, 32.860081, 34.030998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.146191, 32.340534, 33.555454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.847813, 32.229679, 33.797699>,  <45.668785, 32.163166, 33.943047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.847813, 32.229679, 33.797699>,  <46.146191, 32.340534, 33.555454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.847813, 32.229679, 33.797699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322941, -0.644754, -0.692821,
		0.582477, -0.712381, 0.391451,
		-0.745942, -0.277137, 0.605612,
		45.624031, 32.146538, 33.979382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.192413, 31.626329, 33.768013>,  <46.146191, 32.340534, 33.555454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.192413, 31.626329, 33.768013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.806416, 31.720062, 33.815113>,  <45.574814, 31.776302, 33.843372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.806416, 31.720062, 33.815113>,  <46.192413, 31.626329, 33.768013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.806416, 31.720062, 33.815113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261348, -0.822028, -0.505932,
		-0.021765, -0.518997, 0.854498,
		-0.964999, 0.234333, 0.117748,
		45.516914, 31.790361, 33.850437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.775352, 30.978006, 34.152283>,  <46.192413, 31.626329, 33.768013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.775352, 30.978006, 34.152283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.526817, 31.197319, 33.928379>,  <45.377697, 31.328907, 33.794037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.526817, 31.197319, 33.928379>,  <45.775352, 30.978006, 34.152283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.526817, 31.197319, 33.928379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323653, -0.830189, -0.453912,
		-0.713576, -0.100864, 0.693279,
		-0.621336, 0.548282, -0.559758,
		45.340416, 31.361803, 33.760452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.180031, 30.530153, 34.232071>,  <45.775352, 30.978006, 34.152283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.180031, 30.530153, 34.232071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.109138, 30.779835, 33.927711>,  <45.066601, 30.929644, 33.745098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.109138, 30.779835, 33.927711>,  <45.180031, 30.530153, 34.232071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.109138, 30.779835, 33.927711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327058, -0.766550, -0.552660,
		-0.928235, 0.150907, 0.340009,
		-0.177234, 0.624202, -0.760894,
		45.055969, 30.967094, 33.699444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.587265, 30.340092, 33.957108>,  <45.180031, 30.530153, 34.232071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.587265, 30.340092, 33.957108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.742702, 30.567278, 33.666893>,  <44.835964, 30.703590, 33.492764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.742702, 30.567278, 33.666893>,  <44.587265, 30.340092, 33.957108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.742702, 30.567278, 33.666893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350094, -0.637359, -0.686445,
		-0.852306, 0.520758, -0.048835,
		0.388597, 0.567965, -0.725540,
		44.859283, 30.737667, 33.449230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.042397, 30.378223, 33.469631>,  <44.587265, 30.340092, 33.957108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.042397, 30.378223, 33.469631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.374485, 30.457607, 33.261269>,  <44.573738, 30.505238, 33.136250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.374485, 30.457607, 33.261269>,  <44.042397, 30.378223, 33.469631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.374485, 30.457607, 33.261269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373238, -0.496175, -0.783903,
		-0.414036, 0.845236, -0.337862,
		0.830222, 0.198461, -0.520908,
		44.623550, 30.517145, 33.104996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.826481, 30.462704, 32.757313>,  <44.042397, 30.378223, 33.469631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.826481, 30.462704, 32.757313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.220207, 30.412251, 32.707981>,  <44.456444, 30.381979, 32.678383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.220207, 30.412251, 32.707981>,  <43.826481, 30.462704, 32.757313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.220207, 30.412251, 32.707981> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166793, -0.437867, -0.883432,
		0.057428, 0.890148, -0.452038,
		0.984318, -0.126131, -0.123325,
		44.515503, 30.374411, 32.670982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.872379, 30.507618, 32.027649>,  <43.826481, 30.462704, 32.757313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.872379, 30.507618, 32.027649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.229973, 30.355228, 32.122017>,  <44.444527, 30.263794, 32.178638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.229973, 30.355228, 32.122017>,  <43.872379, 30.507618, 32.027649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.229973, 30.355228, 32.122017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040402, -0.455810, -0.889160,
		0.446280, 0.804423, -0.392093,
		0.893981, -0.380973, 0.235919,
		44.498169, 30.240936, 32.192791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.353607, 30.711237, 31.387835>,  <43.872379, 30.507618, 32.027649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.353607, 30.711237, 31.387835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.494198, 30.399399, 31.595177>,  <44.578552, 30.212296, 31.719582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.494198, 30.399399, 31.595177>,  <44.353607, 30.711237, 31.387835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.494198, 30.399399, 31.595177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096258, -0.580842, -0.808305,
		0.931235, 0.234205, -0.279195,
		0.351478, -0.779597, 0.518356,
		44.599640, 30.165520, 31.750683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.742065, 30.408066, 30.962553>,  <44.353607, 30.711237, 31.387835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.742065, 30.408066, 30.962553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.677769, 30.112276, 31.224037>,  <44.639191, 29.934803, 31.380928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.677769, 30.112276, 31.224037>,  <44.742065, 30.408066, 30.962553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.677769, 30.112276, 31.224037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130948, -0.640491, -0.756719,
		0.978271, -0.207240, 0.006123,
		-0.160745, -0.739475, 0.653712,
		44.629547, 29.890434, 31.420151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.279221, 29.867714, 30.844858>,  <44.742065, 30.408066, 30.962553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.279221, 29.867714, 30.844858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.968330, 29.684916, 31.017864>,  <44.781796, 29.575235, 31.121668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.968330, 29.684916, 31.017864>,  <45.279221, 29.867714, 30.844858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.968330, 29.684916, 31.017864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058735, -0.737076, -0.673252,
		0.626471, -0.497867, 0.599719,
		-0.777229, -0.456997, 0.432514,
		44.735161, 29.547817, 31.147619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.385242, 29.217579, 30.709717>,  <45.279221, 29.867714, 30.844858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.385242, 29.217579, 30.709717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.006374, 29.208248, 30.837664>,  <44.779053, 29.202650, 30.914433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.006374, 29.208248, 30.837664>,  <45.385242, 29.217579, 30.709717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.006374, 29.208248, 30.837664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186550, -0.771206, -0.608638,
		0.260882, -0.636158, 0.726115,
		-0.947174, -0.023326, 0.319869,
		44.722221, 29.201250, 30.933624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.237938, 28.608009, 30.914028>,  <45.385242, 29.217579, 30.709717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.237938, 28.608009, 30.914028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.888275, 28.768188, 30.804131>,  <44.678478, 28.864296, 30.738192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.888275, 28.768188, 30.804131>,  <45.237938, 28.608009, 30.914028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.888275, 28.768188, 30.804131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209613, -0.821451, -0.530360,
		-0.438069, -0.406030, 0.802019,
		-0.874161, 0.400448, -0.274743,
		44.626026, 28.888323, 30.721708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.887642, 28.111509, 30.835308>,  <45.237938, 28.608009, 30.914028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.887642, 28.111509, 30.835308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.615250, 28.350019, 30.665262>,  <44.451817, 28.493126, 30.563234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.615250, 28.350019, 30.665262>,  <44.887642, 28.111509, 30.835308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.615250, 28.350019, 30.665262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334844, -0.769814, -0.543384,
		-0.651266, -0.227687, 0.723886,
		-0.680979, 0.596276, -0.425114,
		44.410957, 28.528902, 30.537727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.325935, 27.639593, 30.719254>,  <44.887642, 28.111509, 30.835308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.325935, 27.639593, 30.719254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.251385, 27.946854, 30.474237>,  <44.206654, 28.131210, 30.327229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.251385, 27.946854, 30.474237>,  <44.325935, 27.639593, 30.719254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.251385, 27.946854, 30.474237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275183, -0.639323, -0.718011,
		-0.943154, 0.034740, 0.330537,
		-0.186376, 0.768153, -0.612540,
		44.195473, 28.177299, 30.290476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.662228, 27.451221, 30.494066>,  <44.325935, 27.639593, 30.719254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.662228, 27.451221, 30.494066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.869083, 27.678579, 30.238098>,  <43.993195, 27.814995, 30.084518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.869083, 27.678579, 30.238098>,  <43.662228, 27.451221, 30.494066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.869083, 27.678579, 30.238098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239937, -0.621402, -0.745848,
		-0.821584, 0.539246, -0.184970,
		0.517137, 0.568395, -0.639919,
		44.024223, 27.849098, 30.046122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.976383, 38.916058, 39.725349> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748543, 38.610043, 39.845528>,  <38.611839, 38.426434, 39.917633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748543, 38.610043, 39.845528>,  <38.976383, 38.916058, 39.725349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748543, 38.610043, 39.845528> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223182, -0.495771, -0.839286,
		0.791040, -0.411004, 0.453135,
		-0.569602, -0.765040, 0.300446,
		38.577663, 38.380531, 39.935661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350525, 38.314766, 39.465195>,  <38.976383, 38.916058, 39.725349>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350525, 38.314766, 39.465195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983063, 38.182472, 39.551624>,  <38.762585, 38.103096, 39.603481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983063, 38.182472, 39.551624>,  <39.350525, 38.314766, 39.465195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.983063, 38.182472, 39.551624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070534, -0.675453, -0.734022,
		0.388716, -0.659072, 0.643836,
		-0.918654, -0.330738, 0.216073,
		38.707466, 38.083252, 39.616447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457108, 37.583954, 39.533043>,  <39.350525, 38.314766, 39.465195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457108, 37.583954, 39.533043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069889, 37.659161, 39.466667>,  <38.837559, 37.704285, 39.426842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069889, 37.659161, 39.466667>,  <39.457108, 37.583954, 39.533043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069889, 37.659161, 39.466667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042081, -0.530529, -0.846621,
		-0.247218, -0.826551, 0.505665,
		-0.968046, 0.188021, -0.165938,
		38.779476, 37.715569, 39.416885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230991, 37.017796, 39.179096>,  <39.457108, 37.583954, 39.533043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230991, 37.017796, 39.179096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905991, 37.248604, 39.145908>,  <38.710991, 37.387089, 39.125996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905991, 37.248604, 39.145908>,  <39.230991, 37.017796, 39.179096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905991, 37.248604, 39.145908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250660, -0.474299, -0.843925,
		-0.526321, -0.664892, 0.530005,
		-0.812500, 0.577026, -0.082971,
		38.662239, 37.421711, 39.121017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634766, 36.569939, 39.224125>,  <39.230991, 37.017796, 39.179096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634766, 36.569939, 39.224125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561611, 36.890148, 38.995838>,  <38.517719, 37.082275, 38.858868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561611, 36.890148, 38.995838>,  <38.634766, 36.569939, 39.224125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561611, 36.890148, 38.995838> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248278, -0.599297, -0.761053,
		-0.951267, 0.002507, 0.308358,
		-0.182890, 0.800523, -0.570713,
		38.506744, 37.130306, 38.824623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976997, 36.495064, 38.961037>,  <38.634766, 36.569939, 39.224125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976997, 36.495064, 38.961037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188808, 36.744156, 38.730625>,  <38.315895, 36.893612, 38.592377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188808, 36.744156, 38.730625>,  <37.976997, 36.495064, 38.961037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188808, 36.744156, 38.730625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160994, -0.592930, -0.788996,
		-0.832877, 0.510531, -0.213716,
		0.529526, 0.622730, -0.576030,
		38.347668, 36.930973, 38.557816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839104, 36.172070, 38.330940>,  <37.976997, 36.495064, 38.961037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839104, 36.172070, 38.330940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107788, 36.445774, 38.217384>,  <38.269001, 36.609997, 38.149250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107788, 36.445774, 38.217384>,  <37.839104, 36.172070, 38.330940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107788, 36.445774, 38.217384> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152454, -0.502689, -0.850918,
		-0.724955, 0.528293, -0.441981,
		0.671713, 0.684259, -0.283886,
		38.309303, 36.651051, 38.132217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723347, 36.353951, 37.599422>,  <37.839104, 36.172070, 38.330940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723347, 36.353951, 37.599422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103729, 36.418831, 37.704773>,  <38.331959, 36.457760, 37.767982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103729, 36.418831, 37.704773>,  <37.723347, 36.353951, 37.599422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103729, 36.418831, 37.704773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307138, -0.394236, -0.866167,
		-0.036657, 0.904583, -0.424719,
		0.950959, 0.162198, 0.263380,
		38.389015, 36.467491, 37.783787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970818, 36.582539, 37.005035>,  <37.723347, 36.353951, 37.599422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970818, 36.582539, 37.005035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295429, 36.471416, 37.210651>,  <38.490196, 36.404743, 37.334023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295429, 36.471416, 37.210651>,  <37.970818, 36.582539, 37.005035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295429, 36.471416, 37.210651> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391265, -0.395022, -0.831185,
		0.433965, 0.875661, -0.211878,
		0.811533, -0.277805, 0.514041,
		38.538891, 36.388077, 37.364864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553375, 36.577850, 36.487808>,  <37.970818, 36.582539, 37.005035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553375, 36.577850, 36.487808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686317, 36.367641, 36.801079>,  <38.766083, 36.241516, 36.989040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686317, 36.367641, 36.801079>,  <38.553375, 36.577850, 36.487808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686317, 36.367641, 36.801079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436415, -0.650446, -0.621661,
		0.836113, 0.548400, 0.013170,
		0.332352, -0.525526, 0.783176,
		38.786022, 36.209984, 37.036030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269455, 36.243359, 36.298618>,  <38.553375, 36.577850, 36.487808>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269455, 36.243359, 36.298618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140873, 36.059048, 36.629520>,  <39.063725, 35.948463, 36.828064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140873, 36.059048, 36.629520>,  <39.269455, 36.243359, 36.298618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140873, 36.059048, 36.629520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293685, -0.879059, -0.375505,
		0.900230, 0.122244, 0.417902,
		-0.321457, -0.460773, 0.827257,
		39.044437, 35.920815, 36.877697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870182, 35.774487, 36.581051>,  <39.269455, 36.243359, 36.298618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870182, 35.774487, 36.581051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525105, 35.619865, 36.711491>,  <39.318058, 35.527092, 36.789753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525105, 35.619865, 36.711491>,  <39.870182, 35.774487, 36.581051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525105, 35.619865, 36.711491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245899, -0.884066, -0.397443,
		0.441923, -0.262685, 0.857730,
		-0.862692, -0.386554, 0.326095,
		39.266296, 35.503899, 36.809319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964729, 35.136192, 37.088688>,  <39.870182, 35.774487, 36.581051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964729, 35.136192, 37.088688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636593, 35.143616, 36.860058>,  <39.439713, 35.148071, 36.722881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636593, 35.143616, 36.860058>,  <39.964729, 35.136192, 37.088688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636593, 35.143616, 36.860058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186765, -0.935975, -0.298447,
		-0.540520, -0.351578, 0.764350,
		-0.820340, 0.018563, -0.571575,
		39.390491, 35.149185, 36.688583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.321510, 34.493465, 37.413666>,  <39.964729, 35.136192, 37.088688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.321510, 34.493465, 37.413666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151180, 34.545143, 37.055450>,  <40.048981, 34.576149, 36.840523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151180, 34.545143, 37.055450>,  <40.321510, 34.493465, 37.413666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151180, 34.545143, 37.055450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882245, 0.160355, 0.442641,
		0.200792, 0.978567, 0.045701,
		-0.425825, 0.129198, -0.895534,
		40.023434, 34.583904, 36.786789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065121, 34.210850, 37.435345>,  <40.321510, 34.493465, 37.413666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065121, 34.210850, 37.435345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424706, 34.035679, 37.431713>,  <41.640457, 33.930576, 37.429535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424706, 34.035679, 37.431713>,  <41.065121, 34.210850, 37.435345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.424706, 34.035679, 37.431713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232838, -0.495312, 0.836931,
		-0.371014, -0.750256, -0.547234,
		0.898963, -0.437929, -0.009079,
		41.694393, 33.904301, 37.428989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931110, 33.520977, 37.652039>,  <41.065121, 34.210850, 37.435345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931110, 33.520977, 37.652039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319321, 33.604267, 37.700584>,  <41.552246, 33.654240, 37.729710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319321, 33.604267, 37.700584>,  <40.931110, 33.520977, 37.652039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.319321, 33.604267, 37.700584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102813, -0.097736, 0.989887,
		0.217982, -0.973185, -0.073447,
		0.970522, 0.208226, 0.121361,
		41.610477, 33.666733, 37.736992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.158943, 33.113071, 38.142330>,  <40.931110, 33.520977, 37.652039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.158943, 33.113071, 38.142330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455647, 33.381332, 38.140648>,  <41.633667, 33.542290, 38.139641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455647, 33.381332, 38.140648>,  <41.158943, 33.113071, 38.142330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455647, 33.381332, 38.140648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008070, 0.015191, 0.999852,
		0.670618, -0.741615, 0.016680,
		0.741759, 0.670653, -0.004202,
		41.678173, 33.582527, 38.139389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.689453, 32.849442, 38.592171>,  <41.158943, 33.113071, 38.142330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.689453, 32.849442, 38.592171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703945, 33.248165, 38.563713>,  <41.712639, 33.487400, 38.546638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703945, 33.248165, 38.563713>,  <41.689453, 32.849442, 38.592171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.703945, 33.248165, 38.563713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170562, 0.076317, 0.982387,
		0.984681, -0.023453, 0.172782,
		0.036226, 0.996808, -0.071148,
		41.714813, 33.547207, 38.542370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.063213, 32.986347, 39.149372>,  <41.689453, 32.849442, 38.592171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.063213, 32.986347, 39.149372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900383, 33.337223, 39.047527>,  <41.802685, 33.547749, 38.986420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900383, 33.337223, 39.047527>,  <42.063213, 32.986347, 39.149372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900383, 33.337223, 39.047527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105852, 0.231573, 0.967042,
		0.907240, 0.420610, -0.001415,
		-0.407075, 0.877189, -0.254615,
		41.778259, 33.600380, 38.971142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.404613, 33.481712, 39.635765>,  <42.063213, 32.986347, 39.149372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.404613, 33.481712, 39.635765> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.058384, 33.614059, 39.485401>,  <41.850647, 33.693466, 39.395184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.058384, 33.614059, 39.485401>,  <42.404613, 33.481712, 39.635765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058384, 33.614059, 39.485401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189554, 0.478323, 0.857483,
		0.463517, 0.813471, -0.351307,
		-0.865576, 0.330866, -0.375908,
		41.798710, 33.713318, 39.372627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.384129, 34.171047, 39.726097>,  <42.404613, 33.481712, 39.635765>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.384129, 34.171047, 39.726097> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007252, 34.037083, 39.730110>,  <41.781124, 33.956703, 39.732517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007252, 34.037083, 39.730110>,  <42.384129, 34.171047, 39.726097>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.007252, 34.037083, 39.730110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162282, 0.482319, 0.860833,
		-0.293139, 0.809446, -0.508790,
		-0.942196, -0.334911, 0.010028,
		41.724594, 33.936611, 39.733120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.986820, 34.765404, 39.851051>,  <42.384129, 34.171047, 39.726097>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.986820, 34.765404, 39.851051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757816, 34.456215, 39.960411>,  <41.620415, 34.270702, 40.026028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757816, 34.456215, 39.960411>,  <41.986820, 34.765404, 39.851051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.757816, 34.456215, 39.960411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230982, 0.472010, 0.850796,
		-0.786689, 0.423938, -0.448773,
		-0.572510, -0.772970, 0.273403,
		41.586063, 34.224323, 40.042431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569908, 35.049519, 40.258827>,  <41.986820, 34.765404, 39.851051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569908, 35.049519, 40.258827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462948, 34.670719, 40.330029>,  <41.398769, 34.443439, 40.372749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.462948, 34.670719, 40.330029>,  <41.569908, 35.049519, 40.258827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462948, 34.670719, 40.330029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235830, 0.243432, 0.940811,
		-0.934280, 0.209599, -0.288426,
		-0.267405, -0.947000, 0.178004,
		41.382725, 34.386620, 40.383430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956005, 35.130573, 40.589104>,  <41.569908, 35.049519, 40.258827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956005, 35.130573, 40.589104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085289, 34.769032, 40.701237>,  <41.162861, 34.552105, 40.768517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085289, 34.769032, 40.701237>,  <40.956005, 35.130573, 40.589104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085289, 34.769032, 40.701237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307675, 0.179766, 0.934355,
		-0.894915, -0.388242, -0.219991,
		0.323209, -0.903854, 0.280328,
		41.182251, 34.497875, 40.785336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370991, 34.841995, 40.986622>,  <40.956005, 35.130573, 40.589104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.370991, 34.841995, 40.986622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719246, 34.667870, 41.078266>,  <40.928200, 34.563396, 41.133251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719246, 34.667870, 41.078266>,  <40.370991, 34.841995, 40.986622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719246, 34.667870, 41.078266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150334, 0.208013, 0.966504,
		-0.468388, -0.875919, 0.115663,
		0.870639, -0.435311, 0.229111,
		40.980438, 34.537277, 41.146999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180405, 34.463154, 41.625572>,  <40.370991, 34.841995, 40.986622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180405, 34.463154, 41.625572> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579910, 34.477947, 41.638840>,  <40.819614, 34.486824, 41.646801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.579910, 34.477947, 41.638840>,  <40.180405, 34.463154, 41.625572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.579910, 34.477947, 41.638840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035862, 0.074697, 0.996561,
		0.034370, -0.996521, 0.075930,
		0.998766, 0.036974, 0.033170,
		40.879539, 34.489040, 41.648792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245064, 33.966522, 42.079357>,  <40.180405, 34.463154, 41.625572>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245064, 33.966522, 42.079357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561806, 34.209061, 42.050209>,  <40.751850, 34.354584, 42.032722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561806, 34.209061, 42.050209>,  <40.245064, 33.966522, 42.079357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.561806, 34.209061, 42.050209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155463, 0.315518, 0.936098,
		0.590595, -0.729923, 0.344109,
		0.791852, 0.606351, -0.072867,
		40.799362, 34.390965, 42.028347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.616936, 34.045341, 42.736816>,  <40.245064, 33.966522, 42.079357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.616936, 34.045341, 42.736816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756992, 34.376511, 42.561573>,  <40.841026, 34.575214, 42.456425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756992, 34.376511, 42.561573>,  <40.616936, 34.045341, 42.736816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756992, 34.376511, 42.561573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010541, 0.471173, 0.881978,
		0.936639, -0.304195, 0.173702,
		0.350137, 0.827926, -0.438112,
		40.862034, 34.624889, 42.430138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732235, 33.584728, 43.329140>,  <40.616936, 34.045341, 42.736816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732235, 33.584728, 43.329140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419147, 33.405308, 43.501724>,  <40.231297, 33.297657, 43.605274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419147, 33.405308, 43.501724>,  <40.732235, 33.584728, 43.329140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419147, 33.405308, 43.501724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203245, -0.471021, -0.858388,
		0.588259, -0.759566, 0.277509,
		-0.782715, -0.448552, 0.431461,
		40.184334, 33.270741, 43.631161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758934, 32.825020, 43.226040>,  <40.732235, 33.584728, 43.329140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758934, 32.825020, 43.226040> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373787, 32.899326, 43.304398>,  <40.142696, 32.943909, 43.351410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373787, 32.899326, 43.304398>,  <40.758934, 32.825020, 43.226040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373787, 32.899326, 43.304398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269957, -0.668810, -0.692688,
		0.002336, -0.719850, 0.694125,
		-0.962870, 0.185766, 0.195891,
		40.084927, 32.955055, 43.363163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435196, 32.281834, 43.011383>,  <40.758934, 32.825020, 43.226040>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435196, 32.281834, 43.011383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099770, 32.490887, 43.072906>,  <39.898514, 32.616318, 43.109821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099770, 32.490887, 43.072906>,  <40.435196, 32.281834, 43.011383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.099770, 32.490887, 43.072906> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482771, -0.582045, -0.654336,
		-0.252454, -0.622961, 0.740397,
		-0.838570, 0.522631, 0.153808,
		39.848198, 32.647675, 43.119049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829685, 31.837084, 43.223827>,  <40.435196, 32.281834, 43.011383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829685, 31.837084, 43.223827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661228, 32.163067, 43.064590>,  <39.560154, 32.358658, 42.969048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661228, 32.163067, 43.064590>,  <39.829685, 31.837084, 43.223827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661228, 32.163067, 43.064590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504828, -0.575266, -0.643598,
		-0.753515, -0.070081, 0.653685,
		-0.421146, 0.814959, -0.398092,
		39.534885, 32.407555, 42.945164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000374, 31.711506, 43.129234>,  <39.829685, 31.837084, 43.223827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000374, 31.711506, 43.129234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106281, 32.004616, 42.878498>,  <39.169827, 32.180481, 42.728054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106281, 32.004616, 42.878498>,  <39.000374, 31.711506, 43.129234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106281, 32.004616, 42.878498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527252, -0.434264, -0.730356,
		-0.807404, 0.523884, 0.271376,
		0.264773, 0.732776, -0.626845,
		39.185715, 32.224449, 42.690445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450825, 31.823036, 42.830990>,  <39.000374, 31.711506, 43.129234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450825, 31.823036, 42.830990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712650, 31.975357, 42.569752>,  <38.869747, 32.066750, 42.413010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712650, 31.975357, 42.569752>,  <38.450825, 31.823036, 42.830990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712650, 31.975357, 42.569752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518089, -0.403184, -0.754338,
		-0.550571, 0.832126, -0.066622,
		0.654565, 0.380801, -0.653097,
		38.909019, 32.089596, 42.373821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051098, 32.070396, 42.266388>,  <38.450825, 31.823036, 42.830990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051098, 32.070396, 42.266388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416035, 32.005795, 42.115891>,  <38.634995, 31.967033, 42.025593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416035, 32.005795, 42.115891>,  <38.051098, 32.070396, 42.266388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.416035, 32.005795, 42.115891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408503, -0.421160, -0.809784,
		-0.027674, 0.892491, -0.450216,
		0.912337, -0.161505, -0.376240,
		38.689735, 31.957342, 42.003017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058975, 32.421936, 41.642632>,  <38.051098, 32.070396, 42.266388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058975, 32.421936, 41.642632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317532, 32.117031, 41.629181>,  <38.472664, 31.934088, 41.621109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317532, 32.117031, 41.629181>,  <38.058975, 32.421936, 41.642632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317532, 32.117031, 41.629181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435776, -0.332639, -0.836332,
		0.626320, 0.555252, -0.547192,
		0.646392, -0.762264, -0.033627,
		38.511448, 31.888351, 41.619091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840565, 32.229698, 41.011681>,  <38.058975, 32.421936, 41.642632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840565, 32.229698, 41.011681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077042, 31.930853, 41.133221>,  <38.218925, 31.751547, 41.206142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077042, 31.930853, 41.133221>,  <37.840565, 32.229698, 41.011681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077042, 31.930853, 41.133221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331553, -0.568550, -0.752877,
		0.735233, 0.344352, -0.583828,
		0.591190, -0.747110, 0.303846,
		38.254398, 31.706720, 41.224373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146996, 31.937531, 40.385094>,  <37.840565, 32.229698, 41.011681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146996, 31.937531, 40.385094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212181, 31.653528, 40.659126>,  <38.251293, 31.483128, 40.823547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212181, 31.653528, 40.659126>,  <38.146996, 31.937531, 40.385094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212181, 31.653528, 40.659126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355076, -0.690041, -0.630686,
		0.920524, -0.140478, -0.364556,
		0.162962, -0.710006, 0.685080,
		38.261070, 31.440527, 40.864651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314545, 31.380100, 39.984261>,  <38.146996, 31.937531, 40.385094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314545, 31.380100, 39.984261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209450, 31.231142, 40.340302>,  <38.146393, 31.141768, 40.553928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209450, 31.231142, 40.340302>,  <38.314545, 31.380100, 39.984261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209450, 31.231142, 40.340302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571507, -0.683213, -0.454533,
		0.777399, -0.628124, -0.033323,
		-0.262736, -0.372398, 0.890107,
		38.130630, 31.119423, 40.607334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436066, 30.683558, 39.939270>,  <38.314545, 31.380100, 39.984261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436066, 30.683558, 39.939270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151512, 30.733904, 40.215847>,  <37.980778, 30.764112, 40.381794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151512, 30.733904, 40.215847>,  <38.436066, 30.683558, 39.939270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151512, 30.733904, 40.215847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617832, -0.580933, -0.529906,
		0.334982, -0.804161, 0.491032,
		-0.711386, 0.125867, 0.691439,
		37.938095, 30.771664, 40.423279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.808449, 35.178318, 47.032455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.416084, 35.176029, 46.954716>,  <40.180664, 35.174656, 46.908070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.416084, 35.176029, 46.954716>,  <40.808449, 35.178318, 47.032455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416084, 35.176029, 46.954716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153669, -0.635216, -0.756893,
		-0.119126, -0.772313, 0.623972,
		-0.980915, -0.005719, -0.194351,
		40.121811, 35.174313, 46.896412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667995, 34.500172, 46.917198>,  <40.808449, 35.178318, 47.032455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667995, 34.500172, 46.917198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.380974, 34.702572, 46.725750>,  <40.208763, 34.824013, 46.610882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.380974, 34.702572, 46.725750>,  <40.667995, 34.500172, 46.917198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380974, 34.702572, 46.725750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112373, -0.594069, -0.796526,
		-0.687381, -0.625333, 0.369414,
		-0.717552, 0.506005, -0.478622,
		40.165707, 34.854374, 46.582165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250923, 34.006580, 46.729156>,  <40.667995, 34.500172, 46.917198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250923, 34.006580, 46.729156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.161987, 34.303783, 46.476650>,  <40.108627, 34.482105, 46.325146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.161987, 34.303783, 46.476650>,  <40.250923, 34.006580, 46.729156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161987, 34.303783, 46.476650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173229, -0.667280, -0.724382,
		-0.959457, -0.051701, 0.277071,
		-0.222336, 0.743011, -0.631270,
		40.095287, 34.526688, 46.287270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715309, 33.857231, 46.467915>,  <40.250923, 34.006580, 46.729156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715309, 33.857231, 46.467915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.870102, 34.097183, 46.187805>,  <39.962978, 34.241154, 46.019737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.870102, 34.097183, 46.187805>,  <39.715309, 33.857231, 46.467915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870102, 34.097183, 46.187805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243693, -0.665910, -0.705108,
		-0.889304, 0.443514, -0.111505,
		0.386978, 0.599882, -0.700278,
		39.986195, 34.277149, 45.977722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292530, 33.739647, 45.902199>,  <39.715309, 33.857231, 46.467915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292530, 33.739647, 45.902199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.624107, 33.915730, 45.764168>,  <39.823051, 34.021378, 45.681351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.624107, 33.915730, 45.764168>,  <39.292530, 33.739647, 45.902199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624107, 33.915730, 45.764168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032050, -0.578542, -0.815023,
		-0.558420, 0.686664, -0.465467,
		0.828939, 0.440207, -0.345077,
		39.872787, 34.047791, 45.660645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149769, 34.034088, 45.205399>,  <39.292530, 33.739647, 45.902199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149769, 34.034088, 45.205399> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.544685, 33.970943, 45.212708>,  <39.781635, 33.933056, 45.217094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.544685, 33.970943, 45.212708>,  <39.149769, 34.034088, 45.205399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544685, 33.970943, 45.212708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037569, -0.343577, -0.938373,
		0.154408, 0.925762, -0.345141,
		0.987293, -0.157859, 0.018271,
		39.840874, 33.923584, 45.218189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.358032, 34.195065, 44.575695>,  <39.149769, 34.034088, 45.205399>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.358032, 34.195065, 44.575695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.669777, 33.981644, 44.707104>,  <39.856823, 33.853592, 44.785950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.669777, 33.981644, 44.707104>,  <39.358032, 34.195065, 44.575695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669777, 33.981644, 44.707104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052602, -0.466746, -0.882826,
		0.624368, 0.705318, -0.335696,
		0.779357, -0.533550, 0.328522,
		39.903584, 33.821579, 44.805660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.931007, 34.482082, 44.149792>,  <39.358032, 34.195065, 44.575695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.931007, 34.482082, 44.149792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.987534, 34.116066, 44.300911>,  <40.021450, 33.896458, 44.391582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.987534, 34.116066, 44.300911>,  <39.931007, 34.482082, 44.149792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.987534, 34.116066, 44.300911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230680, -0.340688, -0.911437,
		0.962713, 0.215950, 0.162937,
		0.141314, -0.915039, 0.377801,
		40.029926, 33.841553, 44.414249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445843, 34.190395, 43.703594>,  <39.931007, 34.482082, 44.149792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445843, 34.190395, 43.703594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.291191, 33.867653, 43.882252>,  <40.198399, 33.674007, 43.989445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.291191, 33.867653, 43.882252>,  <40.445843, 34.190395, 43.703594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291191, 33.867653, 43.882252> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123437, -0.434674, -0.892088,
		0.913936, -0.400042, 0.068462,
		-0.386632, -0.806861, 0.446644,
		40.175201, 33.625595, 44.016247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026993, 34.364124, 43.303890>,  <40.445843, 34.190395, 43.703594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026993, 34.364124, 43.303890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.929611, 34.643326, 43.034515>,  <40.871181, 34.810844, 42.872890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.929611, 34.643326, 43.034515>,  <41.026993, 34.364124, 43.303890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929611, 34.643326, 43.034515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086638, 0.707208, 0.701677,
		0.966034, 0.112484, -0.232649,
		-0.243459, 0.698000, -0.673442,
		40.856575, 34.852726, 42.832481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466766, 34.932926, 43.357716>,  <41.026993, 34.364124, 43.303890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466766, 34.932926, 43.357716> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.180958, 35.093994, 43.128872>,  <41.009472, 35.190636, 42.991566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.180958, 35.093994, 43.128872>,  <41.466766, 34.932926, 43.357716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180958, 35.093994, 43.128872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102730, 0.748505, 0.655123,
		0.692027, 0.526874, -0.493459,
		-0.714525, 0.402670, -0.572111,
		40.966602, 35.214794, 42.957237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514809, 35.709160, 43.333935>,  <41.466766, 34.932926, 43.357716>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514809, 35.709160, 43.333935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.132244, 35.661697, 43.227207>,  <40.902706, 35.633221, 43.163170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.132244, 35.661697, 43.227207>,  <41.514809, 35.709160, 43.333935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.132244, 35.661697, 43.227207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268067, 0.719153, 0.641061,
		0.115817, 0.684645, -0.719617,
		-0.956413, -0.118659, -0.266821,
		40.845322, 35.626099, 43.147160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208836, 36.399887, 43.167366>,  <41.514809, 35.709160, 43.333935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208836, 36.399887, 43.167366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.917595, 36.138428, 43.249939>,  <40.742851, 35.981552, 43.299484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.917595, 36.138428, 43.249939>,  <41.208836, 36.399887, 43.167366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917595, 36.138428, 43.249939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450459, 0.683262, 0.574665,
		-0.516674, 0.325427, -0.791925,
		-0.728103, -0.653645, 0.206432,
		40.699165, 35.942333, 43.311867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563042, 36.839645, 43.020016>,  <41.208836, 36.399887, 43.167366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563042, 36.839645, 43.020016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.457142, 36.537987, 43.260406>,  <40.393600, 36.356991, 43.404640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.457142, 36.537987, 43.260406>,  <40.563042, 36.839645, 43.020016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457142, 36.537987, 43.260406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265005, 0.656118, 0.706599,
		-0.927189, 0.027812, -0.373561,
		-0.264752, -0.754146, 0.600975,
		40.377716, 36.311745, 43.440701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941097, 37.002563, 43.180458>,  <40.563042, 36.839645, 43.020016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941097, 37.002563, 43.180458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.049358, 36.750526, 43.471588>,  <40.114315, 36.599304, 43.646267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.049358, 36.750526, 43.471588>,  <39.941097, 37.002563, 43.180458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049358, 36.750526, 43.471588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432948, 0.595599, 0.676622,
		-0.859827, -0.498241, -0.111596,
		0.270655, -0.630093, 0.727825,
		40.130554, 36.561497, 43.689934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328835, 36.870594, 43.518574>,  <39.941097, 37.002563, 43.180458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328835, 36.870594, 43.518574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.625721, 36.774563, 43.768845>,  <39.803852, 36.716946, 43.919006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.625721, 36.774563, 43.768845>,  <39.328835, 36.870594, 43.518574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625721, 36.774563, 43.768845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379604, 0.618794, 0.687746,
		-0.552278, -0.747969, 0.368146,
		0.742219, -0.240077, 0.625679,
		39.848385, 36.702541, 43.956547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014900, 36.769215, 44.254498>,  <39.328835, 36.870594, 43.518574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014900, 36.769215, 44.254498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.405273, 36.845608, 44.296600>,  <39.639496, 36.891445, 44.321861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.405273, 36.845608, 44.296600>,  <39.014900, 36.769215, 44.254498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405273, 36.845608, 44.296600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200764, 0.598440, 0.775606,
		0.085133, -0.778072, 0.622379,
		0.975934, 0.190981, 0.105262,
		39.698055, 36.902901, 44.328178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129448, 36.796551, 44.935833>,  <39.014900, 36.769215, 44.254498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129448, 36.796551, 44.935833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.456184, 36.987171, 44.805809>,  <39.652225, 37.101543, 44.727795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.456184, 36.987171, 44.805809>,  <39.129448, 36.796551, 44.935833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456184, 36.987171, 44.805809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016551, 0.543917, 0.838976,
		0.576621, -0.690692, 0.436408,
		0.816844, 0.476549, -0.325065,
		39.701237, 37.130135, 44.708290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457664, 36.856129, 45.572498>,  <39.129448, 36.796551, 44.935833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457664, 36.856129, 45.572498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.614182, 37.113754, 45.309570>,  <39.708092, 37.268330, 45.151814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.614182, 37.113754, 45.309570>,  <39.457664, 36.856129, 45.572498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614182, 37.113754, 45.309570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145260, 0.662088, 0.735214,
		0.908730, -0.383165, 0.165512,
		0.391292, 0.644069, -0.657318,
		39.731567, 37.306976, 45.112373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070049, 37.062172, 45.949989>,  <39.457664, 36.856129, 45.572498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070049, 37.062172, 45.949989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.980648, 37.352005, 45.689213>,  <39.927006, 37.525906, 45.532745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.980648, 37.352005, 45.689213>,  <40.070049, 37.062172, 45.949989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.980648, 37.352005, 45.689213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127081, 0.684817, 0.717548,
		0.966382, 0.077527, -0.245142,
		-0.223506, 0.724579, -0.651944,
		39.913597, 37.569378, 45.493629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570541, 37.537327, 45.923332>,  <40.070049, 37.062172, 45.949989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570541, 37.537327, 45.923332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.289848, 37.783806, 45.780296>,  <40.121433, 37.931694, 45.694473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.289848, 37.783806, 45.780296>,  <40.570541, 37.537327, 45.923332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289848, 37.783806, 45.780296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308294, 0.715139, 0.627321,
		0.642278, 0.329971, -0.691808,
		-0.701737, 0.616194, -0.357590,
		40.079327, 37.968662, 45.673019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917530, 38.173149, 45.805618>,  <40.570541, 37.537327, 45.923332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917530, 38.173149, 45.805618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.523663, 38.230061, 45.845993>,  <40.287342, 38.264206, 45.870216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.523663, 38.230061, 45.845993>,  <40.917530, 38.173149, 45.805618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523663, 38.230061, 45.845993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174140, 0.835834, 0.520632,
		-0.010295, 0.530227, -0.847794,
		-0.984667, 0.142275, 0.100938,
		40.228264, 38.272743, 45.876274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.824467, 38.893646, 45.636703>,  <40.917530, 38.173149, 45.805618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.824467, 38.893646, 45.636703> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.501675, 38.808090, 45.856895>,  <40.307999, 38.756756, 45.989010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.501675, 38.808090, 45.856895>,  <40.824467, 38.893646, 45.636703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501675, 38.808090, 45.856895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052912, 0.902178, 0.428108,
		-0.588199, 0.374603, -0.716725,
		-0.806983, -0.213889, 0.550481,
		40.259579, 38.743923, 46.022041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.227573, 39.079433, 46.077122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.599262, 39.064796, 45.930038>,  <33.822277, 39.056015, 45.841789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.599262, 39.064796, 45.930038>,  <33.227573, 39.079433, 46.077122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599262, 39.064796, 45.930038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359577, -0.318875, -0.876940,
		-0.085160, 0.947090, -0.309465,
		0.929221, -0.036596, -0.367707,
		33.878029, 39.053818, 45.819725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014481, 39.142677, 45.418869>,  <33.227573, 39.079433, 46.077122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014481, 39.142677, 45.418869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.392975, 39.015079, 45.397392>,  <33.620071, 38.938522, 45.384506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.392975, 39.015079, 45.397392>,  <33.014481, 39.142677, 45.418869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392975, 39.015079, 45.397392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199496, -0.444812, -0.873123,
		0.254637, 0.836891, -0.484534,
		0.946235, -0.318992, -0.053691,
		33.676846, 38.919380, 45.381287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259357, 39.334839, 44.695415>,  <33.014481, 39.142677, 45.418869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259357, 39.334839, 44.695415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.475990, 39.041733, 44.860210>,  <33.605972, 38.865868, 44.959087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.475990, 39.041733, 44.860210>,  <33.259357, 39.334839, 44.695415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475990, 39.041733, 44.860210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100823, -0.543167, -0.833550,
		0.834577, 0.409901, -0.368052,
		0.541586, -0.732769, 0.411987,
		33.638466, 38.821903, 44.983807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921211, 39.217548, 44.242607>,  <33.259357, 39.334839, 44.695415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921211, 39.217548, 44.242607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.800541, 38.889252, 44.436672>,  <33.728138, 38.692272, 44.553112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.800541, 38.889252, 44.436672>,  <33.921211, 39.217548, 44.242607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800541, 38.889252, 44.436672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042449, -0.519925, -0.853157,
		0.952466, -0.236779, 0.191686,
		-0.301672, -0.820740, 0.485160,
		33.710041, 38.643028, 44.582222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296329, 38.677258, 43.887394>,  <33.921211, 39.217548, 44.242607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296329, 38.677258, 43.887394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.031761, 38.464512, 44.098919>,  <33.873020, 38.336864, 44.225834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.031761, 38.464512, 44.098919>,  <34.296329, 38.677258, 43.887394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031761, 38.464512, 44.098919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093624, -0.758099, -0.645384,
		0.744148, -0.377361, 0.551218,
		-0.661421, -0.531869, 0.528808,
		33.833336, 38.304951, 44.257561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623863, 38.081593, 43.829815>,  <34.296329, 38.677258, 43.887394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623863, 38.081593, 43.829815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.238251, 38.040848, 43.928017>,  <34.006882, 38.016399, 43.986938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.238251, 38.040848, 43.928017>,  <34.623863, 38.081593, 43.829815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238251, 38.040848, 43.928017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057350, -0.822170, -0.566346,
		0.259534, -0.560054, 0.786754,
		-0.964029, -0.101866, 0.245500,
		33.949043, 38.010288, 44.001667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565613, 37.363747, 44.007240>,  <34.623863, 38.081593, 43.829815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565613, 37.363747, 44.007240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.205978, 37.496098, 43.892586>,  <33.990196, 37.575508, 43.823792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.205978, 37.496098, 43.892586>,  <34.565613, 37.363747, 44.007240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205978, 37.496098, 43.892586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078820, -0.766426, -0.637478,
		-0.430612, -0.550557, 0.715165,
		-0.899089, 0.330875, -0.286637,
		33.936253, 37.595360, 43.806595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050060, 36.816200, 44.106182>,  <34.565613, 37.363747, 44.007240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050060, 36.816200, 44.106182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.882149, 37.051716, 43.829887>,  <33.781403, 37.193027, 43.664112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.882149, 37.051716, 43.829887>,  <34.050060, 36.816200, 44.106182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882149, 37.051716, 43.829887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170642, -0.798657, -0.577086,
		-0.891443, -0.124378, 0.435729,
		-0.419775, 0.588793, -0.690734,
		33.756214, 37.228355, 43.622669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713909, 36.376781, 43.588966>,  <34.050060, 36.816200, 44.106182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713909, 36.376781, 43.588966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.696552, 36.722267, 43.388123>,  <33.686138, 36.929558, 43.267616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.696552, 36.722267, 43.388123>,  <33.713909, 36.376781, 43.588966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696552, 36.722267, 43.388123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125019, -0.503323, -0.855006,
		-0.991205, 0.025670, 0.129822,
		-0.043395, 0.863717, -0.502106,
		33.683533, 36.981380, 43.237492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123486, 36.342106, 43.101295>,  <33.713909, 36.376781, 43.588966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.123486, 36.342106, 43.101295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.402195, 36.594536, 42.964912>,  <33.569420, 36.745995, 42.883083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.402195, 36.594536, 42.964912>,  <33.123486, 36.342106, 43.101295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402195, 36.594536, 42.964912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037461, -0.442673, -0.895900,
		-0.716308, 0.637016, -0.284805,
		0.696778, 0.631071, -0.340954,
		33.611229, 36.783855, 42.862625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854649, 36.491707, 42.355530>,  <33.123486, 36.342106, 43.101295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854649, 36.491707, 42.355530> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.238609, 36.603806, 42.352913>,  <33.468987, 36.671066, 42.351345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.238609, 36.603806, 42.352913>,  <32.854649, 36.491707, 42.355530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238609, 36.603806, 42.352913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122480, -0.440278, -0.889469,
		-0.252149, 0.853005, -0.456950,
		0.959906, 0.280246, -0.006540,
		33.526581, 36.687878, 42.350952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041626, 36.831448, 41.655537>,  <32.854649, 36.491707, 42.355530>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041626, 36.831448, 41.655537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.398411, 36.709110, 41.788723>,  <33.612480, 36.635708, 41.868633>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.398411, 36.709110, 41.788723>,  <33.041626, 36.831448, 41.655537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398411, 36.709110, 41.788723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214344, -0.362374, -0.907051,
		0.398078, 0.880422, -0.257666,
		0.891959, -0.305848, 0.332966,
		33.666000, 36.617355, 41.888615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420925, 37.100288, 41.136204>,  <33.041626, 36.831448, 41.655537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420925, 37.100288, 41.136204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.645927, 36.830791, 41.327896>,  <33.780930, 36.669094, 41.442913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.645927, 36.830791, 41.327896>,  <33.420925, 37.100288, 41.136204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645927, 36.830791, 41.327896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332742, -0.346146, -0.877192,
		0.756883, 0.652885, 0.029472,
		0.562504, -0.673739, 0.479234,
		33.814678, 36.628670, 41.471668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128380, 37.162643, 40.860538>,  <33.420925, 37.100288, 41.136204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128380, 37.162643, 40.860538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.096592, 36.795120, 41.015182>,  <34.077518, 36.574604, 41.107967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.096592, 36.795120, 41.015182>,  <34.128380, 37.162643, 40.860538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096592, 36.795120, 41.015182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401867, -0.384455, -0.831082,
		0.912243, 0.089319, 0.399794,
		-0.079472, -0.918813, 0.386610,
		34.072750, 36.519478, 41.131165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850513, 37.443050, 40.873302>,  <34.128380, 37.162643, 40.860538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850513, 37.443050, 40.873302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.059299, 37.746609, 40.717548>,  <35.184570, 37.928745, 40.624096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.059299, 37.746609, 40.717548>,  <34.850513, 37.443050, 40.873302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059299, 37.746609, 40.717548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246087, 0.571079, 0.783141,
		0.816696, -0.312951, 0.484840,
		0.521967, 0.758900, -0.389385,
		35.215889, 37.974277, 40.600735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063606, 37.823753, 41.425793>,  <34.850513, 37.443050, 40.873302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063606, 37.823753, 41.425793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.136112, 38.103790, 41.149529>,  <35.179615, 38.271812, 40.983768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.136112, 38.103790, 41.149529>,  <35.063606, 37.823753, 41.425793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136112, 38.103790, 41.149529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028429, 0.698269, 0.715270,
		0.983023, -0.149290, 0.106670,
		0.181267, 0.700094, -0.690659,
		35.190491, 38.313820, 40.942329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842976, 38.131523, 41.449097>,  <35.063606, 37.823753, 41.425793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842976, 38.131523, 41.449097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.566948, 38.389515, 41.317764>,  <35.401329, 38.544308, 41.238964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.566948, 38.389515, 41.317764>,  <35.842976, 38.131523, 41.449097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566948, 38.389515, 41.317764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181738, 0.593555, 0.784005,
		0.700550, 0.481350, -0.526813,
		-0.690073, 0.644976, -0.328335,
		35.359924, 38.583008, 41.219265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076653, 38.674873, 41.811607>,  <35.842976, 38.131523, 41.449097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076653, 38.674873, 41.811607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.725971, 38.798969, 41.664562>,  <35.515560, 38.873428, 41.576336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.725971, 38.798969, 41.664562>,  <36.076653, 38.674873, 41.811607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725971, 38.798969, 41.664562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063555, 0.682815, 0.727822,
		0.476811, 0.661449, -0.578910,
		-0.876706, 0.310240, -0.367612,
		35.462959, 38.892040, 41.554279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168953, 39.369675, 41.632130>,  <36.076653, 38.674873, 41.811607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168953, 39.369675, 41.632130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.780842, 39.311020, 41.709141>,  <35.547977, 39.275826, 41.755348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.780842, 39.311020, 41.709141>,  <36.168953, 39.369675, 41.632130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780842, 39.311020, 41.709141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026492, 0.726382, 0.686780,
		-0.240556, 0.671465, -0.700905,
		-0.970273, -0.146641, 0.192524,
		35.489761, 39.267029, 41.766899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914433, 40.079269, 41.845634>,  <36.168953, 39.369675, 41.632130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914433, 40.079269, 41.845634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.630177, 39.831158, 41.978447>,  <35.459621, 39.682289, 42.058132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.630177, 39.831158, 41.978447>,  <35.914433, 40.079269, 41.845634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630177, 39.831158, 41.978447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097864, 0.554490, 0.826416,
		-0.696716, 0.554790, -0.454746,
		-0.710640, -0.620281, 0.332029,
		35.416985, 39.645073, 42.078056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292786, 40.500431, 42.049171>,  <35.914433, 40.079269, 41.845634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292786, 40.500431, 42.049171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.258907, 40.159237, 42.255177>,  <35.238579, 39.954521, 42.378780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.258907, 40.159237, 42.255177>,  <35.292786, 40.500431, 42.049171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258907, 40.159237, 42.255177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000001, 0.516867, 0.856066,
		-0.996407, 0.072506, -0.043775,
		-0.084696, -0.852990, 0.515010,
		35.233498, 39.903339, 42.409679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.695110, 40.707142, 42.504318>,  <35.292786, 40.500431, 42.049171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.695110, 40.707142, 42.504318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.852062, 40.369980, 42.651581>,  <34.946236, 40.167683, 42.739941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.852062, 40.369980, 42.651581>,  <34.695110, 40.707142, 42.504318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852062, 40.369980, 42.651581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001961, 0.401024, 0.916066,
		-0.919800, -0.358727, 0.159008,
		0.392383, -0.842909, 0.368158,
		34.969776, 40.117107, 42.762028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224541, 40.454330, 43.076599>,  <34.695110, 40.707142, 42.504318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224541, 40.454330, 43.076599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.575947, 40.277065, 43.147953>,  <34.786789, 40.170704, 43.190765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.575947, 40.277065, 43.147953>,  <34.224541, 40.454330, 43.076599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575947, 40.277065, 43.147953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042240, 0.299886, 0.953039,
		-0.475849, -0.844792, 0.244735,
		0.878512, -0.443165, 0.178385,
		34.839500, 40.144115, 43.201469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148781, 39.966927, 43.720676>,  <34.224541, 40.454330, 43.076599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148781, 39.966927, 43.720676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.535805, 40.044071, 43.655396>,  <34.768021, 40.090359, 43.616226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.535805, 40.044071, 43.655396>,  <34.148781, 39.966927, 43.720676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535805, 40.044071, 43.655396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081289, 0.373978, 0.923868,
		0.239209, -0.907164, 0.346169,
		0.967559, 0.192858, -0.163201,
		34.826073, 40.101929, 43.606434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513958, 39.632130, 44.291317>,  <34.148781, 39.966927, 43.720676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513958, 39.632130, 44.291317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.745525, 39.916214, 44.131092>,  <34.884468, 40.086666, 44.034958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.745525, 39.916214, 44.131092>,  <34.513958, 39.632130, 44.291317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745525, 39.916214, 44.131092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110690, 0.418257, 0.901559,
		0.807835, -0.566270, 0.163525,
		0.578922, 0.710210, -0.400563,
		34.919201, 40.129276, 44.010921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066936, 39.686634, 44.740898>,  <34.513958, 39.632130, 44.291317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066936, 39.686634, 44.740898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.045914, 40.030918, 44.538349>,  <35.033298, 40.237488, 44.416821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.045914, 40.030918, 44.538349>,  <35.066936, 39.686634, 44.740898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045914, 40.030918, 44.538349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118605, 0.508868, 0.852635,
		0.991549, -0.015244, -0.128831,
		-0.052560, 0.860709, -0.506376,
		35.030148, 40.289131, 44.386436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626274, 40.000278, 45.001587>,  <35.066936, 39.686634, 44.740898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626274, 40.000278, 45.001587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.412037, 40.304050, 44.853851>,  <35.283497, 40.486313, 44.765209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.412037, 40.304050, 44.853851>,  <35.626274, 40.000278, 45.001587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412037, 40.304050, 44.853851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108681, 0.495707, 0.861663,
		0.837457, 0.421356, -0.348031,
		-0.535588, 0.759430, -0.369340,
		35.251362, 40.531879, 44.743050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986870, 40.655586, 45.101231>,  <35.626274, 40.000278, 45.001587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986870, 40.655586, 45.101231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.606678, 40.770168, 45.053013>,  <35.378563, 40.838917, 45.024082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.606678, 40.770168, 45.053013>,  <35.986870, 40.655586, 45.101231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606678, 40.770168, 45.053013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090719, 0.626696, 0.773966,
		0.297253, 0.724703, -0.621648,
		-0.950479, 0.286459, -0.120543,
		35.321533, 40.856106, 45.016850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464954, 41.093418, 44.760101>,  <35.986870, 40.655586, 45.101231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464954, 41.093418, 44.760101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.864944, 41.092213, 44.762375>,  <37.104939, 41.091492, 44.763737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.864944, 41.092213, 44.762375>,  <36.464954, 41.093418, 44.760101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864944, 41.092213, 44.762375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004483, -0.306983, -0.951705,
		0.004611, 0.951710, -0.306963,
		0.999979, -0.003012, 0.005682,
		37.164940, 41.091309, 44.764080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608025, 41.375198, 44.141182>,  <36.464954, 41.093418, 44.760101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608025, 41.375198, 44.141182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.933456, 41.164574, 44.239826>,  <37.128716, 41.038200, 44.299011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.933456, 41.164574, 44.239826>,  <36.608025, 41.375198, 44.141182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933456, 41.164574, 44.239826> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150568, -0.218876, -0.964066,
		0.561616, 0.821479, -0.098790,
		0.813583, -0.526560, 0.246612,
		37.177532, 41.006607, 44.313808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139877, 41.482288, 43.575752>,  <36.608025, 41.375198, 44.141182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139877, 41.482288, 43.575752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.249828, 41.145199, 43.760906>,  <37.315800, 40.942944, 43.871998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.249828, 41.145199, 43.760906>,  <37.139877, 41.482288, 43.575752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249828, 41.145199, 43.760906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351906, -0.359841, -0.864104,
		0.894764, 0.400417, 0.197646,
		0.274881, -0.842722, 0.462882,
		37.332291, 40.892384, 43.899773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733833, 41.244614, 43.264107>,  <37.139877, 41.482288, 43.575752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733833, 41.244614, 43.264107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.617306, 40.908360, 43.446743>,  <37.547390, 40.706608, 43.556324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.617306, 40.908360, 43.446743>,  <37.733833, 41.244614, 43.264107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617306, 40.908360, 43.446743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364061, -0.538800, -0.759707,
		0.884644, -0.055087, 0.463002,
		-0.291315, -0.840631, 0.456591,
		37.529911, 40.656170, 43.583721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274826, 40.795784, 43.217873>,  <37.733833, 41.244614, 43.264107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274826, 40.795784, 43.217873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.955708, 40.562450, 43.278862>,  <37.764236, 40.422451, 43.315456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.955708, 40.562450, 43.278862>,  <38.274826, 40.795784, 43.217873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.955708, 40.562450, 43.278862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409850, -0.710164, -0.572442,
		0.442206, -0.394200, 0.805643,
		-0.797796, -0.583330, 0.152476,
		37.716370, 40.387451, 43.324604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.579002, 40.244785, 43.424240>,  <38.274826, 40.795784, 43.217873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.579002, 40.244785, 43.424240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.207935, 40.128391, 43.330639>,  <37.985294, 40.058556, 43.274479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.207935, 40.128391, 43.330639>,  <38.579002, 40.244785, 43.424240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207935, 40.128391, 43.330639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373359, -0.732912, -0.568720,
		-0.006016, -0.614952, 0.788542,
		-0.927667, -0.290988, -0.234007,
		37.929634, 40.041096, 43.260437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511845, 39.401455, 43.374176>,  <38.579002, 40.244785, 43.424240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511845, 39.401455, 43.374176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.189800, 39.517792, 43.167408>,  <37.996574, 39.587593, 43.043346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.189800, 39.517792, 43.167408>,  <38.511845, 39.401455, 43.374176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189800, 39.517792, 43.167408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214397, -0.669892, -0.710829,
		-0.553023, -0.683122, 0.476981,
		-0.805109, 0.290842, -0.516925,
		37.948269, 39.605045, 43.012329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271172, 38.771812, 43.024265>,  <38.511845, 39.401455, 43.374176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.271172, 38.771812, 43.024265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.084621, 39.066246, 42.828026>,  <37.972691, 39.242905, 42.710281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.084621, 39.066246, 42.828026>,  <38.271172, 38.771812, 43.024265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084621, 39.066246, 42.828026> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086697, -0.589967, -0.802759,
		-0.880330, -0.331851, 0.338960,
		-0.466372, 0.736080, -0.490595,
		37.944710, 39.287071, 42.680847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733936, 38.445396, 42.574364>,  <38.271172, 38.771812, 43.024265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733936, 38.445396, 42.574364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.817722, 38.797771, 42.404621>,  <37.867992, 39.009197, 42.302776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.817722, 38.797771, 42.404621>,  <37.733936, 38.445396, 42.574364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817722, 38.797771, 42.404621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099118, -0.450877, -0.887066,
		-0.972779, 0.143749, -0.181759,
		0.209466, 0.880935, -0.424356,
		37.880562, 39.062054, 42.277313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284023, 38.500008, 42.107395>,  <37.733936, 38.445396, 42.574364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284023, 38.500008, 42.107395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.566406, 38.755100, 41.984161>,  <37.735836, 38.908157, 41.910221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.566406, 38.755100, 41.984161>,  <37.284023, 38.500008, 42.107395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566406, 38.755100, 41.984161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058465, -0.381040, -0.922708,
		-0.705837, 0.669405, -0.231713,
		0.705958, 0.637734, -0.308089,
		37.778194, 38.946419, 41.891735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126228, 38.585838, 41.409473>,  <37.284023, 38.500008, 42.107395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126228, 38.585838, 41.409473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.494331, 38.742138, 41.401112>,  <37.715195, 38.835918, 41.396095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.494331, 38.742138, 41.401112>,  <37.126228, 38.585838, 41.409473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494331, 38.742138, 41.401112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211381, -0.541357, -0.813788,
		-0.329301, 0.744479, -0.580786,
		0.920260, 0.390748, -0.020901,
		37.770409, 38.859364, 41.394840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242603, 38.908550, 40.774727>,  <37.126228, 38.585838, 41.409473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242603, 38.908550, 40.774727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.611931, 38.845081, 40.914619>,  <37.833527, 38.806999, 40.998554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.611931, 38.845081, 40.914619>,  <37.242603, 38.908550, 40.774727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611931, 38.845081, 40.914619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262102, -0.405253, -0.875827,
		0.280698, 0.900330, -0.332588,
		0.923315, -0.158671, 0.349732,
		37.888924, 38.797482, 41.019539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713482, 39.323441, 40.289150>,  <37.242603, 38.908550, 40.774727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713482, 39.323441, 40.289150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.908070, 39.010941, 40.445614>,  <38.024822, 38.823441, 40.539490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.908070, 39.010941, 40.445614>,  <37.713482, 39.323441, 40.289150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908070, 39.010941, 40.445614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144653, -0.369505, -0.917901,
		0.861640, 0.503112, -0.066743,
		0.486469, -0.781246, 0.391157,
		38.054008, 38.776566, 40.562962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308163, 39.232807, 39.922478>,  <37.713482, 39.323441, 40.289150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308163, 39.232807, 39.922478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.317898, 38.871311, 40.093437>,  <38.323738, 38.654415, 40.196011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.317898, 38.871311, 40.093437>,  <38.308163, 39.232807, 39.922478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317898, 38.871311, 40.093437> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224470, -0.411665, -0.883258,
		0.974177, 0.117430, 0.192845,
		0.024333, -0.903738, 0.427394,
		38.325199, 38.600189, 40.221657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.052439, 29.618633, 31.149475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.941954, 29.441193, 31.490515>,  <24.875664, 29.334728, 31.695139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.941954, 29.441193, 31.490515>,  <25.052439, 29.618633, 31.149475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.941954, 29.441193, 31.490515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359566, 0.774991, 0.519712,
		-0.891302, 0.450116, -0.054556,
		-0.276211, -0.443604, 0.852598,
		24.859091, 29.308111, 31.746294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.652033, 30.147068, 31.431322>,  <25.052439, 29.618633, 31.149475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.652033, 30.147068, 31.431322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.802006, 29.917431, 31.722485>,  <24.891989, 29.779650, 31.897182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.802006, 29.917431, 31.722485>,  <24.652033, 30.147068, 31.431322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.802006, 29.917431, 31.722485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365690, 0.813100, 0.452924,
		-0.851879, 0.096373, 0.514796,
		0.374931, -0.574092, 0.727905,
		24.914486, 29.745203, 31.940857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.556324, 30.531254, 31.998112>,  <24.652033, 30.147068, 31.431322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.556324, 30.531254, 31.998112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.809883, 30.264025, 32.153984>,  <24.962019, 30.103687, 32.247509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.809883, 30.264025, 32.153984>,  <24.556324, 30.531254, 31.998112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.809883, 30.264025, 32.153984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421077, 0.720735, 0.550669,
		-0.648745, -0.184980, 0.738181,
		0.633896, -0.668075, 0.389682,
		25.000051, 30.063602, 32.270889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.342386, 30.493313, 32.764088>,  <24.556324, 30.531254, 31.998112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.342386, 30.493313, 32.764088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.720184, 30.397091, 32.674591>,  <24.946863, 30.339357, 32.620895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.720184, 30.397091, 32.674591>,  <24.342386, 30.493313, 32.764088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.720184, 30.397091, 32.674591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327656, 0.739124, 0.588504,
		0.023802, -0.629149, 0.776920,
		0.944497, -0.240555, -0.223737,
		25.003534, 30.324924, 32.607471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.707724, 30.427998, 33.451569>,  <24.342386, 30.493313, 32.764088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.707724, 30.427998, 33.451569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.985983, 30.464617, 33.166557>,  <25.152939, 30.486588, 32.995552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.985983, 30.464617, 33.166557>,  <24.707724, 30.427998, 33.451569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.985983, 30.464617, 33.166557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291549, 0.870515, 0.396489,
		0.656561, -0.483553, 0.578882,
		0.695648, 0.091547, -0.712525,
		25.194677, 30.492081, 32.952801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.442802, 30.383535, 33.747276>,  <24.707724, 30.427998, 33.451569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.442802, 30.383535, 33.747276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.488752, 30.585779, 33.405243>,  <25.516321, 30.707127, 33.200024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.488752, 30.585779, 33.405243>,  <25.442802, 30.383535, 33.747276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.488752, 30.585779, 33.405243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435134, 0.748193, 0.500865,
		0.893008, -0.429610, -0.134061,
		0.114873, 0.505610, -0.855080,
		25.523214, 30.737463, 33.148720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.090734, 30.677063, 33.739803>,  <25.442802, 30.383535, 33.747276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.090734, 30.677063, 33.739803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.883680, 30.883118, 33.466545>,  <25.759449, 31.006750, 33.302589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.883680, 30.883118, 33.466545>,  <26.090734, 30.677063, 33.739803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.883680, 30.883118, 33.466545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269835, 0.855980, 0.441008,
		0.811939, 0.043944, -0.582086,
		-0.517633, 0.515139, -0.683146,
		25.728390, 31.037659, 33.261600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.471952, 31.256601, 33.722889>,  <26.090734, 30.677063, 33.739803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.471952, 31.256601, 33.722889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.159491, 31.377298, 33.504257>,  <25.972013, 31.449717, 33.373077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.159491, 31.377298, 33.504257>,  <26.471952, 31.256601, 33.722889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.159491, 31.377298, 33.504257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271163, 0.952543, 0.138321,
		0.562377, -0.040162, -0.825905,
		-0.781155, 0.301744, -0.546579,
		25.925144, 31.467821, 33.340282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.697815, 31.683043, 33.278301>,  <26.471952, 31.256601, 33.722889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.697815, 31.683043, 33.278301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.311386, 31.785967, 33.269417>,  <26.079529, 31.847721, 33.264088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.311386, 31.785967, 33.269417>,  <26.697815, 31.683043, 33.278301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.311386, 31.785967, 33.269417> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249021, 0.950837, 0.184112,
		0.068492, 0.172335, -0.982654,
		-0.966073, 0.257312, -0.022209,
		26.021564, 31.863161, 33.262753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.527288, 32.250828, 32.777630>,  <26.697815, 31.683043, 33.278301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.527288, 32.250828, 32.777630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.267628, 32.265110, 33.081558>,  <26.111832, 32.273678, 33.263916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.267628, 32.265110, 33.081558>,  <26.527288, 32.250828, 32.777630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.267628, 32.265110, 33.081558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384674, 0.877160, 0.287431,
		-0.656222, 0.478870, -0.583143,
		-0.649152, 0.035702, 0.759820,
		26.072882, 32.275822, 33.309505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.557024, 32.875961, 32.852367>,  <26.527288, 32.250828, 32.777630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.557024, 32.875961, 32.852367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.367229, 32.748055, 33.180420>,  <26.253353, 32.671310, 33.377251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.367229, 32.748055, 33.180420>,  <26.557024, 32.875961, 32.852367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.367229, 32.748055, 33.180420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206673, 0.865172, 0.456906,
		-0.855657, 0.386294, -0.344425,
		-0.474487, -0.319771, 0.820127,
		26.224884, 32.652122, 33.426456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.684601, 33.394760, 33.237091>,  <26.557024, 32.875961, 32.852367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.684601, 33.394760, 33.237091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.528158, 33.145229, 33.507755>,  <26.434294, 32.995510, 33.670155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.528158, 33.145229, 33.507755>,  <26.684601, 33.394760, 33.237091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.528158, 33.145229, 33.507755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262693, 0.628974, 0.731699,
		-0.882059, 0.463927, -0.082119,
		-0.391106, -0.623830, 0.676663,
		26.410826, 32.958080, 33.710754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.152147, 33.719318, 33.612526>,  <26.684601, 33.394760, 33.237091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.152147, 33.719318, 33.612526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.294207, 33.433929, 33.854130>,  <26.379442, 33.262695, 33.999092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.294207, 33.433929, 33.854130>,  <26.152147, 33.719318, 33.612526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.294207, 33.433929, 33.854130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176071, 0.685624, 0.706342,
		-0.918079, -0.144506, 0.369118,
		0.355147, -0.713469, 0.604014,
		26.400751, 33.219891, 34.035336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.812510, 33.812523, 34.196461>,  <26.152147, 33.719318, 33.612526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.812510, 33.812523, 34.196461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.129997, 33.594742, 34.304966>,  <26.320490, 33.464073, 34.370068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.129997, 33.594742, 34.304966>,  <25.812510, 33.812523, 34.196461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.129997, 33.594742, 34.304966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072298, 0.527222, 0.846646,
		-0.603975, -0.652386, 0.457829,
		0.793718, -0.544453, 0.271263,
		26.368113, 33.431404, 34.386345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.826845, 33.759811, 34.961338>,  <25.812510, 33.812523, 34.196461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.826845, 33.759811, 34.961338> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.204359, 33.657711, 34.877319>,  <26.430866, 33.596451, 34.826908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.204359, 33.657711, 34.877319>,  <25.826845, 33.759811, 34.961338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.204359, 33.657711, 34.877319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291134, 0.340865, 0.893897,
		-0.156569, -0.904797, 0.396015,
		0.943783, -0.255250, -0.210048,
		26.487494, 33.581135, 34.814304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.060400, 33.481266, 35.587910>,  <25.826845, 33.759811, 34.961338>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.060400, 33.481266, 35.587910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.385933, 33.604313, 35.390713>,  <26.581253, 33.678143, 35.272392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.385933, 33.604313, 35.390713>,  <26.060400, 33.481266, 35.587910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.385933, 33.604313, 35.390713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325261, 0.461891, 0.825144,
		0.481540, -0.831882, 0.275846,
		0.813834, 0.307618, -0.492998,
		26.630083, 33.696598, 35.242813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.657101, 33.481483, 36.054543>,  <26.060400, 33.481266, 35.587910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.657101, 33.481483, 36.054543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.812252, 33.712715, 35.767384>,  <26.905344, 33.851452, 35.595089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.812252, 33.712715, 35.767384>,  <26.657101, 33.481483, 36.054543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.812252, 33.712715, 35.767384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599756, 0.433134, 0.672821,
		0.699887, -0.691537, -0.178700,
		0.387879, 0.578075, -0.717899,
		26.928616, 33.886139, 35.552013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.436049, 33.390926, 35.970943>,  <26.657101, 33.481483, 36.054543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.436049, 33.390926, 35.970943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.328712, 33.750187, 35.831623>,  <27.264311, 33.965744, 35.748032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.328712, 33.750187, 35.831623>,  <27.436049, 33.390926, 35.970943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.328712, 33.750187, 35.831623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767444, 0.417853, 0.486239,
		0.582257, -0.136827, -0.801408,
		-0.268340, 0.898152, -0.348305,
		27.248211, 34.019634, 35.727131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.028522, 33.698383, 35.833889>,  <27.436049, 33.390926, 35.970943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.028522, 33.698383, 35.833889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.793337, 34.019299, 35.875114>,  <27.652225, 34.211849, 35.899849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.793337, 34.019299, 35.875114>,  <28.028522, 33.698383, 35.833889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.793337, 34.019299, 35.875114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764029, 0.508991, 0.396467,
		0.265623, 0.311855, -0.912245,
		-0.587965, 0.802293, 0.103067,
		27.616947, 34.259987, 35.906036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.482174, 34.168110, 35.797619>,  <28.028522, 33.698383, 35.833889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.482174, 34.168110, 35.797619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.160015, 34.353504, 35.945412>,  <27.966719, 34.464741, 36.034088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.160015, 34.353504, 35.945412>,  <28.482174, 34.168110, 35.797619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160015, 34.353504, 35.945412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592588, 0.615775, 0.519288,
		0.013167, 0.637182, -0.770601,
		-0.805398, 0.463486, 0.369478,
		27.918396, 34.492550, 36.056255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.511986, 34.920044, 35.665901>,  <28.482174, 34.168110, 35.797619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.511986, 34.920044, 35.665901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.329964, 34.830368, 36.010612>,  <28.220751, 34.776562, 36.217442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.329964, 34.830368, 36.010612>,  <28.511986, 34.920044, 35.665901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329964, 34.830368, 36.010612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712830, 0.488294, 0.503430,
		-0.533666, 0.843391, -0.062391,
		-0.455054, -0.224189, 0.861780,
		28.193447, 34.763111, 36.269146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102631, 34.508591, 35.657082>,  <28.511986, 34.920044, 35.665901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102631, 34.508591, 35.657082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.462372, 34.337868, 35.619144>,  <29.678217, 34.235435, 35.596382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.462372, 34.337868, 35.619144>,  <29.102631, 34.508591, 35.657082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462372, 34.337868, 35.619144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437078, -0.883162, -0.170255,
		-0.011098, 0.194575, -0.980825,
		0.899355, -0.426808, -0.094846,
		29.732178, 34.209824, 35.590691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.105989, 34.112541, 35.069660>,  <29.102631, 34.508591, 35.657082>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.105989, 34.112541, 35.069660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.395834, 33.954742, 35.295689>,  <29.569740, 33.860062, 35.431305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.395834, 33.954742, 35.295689>,  <29.105989, 34.112541, 35.069660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.395834, 33.954742, 35.295689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356768, -0.916258, -0.182176,
		0.589621, -0.069593, -0.804676,
		0.724613, -0.394498, 0.565073,
		29.613218, 33.836391, 35.465210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.562351, 33.673893, 34.593250>,  <29.105989, 34.112541, 35.069660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.562351, 33.673893, 34.593250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.637218, 33.566654, 34.971264>,  <29.682138, 33.502312, 35.198071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.637218, 33.566654, 34.971264>,  <29.562351, 33.673893, 34.593250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637218, 33.566654, 34.971264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237540, -0.945838, -0.221278,
		0.953175, -0.183067, -0.240716,
		0.187170, -0.268097, 0.945035,
		29.693369, 33.486225, 35.254776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091833, 33.144741, 34.554459>,  <29.562351, 33.673893, 34.593250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091833, 33.144741, 34.554459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.897753, 33.105453, 34.902008>,  <29.781305, 33.081882, 35.110538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.897753, 33.105453, 34.902008>,  <30.091833, 33.144741, 34.554459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897753, 33.105453, 34.902008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238174, -0.941254, -0.239402,
		0.841341, -0.323100, 0.433303,
		-0.485200, -0.098217, 0.868870,
		29.752193, 33.075989, 35.162670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.405014, 32.635139, 34.937866>,  <30.091833, 33.144741, 34.554459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.405014, 32.635139, 34.937866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.027399, 32.656651, 35.068039>,  <29.800831, 32.669556, 35.146141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.027399, 32.656651, 35.068039>,  <30.405014, 32.635139, 34.937866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.027399, 32.656651, 35.068039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160100, -0.937308, -0.309551,
		0.288385, -0.344329, 0.893461,
		-0.944035, 0.053773, 0.325432,
		29.744188, 32.672783, 35.165668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306234, 32.042675, 35.135834>,  <30.405014, 32.635139, 34.937866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306234, 32.042675, 35.135834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.919420, 32.141258, 35.161465>,  <29.687332, 32.200409, 35.176842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.919420, 32.141258, 35.161465>,  <30.306234, 32.042675, 35.135834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.919420, 32.141258, 35.161465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251397, -0.883885, -0.394393,
		-0.040568, -0.397499, 0.916705,
		-0.967034, 0.246457, 0.064073,
		29.629311, 32.215195, 35.180687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.962299, 31.492380, 35.416065>,  <30.306234, 32.042675, 35.135834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.962299, 31.492380, 35.416065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.684427, 31.720238, 35.240372>,  <29.517704, 31.856953, 35.134956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.684427, 31.720238, 35.240372>,  <29.962299, 31.492380, 35.416065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.684427, 31.720238, 35.240372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312661, -0.789043, -0.528824,
		-0.647814, -0.230034, 0.726238,
		-0.694680, 0.569646, -0.439230,
		29.476023, 31.891132, 35.108601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.293842, 31.150982, 35.457211>,  <29.962299, 31.492380, 35.416065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.293842, 31.150982, 35.457211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.200544, 31.408796, 35.165958>,  <29.144566, 31.563484, 34.991207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.200544, 31.408796, 35.165958>,  <29.293842, 31.150982, 35.457211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200544, 31.408796, 35.165958> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427371, -0.740535, -0.518615,
		-0.873471, 0.190217, 0.448181,
		-0.233245, 0.644535, -0.728129,
		29.130571, 31.602158, 34.947521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603254, 31.148495, 35.369747>,  <29.293842, 31.150982, 35.457211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603254, 31.148495, 35.369747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.752357, 31.264540, 35.017181>,  <28.841820, 31.334166, 34.805641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.752357, 31.264540, 35.017181>,  <28.603254, 31.148495, 35.369747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.752357, 31.264540, 35.017181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425716, -0.790540, -0.440241,
		-0.824510, 0.539335, -0.171175,
		0.372758, 0.290111, -0.881412,
		28.864185, 31.351572, 34.752758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118612, 31.143686, 34.850674>,  <28.603254, 31.148495, 35.369747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118612, 31.143686, 34.850674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.430658, 31.159637, 34.600929>,  <28.617886, 31.169209, 34.451080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.430658, 31.159637, 34.600929>,  <28.118612, 31.143686, 34.850674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430658, 31.159637, 34.600929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437655, -0.678361, -0.590156,
		-0.447077, 0.733646, -0.511748,
		0.780115, 0.039876, -0.624363,
		28.664694, 31.171600, 34.413620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.814146, 31.094156, 34.185200>,  <28.118612, 31.143686, 34.850674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.814146, 31.094156, 34.185200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.195656, 30.983208, 34.138939>,  <28.424562, 30.916639, 34.111183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.195656, 30.983208, 34.138939>,  <27.814146, 31.094156, 34.185200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.195656, 30.983208, 34.138939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290693, -0.753948, -0.589117,
		0.076206, 0.595506, -0.799728,
		0.953777, -0.277370, -0.115654,
		28.481789, 30.899996, 34.104244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.785412, 30.907255, 33.485039>,  <27.814146, 31.094156, 34.185200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.785412, 30.907255, 33.485039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.126995, 30.749273, 33.620548>,  <28.331945, 30.654484, 33.701855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.126995, 30.749273, 33.620548>,  <27.785412, 30.907255, 33.485039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.126995, 30.749273, 33.620548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137534, -0.799227, -0.585081,
		0.501835, 0.453043, -0.736827,
		0.853959, -0.394953, 0.338771,
		28.383183, 30.630787, 33.722179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243614, 30.823423, 32.944580>,  <27.785412, 30.907255, 33.485039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243614, 30.823423, 32.944580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.353428, 30.544855, 33.209797>,  <28.419315, 30.377714, 33.368927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.353428, 30.544855, 33.209797>,  <28.243614, 30.823423, 32.944580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.353428, 30.544855, 33.209797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325482, -0.716137, -0.617422,
		0.904816, -0.046306, -0.423276,
		0.274533, -0.696422, 0.663044,
		28.435787, 30.335928, 33.408710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.646427, 30.404337, 32.508888>,  <28.243614, 30.823423, 32.944580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.646427, 30.404337, 32.508888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.582977, 30.180286, 32.834118>,  <28.544907, 30.045856, 33.029255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.582977, 30.180286, 32.834118>,  <28.646427, 30.404337, 32.508888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582977, 30.180286, 32.834118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206942, -0.786351, -0.582089,
		0.965408, -0.260593, 0.008821,
		-0.158625, -0.560128, 0.813077,
		28.535389, 30.012247, 33.078041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.108294, 29.807423, 32.362949>,  <28.646427, 30.404337, 32.508888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.108294, 29.807423, 32.362949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.819218, 29.740431, 32.631180>,  <28.645773, 29.700235, 32.792118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.819218, 29.740431, 32.631180>,  <29.108294, 29.807423, 32.362949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.819218, 29.740431, 32.631180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101112, -0.934142, -0.342280,
		0.683736, -0.315165, 0.658160,
		-0.722690, -0.167481, 0.670574,
		28.602411, 29.690186, 32.832352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.296099, 29.224630, 32.705284>,  <29.108294, 29.807423, 32.362949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.296099, 29.224630, 32.705284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.899229, 29.272219, 32.720448>,  <28.661108, 29.300772, 32.729546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.899229, 29.272219, 32.720448>,  <29.296099, 29.224630, 32.705284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.899229, 29.272219, 32.720448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124083, -0.905437, -0.405940,
		-0.013971, -0.407467, 0.913113,
		-0.992173, 0.118973, 0.037910,
		28.601578, 29.307911, 32.731819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067436, 28.502865, 32.695011>,  <29.296099, 29.224630, 32.705284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067436, 28.502865, 32.695011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.733500, 28.706244, 32.610611>,  <28.533136, 28.828270, 32.559971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.733500, 28.706244, 32.610611>,  <29.067436, 28.502865, 32.695011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.733500, 28.706244, 32.610611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354711, -0.789966, -0.500135,
		-0.420972, -0.342691, 0.839849,
		-0.834843, 0.508446, -0.210997,
		28.483047, 28.858778, 32.547314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.566225, 28.034540, 32.830364>,  <29.067436, 28.502865, 32.695011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.566225, 28.034540, 32.830364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.375332, 28.316069, 32.619884>,  <28.260796, 28.484985, 32.493595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.375332, 28.316069, 32.619884>,  <28.566225, 28.034540, 32.830364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375332, 28.316069, 32.619884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519310, -0.708919, -0.477232,
		-0.708919, 0.045511, 0.703820,
		0.477232, -0.703820, 0.526201,
		28.232162, 28.527214, 32.462025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.904573, 27.930359, 32.865475>,  <28.566225, 28.034540, 32.830364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.904573, 27.930359, 32.865475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.968239, 28.132198, 32.526051>,  <28.006439, 28.253302, 32.322395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.968239, 28.132198, 32.526051>,  <27.904573, 27.930359, 32.865475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968239, 28.132198, 32.526051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509800, -0.694042, -0.508340,
		-0.845441, 0.513504, 0.146776,
		0.159166, 0.504598, -0.848556,
		28.015989, 28.283577, 32.271484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.295078, 27.924601, 32.618580>,  <27.904573, 27.930359, 32.865475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.295078, 27.924601, 32.618580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.527693, 27.975374, 32.297157>,  <27.667261, 28.005838, 32.104305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.527693, 27.975374, 32.297157>,  <27.295078, 27.924601, 32.618580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.527693, 27.975374, 32.297157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604037, -0.594271, -0.531019,
		-0.544936, 0.794184, -0.268917,
		0.581537, 0.126936, -0.803556,
		27.702154, 28.013454, 32.056091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.843330, 28.017120, 32.130768>,  <27.295078, 27.924601, 32.618580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.843330, 28.017120, 32.130768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.169998, 27.917181, 31.922682>,  <27.365999, 27.857218, 31.797829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.169998, 27.917181, 31.922682>,  <26.843330, 28.017120, 32.130768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.169998, 27.917181, 31.922682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553523, -0.594174, -0.583584,
		-0.163293, 0.764548, -0.623540,
		0.816669, -0.249848, -0.520219,
		27.414999, 27.842226, 31.766617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.509434, 39.613552, 45.752346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.345230, 39.365593, 46.019840>,  <40.246708, 39.216816, 46.180336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.345230, 39.365593, 46.019840>,  <40.509434, 39.613552, 45.752346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345230, 39.365593, 46.019840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023541, 0.725932, 0.687364,
		-0.911555, 0.297908, -0.283405,
		-0.410504, -0.619898, 0.668739,
		40.222080, 39.179623, 46.220463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096352, 40.010990, 46.227146>,  <40.509434, 39.613552, 45.752346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096352, 40.010990, 46.227146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.157814, 39.679832, 46.442917>,  <40.194691, 39.481136, 46.572380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.157814, 39.679832, 46.442917>,  <40.096352, 40.010990, 46.227146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157814, 39.679832, 46.442917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088217, 0.555220, 0.827012,
		-0.984178, -0.079491, 0.158349,
		0.153659, -0.827897, 0.539423,
		40.203911, 39.431465, 46.604744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750172, 40.138435, 46.740463>,  <40.096352, 40.010990, 46.227146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750172, 40.138435, 46.740463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.023712, 39.869415, 46.853622>,  <40.187836, 39.708004, 46.921520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.023712, 39.869415, 46.853622>,  <39.750172, 40.138435, 46.740463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023712, 39.869415, 46.853622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239509, 0.573170, 0.783653,
		-0.689195, -0.468141, 0.553041,
		0.683846, -0.672548, 0.282902,
		40.228867, 39.667652, 46.938492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539314, 39.960152, 47.417194>,  <39.750172, 40.138435, 46.740463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539314, 39.960152, 47.417194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.927769, 39.883060, 47.360977>,  <40.160843, 39.836807, 47.327248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.927769, 39.883060, 47.360977>,  <39.539314, 39.960152, 47.417194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.927769, 39.883060, 47.360977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222651, 0.521035, 0.823984,
		-0.085571, -0.831493, 0.548906,
		0.971136, -0.192724, -0.140547,
		40.219109, 39.825245, 47.318813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778271, 39.715652, 48.121765>,  <39.539314, 39.960152, 47.417194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778271, 39.715652, 48.121765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.105320, 39.828884, 47.921223>,  <40.301548, 39.896824, 47.800896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.105320, 39.828884, 47.921223>,  <39.778271, 39.715652, 48.121765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105320, 39.828884, 47.921223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318766, 0.502583, 0.803616,
		0.479458, -0.816871, 0.320689,
		0.817623, 0.283075, -0.501358,
		40.350605, 39.913807, 47.770813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179245, 39.741619, 48.732597>,  <39.778271, 39.715652, 48.121765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179245, 39.741619, 48.732597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.384281, 39.935184, 48.448887>,  <40.507301, 40.051323, 48.278660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.384281, 39.935184, 48.448887>,  <40.179245, 39.741619, 48.732597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384281, 39.935184, 48.448887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384753, 0.609027, 0.693579,
		0.767603, -0.628419, 0.125994,
		0.512592, 0.483916, -0.709277,
		40.538059, 40.080360, 48.236103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832741, 39.770302, 48.934792>,  <40.179245, 39.741619, 48.732597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832741, 39.770302, 48.934792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.793884, 40.065418, 48.667587>,  <40.770573, 40.242489, 48.507267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.793884, 40.065418, 48.667587>,  <40.832741, 39.770302, 48.934792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793884, 40.065418, 48.667587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463577, 0.627467, 0.625604,
		0.880716, -0.248903, -0.402972,
		-0.097137, 0.737789, -0.668006,
		40.764744, 40.286755, 48.467186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521236, 40.109951, 48.813496>,  <40.832741, 39.770302, 48.934792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.521236, 40.109951, 48.813496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.215874, 40.359394, 48.746181>,  <41.032658, 40.509060, 48.705791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.215874, 40.359394, 48.746181>,  <41.521236, 40.109951, 48.813496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215874, 40.359394, 48.746181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434130, 0.688290, 0.581196,
		0.478272, 0.370628, -0.796172,
		-0.763405, 0.623612, -0.168289,
		40.986851, 40.546478, 48.695694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844570, 40.694241, 49.032082>,  <41.521236, 40.109951, 48.813496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844570, 40.694241, 49.032082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.468136, 40.816113, 48.973385>,  <41.242275, 40.889236, 48.938168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.468136, 40.816113, 48.973385>,  <41.844570, 40.694241, 49.032082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.468136, 40.816113, 48.973385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165402, 0.793171, 0.586108,
		0.294963, 0.527306, -0.796834,
		-0.941084, 0.304678, -0.146739,
		41.185810, 40.907516, 48.929363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895157, 41.410244, 49.126404>,  <41.844570, 40.694241, 49.032082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.895157, 41.410244, 49.126404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.505138, 41.324833, 49.150681>,  <41.271126, 41.273586, 49.165245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.505138, 41.324833, 49.150681>,  <41.895157, 41.410244, 49.126404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505138, 41.324833, 49.150681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108903, 0.698361, 0.707413,
		-0.193438, 0.683153, -0.704190,
		-0.975050, -0.213529, 0.060692,
		41.212624, 41.260773, 49.168888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638004, 42.020206, 49.315571>,  <41.895157, 41.410244, 49.126404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.638004, 42.020206, 49.315571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.320690, 41.799889, 49.419357>,  <41.130302, 41.667698, 49.481628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.320690, 41.799889, 49.419357>,  <41.638004, 42.020206, 49.315571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.320690, 41.799889, 49.419357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175966, 0.615379, 0.768339,
		-0.582870, 0.563854, -0.585091,
		-0.793284, -0.550798, 0.259467,
		41.082706, 41.634647, 49.497196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123207, 42.523235, 49.510448>,  <41.638004, 42.020206, 49.315571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123207, 42.523235, 49.510448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.035126, 42.173012, 49.682449>,  <40.982277, 41.962879, 49.785652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.035126, 42.173012, 49.682449>,  <41.123207, 42.523235, 49.510448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035126, 42.173012, 49.682449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127777, 0.462919, 0.877143,
		-0.967048, 0.138207, -0.213814,
		-0.220206, -0.875560, 0.430005,
		40.969063, 41.910343, 49.811451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.454639, 42.553024, 49.838753>,  <41.123207, 42.523235, 49.510448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.454639, 42.553024, 49.838753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.646526, 42.272957, 50.050278>,  <40.761658, 42.104916, 50.177193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.646526, 42.272957, 50.050278>,  <40.454639, 42.553024, 49.838753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646526, 42.272957, 50.050278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307591, 0.430240, 0.848694,
		-0.821744, -0.569786, -0.008974,
		0.479712, -0.700170, 0.528808,
		40.790440, 42.062904, 50.208920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864029, 42.877922, 50.119019>,  <40.454639, 42.553024, 49.838753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864029, 42.877922, 50.119019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.480381, 42.982662, 50.161972>,  <39.250195, 43.045506, 50.187744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.480381, 42.982662, 50.161972>,  <39.864029, 42.877922, 50.119019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480381, 42.982662, 50.161972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194611, -0.334704, -0.922008,
		-0.205483, -0.905212, 0.371979,
		-0.959116, 0.261848, 0.107389,
		39.192646, 43.061218, 50.194187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411781, 42.299103, 50.178936>,  <39.864029, 42.877922, 50.119019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411781, 42.299103, 50.178936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.215855, 42.613235, 50.027496>,  <39.098297, 42.801716, 49.936630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.215855, 42.613235, 50.027496>,  <39.411781, 42.299103, 50.178936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215855, 42.613235, 50.027496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145767, -0.501921, -0.852542,
		-0.859553, -0.362402, 0.360325,
		-0.489817, 0.785328, -0.378601,
		39.068909, 42.848835, 49.913918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814484, 42.098450, 49.881275>,  <39.411781, 42.299103, 50.178936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814484, 42.098450, 49.881275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.876133, 42.440205, 49.682770>,  <38.913124, 42.645256, 49.563667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.876133, 42.440205, 49.682770>,  <38.814484, 42.098450, 49.881275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.876133, 42.440205, 49.682770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203110, -0.464139, -0.862161,
		-0.966950, 0.233676, 0.101999,
		0.154124, 0.854384, -0.496261,
		38.922371, 42.696518, 49.533890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243416, 42.133774, 49.317951>,  <38.814484, 42.098450, 49.881275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243416, 42.133774, 49.317951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.519905, 42.398926, 49.202854>,  <38.685799, 42.558018, 49.133797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.519905, 42.398926, 49.202854>,  <38.243416, 42.133774, 49.317951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519905, 42.398926, 49.202854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228678, -0.177068, -0.957263,
		-0.685501, 0.727486, 0.029192,
		0.691227, 0.662880, -0.287741,
		38.727272, 42.597790, 49.116531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870667, 42.669407, 48.975819>,  <38.243416, 42.133774, 49.317951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870667, 42.669407, 48.975819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.240967, 42.673233, 48.824612>,  <38.463146, 42.675529, 48.733887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.240967, 42.673233, 48.824612>,  <37.870667, 42.669407, 48.975819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.240967, 42.673233, 48.824612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377174, 0.094617, -0.921297,
		0.026957, 0.995468, 0.091198,
		0.925750, 0.009563, -0.378015,
		38.518692, 42.676102, 48.711208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710281, 43.020008, 48.279778>,  <37.870667, 42.669407, 48.975819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710281, 43.020008, 48.279778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.073223, 42.852459, 48.265598>,  <38.290989, 42.751930, 48.257092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.073223, 42.852459, 48.265598>,  <37.710281, 43.020008, 48.279778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073223, 42.852459, 48.265598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242330, -0.452292, -0.858317,
		0.343488, 0.787389, -0.511894,
		0.907355, -0.418869, -0.035451,
		38.345428, 42.726799, 48.254963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917652, 43.130665, 47.632336>,  <37.710281, 43.020008, 48.279778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917652, 43.130665, 47.632336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.162949, 42.835312, 47.744568>,  <38.310127, 42.658100, 47.811909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.162949, 42.835312, 47.744568>,  <37.917652, 43.130665, 47.632336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162949, 42.835312, 47.744568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017479, -0.367814, -0.929735,
		0.789705, 0.565244, -0.238464,
		0.613238, -0.738385, 0.280585,
		38.346920, 42.613796, 47.828743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365582, 43.013390, 47.009083>,  <37.917652, 43.130665, 47.632336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365582, 43.013390, 47.009083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.404842, 42.688107, 47.238541>,  <38.428398, 42.492939, 47.376213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.404842, 42.688107, 47.238541>,  <38.365582, 43.013390, 47.009083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404842, 42.688107, 47.238541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016617, -0.577685, -0.816091,
		0.995032, 0.070572, -0.070217,
		0.098156, -0.813204, 0.573642,
		38.434288, 42.444145, 47.410633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825481, 42.638363, 46.639606>,  <38.365582, 43.013390, 47.009083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825481, 42.638363, 46.639606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.622761, 42.379616, 46.867542>,  <38.501129, 42.224369, 47.004303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.622761, 42.379616, 46.867542>,  <38.825481, 42.638363, 46.639606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622761, 42.379616, 46.867542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240002, -0.529009, -0.813971,
		0.827978, -0.549286, 0.112855,
		-0.506804, -0.646865, 0.569838,
		38.470718, 42.185555, 47.038494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.950161, 42.027935, 46.366989>,  <38.825481, 42.638363, 46.639606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.950161, 42.027935, 46.366989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.623714, 41.941601, 46.581417>,  <38.427845, 41.889801, 46.710072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.623714, 41.941601, 46.581417>,  <38.950161, 42.027935, 46.366989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623714, 41.941601, 46.581417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424801, -0.404836, -0.809724,
		0.391789, -0.888550, 0.238705,
		-0.816116, -0.215839, 0.536067,
		38.378880, 41.876850, 46.742237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722637, 41.399372, 46.113976>,  <38.950161, 42.027935, 46.366989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722637, 41.399372, 46.113976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.403282, 41.530346, 46.316109>,  <38.211670, 41.608932, 46.437389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.403282, 41.530346, 46.316109>,  <38.722637, 41.399372, 46.113976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403282, 41.530346, 46.316109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601757, -0.403971, -0.688981,
		-0.021460, -0.854162, 0.519565,
		-0.798391, 0.327437, 0.505329,
		38.163765, 41.628578, 46.467709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.340450, 40.831985, 46.328918>,  <38.722637, 41.399372, 46.113976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.340450, 40.831985, 46.328918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.083511, 41.137608, 46.304867>,  <37.929348, 41.320980, 46.290436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.083511, 41.137608, 46.304867>,  <38.340450, 40.831985, 46.328918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083511, 41.137608, 46.304867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507279, -0.482657, -0.713940,
		-0.574511, -0.428092, 0.697620,
		-0.642343, 0.764055, -0.060129,
		37.890808, 41.366825, 46.286827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685989, 40.546822, 46.297379>,  <38.340450, 40.831985, 46.328918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685989, 40.546822, 46.297379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.666119, 40.914177, 46.140362>,  <37.654194, 41.134590, 46.046150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.666119, 40.914177, 46.140362>,  <37.685989, 40.546822, 46.297379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666119, 40.914177, 46.140362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590475, -0.343992, -0.730074,
		-0.805526, 0.195518, 0.559376,
		-0.049678, 0.918391, -0.392543,
		37.651215, 41.189693, 46.022598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251751, 40.439419, 45.837456>,  <37.685989, 40.546822, 46.297379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251751, 40.439419, 45.837456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.344318, 40.807816, 45.712093>,  <37.399860, 41.028854, 45.636875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.344318, 40.807816, 45.712093>,  <37.251751, 40.439419, 45.837456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344318, 40.807816, 45.712093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255298, -0.253369, -0.933074,
		-0.938759, 0.295943, 0.176492,
		0.231419, 0.920989, -0.313407,
		37.413746, 41.084114, 45.618073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656860, 40.753525, 45.486015>,  <37.251751, 40.439419, 45.837456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656860, 40.753525, 45.486015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.994312, 40.920921, 45.351460>,  <37.196781, 41.021358, 45.270725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.994312, 40.920921, 45.351460>,  <36.656860, 40.753525, 45.486015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994312, 40.920921, 45.351460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234297, -0.276782, -0.931932,
		-0.483113, 0.865017, -0.135449,
		0.843627, 0.418493, -0.336388,
		37.247402, 41.046471, 45.250542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.006191, 41.315109, 45.412968>,  <36.656860, 40.753525, 45.486015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.006191, 41.315109, 45.412968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.614819, 41.299419, 45.331848>,  <35.379993, 41.290005, 45.283176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.614819, 41.299419, 45.331848>,  <36.006191, 41.315109, 45.412968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614819, 41.299419, 45.331848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163028, 0.749539, 0.641570,
		0.126842, 0.660797, -0.739770,
		-0.978434, -0.039225, -0.202802,
		35.321289, 41.287651, 45.271008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770164, 42.075783, 45.269169>,  <36.006191, 41.315109, 45.412968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770164, 42.075783, 45.269169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.477512, 41.858242, 45.433578>,  <35.301922, 41.727718, 45.532227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.477512, 41.858242, 45.433578>,  <35.770164, 42.075783, 45.269169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477512, 41.858242, 45.433578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019837, 0.585700, 0.810285,
		-0.681416, 0.600981, -0.417726,
		-0.731628, -0.543855, 0.411027,
		35.258022, 41.695087, 45.556885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370548, 42.536854, 45.590984>,  <35.770164, 42.075783, 45.269169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370548, 42.536854, 45.590984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.271599, 42.193050, 45.769890>,  <35.212227, 41.986767, 45.877235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.271599, 42.193050, 45.769890>,  <35.370548, 42.536854, 45.590984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271599, 42.193050, 45.769890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024631, 0.467044, 0.883891,
		-0.968606, 0.207637, -0.136706,
		-0.247376, -0.859510, 0.447268,
		35.197388, 41.935196, 45.904072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825497, 42.692932, 46.070210>,  <35.370548, 42.536854, 45.590984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825497, 42.692932, 46.070210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.992287, 42.350769, 46.193119>,  <35.092361, 42.145473, 46.266865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.992287, 42.350769, 46.193119>,  <34.825497, 42.692932, 46.070210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992287, 42.350769, 46.193119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070596, 0.306564, 0.949228,
		-0.906174, -0.417494, 0.067441,
		0.416972, -0.855405, 0.307274,
		35.117378, 42.094147, 46.285301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464264, 42.571812, 46.658485>,  <34.825497, 42.692932, 46.070210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464264, 42.571812, 46.658485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.779015, 42.326832, 46.688740>,  <34.967865, 42.179844, 46.706894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.779015, 42.326832, 46.688740>,  <34.464264, 42.571812, 46.658485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779015, 42.326832, 46.688740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041040, 0.174231, 0.983849,
		-0.615741, -0.771066, 0.162234,
		0.786879, -0.612454, 0.075637,
		35.015079, 42.143097, 46.711430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335018, 42.179375, 47.256332>,  <34.464264, 42.571812, 46.658485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335018, 42.179375, 47.256332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.729107, 42.185585, 47.188110>,  <34.965561, 42.189312, 47.147179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.729107, 42.185585, 47.188110>,  <34.335018, 42.179375, 47.256332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729107, 42.185585, 47.188110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161166, 0.252738, 0.954017,
		0.057916, -0.967410, 0.246502,
		0.985227, 0.015525, -0.170551,
		35.024673, 42.190243, 47.136944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703377, 41.788673, 47.814339>,  <34.335018, 42.179375, 47.256332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703377, 41.788673, 47.814339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.992332, 42.028179, 47.675987>,  <35.165707, 42.171883, 47.592976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.992332, 42.028179, 47.675987>,  <34.703377, 41.788673, 47.814339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992332, 42.028179, 47.675987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269970, 0.216278, 0.938264,
		0.636603, -0.771172, -0.005410,
		0.722394, 0.598762, -0.345877,
		35.209049, 42.207809, 47.572224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894695, 41.055656, 47.721790>,  <34.703377, 41.788673, 47.814339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894695, 41.055656, 47.721790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.823837, 40.724075, 47.933998>,  <34.781322, 40.525127, 48.061325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.823837, 40.724075, 47.933998>,  <34.894695, 41.055656, 47.721790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823837, 40.724075, 47.933998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025889, -0.534936, -0.844496,
		0.983844, -0.163336, 0.073302,
		-0.177148, -0.828954, 0.530522,
		34.770691, 40.475388, 48.093155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295204, 40.517452, 47.404850>,  <34.894695, 41.055656, 47.721790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295204, 40.517452, 47.404850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.001377, 40.347298, 47.616302>,  <34.825081, 40.245205, 47.743176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.001377, 40.347298, 47.616302>,  <35.295204, 40.517452, 47.404850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001377, 40.347298, 47.616302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129700, -0.676691, -0.724753,
		0.666023, -0.600945, 0.441903,
		-0.734569, -0.425387, 0.528634,
		34.781006, 40.219681, 47.774891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476501, 39.812630, 47.330101>,  <35.295204, 40.517452, 47.404850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476501, 39.812630, 47.330101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.093296, 39.800598, 47.444157>,  <34.863373, 39.793381, 47.512589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.093296, 39.800598, 47.444157>,  <35.476501, 39.812630, 47.330101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093296, 39.800598, 47.444157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218828, -0.565895, -0.794907,
		0.185267, -0.823929, 0.535554,
		-0.958014, -0.030076, 0.285140,
		34.805893, 39.791576, 47.529697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274033, 39.068390, 47.404591>,  <35.476501, 39.812630, 47.330101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274033, 39.068390, 47.404591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.955990, 39.303577, 47.345142>,  <34.765163, 39.444691, 47.309471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.955990, 39.303577, 47.345142>,  <35.274033, 39.068390, 47.404591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955990, 39.303577, 47.345142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347323, -0.642369, -0.683176,
		-0.497158, -0.491580, 0.714970,
		-0.795111, 0.587972, -0.148622,
		34.717457, 39.479969, 47.300556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844940, 38.566898, 47.220116>,  <35.274033, 39.068390, 47.404591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844940, 38.566898, 47.220116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.682201, 38.911690, 47.099140>,  <34.584560, 39.118565, 47.026554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.682201, 38.911690, 47.099140>,  <34.844940, 38.566898, 47.220116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682201, 38.911690, 47.099140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316124, -0.443473, -0.838688,
		-0.857055, -0.245607, 0.452917,
		-0.406844, 0.861980, -0.302438,
		34.560146, 39.170284, 47.008408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250080, 38.384613, 46.922001>,  <34.844940, 38.566898, 47.220116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250080, 38.384613, 46.922001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.306782, 38.748096, 46.764954>,  <34.340801, 38.966187, 46.670723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.306782, 38.748096, 46.764954>,  <34.250080, 38.384613, 46.922001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306782, 38.748096, 46.764954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308996, -0.336190, -0.889661,
		-0.940441, 0.247429, 0.233132,
		0.141751, 0.908711, -0.392621,
		34.349308, 39.020710, 46.647167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617176, 38.522930, 46.560268>,  <34.250080, 38.384613, 46.922001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617176, 38.522930, 46.560268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.887661, 38.776066, 46.409409>,  <34.049953, 38.927948, 46.318893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.887661, 38.776066, 46.409409>,  <33.617176, 38.522930, 46.560268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887661, 38.776066, 46.409409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356913, -0.166433, -0.919192,
		-0.644475, 0.756181, 0.113326,
		0.676214, 0.632843, -0.377153,
		34.090527, 38.965919, 46.296265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.726013, 39.273827, 51.988373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.009071, 39.420620, 51.746861>,  <40.178905, 39.508698, 51.601952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.009071, 39.420620, 51.746861>,  <39.726013, 39.273827, 51.988373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009071, 39.420620, 51.746861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313034, -0.603256, -0.733547,
		-0.633436, 0.708099, -0.312016,
		0.707650, 0.366984, -0.603783,
		40.221367, 39.530716, 51.565727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357803, 39.334435, 51.436287>,  <39.726013, 39.273827, 51.988373>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357803, 39.334435, 51.436287> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.741577, 39.376389, 51.331612>,  <39.971844, 39.401562, 51.268806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.741577, 39.376389, 51.331612>,  <39.357803, 39.334435, 51.436287>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741577, 39.376389, 51.331612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142133, -0.621659, -0.770284,
		-0.243471, 0.776233, -0.581535,
		0.959437, 0.104887, -0.261685,
		40.029408, 39.407856, 51.253105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419151, 39.727200, 50.769218>,  <39.357803, 39.334435, 51.436287>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419151, 39.727200, 50.769218> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.737484, 39.492172, 50.827744>,  <39.928486, 39.351154, 50.862858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.737484, 39.492172, 50.827744>,  <39.419151, 39.727200, 50.769218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737484, 39.492172, 50.827744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285034, -0.576709, -0.765612,
		0.534231, 0.567597, -0.626443,
		0.795835, -0.587572, 0.146311,
		39.976234, 39.315899, 50.871635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643353, 39.520866, 50.173950>,  <39.419151, 39.727200, 50.769218>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643353, 39.520866, 50.173950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.859921, 39.245201, 50.366581>,  <39.989861, 39.079803, 50.482159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.859921, 39.245201, 50.366581>,  <39.643353, 39.520866, 50.173950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859921, 39.245201, 50.366581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244397, -0.677068, -0.694154,
		0.804446, 0.258133, -0.535008,
		0.541421, -0.689164, 0.481578,
		40.022346, 39.038452, 50.511055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770725, 39.053051, 49.620544>,  <39.643353, 39.520866, 50.173950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770725, 39.053051, 49.620544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.835152, 38.842110, 49.954239>,  <39.873806, 38.715546, 50.154457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.835152, 38.842110, 49.954239>,  <39.770725, 39.053051, 49.620544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835152, 38.842110, 49.954239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277216, -0.835418, -0.474581,
		0.947212, -0.154827, -0.280747,
		0.161063, -0.527357, 0.834238,
		39.883472, 38.683903, 50.204510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097134, 38.439262, 49.345665>,  <39.770725, 39.053051, 49.620544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097134, 38.439262, 49.345665> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.964062, 38.327785, 49.706032>,  <39.884220, 38.260899, 49.922253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.964062, 38.327785, 49.706032>,  <40.097134, 38.439262, 49.345665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964062, 38.327785, 49.706032> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393613, -0.827106, -0.401204,
		0.856969, -0.488085, 0.165461,
		-0.332676, -0.278691, 0.900921,
		39.864258, 38.244179, 49.976307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407688, 37.765335, 49.596157>,  <40.097134, 38.439262, 49.345665>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.407688, 37.765335, 49.596157> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.060192, 37.814133, 49.788158>,  <39.851692, 37.843410, 49.903358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.060192, 37.814133, 49.788158>,  <40.407688, 37.765335, 49.596157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060192, 37.814133, 49.788158> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265008, -0.933272, -0.242433,
		0.418395, -0.337816, 0.843105,
		-0.868744, 0.121997, 0.480000,
		39.799568, 37.850731, 49.932159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318306, 37.194832, 50.060009>,  <40.407688, 37.765335, 49.596157>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318306, 37.194832, 50.060009> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.955978, 37.347790, 49.987045>,  <39.738583, 37.439564, 49.943268>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.955978, 37.347790, 49.987045>,  <40.318306, 37.194832, 50.060009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955978, 37.347790, 49.987045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325104, -0.903435, -0.279485,
		-0.271666, -0.193861, 0.942664,
		-0.905817, 0.382391, -0.182408,
		39.684235, 37.462505, 49.932323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830219, 36.700924, 50.264618>,  <40.318306, 37.194832, 50.060009>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830219, 36.700924, 50.264618> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.583630, 36.916817, 50.035305>,  <39.435677, 37.046352, 49.897717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.583630, 36.916817, 50.035305>,  <39.830219, 36.700924, 50.264618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583630, 36.916817, 50.035305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307403, -0.835291, -0.455843,
		-0.724887, -0.104789, 0.680852,
		-0.616476, 0.539730, -0.573279,
		39.398685, 37.078735, 49.863323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341202, 36.238297, 50.003857>,  <39.830219, 36.700924, 50.264618>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341202, 36.238297, 50.003857> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.239857, 36.544476, 49.767250>,  <39.179050, 36.728184, 49.625286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.239857, 36.544476, 49.767250>,  <39.341202, 36.238297, 50.003857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239857, 36.544476, 49.767250> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083378, -0.626475, -0.774969,
		-0.963772, -0.147027, 0.222546,
		-0.253361, 0.765449, -0.591521,
		39.163849, 36.774109, 49.589794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736629, 36.113228, 49.599850>,  <39.341202, 36.238297, 50.003857>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736629, 36.113228, 49.599850> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.925289, 36.386086, 49.376339>,  <39.038483, 36.549801, 49.242233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.925289, 36.386086, 49.376339>,  <38.736629, 36.113228, 49.599850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925289, 36.386086, 49.376339> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159780, -0.689310, -0.706627,
		-0.867191, 0.243997, -0.434103,
		0.471646, 0.682142, -0.558778,
		39.066784, 36.590729, 49.208706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332611, 36.130894, 49.000500>,  <38.736629, 36.113228, 49.599850>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332611, 36.130894, 49.000500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.690716, 36.283310, 48.908134>,  <38.905579, 36.374760, 48.852715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.690716, 36.283310, 48.908134>,  <38.332611, 36.130894, 49.000500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690716, 36.283310, 48.908134> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030289, -0.465009, -0.884788,
		-0.444518, 0.799107, -0.404761,
		0.895258, 0.381044, -0.230909,
		38.959293, 36.397625, 48.838863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915386, 36.682159, 48.713623>,  <38.332611, 36.130894, 49.000500>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915386, 36.682159, 48.713623> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.579208, 36.744019, 48.505878>,  <37.377502, 36.781132, 48.381233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.579208, 36.744019, 48.505878>,  <37.915386, 36.682159, 48.713623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579208, 36.744019, 48.505878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326294, 0.620775, 0.712861,
		0.432646, 0.768586, -0.471268,
		-0.840446, 0.154645, -0.519361,
		37.327076, 36.790413, 48.350071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759438, 37.406693, 48.761532>,  <37.915386, 36.682159, 48.713623>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759438, 37.406693, 48.761532> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.428257, 37.210400, 48.652954>,  <37.229549, 37.092625, 48.587807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.428257, 37.210400, 48.652954>,  <37.759438, 37.406693, 48.761532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428257, 37.210400, 48.652954> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515700, 0.476051, 0.712340,
		-0.220344, 0.729767, -0.647216,
		-0.827951, -0.490729, -0.271445,
		37.179871, 37.063179, 48.571522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301563, 37.877277, 48.581318>,  <37.759438, 37.406693, 48.761532>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301563, 37.877277, 48.581318> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.074684, 37.562401, 48.678158>,  <36.938557, 37.373474, 48.736263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.074684, 37.562401, 48.678158>,  <37.301563, 37.877277, 48.581318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074684, 37.562401, 48.678158> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508487, 0.565963, 0.648943,
		-0.647866, 0.244972, -0.721290,
		-0.567196, -0.787194, 0.242104,
		36.904526, 37.326244, 48.750790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718811, 38.178558, 48.585037>,  <37.301563, 37.877277, 48.581318>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718811, 38.178558, 48.585037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.672726, 37.847553, 48.804836>,  <36.645073, 37.648949, 48.936714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.672726, 37.847553, 48.804836>,  <36.718811, 38.178558, 48.585037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672726, 37.847553, 48.804836> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295502, 0.556690, 0.776386,
		-0.948370, -0.072928, -0.308669,
		-0.115213, -0.827513, 0.549498,
		36.638161, 37.599300, 48.969685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026131, 38.224499, 48.848221>,  <36.718811, 38.178558, 48.585037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026131, 38.224499, 48.848221> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.248505, 37.991158, 49.085075>,  <36.381931, 37.851154, 49.227188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.248505, 37.991158, 49.085075>,  <36.026131, 38.224499, 48.848221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248505, 37.991158, 49.085075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384998, 0.450643, 0.805418,
		-0.736688, -0.675735, 0.025940,
		0.555939, -0.583354, 0.592140,
		36.415287, 37.816151, 49.262718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643490, 38.190815, 49.433651>,  <36.026131, 38.224499, 48.848221>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643490, 38.190815, 49.433651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.975376, 38.033134, 49.591728>,  <36.174507, 37.938526, 49.686577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.975376, 38.033134, 49.591728>,  <35.643490, 38.190815, 49.433651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975376, 38.033134, 49.591728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297340, 0.287054, 0.910598,
		-0.472406, -0.873042, 0.120959,
		0.829711, -0.394206, 0.395197,
		36.224289, 37.914871, 49.710289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416672, 37.720474, 50.035114>,  <35.643490, 38.190815, 49.433651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416672, 37.720474, 50.035114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.795830, 37.840340, 50.078373>,  <36.023327, 37.912258, 50.104328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.795830, 37.840340, 50.078373>,  <35.416672, 37.720474, 50.035114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795830, 37.840340, 50.078373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171683, 0.194547, 0.965752,
		0.268360, -0.933999, 0.235857,
		0.947896, 0.299662, 0.108144,
		36.080200, 37.930237, 50.110817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741276, 37.424278, 50.584267>,  <35.416672, 37.720474, 50.035114>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741276, 37.424278, 50.584267> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.964035, 37.752083, 50.530224>,  <36.097691, 37.948765, 50.497799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.964035, 37.752083, 50.530224>,  <35.741276, 37.424278, 50.584267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964035, 37.752083, 50.530224> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244392, 0.317147, 0.916346,
		0.793808, -0.477297, 0.376903,
		0.556903, 0.819515, -0.135106,
		36.131107, 37.997936, 50.489693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042561, 37.634209, 51.289768>,  <35.741276, 37.424278, 50.584267>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042561, 37.634209, 51.289768> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.141079, 37.984997, 51.124714>,  <36.200188, 38.195469, 51.025681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.141079, 37.984997, 51.124714>,  <36.042561, 37.634209, 51.289768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141079, 37.984997, 51.124714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130565, 0.451891, 0.882467,
		0.960361, -0.163470, 0.225799,
		0.246293, 0.876967, -0.412635,
		36.214966, 38.248089, 51.000923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514610, 38.039169, 51.718761>,  <36.042561, 37.634209, 51.289768>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514610, 38.039169, 51.718761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.339756, 38.305336, 51.476727>,  <36.234844, 38.465038, 51.331505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.339756, 38.305336, 51.476727>,  <36.514610, 38.039169, 51.718761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339756, 38.305336, 51.476727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338201, 0.501777, 0.796141,
		0.833386, 0.552663, 0.005700,
		-0.437137, 0.665420, -0.605085,
		36.208614, 38.504963, 51.295200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680325, 38.775551, 52.012218>,  <36.514610, 38.039169, 51.718761>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680325, 38.775551, 52.012218> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.373192, 38.864857, 51.772022>,  <36.188911, 38.918442, 51.627903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.373192, 38.864857, 51.772022>,  <36.680325, 38.775551, 52.012218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373192, 38.864857, 51.772022> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201894, 0.805222, 0.557545,
		0.608009, 0.549335, -0.573198,
		-0.767830, 0.223267, -0.600490,
		36.142841, 38.931835, 51.591877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709618, 39.592804, 51.941605>,  <36.680325, 38.775551, 52.012218>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709618, 39.592804, 51.941605> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.334526, 39.489384, 51.848804>,  <36.109470, 39.427334, 51.793125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.334526, 39.489384, 51.848804>,  <36.709618, 39.592804, 51.941605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334526, 39.489384, 51.848804> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344520, 0.777663, 0.525876,
		0.044452, 0.573056, -0.818310,
		-0.937726, -0.258548, -0.231998,
		36.053207, 39.411819, 51.779205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382378, 40.235020, 51.728523>,  <36.709618, 39.592804, 51.941605>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382378, 40.235020, 51.728523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.099854, 39.970734, 51.830170>,  <35.930340, 39.812160, 51.891159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.099854, 39.970734, 51.830170>,  <36.382378, 40.235020, 51.728523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099854, 39.970734, 51.830170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486670, 0.713897, 0.503491,
		-0.514078, 0.231951, -0.825786,
		-0.706311, -0.660719, 0.254115,
		35.887959, 39.772518, 51.906403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864498, 40.509079, 51.401070>,  <36.382378, 40.235020, 51.728523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864498, 40.509079, 51.401070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.723766, 40.271915, 51.690807>,  <35.639328, 40.129616, 51.864651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.723766, 40.271915, 51.690807>,  <35.864498, 40.509079, 51.401070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723766, 40.271915, 51.690807> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521418, 0.766784, 0.374387,
		-0.777391, -0.245962, -0.578936,
		-0.351834, -0.592912, 0.724340,
		35.618217, 40.094040, 51.908108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115559, 40.468426, 51.286694>,  <35.864498, 40.509079, 51.401070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115559, 40.468426, 51.286694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.857971, 40.739090, 51.143902>,  <34.703419, 40.901489, 51.058228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.857971, 40.739090, 51.143902>,  <35.115559, 40.468426, 51.286694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857971, 40.739090, 51.143902> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072558, -0.410485, -0.908976,
		-0.761607, -0.611249, 0.215241,
		-0.643964, 0.676665, -0.356980,
		34.664783, 40.942089, 51.036808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774857, 40.102489, 50.775009>,  <35.115559, 40.468426, 51.286694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774857, 40.102489, 50.775009> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.668350, 40.481186, 50.702579>,  <34.604446, 40.708405, 50.659122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.668350, 40.481186, 50.702579>,  <34.774857, 40.102489, 50.775009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668350, 40.481186, 50.702579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043531, -0.199476, -0.978935,
		-0.962915, -0.252778, 0.094326,
		-0.266269, 0.946738, -0.181075,
		34.588470, 40.765205, 50.648258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110794, 40.085495, 50.351696>,  <34.774857, 40.102489, 50.775009>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110794, 40.085495, 50.351696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.321922, 40.413906, 50.264687>,  <34.448601, 40.610954, 50.212482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.321922, 40.413906, 50.264687>,  <34.110794, 40.085495, 50.351696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321922, 40.413906, 50.264687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000810, -0.255613, -0.966779,
		-0.849356, 0.510462, -0.134253,
		0.527820, 0.821030, -0.217520,
		34.480267, 40.660213, 50.199432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727856, 40.270294, 49.728664>,  <34.110794, 40.085495, 50.351696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727856, 40.270294, 49.728664> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.081161, 40.457394, 49.741673>,  <34.293144, 40.569653, 49.749477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.081161, 40.457394, 49.741673>,  <33.727856, 40.270294, 49.728664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081161, 40.457394, 49.741673> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088702, -0.098578, -0.991168,
		-0.460413, 0.878346, -0.128560,
		0.883262, 0.467750, 0.032524,
		34.346142, 40.597717, 49.751431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732506, 40.741760, 49.171925>,  <33.727856, 40.270294, 49.728664>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732506, 40.741760, 49.171925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.110283, 40.656879, 49.272327>,  <34.336948, 40.605949, 49.332569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.110283, 40.656879, 49.272327>,  <33.732506, 40.741760, 49.171925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110283, 40.656879, 49.272327> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210246, -0.196979, -0.957599,
		0.252650, 0.957167, -0.141419,
		0.944439, -0.212205, 0.251007,
		34.393616, 40.593220, 49.347630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310902, 41.295746, 48.994232>,  <33.732506, 40.741760, 49.171925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310902, 41.295746, 48.994232> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.434696, 40.916000, 48.972553>,  <34.508972, 40.688152, 48.959545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.434696, 40.916000, 48.972553>,  <34.310902, 41.295746, 48.994232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434696, 40.916000, 48.972553> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272879, 0.143265, -0.951321,
		0.910910, 0.279629, 0.303398,
		0.309483, -0.949359, -0.054197,
		34.527542, 40.631191, 48.956295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673096, 41.319698, 48.457706>,  <34.310902, 41.295746, 48.994232>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673096, 41.319698, 48.457706> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.642654, 40.924839, 48.513905>,  <34.624390, 40.687923, 48.547623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.642654, 40.924839, 48.513905>,  <34.673096, 41.319698, 48.457706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642654, 40.924839, 48.513905> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097416, -0.147595, -0.984239,
		0.992330, -0.061216, 0.107396,
		-0.076103, -0.987152, 0.140500,
		34.619823, 40.628693, 48.556053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233112, 41.657417, 48.350178>,  <34.673096, 41.319698, 48.457706>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.233112, 41.657417, 48.350178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.379757, 41.970631, 48.149200>,  <35.467743, 42.158558, 48.028614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.379757, 41.970631, 48.149200>,  <35.233112, 41.657417, 48.350178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379757, 41.970631, 48.149200> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374303, 0.370272, 0.850174,
		0.851758, -0.499750, -0.157347,
		0.366613, 0.783038, -0.502440,
		35.489742, 42.205544, 47.998466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924179, 41.612854, 48.417572>,  <35.233112, 41.657417, 48.350178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924179, 41.612854, 48.417572> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.825935, 41.992924, 48.340801>,  <35.766987, 42.220966, 48.294739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.825935, 41.992924, 48.340801>,  <35.924179, 41.612854, 48.417572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825935, 41.992924, 48.340801> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434082, 0.284843, 0.854656,
		0.866745, 0.126602, -0.482416,
		-0.245614, 0.950177, -0.191930,
		35.752251, 42.277977, 48.283222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480648, 42.004288, 48.558975>,  <35.924179, 41.612854, 48.417572>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480648, 42.004288, 48.558975> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.187748, 42.276508, 48.569256>,  <36.012009, 42.439842, 48.575424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.187748, 42.276508, 48.569256>,  <36.480648, 42.004288, 48.558975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187748, 42.276508, 48.569256> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455507, 0.461348, 0.761362,
		0.506289, 0.569213, -0.647818,
		-0.732246, 0.680555, 0.025705,
		35.968075, 42.480675, 48.576969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923836, 42.595703, 48.731773>,  <36.480648, 42.004288, 48.558975>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923836, 42.595703, 48.731773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.548149, 42.710167, 48.807655>,  <36.322739, 42.778847, 48.853184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.548149, 42.710167, 48.807655>,  <36.923836, 42.595703, 48.731773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548149, 42.710167, 48.807655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293107, 0.380570, 0.877072,
		0.178787, 0.879362, -0.441313,
		-0.939214, 0.286161, 0.189706,
		36.266384, 42.796017, 48.864567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908863, 43.309605, 48.701950>,  <36.923836, 42.595703, 48.731773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908863, 43.309605, 48.701950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.610149, 43.201534, 48.945038>,  <36.430923, 43.136692, 49.090889>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.610149, 43.201534, 48.945038>,  <36.908863, 43.309605, 48.701950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610149, 43.201534, 48.945038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426499, 0.506594, 0.749307,
		-0.510309, 0.818761, -0.263087,
		-0.746782, -0.270172, 0.607721,
		36.386116, 43.120483, 49.127354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710445, 43.975208, 49.132488>,  <36.908863, 43.309605, 48.701950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710445, 43.975208, 49.132488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.546223, 43.659420, 49.314995>,  <36.447689, 43.469948, 49.424500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.546223, 43.659420, 49.314995>,  <36.710445, 43.975208, 49.132488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546223, 43.659420, 49.314995> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342618, 0.330149, 0.879554,
		-0.845016, 0.517435, 0.134941,
		-0.410561, -0.789470, 0.456264,
		36.423054, 43.422581, 49.451874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401909, 44.281521, 49.765850>,  <36.710445, 43.975208, 49.132488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401909, 44.281521, 49.765850> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.424366, 43.889633, 49.842781>,  <36.437840, 43.654499, 49.888939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.424366, 43.889633, 49.842781>,  <36.401909, 44.281521, 49.765850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.424366, 43.889633, 49.842781> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363976, 0.199459, 0.909801,
		-0.929715, 0.018922, 0.367794,
		0.056145, -0.979723, 0.192327,
		36.441208, 43.595715, 49.900478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066624, 44.208237, 50.411537>,  <36.401909, 44.281521, 49.765850>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066624, 44.208237, 50.411537> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.310295, 43.895191, 50.360279>,  <36.456497, 43.707363, 50.329525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.310295, 43.895191, 50.360279>,  <36.066624, 44.208237, 50.411537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310295, 43.895191, 50.360279> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375650, 0.142465, 0.915746,
		-0.698416, -0.605992, 0.380774,
		0.609182, -0.782609, -0.128141,
		36.493050, 43.660408, 50.321838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868420, 43.841625, 50.979454>,  <36.066624, 44.208237, 50.411537>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868420, 43.841625, 50.979454> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.224564, 43.727322, 50.837692>,  <36.438251, 43.658737, 50.752636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.224564, 43.727322, 50.837692>,  <35.868420, 43.841625, 50.979454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224564, 43.727322, 50.837692> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387938, 0.068832, 0.919112,
		-0.238252, -0.955826, 0.172143,
		0.890359, -0.285761, -0.354402,
		36.491673, 43.641594, 50.731373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.720158, 35.242744, 36.382347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100224, 35.266788, 36.504707>,  <36.328262, 35.281216, 36.578125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100224, 35.266788, 36.504707>,  <35.720158, 35.242744, 36.382347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100224, 35.266788, 36.504707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296265, 0.479563, 0.825982,
		-0.097048, -0.875446, 0.473473,
		0.950163, 0.060114, 0.305904,
		36.385273, 35.284824, 36.596478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645924, 34.960262, 37.046188>,  <35.720158, 35.242744, 36.382347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645924, 34.960262, 37.046188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951496, 35.215973, 37.011017>,  <36.134842, 35.369400, 36.989914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951496, 35.215973, 37.011017>,  <35.645924, 34.960262, 37.046188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951496, 35.215973, 37.011017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175238, 0.336661, 0.925176,
		0.621045, -0.691365, 0.369212,
		0.763934, 0.639276, -0.087929,
		36.180676, 35.407757, 36.984638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000450, 34.815895, 37.637630>,  <35.645924, 34.960262, 37.046188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000450, 34.815895, 37.637630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114445, 35.171398, 37.494022>,  <36.182842, 35.384701, 37.407860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114445, 35.171398, 37.494022>,  <36.000450, 34.815895, 37.637630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114445, 35.171398, 37.494022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264082, 0.432857, 0.861914,
		0.921435, -0.150827, 0.358064,
		0.284990, 0.888756, -0.359019,
		36.199944, 35.438026, 37.386318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421871, 35.042934, 38.146519>,  <36.000450, 34.815895, 37.637630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421871, 35.042934, 38.146519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341053, 35.387863, 37.960800>,  <36.292561, 35.594822, 37.849369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.341053, 35.387863, 37.960800>,  <36.421871, 35.042934, 38.146519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341053, 35.387863, 37.960800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053634, 0.463623, 0.884408,
		0.977907, 0.203592, -0.047423,
		-0.202044, 0.862325, -0.464300,
		36.280441, 35.646561, 37.821510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847828, 35.519459, 38.447140>,  <36.421871, 35.042934, 38.146519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847828, 35.519459, 38.447140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583881, 35.764416, 38.272991>,  <36.425514, 35.911392, 38.168503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583881, 35.764416, 38.272991>,  <36.847828, 35.519459, 38.447140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583881, 35.764416, 38.272991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033939, 0.603130, 0.796921,
		0.750618, 0.511083, -0.418768,
		-0.659864, 0.612396, -0.435374,
		36.385921, 35.948135, 38.142380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073959, 36.259018, 38.534931>,  <36.847828, 35.519459, 38.447140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073959, 36.259018, 38.534931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679714, 36.270798, 38.468365>,  <36.443165, 36.277866, 38.428425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.679714, 36.270798, 38.468365>,  <37.073959, 36.259018, 38.534931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679714, 36.270798, 38.468365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120579, 0.567429, 0.814546,
		0.118422, 0.822895, -0.555715,
		-0.985615, 0.029453, -0.166420,
		36.384029, 36.279633, 38.418438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805180, 36.958599, 38.308834>,  <37.073959, 36.259018, 38.534931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805180, 36.958599, 38.308834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545322, 36.739349, 38.519558>,  <36.389408, 36.607800, 38.645992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545322, 36.739349, 38.519558>,  <36.805180, 36.958599, 38.308834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545322, 36.739349, 38.519558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037189, 0.715028, 0.698106,
		-0.759333, 0.433925, -0.484894,
		-0.649639, -0.548127, 0.526807,
		36.350430, 36.574913, 38.677601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534111, 37.524860, 38.528194>,  <36.805180, 36.958599, 38.308834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534111, 37.524860, 38.528194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332344, 37.237480, 38.719776>,  <36.211285, 37.065052, 38.834724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332344, 37.237480, 38.719776>,  <36.534111, 37.524860, 38.528194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332344, 37.237480, 38.719776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303863, 0.666903, 0.680372,
		-0.808229, 0.197653, -0.554706,
		-0.504413, -0.718452, 0.478951,
		36.181019, 37.021946, 38.863461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785503, 37.751823, 38.519951>,  <36.534111, 37.524860, 38.528194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785503, 37.751823, 38.519951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821846, 37.488617, 38.818954>,  <35.843651, 37.330692, 38.998356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821846, 37.488617, 38.818954>,  <35.785503, 37.751823, 38.519951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821846, 37.488617, 38.818954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442534, 0.645753, 0.622227,
		-0.892137, -0.387329, -0.232524,
		0.090854, -0.658012, 0.747507,
		35.849102, 37.291214, 39.043205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153015, 37.882637, 38.947075>,  <35.785503, 37.751823, 38.519951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153015, 37.882637, 38.947075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404545, 37.688232, 39.189846>,  <35.555462, 37.571590, 39.335510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404545, 37.688232, 39.189846>,  <35.153015, 37.882637, 38.947075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404545, 37.688232, 39.189846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256988, 0.606795, 0.752168,
		-0.733848, -0.628958, 0.256670,
		0.628828, -0.486016, 0.606930,
		35.593193, 37.542427, 39.371925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754028, 37.605408, 39.469181>,  <35.153015, 37.882637, 38.947075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754028, 37.605408, 39.469181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122902, 37.675957, 39.606857>,  <35.344227, 37.718285, 39.689461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122902, 37.675957, 39.606857>,  <34.754028, 37.605408, 39.469181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122902, 37.675957, 39.606857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380714, 0.570556, 0.727684,
		-0.068037, -0.802097, 0.593305,
		0.922187, 0.176370, 0.344188,
		35.399559, 37.728867, 39.710114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658978, 37.499306, 40.188877>,  <34.754028, 37.605408, 39.469181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.658978, 37.499306, 40.188877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018715, 37.673504, 40.204529>,  <35.234558, 37.778023, 40.213921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018715, 37.673504, 40.204529>,  <34.658978, 37.499306, 40.188877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018715, 37.673504, 40.204529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331728, 0.621262, 0.709922,
		0.284855, -0.651443, 0.703192,
		0.899341, 0.435494, 0.039132,
		35.288517, 37.804153, 40.216267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.555969, 36.732685, 40.426731>,  <34.658978, 37.499306, 40.188877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.555969, 36.732685, 40.426731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373730, 36.430355, 40.614845>,  <34.264385, 36.248959, 40.727715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373730, 36.430355, 40.614845>,  <34.555969, 36.732685, 40.426731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373730, 36.430355, 40.614845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144784, -0.584176, -0.798609,
		0.878334, -0.295753, 0.375578,
		-0.455595, -0.755824, 0.470281,
		34.237053, 36.203609, 40.755928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919781, 36.165268, 40.244316>,  <34.555969, 36.732685, 40.426731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919781, 36.165268, 40.244316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566303, 36.027309, 40.370892>,  <34.354218, 35.944534, 40.446838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566303, 36.027309, 40.370892>,  <34.919781, 36.165268, 40.244316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566303, 36.027309, 40.370892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072804, -0.566547, -0.820807,
		0.462377, -0.748377, 0.475541,
		-0.883689, -0.344900, 0.316443,
		34.301197, 35.923840, 40.465824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984814, 35.423275, 40.376320>,  <34.919781, 36.165268, 40.244316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984814, 35.423275, 40.376320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603447, 35.516495, 40.299702>,  <34.374626, 35.572426, 40.253731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.603447, 35.516495, 40.299702>,  <34.984814, 35.423275, 40.376320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603447, 35.516495, 40.299702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018182, -0.589412, -0.807628,
		-0.301115, -0.773487, 0.557717,
		-0.953415, 0.233049, -0.191545,
		34.317421, 35.586411, 40.242237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591671, 34.803074, 40.318069>,  <34.984814, 35.423275, 40.376320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591671, 34.803074, 40.318069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416336, 35.103031, 40.119865>,  <34.311134, 35.283005, 40.000942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.416336, 35.103031, 40.119865>,  <34.591671, 34.803074, 40.318069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416336, 35.103031, 40.119865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259607, -0.633423, -0.728958,
		-0.860503, -0.190892, 0.472328,
		-0.438336, 0.749890, -0.495506,
		34.284836, 35.327999, 39.971214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048000, 34.475948, 40.115185>,  <34.591671, 34.803074, 40.318069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048000, 34.475948, 40.115185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009830, 34.792339, 39.873440>,  <33.986927, 34.982174, 39.728394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.009830, 34.792339, 39.873440>,  <34.048000, 34.475948, 40.115185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009830, 34.792339, 39.873440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296200, -0.602195, -0.741368,
		-0.950347, 0.108267, 0.291751,
		-0.095426, 0.790973, -0.604363,
		33.981201, 35.029633, 39.692131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349842, 34.525433, 39.881886>,  <34.048000, 34.475948, 40.115185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349842, 34.525433, 39.881886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577171, 34.709427, 39.608997>,  <33.713570, 34.819824, 39.445263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577171, 34.709427, 39.608997>,  <33.349842, 34.525433, 39.881886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577171, 34.709427, 39.608997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269306, -0.679480, -0.682481,
		-0.777484, 0.571596, -0.262289,
		0.568324, 0.459983, -0.682220,
		33.747669, 34.847424, 39.404331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997005, 34.346851, 39.218605>,  <33.349842, 34.525433, 39.881886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997005, 34.346851, 39.218605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338142, 34.493404, 39.069786>,  <33.542824, 34.581337, 38.980495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338142, 34.493404, 39.069786>,  <32.997005, 34.346851, 39.218605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338142, 34.493404, 39.069786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044980, -0.658309, -0.751402,
		-0.520220, 0.657566, -0.544957,
		0.852847, 0.366382, -0.372043,
		33.593998, 34.603317, 38.958172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942471, 34.288136, 38.452393>,  <32.997005, 34.346851, 39.218605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942471, 34.288136, 38.452393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335052, 34.315636, 38.523975>,  <33.570602, 34.332134, 38.566925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335052, 34.315636, 38.523975>,  <32.942471, 34.288136, 38.452393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335052, 34.315636, 38.523975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167308, -0.762911, -0.624479,
		0.093595, 0.642837, -0.760263,
		0.981452, 0.068750, 0.178956,
		33.629490, 34.336262, 38.577663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317978, 34.408142, 37.764194>,  <32.942471, 34.288136, 38.452393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317978, 34.408142, 37.764194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579182, 34.259308, 38.028049>,  <33.735905, 34.170006, 38.186363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579182, 34.259308, 38.028049>,  <33.317978, 34.408142, 37.764194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579182, 34.259308, 38.028049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157036, -0.785534, -0.598562,
		0.740888, 0.494456, -0.454532,
		0.653012, -0.372090, 0.659639,
		33.775085, 34.147682, 38.225941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765900, 34.051868, 37.362080>,  <33.317978, 34.408142, 37.764194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765900, 34.051868, 37.362080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831142, 33.889412, 37.721733>,  <33.870289, 33.791939, 37.937527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831142, 33.889412, 37.721733>,  <33.765900, 34.051868, 37.362080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831142, 33.889412, 37.721733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309793, -0.844164, -0.437510,
		0.936709, 0.349907, -0.011871,
		0.163109, -0.406142, 0.899135,
		33.880074, 33.767570, 37.991474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.419987, 33.853920, 37.257683>,  <33.765900, 34.051868, 37.362080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.419987, 33.853920, 37.257683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277756, 33.627975, 37.555542>,  <34.192417, 33.492409, 37.734257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.277756, 33.627975, 37.555542>,  <34.419987, 33.853920, 37.257683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277756, 33.627975, 37.555542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209062, -0.824597, -0.525674,
		0.910966, -0.031239, 0.411296,
		-0.355575, -0.564857, 0.744649,
		34.171082, 33.458519, 37.778938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888718, 33.320774, 37.280712>,  <34.419987, 33.853920, 37.257683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888718, 33.320774, 37.280712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567425, 33.188457, 37.478859>,  <34.374649, 33.109066, 37.597748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567425, 33.188457, 37.478859>,  <34.888718, 33.320774, 37.280712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567425, 33.188457, 37.478859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055688, -0.869685, -0.490456,
		0.593058, -0.366364, 0.716980,
		-0.803232, -0.330796, 0.495371,
		34.326454, 33.089218, 37.627472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099140, 32.697342, 37.656662>,  <34.888718, 33.320774, 37.280712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099140, 32.697342, 37.656662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706974, 32.620724, 37.638363>,  <34.471672, 32.574753, 37.627384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706974, 32.620724, 37.638363>,  <35.099140, 32.697342, 37.656662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706974, 32.620724, 37.638363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196859, -0.959561, -0.201219,
		-0.005352, -0.206284, 0.978478,
		-0.980417, -0.191545, -0.045744,
		34.412849, 32.563259, 37.624641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043343, 32.046261, 38.071144>,  <35.099140, 32.697342, 37.656662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043343, 32.046261, 38.071144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706524, 32.072235, 37.856949>,  <34.504433, 32.087822, 37.728432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706524, 32.072235, 37.856949>,  <35.043343, 32.046261, 38.071144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706524, 32.072235, 37.856949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187982, -0.895165, -0.404156,
		-0.505596, -0.440979, 0.741560,
		-0.842042, 0.064939, -0.535488,
		34.453911, 32.091717, 37.696304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669594, 31.496944, 38.208694>,  <35.043343, 32.046261, 38.071144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.669594, 31.496944, 38.208694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566822, 31.615034, 37.840599>,  <34.505161, 31.685888, 37.619743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566822, 31.615034, 37.840599>,  <34.669594, 31.496944, 38.208694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566822, 31.615034, 37.840599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292197, -0.883904, -0.365151,
		-0.921200, -0.362706, 0.140834,
		-0.256927, 0.295226, -0.920234,
		34.489742, 31.703602, 37.564529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655708, 31.840782, 38.940151>,  <34.669594, 31.496944, 38.208694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655708, 31.840782, 38.940151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800095, 32.211185, 38.895947>,  <34.886726, 32.433426, 38.869423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800095, 32.211185, 38.895947>,  <34.655708, 31.840782, 38.940151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800095, 32.211185, 38.895947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927338, 0.368956, 0.062581,
		0.098723, 0.079887, 0.991903,
		0.360970, 0.926007, -0.110507,
		34.908386, 32.488987, 38.862793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191193, 31.843370, 39.471546>,  <34.655708, 31.840782, 38.940151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191193, 31.843370, 39.471546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547291, 31.791103, 39.297016>,  <35.760952, 31.759743, 39.192299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.547291, 31.791103, 39.297016>,  <35.191193, 31.843370, 39.471546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547291, 31.791103, 39.297016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453636, 0.340301, 0.823656,
		0.040859, -0.931193, 0.362228,
		0.890250, -0.130666, -0.436328,
		35.814365, 31.751904, 39.166119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852947, 31.561136, 40.092041>,  <35.191193, 31.843370, 39.471546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852947, 31.561136, 40.092041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190937, 31.348518, 40.115650>,  <35.393730, 31.220947, 40.129818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190937, 31.348518, 40.115650>,  <34.852947, 31.561136, 40.092041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190937, 31.348518, 40.115650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161270, 0.358471, 0.919506,
		-0.509916, -0.767438, 0.388619,
		0.844972, -0.531543, 0.059025,
		35.444427, 31.189056, 40.133358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892254, 31.316977, 40.704842>,  <34.852947, 31.561136, 40.092041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892254, 31.316977, 40.704842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267651, 31.348881, 40.570461>,  <35.492889, 31.368023, 40.489834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267651, 31.348881, 40.570461>,  <34.892254, 31.316977, 40.704842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267651, 31.348881, 40.570461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263906, 0.461727, 0.846854,
		0.222662, -0.883429, 0.412280,
		0.938496, 0.079759, -0.335951,
		35.549198, 31.372808, 40.469677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322075, 31.035938, 41.213978>,  <34.892254, 31.316977, 40.704842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322075, 31.035938, 41.213978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557526, 31.289591, 41.013420>,  <35.698795, 31.441782, 40.893085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557526, 31.289591, 41.013420>,  <35.322075, 31.035938, 41.213978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557526, 31.289591, 41.013420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221078, 0.470310, 0.854361,
		0.777589, -0.613745, 0.136644,
		0.588625, 0.634133, -0.501394,
		35.734112, 31.479830, 40.863003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937466, 31.027193, 41.593052>,  <35.322075, 31.035938, 41.213978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937466, 31.027193, 41.593052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952797, 31.358648, 41.369663>,  <35.961998, 31.557522, 41.235630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.952797, 31.358648, 41.369663>,  <35.937466, 31.027193, 41.593052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952797, 31.358648, 41.369663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292071, 0.525187, 0.799295,
		0.955628, -0.193753, -0.221889,
		0.038332, 0.828636, -0.558473,
		35.964298, 31.607239, 41.202122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614929, 31.295111, 41.626980>,  <35.937466, 31.027193, 41.593052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614929, 31.295111, 41.626980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363331, 31.599697, 41.564327>,  <36.212372, 31.782448, 41.526737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363331, 31.599697, 41.564327>,  <36.614929, 31.295111, 41.626980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363331, 31.599697, 41.564327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392318, 0.484856, 0.781666,
		0.671153, 0.430218, -0.603710,
		-0.628999, 0.761464, -0.156631,
		36.174633, 31.828136, 41.517338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075230, 31.847654, 41.766991>,  <36.614929, 31.295111, 41.626980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075230, 31.847654, 41.766991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708256, 32.006645, 41.774265>,  <36.488071, 32.102039, 41.778629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.708256, 32.006645, 41.774265>,  <37.075230, 31.847654, 41.766991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708256, 32.006645, 41.774265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285613, 0.626034, 0.725608,
		0.277029, 0.670889, -0.687868,
		-0.917431, 0.397478, 0.018185,
		36.433025, 32.125889, 41.779720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195084, 32.517452, 41.696930>,  <37.075230, 31.847654, 41.766991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195084, 32.517452, 41.696930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827621, 32.468285, 41.847111>,  <36.607143, 32.438782, 41.937218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827621, 32.468285, 41.847111>,  <37.195084, 32.517452, 41.696930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827621, 32.468285, 41.847111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203458, 0.667431, 0.716338,
		-0.338642, 0.734456, -0.588129,
		-0.918655, -0.122923, 0.375451,
		36.552025, 32.431408, 41.959747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016621, 33.230064, 41.902451>,  <37.195084, 32.517452, 41.696930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016621, 33.230064, 41.902451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769646, 32.990982, 42.107006>,  <36.621460, 32.847534, 42.229740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769646, 32.990982, 42.107006>,  <37.016621, 33.230064, 41.902451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769646, 32.990982, 42.107006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141548, 0.555075, 0.819668,
		-0.773777, 0.578482, -0.258122,
		-0.617440, -0.597704, 0.511388,
		36.584415, 32.811672, 42.260422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578209, 33.751652, 42.287170>,  <37.016621, 33.230064, 41.902451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578209, 33.751652, 42.287170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505054, 33.409397, 42.480846>,  <36.461163, 33.204044, 42.597050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505054, 33.409397, 42.480846>,  <36.578209, 33.751652, 42.287170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505054, 33.409397, 42.480846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016068, 0.495028, 0.868728,
		-0.983002, 0.151102, -0.104283,
		-0.182889, -0.855637, 0.484186,
		36.450188, 33.152706, 42.626102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.099438, 33.847649, 42.830975>,  <36.578209, 33.751652, 42.287170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.099438, 33.847649, 42.830975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314461, 33.532547, 42.951298>,  <36.443474, 33.343487, 43.023491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314461, 33.532547, 42.951298>,  <36.099438, 33.847649, 42.830975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314461, 33.532547, 42.951298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215112, 0.473036, 0.854379,
		-0.815330, -0.394567, 0.423737,
		0.537553, -0.787752, 0.300804,
		36.475727, 33.296223, 43.041538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911625, 33.747566, 43.487888>,  <36.099438, 33.847649, 42.830975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911625, 33.747566, 43.487888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261257, 33.553314, 43.483128>,  <36.471039, 33.436764, 43.480270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.261257, 33.553314, 43.483128>,  <35.911625, 33.747566, 43.487888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261257, 33.553314, 43.483128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162509, 0.269226, 0.949267,
		-0.457788, -0.831673, 0.314245,
		0.874083, -0.485631, -0.011906,
		36.523483, 33.407623, 43.479557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947330, 33.320965, 44.191280>,  <35.911625, 33.747566, 43.487888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947330, 33.320965, 44.191280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313652, 33.334557, 44.031204>,  <36.533443, 33.342712, 43.935158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313652, 33.334557, 44.031204>,  <35.947330, 33.320965, 44.191280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313652, 33.334557, 44.031204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372409, 0.301271, 0.877808,
		0.150395, -0.952933, 0.263250,
		0.915802, 0.033981, -0.400191,
		36.588394, 33.344749, 43.911148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508667, 32.990387, 44.691521>,  <35.947330, 33.320965, 44.191280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508667, 32.990387, 44.691521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692612, 33.237324, 44.436207>,  <36.802979, 33.385487, 44.283020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692612, 33.237324, 44.436207>,  <36.508667, 32.990387, 44.691521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692612, 33.237324, 44.436207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418093, 0.483613, 0.768971,
		0.783404, -0.620486, -0.035712,
		0.459865, 0.617346, -0.638285,
		36.830570, 33.422527, 44.244720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269585, 32.866577, 44.932648>,  <36.508667, 32.990387, 44.691521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269585, 32.866577, 44.932648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252388, 33.205708, 44.721233>,  <37.242069, 33.409184, 44.594387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252388, 33.205708, 44.721233>,  <37.269585, 32.866577, 44.932648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252388, 33.205708, 44.721233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415872, 0.496197, 0.762128,
		0.908407, -0.187040, -0.373916,
		-0.042988, 0.847823, -0.528533,
		37.239491, 33.460056, 44.562672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899647, 33.281300, 45.035912>,  <37.269585, 32.866577, 44.932648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899647, 33.281300, 45.035912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622913, 33.543804, 44.915451>,  <37.456875, 33.701305, 44.843174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622913, 33.543804, 44.915451>,  <37.899647, 33.281300, 45.035912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622913, 33.543804, 44.915451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167239, 0.551367, 0.817328,
		0.702423, 0.515091, -0.491206,
		-0.691833, 0.656259, -0.301150,
		37.415363, 33.740681, 44.825108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254078, 33.887112, 45.021637>,  <37.899647, 33.281300, 45.035912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254078, 33.887112, 45.021637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868176, 33.988941, 45.048317>,  <37.636635, 34.050037, 45.064323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868176, 33.988941, 45.048317>,  <38.254078, 33.887112, 45.021637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868176, 33.988941, 45.048317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220029, 0.641243, 0.735115,
		0.144367, 0.723879, -0.674653,
		-0.964751, 0.254570, 0.066701,
		37.578751, 34.065311, 45.068329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208286, 34.631371, 44.959148>,  <38.254078, 33.887112, 45.021637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208286, 34.631371, 44.959148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877235, 34.511330, 45.148872>,  <37.678604, 34.439304, 45.262707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877235, 34.511330, 45.148872>,  <38.208286, 34.631371, 44.959148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877235, 34.511330, 45.148872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113711, 0.737876, 0.665288,
		-0.549634, 0.604546, -0.576564,
		-0.827630, -0.300103, 0.474306,
		37.628948, 34.421299, 45.291164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966301, 35.328667, 45.167530>,  <38.208286, 34.631371, 44.959148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966301, 35.328667, 45.167530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725670, 35.079704, 45.367817>,  <37.581291, 34.930328, 45.487991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725670, 35.079704, 45.367817>,  <37.966301, 35.328667, 45.167530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725670, 35.079704, 45.367817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158924, 0.707550, 0.688561,
		-0.782845, 0.334647, -0.524561,
		-0.601579, -0.622402, 0.500719,
		37.545197, 34.892982, 45.518032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347618, 35.746323, 45.367245>,  <37.966301, 35.328667, 45.167530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.347618, 35.746323, 45.367245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335350, 35.436287, 45.619686>,  <37.327988, 35.250263, 45.771152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335350, 35.436287, 45.619686>,  <37.347618, 35.746323, 45.367245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335350, 35.436287, 45.619686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337514, 0.602347, 0.723369,
		-0.940821, -0.190819, -0.280079,
		-0.030673, -0.775091, 0.631105,
		37.326149, 35.203758, 45.809017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744003, 35.986778, 45.818016>,  <37.347618, 35.746323, 45.367245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744003, 35.986778, 45.818016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962452, 35.705322, 45.999851>,  <37.093521, 35.536449, 46.108952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962452, 35.705322, 45.999851>,  <36.744003, 35.986778, 45.818016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962452, 35.705322, 45.999851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151311, 0.450873, 0.879670,
		-0.823930, -0.549187, 0.139762,
		0.546118, -0.703639, 0.454586,
		37.126286, 35.494232, 46.136227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399914, 35.878635, 46.408878>,  <36.744003, 35.986778, 45.818016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399914, 35.878635, 46.408878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771996, 35.749058, 46.477909>,  <36.995243, 35.671310, 46.519329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771996, 35.749058, 46.477909>,  <36.399914, 35.878635, 46.408878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771996, 35.749058, 46.477909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041153, 0.375167, 0.926043,
		-0.364734, -0.868509, 0.335650,
		0.930202, -0.323947, 0.172578,
		37.051056, 35.651875, 46.529682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327713, 35.733505, 47.025360>,  <36.399914, 35.878635, 46.408878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327713, 35.733505, 47.025360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725281, 35.777195, 47.019901>,  <36.963821, 35.803410, 47.016624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.725281, 35.777195, 47.019901>,  <36.327713, 35.733505, 47.025360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725281, 35.777195, 47.019901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035561, 0.435952, 0.899267,
		0.104171, -0.893318, 0.437187,
		0.993923, 0.109225, -0.013647,
		37.023457, 35.809963, 47.015808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616974, 35.539349, 47.714329>,  <36.327713, 35.733505, 47.025360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616974, 35.539349, 47.714329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898228, 35.763901, 47.539764>,  <37.066978, 35.898632, 47.435024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898228, 35.763901, 47.539764>,  <36.616974, 35.539349, 47.714329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898228, 35.763901, 47.539764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156375, 0.476644, 0.865077,
		0.693652, -0.676507, 0.247357,
		0.703131, 0.561382, -0.436414,
		37.109165, 35.932316, 47.408840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142368, 35.633972, 48.254456>,  <36.616974, 35.539349, 47.714329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142368, 35.633972, 48.254456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178288, 35.935562, 47.994160>,  <37.199837, 36.116516, 47.837982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.178288, 35.935562, 47.994160>,  <37.142368, 35.633972, 48.254456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178288, 35.935562, 47.994160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084370, 0.645269, 0.759282,
		0.992380, -0.123082, -0.005670,
		0.089795, 0.753975, -0.650737,
		37.205227, 36.161755, 47.798939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693455, 36.002697, 48.472389>,  <37.142368, 35.633972, 48.254456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693455, 36.002697, 48.472389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509556, 36.253941, 48.221275>,  <37.399216, 36.404686, 48.070606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.509556, 36.253941, 48.221275>,  <37.693455, 36.002697, 48.472389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509556, 36.253941, 48.221275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093487, 0.737231, 0.669141,
		0.883117, 0.248944, -0.397658,
		-0.459745, 0.628106, -0.627788,
		37.371632, 36.442371, 48.032940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339722, 36.228161, 48.192738>,  <37.693455, 36.002697, 48.472389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339722, 36.228161, 48.192738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723915, 36.247906, 48.302307>,  <38.954430, 36.259754, 48.368050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723915, 36.247906, 48.302307>,  <38.339722, 36.228161, 48.192738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723915, 36.247906, 48.302307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265248, -0.460560, -0.847071,
		0.084346, 0.886255, -0.455453,
		0.960484, 0.049361, 0.273923,
		39.012062, 36.262714, 48.384483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662575, 36.335548, 47.559921>,  <38.339722, 36.228161, 48.192738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662575, 36.335548, 47.559921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935062, 36.203640, 47.821358>,  <39.098557, 36.124496, 47.978222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935062, 36.203640, 47.821358>,  <38.662575, 36.335548, 47.559921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935062, 36.203640, 47.821358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372915, -0.611965, -0.697448,
		0.629975, 0.718853, -0.293908,
		0.681224, -0.329772, 0.653594,
		39.139431, 36.104710, 48.017437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370560, 36.452549, 47.256271>,  <38.662575, 36.335548, 47.559921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.370560, 36.452549, 47.256271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394840, 36.148308, 47.514820>,  <39.409409, 35.965763, 47.669949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394840, 36.148308, 47.514820>,  <39.370560, 36.452549, 47.256271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394840, 36.148308, 47.514820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458429, -0.553988, -0.694939,
		0.886656, 0.338500, 0.315055,
		0.060700, -0.760602, 0.646375,
		39.413052, 35.920128, 47.708733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006752, 36.363319, 47.252338>,  <39.370560, 36.452549, 47.256271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006752, 36.363319, 47.252338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828213, 36.027824, 47.377102>,  <39.721088, 35.826527, 47.451962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.828213, 36.027824, 47.377102>,  <40.006752, 36.363319, 47.252338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828213, 36.027824, 47.377102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432924, -0.507448, -0.745032,
		0.783168, -0.197508, 0.589609,
		-0.446346, -0.838742, 0.311911,
		39.694309, 35.776203, 47.470676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556316, 35.834190, 47.225422>,  <40.006752, 36.363319, 47.252338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556316, 35.834190, 47.225422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208771, 35.636612, 47.212208>,  <40.000244, 35.518066, 47.204281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208771, 35.636612, 47.212208>,  <40.556316, 35.834190, 47.225422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208771, 35.636612, 47.212208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310141, -0.491111, -0.814016,
		0.385857, -0.717515, 0.579902,
		-0.868865, -0.493946, -0.033032,
		39.948112, 35.488430, 47.202297>
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
