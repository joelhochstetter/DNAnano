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
	<24.025223, 34.568890, 35.405514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.198090, 34.712578, 35.074650>,  <24.301809, 34.798790, 34.876133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.198090, 34.712578, 35.074650>,  <24.025223, 34.568890, 35.405514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.198090, 34.712578, 35.074650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827385, -0.522788, 0.205248,
		-0.358702, -0.773082, -0.523142,
		0.432166, 0.359217, -0.827161,
		24.327740, 34.820343, 34.826500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.421898, 34.098415, 35.768707>,  <24.025223, 34.568890, 35.405514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.421898, 34.098415, 35.768707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.749733, 34.086803, 35.539818>,  <24.946434, 34.079838, 35.402485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.749733, 34.086803, 35.539818>,  <24.421898, 34.098415, 35.768707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.749733, 34.086803, 35.539818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476392, -0.520339, 0.708730,
		-0.318323, -0.853466, -0.412633,
		0.819586, -0.029030, -0.572220,
		24.995609, 34.078094, 35.368153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.793524, 33.414436, 35.748577>,  <24.421898, 34.098415, 35.768707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.793524, 33.414436, 35.748577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.040415, 33.723026, 35.686794>,  <25.188549, 33.908180, 35.649723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.040415, 33.723026, 35.686794>,  <24.793524, 33.414436, 35.748577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.040415, 33.723026, 35.686794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505444, -0.238353, 0.829285,
		0.602954, -0.589931, -0.537055,
		0.617229, 0.771472, -0.154461,
		25.225584, 33.954468, 35.640457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.499563, 33.163353, 35.558586>,  <24.793524, 33.414436, 35.748577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.499563, 33.163353, 35.558586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464497, 33.506268, 35.761517>,  <25.443457, 33.712017, 35.883274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464497, 33.506268, 35.761517>,  <25.499563, 33.163353, 35.558586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.464497, 33.506268, 35.761517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621759, -0.350809, 0.700249,
		0.778287, 0.376820, -0.502271,
		-0.087666, 0.857286, 0.507321,
		25.438196, 33.763454, 35.913712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.222881, 33.431461, 35.715633>,  <25.499563, 33.163353, 35.558586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.222881, 33.431461, 35.715633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.941998, 33.553429, 35.972980>,  <25.773466, 33.626610, 36.127388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.941998, 33.553429, 35.972980>,  <26.222881, 33.431461, 35.715633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.941998, 33.553429, 35.972980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485619, -0.455692, 0.746002,
		0.520648, 0.836283, 0.171918,
		-0.702211, 0.304918, 0.643370,
		25.731335, 33.644905, 36.165993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.670801, 33.283920, 36.307770>,  <26.222881, 33.431461, 35.715633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.670801, 33.283920, 36.307770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.039877, 33.309078, 36.459919>,  <27.261322, 33.324173, 36.551208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.039877, 33.309078, 36.459919>,  <26.670801, 33.283920, 36.307770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.039877, 33.309078, 36.459919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010285, 0.982237, -0.187362,
		-0.385403, 0.176790, 0.905654,
		0.922691, 0.062895, 0.380375,
		27.316685, 33.327946, 36.574032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.716022, 33.869534, 36.498550>,  <26.670801, 33.283920, 36.307770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.716022, 33.869534, 36.498550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.105442, 33.786015, 36.461430>,  <27.339094, 33.735905, 36.439156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.105442, 33.786015, 36.461430>,  <26.716022, 33.869534, 36.498550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.105442, 33.786015, 36.461430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176952, 0.945921, -0.271885,
		0.144551, 0.248271, 0.957845,
		0.973547, -0.208794, -0.092802,
		27.397507, 33.723377, 36.433590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.022724, 34.526276, 36.787407>,  <26.716022, 33.869534, 36.498550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.022724, 34.526276, 36.787407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.300951, 34.338799, 36.569595>,  <27.467886, 34.226311, 36.438908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.300951, 34.338799, 36.569595>,  <27.022724, 34.526276, 36.787407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.300951, 34.338799, 36.569595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261471, 0.871076, -0.415764,
		0.669196, 0.146811, 0.728439,
		0.695565, -0.468693, -0.544533,
		27.509621, 34.198189, 36.406235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.720745, 34.918030, 36.905148>,  <27.022724, 34.526276, 36.787407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.720745, 34.918030, 36.905148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.710274, 34.722881, 36.556137>,  <27.703991, 34.605793, 36.346733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.710274, 34.722881, 36.556137>,  <27.720745, 34.918030, 36.905148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.710274, 34.722881, 36.556137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352351, 0.812303, -0.464770,
		0.935502, -0.319601, 0.150638,
		-0.026177, -0.487871, -0.872523,
		27.702421, 34.576519, 36.294380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.312658, 35.258137, 36.616741>,  <27.720745, 34.918030, 36.905148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.312658, 35.258137, 36.616741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.105383, 35.076351, 36.326927>,  <27.981018, 34.967281, 36.153038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.105383, 35.076351, 36.326927>,  <28.312658, 35.258137, 36.616741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.105383, 35.076351, 36.326927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292818, 0.701671, -0.649550,
		0.803580, -0.548743, -0.230520,
		-0.518185, -0.454465, -0.724531,
		27.949926, 34.940010, 36.109570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.807495, 35.184166, 35.966888>,  <28.312658, 35.258137, 36.616741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.807495, 35.184166, 35.966888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.443251, 35.100048, 35.824585>,  <28.224705, 35.049576, 35.739204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.443251, 35.100048, 35.824585>,  <28.807495, 35.184166, 35.966888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.443251, 35.100048, 35.824585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215298, 0.493396, -0.842738,
		0.352752, -0.844001, -0.404016,
		-0.910612, -0.210293, -0.355758,
		28.170067, 35.036961, 35.717857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901920, 34.928741, 35.181919>,  <28.807495, 35.184166, 35.966888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901920, 34.928741, 35.181919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.526112, 35.054413, 35.236458>,  <28.300627, 35.129814, 35.269180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.526112, 35.054413, 35.236458>,  <28.901920, 34.928741, 35.181919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.526112, 35.054413, 35.236458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054938, 0.531208, -0.845458,
		-0.338051, -0.786837, -0.516343,
		-0.939523, 0.314175, 0.136348,
		28.244255, 35.148666, 35.277363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.490713, 34.663486, 34.635845>,  <28.901920, 34.928741, 35.181919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.490713, 34.663486, 34.635845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382772, 35.019085, 34.783825>,  <28.318008, 35.232445, 34.872612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382772, 35.019085, 34.783825>,  <28.490713, 34.663486, 34.635845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382772, 35.019085, 34.783825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061496, 0.399326, -0.914744,
		-0.960937, -0.224094, -0.162428,
		-0.269851, 0.889000, 0.369946,
		28.301817, 35.285786, 34.894810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066811, 34.977638, 34.118557>,  <28.490713, 34.663486, 34.635845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.066811, 34.977638, 34.118557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.133881, 35.314392, 34.323734>,  <28.174122, 35.516445, 34.446842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.133881, 35.314392, 34.323734>,  <28.066811, 34.977638, 34.118557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.133881, 35.314392, 34.323734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008373, 0.521506, -0.853207,
		-0.985807, 0.138767, 0.094493,
		0.167676, 0.841888, 0.512942,
		28.184183, 35.566959, 34.477615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.605562, 35.482124, 33.838203>,  <28.066811, 34.977638, 34.118557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.605562, 35.482124, 33.838203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867037, 35.723991, 34.020226>,  <28.023922, 35.869110, 34.129440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867037, 35.723991, 34.020226>,  <27.605562, 35.482124, 33.838203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867037, 35.723991, 34.020226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143080, 0.491724, -0.858915,
		-0.743118, 0.626570, 0.234917,
		0.653684, 0.604664, 0.455059,
		28.063143, 35.905392, 34.156742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.535603, 36.241016, 33.614735>,  <27.605562, 35.482124, 33.838203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.535603, 36.241016, 33.614735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.901365, 36.265636, 33.774769>,  <28.120823, 36.280411, 33.870789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.901365, 36.265636, 33.774769>,  <27.535603, 36.241016, 33.614735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.901365, 36.265636, 33.774769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322740, 0.485704, -0.812361,
		-0.244326, 0.871954, 0.424266,
		0.914409, 0.061553, 0.400084,
		28.175688, 36.284103, 33.894794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.732563, 36.901222, 33.465149>,  <27.535603, 36.241016, 33.614735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.732563, 36.901222, 33.465149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076183, 36.707390, 33.531132>,  <28.282356, 36.591091, 33.570721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076183, 36.707390, 33.531132>,  <27.732563, 36.901222, 33.465149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.076183, 36.707390, 33.531132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393479, 0.418993, -0.818303,
		0.327417, 0.767872, 0.550609,
		0.859053, -0.484579, 0.164956,
		28.333899, 36.562016, 33.580620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236328, 37.425793, 33.245125>,  <27.732563, 36.901222, 33.465149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.236328, 37.425793, 33.245125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.452938, 37.089600, 33.252464>,  <28.582905, 36.887882, 33.256870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.452938, 37.089600, 33.252464>,  <28.236328, 37.425793, 33.245125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.452938, 37.089600, 33.252464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595794, 0.368287, -0.713719,
		0.593111, 0.397430, 0.700192,
		0.541525, -0.840484, 0.018351,
		28.615395, 36.837456, 33.257969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960773, 37.671291, 33.153561>,  <28.236328, 37.425793, 33.245125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960773, 37.671291, 33.153561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896362, 37.293438, 33.039200>,  <28.857716, 37.066727, 32.970585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.896362, 37.293438, 33.039200>,  <28.960773, 37.671291, 33.153561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.896362, 37.293438, 33.039200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603297, 0.135047, -0.786000,
		0.781091, -0.299051, 0.548147,
		-0.161028, -0.944632, -0.285901,
		28.848053, 37.010048, 32.953430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600451, 37.349270, 32.987160>,  <28.960773, 37.671291, 33.153561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600451, 37.349270, 32.987160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350769, 37.104858, 32.792427>,  <29.200960, 36.958210, 32.675587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350769, 37.104858, 32.792427>,  <29.600451, 37.349270, 32.987160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350769, 37.104858, 32.792427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518624, 0.141958, -0.843135,
		0.584293, -0.778773, 0.228285,
		-0.624204, -0.611032, -0.486836,
		29.163507, 36.921547, 32.646378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040636, 36.905273, 32.610580>,  <29.600451, 37.349270, 32.987160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040636, 36.905273, 32.610580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681854, 36.848793, 32.442993>,  <29.466585, 36.814903, 32.342442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.681854, 36.848793, 32.442993>,  <30.040636, 36.905273, 32.610580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681854, 36.848793, 32.442993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433392, -0.093465, -0.896346,
		0.087412, -0.985558, 0.145032,
		-0.896956, -0.141207, -0.418963,
		29.412767, 36.806431, 32.317303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227324, 36.504570, 32.135349>,  <30.040636, 36.905273, 32.610580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227324, 36.504570, 32.135349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864883, 36.630699, 32.022522>,  <29.647419, 36.706375, 31.954826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864883, 36.630699, 32.022522>,  <30.227324, 36.504570, 32.135349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864883, 36.630699, 32.022522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260210, -0.110326, -0.959228,
		-0.333582, -0.942551, 0.017917,
		-0.906098, 0.315319, -0.282064,
		29.593054, 36.725296, 31.937902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078335, 36.015038, 31.801434>,  <30.227324, 36.504570, 32.135349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078335, 36.015038, 31.801434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873556, 36.339390, 31.688030>,  <29.750689, 36.534000, 31.619987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.873556, 36.339390, 31.688030>,  <30.078335, 36.015038, 31.801434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873556, 36.339390, 31.688030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229488, -0.188939, -0.954797,
		-0.827794, -0.553869, -0.089361,
		-0.511949, 0.810883, -0.283510,
		29.719971, 36.582653, 31.602978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.599413, 35.726620, 31.202169>,  <30.078335, 36.015038, 31.801434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.599413, 35.726620, 31.202169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631796, 36.123245, 31.161669>,  <29.651226, 36.361221, 31.137369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631796, 36.123245, 31.161669>,  <29.599413, 35.726620, 31.202169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631796, 36.123245, 31.161669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291846, -0.120715, -0.948817,
		-0.953033, 0.047264, -0.299156,
		0.080957, 0.991562, -0.101251,
		29.656082, 36.420715, 31.131294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.146629, 35.908329, 30.665491>,  <29.599413, 35.726620, 31.202169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.146629, 35.908329, 30.665491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418114, 36.201477, 30.684486>,  <29.581003, 36.377365, 30.695885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418114, 36.201477, 30.684486>,  <29.146629, 35.908329, 30.665491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.418114, 36.201477, 30.684486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151761, -0.076690, -0.985438,
		-0.718556, 0.676032, -0.163271,
		0.678709, 0.732871, 0.047489,
		29.621727, 36.421337, 30.698732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.057713, 36.324894, 30.033371>,  <29.146629, 35.908329, 30.665491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.057713, 36.324894, 30.033371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.429268, 36.397526, 30.162489>,  <29.652201, 36.441105, 30.239960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.429268, 36.397526, 30.162489>,  <29.057713, 36.324894, 30.033371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429268, 36.397526, 30.162489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322536, 0.031778, -0.946024,
		-0.182033, 0.982863, -0.029046,
		0.928889, 0.181576, 0.322793,
		29.707935, 36.452000, 30.259327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356646, 37.006172, 29.811825>,  <29.057713, 36.324894, 30.033371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.356646, 37.006172, 29.811825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646759, 36.733685, 29.851620>,  <29.820827, 36.570190, 29.875498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646759, 36.733685, 29.851620>,  <29.356646, 37.006172, 29.811825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646759, 36.733685, 29.851620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238385, 0.112931, -0.964583,
		0.645860, 0.723314, 0.244300,
		0.725285, -0.681223, 0.099489,
		29.864344, 36.529316, 29.881466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984297, 37.281105, 29.736292>,  <29.356646, 37.006172, 29.811825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984297, 37.281105, 29.736292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944849, 36.912853, 29.585180>,  <29.921181, 36.691902, 29.494514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.944849, 36.912853, 29.585180>,  <29.984297, 37.281105, 29.736292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.944849, 36.912853, 29.585180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037793, 0.375890, -0.925893,
		0.994407, -0.105589, -0.002277,
		-0.098620, -0.920629, -0.377778,
		29.915262, 36.636665, 29.471848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179968, 37.237915, 29.073347>,  <29.984297, 37.281105, 29.736292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179968, 37.237915, 29.073347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.990963, 36.885406, 29.069656>,  <29.877560, 36.673901, 29.067442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.990963, 36.885406, 29.069656>,  <30.179968, 37.237915, 29.073347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.990963, 36.885406, 29.069656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349758, 0.197116, -0.915868,
		0.808950, -0.429534, -0.401373,
		-0.472513, -0.881275, -0.009225,
		29.849209, 36.621025, 29.066889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813919, 37.427567, 28.493591>,  <30.179968, 37.237915, 29.073347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813919, 37.427567, 28.493591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686657, 37.071720, 28.624660>,  <29.610300, 36.858212, 28.703302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686657, 37.071720, 28.624660>,  <29.813919, 37.427567, 28.493591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686657, 37.071720, 28.624660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727990, 0.007846, -0.685543,
		0.607296, -0.456649, -0.650125,
		-0.318154, -0.889612, 0.327671,
		29.591211, 36.804836, 28.722961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220999, 37.075356, 27.985640>,  <29.813919, 37.427567, 28.493591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220999, 37.075356, 27.985640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.222368, 37.470707, 28.046421>,  <30.223190, 37.707920, 28.082890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.222368, 37.470707, 28.046421>,  <30.220999, 37.075356, 27.985640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.222368, 37.470707, 28.046421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575255, -0.122346, 0.808772,
		0.817967, -0.090182, 0.568153,
		0.003425, 0.988382, 0.151953,
		30.223396, 37.767223, 28.092007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875948, 36.779575, 27.839085>,  <30.220999, 37.075356, 27.985640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875948, 36.779575, 27.839085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210674, 36.701969, 28.043865>,  <31.411510, 36.655403, 28.166735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210674, 36.701969, 28.043865>,  <30.875948, 36.779575, 27.839085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210674, 36.701969, 28.043865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345459, -0.912564, 0.218827,
		0.424733, -0.359977, -0.830673,
		0.836815, -0.194020, 0.511954,
		31.461720, 36.643764, 28.197451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998932, 36.049061, 27.767921>,  <30.875948, 36.779575, 27.839085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998932, 36.049061, 27.767921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252146, 36.149635, 28.060781>,  <31.404074, 36.209980, 28.236498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.252146, 36.149635, 28.060781>,  <30.998932, 36.049061, 27.767921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.252146, 36.149635, 28.060781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120039, -0.902460, 0.413710,
		0.764759, -0.349780, -0.541108,
		0.633036, 0.251434, 0.732152,
		31.442057, 36.225067, 28.280428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578079, 35.537834, 27.802074>,  <30.998932, 36.049061, 27.767921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578079, 35.537834, 27.802074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498165, 35.690086, 28.163231>,  <31.450216, 35.781437, 28.379925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498165, 35.690086, 28.163231>,  <31.578079, 35.537834, 27.802074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498165, 35.690086, 28.163231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036277, -0.923707, 0.381378,
		0.979168, 0.043439, 0.198349,
		-0.199783, 0.380629, 0.902889,
		31.438231, 35.804276, 28.434097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846691, 35.094643, 28.307133>,  <31.578079, 35.537834, 27.802074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846691, 35.094643, 28.307133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595005, 35.300785, 28.539852>,  <31.443993, 35.424473, 28.679483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595005, 35.300785, 28.539852>,  <31.846691, 35.094643, 28.307133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595005, 35.300785, 28.539852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199956, -0.830696, 0.519579,
		0.751068, 0.210594, 0.625737,
		-0.629217, 0.515359, 0.581800,
		31.406240, 35.455391, 28.714392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895948, 34.836067, 29.015942>,  <31.846691, 35.094643, 28.307133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895948, 34.836067, 29.015942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496353, 34.852295, 29.008156>,  <31.256596, 34.862034, 29.003485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496353, 34.852295, 29.008156>,  <31.895948, 34.836067, 29.015942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496353, 34.852295, 29.008156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043007, -0.733413, 0.678422,
		0.013248, 0.678572, 0.734415,
		-0.998987, 0.040573, -0.019466,
		31.196657, 34.864468, 29.002316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715027, 34.603188, 29.608650>,  <31.895948, 34.836067, 29.015942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715027, 34.603188, 29.608650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358753, 34.582241, 29.428011>,  <31.144989, 34.569672, 29.319628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358753, 34.582241, 29.428011>,  <31.715027, 34.603188, 29.608650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358753, 34.582241, 29.428011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298588, -0.681676, 0.667954,
		-0.342822, 0.729777, 0.591521,
		-0.890684, -0.052368, -0.451596,
		31.091549, 34.566532, 29.292532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198200, 34.966156, 29.999153>,  <31.715027, 34.603188, 29.608650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198200, 34.966156, 29.999153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095499, 34.647823, 29.779799>,  <31.033878, 34.456825, 29.648186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.095499, 34.647823, 29.779799>,  <31.198200, 34.966156, 29.999153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.095499, 34.647823, 29.779799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311016, -0.469189, 0.826517,
		-0.915066, 0.382769, -0.127050,
		-0.256755, -0.795832, -0.548387,
		31.018473, 34.409073, 29.615282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507725, 34.898911, 30.050364>,  <31.198200, 34.966156, 29.999153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507725, 34.898911, 30.050364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660828, 34.541409, 29.956816>,  <30.752689, 34.326908, 29.900686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.660828, 34.541409, 29.956816>,  <30.507725, 34.898911, 30.050364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.660828, 34.541409, 29.956816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496199, -0.412419, 0.764001,
		-0.779284, -0.176380, -0.601338,
		0.382758, -0.893757, -0.233871,
		30.775656, 34.273281, 29.886654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993443, 34.468056, 30.060167>,  <30.507725, 34.898911, 30.050364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993443, 34.468056, 30.060167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327574, 34.259510, 30.129917>,  <30.528051, 34.134380, 30.171766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.327574, 34.259510, 30.129917>,  <29.993443, 34.468056, 30.060167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327574, 34.259510, 30.129917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459767, -0.488624, 0.741526,
		-0.301403, -0.699589, -0.647867,
		0.835327, -0.521366, 0.174375,
		30.578171, 34.103100, 30.182230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892515, 33.770813, 30.154528>,  <29.993443, 34.468056, 30.060167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892515, 33.770813, 30.154528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.214237, 33.877914, 30.366716>,  <30.407270, 33.942173, 30.494030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.214237, 33.877914, 30.366716>,  <29.892515, 33.770813, 30.154528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.214237, 33.877914, 30.366716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390459, -0.434797, 0.811476,
		0.447921, -0.859803, -0.245165,
		0.804307, 0.267750, 0.530473,
		30.455528, 33.958241, 30.525858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777950, 33.370872, 30.828476>,  <29.892515, 33.770813, 30.154528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.777950, 33.370872, 30.828476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123615, 33.557354, 30.904240>,  <30.331015, 33.669243, 30.949697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.123615, 33.557354, 30.904240>,  <29.777950, 33.370872, 30.828476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123615, 33.557354, 30.904240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111289, -0.190020, 0.975452,
		0.490755, -0.864027, -0.112324,
		0.864161, 0.466208, 0.189410,
		30.382864, 33.697216, 30.961063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078789, 32.975388, 31.281242>,  <29.777950, 33.370872, 30.828476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078789, 32.975388, 31.281242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296253, 33.304604, 31.347010>,  <30.426731, 33.502132, 31.386471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296253, 33.304604, 31.347010>,  <30.078789, 32.975388, 31.281242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296253, 33.304604, 31.347010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018962, -0.183804, 0.982780,
		0.839091, -0.537416, -0.084321,
		0.543660, 0.823043, 0.164419,
		30.459351, 33.551517, 31.396336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614210, 32.845131, 31.813555>,  <30.078789, 32.975388, 31.281242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614210, 32.845131, 31.813555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.597914, 33.242584, 31.855568>,  <30.588137, 33.481056, 31.880775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.597914, 33.242584, 31.855568>,  <30.614210, 32.845131, 31.813555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597914, 33.242584, 31.855568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178014, -0.096221, 0.979312,
		0.983184, 0.058596, -0.172960,
		-0.040741, 0.993634, 0.105034,
		30.585691, 33.540676, 31.887077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086384, 32.997955, 32.230473>,  <30.614210, 32.845131, 31.813555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086384, 32.997955, 32.230473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.862091, 33.327530, 32.263210>,  <30.727514, 33.525276, 32.282852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.862091, 33.327530, 32.263210>,  <31.086384, 32.997955, 32.230473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.862091, 33.327530, 32.263210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038152, -0.073029, 0.996600,
		0.827116, 0.561950, 0.009514,
		-0.560734, 0.823941, 0.081843,
		30.693871, 33.574711, 32.287762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359800, 33.362328, 32.866680>,  <31.086384, 32.997955, 32.230473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359800, 33.362328, 32.866680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995222, 33.518349, 32.814335>,  <30.776474, 33.611961, 32.782928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.995222, 33.518349, 32.814335>,  <31.359800, 33.362328, 32.866680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995222, 33.518349, 32.814335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045858, 0.219787, 0.974469,
		0.408853, 0.894179, -0.182437,
		-0.911447, 0.390049, -0.130866,
		30.721788, 33.635365, 32.775074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388180, 34.076149, 32.990582>,  <31.359800, 33.362328, 32.866680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388180, 34.076149, 32.990582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.024412, 33.934532, 33.077858>,  <30.806150, 33.849564, 33.130222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.024412, 33.934532, 33.077858>,  <31.388180, 34.076149, 32.990582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024412, 33.934532, 33.077858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113698, 0.292999, 0.949328,
		-0.400032, 0.888147, -0.226206,
		-0.909421, -0.354042, 0.218189,
		30.751585, 33.828320, 33.143314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112314, 34.517918, 33.512989>,  <31.388180, 34.076149, 32.990582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112314, 34.517918, 33.512989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.820911, 34.246273, 33.548950>,  <30.646069, 34.083286, 33.570526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.820911, 34.246273, 33.548950>,  <31.112314, 34.517918, 33.512989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.820911, 34.246273, 33.548950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044660, 0.083882, 0.995474,
		-0.683579, 0.729227, -0.030780,
		-0.728509, -0.679111, 0.089907,
		30.602360, 34.042542, 33.575924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514223, 34.788136, 33.884521>,  <31.112314, 34.517918, 33.512989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514223, 34.788136, 33.884521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476877, 34.393120, 33.935192>,  <30.454470, 34.156109, 33.965595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476877, 34.393120, 33.935192>,  <30.514223, 34.788136, 33.884521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476877, 34.393120, 33.935192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223491, 0.144770, 0.963895,
		-0.970224, 0.061684, -0.234223,
		-0.093365, -0.987541, 0.126673,
		30.448868, 34.096859, 33.973194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.067205, 34.794693, 34.328365>,  <30.514223, 34.788136, 33.884521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.067205, 34.794693, 34.328365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172577, 34.409557, 34.352219>,  <30.235800, 34.178478, 34.366531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.172577, 34.409557, 34.352219>,  <30.067205, 34.794693, 34.328365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172577, 34.409557, 34.352219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354053, -0.038998, 0.934412,
		-0.897358, -0.267262, -0.351168,
		0.263427, -0.962834, 0.059630,
		30.251606, 34.120708, 34.370110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520826, 34.512424, 34.830383>,  <30.067205, 34.794693, 34.328365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520826, 34.512424, 34.830383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781826, 34.210976, 34.798649>,  <29.938425, 34.030106, 34.779610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.781826, 34.210976, 34.798649>,  <29.520826, 34.512424, 34.830383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781826, 34.210976, 34.798649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237177, -0.302533, 0.923158,
		-0.719718, -0.583542, -0.376144,
		0.652497, -0.753627, -0.079336,
		29.977575, 33.984886, 34.774849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265884, 33.908146, 35.054859>,  <29.520826, 34.512424, 34.830383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.265884, 33.908146, 35.054859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.661871, 33.867382, 35.094006>,  <29.899464, 33.842926, 35.117493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.661871, 33.867382, 35.094006>,  <29.265884, 33.908146, 35.054859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.661871, 33.867382, 35.094006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119773, -0.237828, 0.963894,
		-0.074949, -0.965947, -0.247648,
		0.989968, -0.101904, 0.097870,
		29.958862, 33.836811, 35.123367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.266272, 33.285301, 35.361557>,  <29.265884, 33.908146, 35.054859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.266272, 33.285301, 35.361557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.611809, 33.474892, 35.429821>,  <29.819130, 33.588646, 35.470779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.611809, 33.474892, 35.429821>,  <29.266272, 33.285301, 35.361557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.611809, 33.474892, 35.429821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012867, -0.359418, 0.933088,
		0.503600, -0.803844, -0.316578,
		0.863841, 0.473977, 0.170660,
		29.870960, 33.617085, 35.481018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600052, 32.792988, 35.681042>,  <29.266272, 33.285301, 35.361557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600052, 32.792988, 35.681042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786451, 33.138023, 35.759811>,  <29.898291, 33.345047, 35.807072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786451, 33.138023, 35.759811>,  <29.600052, 32.792988, 35.681042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786451, 33.138023, 35.759811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128737, -0.286300, 0.949452,
		0.875368, -0.417094, -0.244464,
		0.466001, 0.862592, 0.196922,
		29.926252, 33.396801, 35.818890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257883, 32.598553, 36.070816>,  <29.600052, 32.792988, 35.681042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257883, 32.598553, 36.070816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165194, 32.982471, 36.134182>,  <30.109579, 33.212822, 36.172203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165194, 32.982471, 36.134182>,  <30.257883, 32.598553, 36.070816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165194, 32.982471, 36.134182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212354, -0.109012, 0.971093,
		0.949320, 0.258667, -0.178556,
		-0.231725, 0.959796, 0.158417,
		30.095676, 33.270409, 36.181705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859314, 32.914730, 36.441082>,  <30.257883, 32.598553, 36.070816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859314, 32.914730, 36.441082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568188, 33.177761, 36.518925>,  <30.393511, 33.335579, 36.565628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568188, 33.177761, 36.518925>,  <30.859314, 32.914730, 36.441082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568188, 33.177761, 36.518925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248878, -0.011146, 0.968471,
		0.639016, 0.753302, -0.155545,
		-0.727817, 0.657580, 0.194603,
		30.349842, 33.375034, 36.577305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160044, 33.584858, 36.743958>,  <30.859314, 32.914730, 36.441082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160044, 33.584858, 36.743958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787443, 33.582684, 36.889439>,  <30.563883, 33.581379, 36.976727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787443, 33.582684, 36.889439>,  <31.160044, 33.584858, 36.743958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787443, 33.582684, 36.889439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331062, 0.401560, 0.853902,
		-0.150689, 0.915817, -0.372254,
		-0.931499, -0.005435, 0.363703,
		30.507994, 33.581055, 36.998550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.920233, 34.272892, 36.912056>,  <31.160044, 33.584858, 36.743958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.920233, 34.272892, 36.912056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721579, 34.022877, 37.152950>,  <30.602386, 33.872868, 37.297485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721579, 34.022877, 37.152950>,  <30.920233, 34.272892, 36.912056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721579, 34.022877, 37.152950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363465, 0.480317, 0.798241,
		-0.788191, 0.615326, -0.011365,
		-0.496637, -0.625035, 0.602231,
		30.572588, 33.835365, 37.333618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420834, 34.508011, 37.428978>,  <30.920233, 34.272892, 36.912056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.420834, 34.508011, 37.428978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562975, 34.175335, 37.599628>,  <30.648260, 33.975731, 37.702019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.562975, 34.175335, 37.599628>,  <30.420834, 34.508011, 37.428978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562975, 34.175335, 37.599628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336246, 0.539605, 0.771858,
		-0.872159, -0.130831, 0.471405,
		0.355355, -0.831691, 0.426630,
		30.669582, 33.925827, 37.727619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040455, 34.344269, 38.005440>,  <30.420834, 34.508011, 37.428978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040455, 34.344269, 38.005440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418304, 34.217533, 38.039627>,  <30.645014, 34.141491, 38.060139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418304, 34.217533, 38.039627>,  <30.040455, 34.344269, 38.005440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418304, 34.217533, 38.039627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081311, 0.478294, 0.874428,
		-0.317926, -0.819055, 0.477569,
		0.944623, -0.316834, 0.085464,
		30.701691, 34.122482, 38.065266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965879, 35.054531, 37.957867>,  <30.040455, 34.344269, 38.005440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.965879, 35.054531, 37.957867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.849524, 34.873234, 37.620831>,  <29.779711, 34.764454, 37.418610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.849524, 34.873234, 37.620831>,  <29.965879, 35.054531, 37.957867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.849524, 34.873234, 37.620831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617630, 0.761545, -0.196424,
		0.730696, 0.463269, -0.501463,
		-0.290890, -0.453245, -0.842587,
		29.762257, 34.737259, 37.368053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.035486, 35.588215, 38.470989>,  <29.965879, 35.054531, 37.957867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.035486, 35.588215, 38.470989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431049, 35.643280, 38.448689>,  <30.668386, 35.676319, 38.435307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.431049, 35.643280, 38.448689>,  <30.035486, 35.588215, 38.470989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431049, 35.643280, 38.448689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104935, -0.381901, 0.918227,
		0.105116, -0.913892, -0.392111,
		0.988908, 0.137667, -0.055755,
		30.727722, 35.684582, 38.431961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501030, 34.989971, 38.458740>,  <30.035486, 35.588215, 38.470989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501030, 34.989971, 38.458740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731823, 35.282688, 38.603832>,  <30.870298, 35.458317, 38.690887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.731823, 35.282688, 38.603832>,  <30.501030, 34.989971, 38.458740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.731823, 35.282688, 38.603832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174267, -0.544182, 0.820669,
		0.797949, -0.410299, -0.441510,
		0.576982, 0.731793, 0.362728,
		30.904917, 35.502228, 38.712650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096355, 34.714539, 38.629234>,  <30.501030, 34.989971, 38.458740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096355, 34.714539, 38.629234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012650, 35.028305, 38.862782>,  <30.962425, 35.216564, 39.002911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012650, 35.028305, 38.862782>,  <31.096355, 34.714539, 38.629234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012650, 35.028305, 38.862782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161456, -0.561175, 0.811797,
		0.964437, 0.264151, -0.009213,
		-0.209267, 0.784415, 0.583867,
		30.949869, 35.263630, 39.037941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534103, 34.600166, 37.993038>,  <31.096355, 34.714539, 38.629234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534103, 34.600166, 37.993038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926201, 34.529350, 38.028320>,  <32.161461, 34.486862, 38.049488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926201, 34.529350, 38.028320>,  <31.534103, 34.600166, 37.993038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926201, 34.529350, 38.028320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027838, 0.564994, 0.824625,
		-0.195823, -0.805878, 0.558761,
		0.980244, -0.177036, 0.088205,
		32.220276, 34.476238, 38.054783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716848, 34.321491, 38.771088>,  <31.534103, 34.600166, 37.993038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716848, 34.321491, 38.771088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036655, 34.495449, 38.605366>,  <32.228539, 34.599823, 38.505932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.036655, 34.495449, 38.605366>,  <31.716848, 34.321491, 38.771088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036655, 34.495449, 38.605366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086951, 0.598692, 0.796245,
		0.594302, -0.672643, 0.440858,
		0.799528, 0.434877, -0.414291,
		32.276508, 34.625916, 38.481075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.138210, 34.420563, 39.392315>,  <31.716848, 34.321491, 38.771088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.138210, 34.420563, 39.392315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309696, 34.650162, 39.113251>,  <32.412590, 34.787922, 38.945812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309696, 34.650162, 39.113251>,  <32.138210, 34.420563, 39.392315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309696, 34.650162, 39.113251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273601, 0.653475, 0.705772,
		0.861012, -0.493458, 0.123112,
		0.428719, 0.573994, -0.697660,
		32.438313, 34.822361, 38.903954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799259, 34.473804, 39.592552>,  <32.138210, 34.420563, 39.392315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799259, 34.473804, 39.592552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758820, 34.786926, 39.346954>,  <32.734554, 34.974800, 39.199596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758820, 34.786926, 39.346954>,  <32.799259, 34.473804, 39.592552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758820, 34.786926, 39.346954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165700, 0.621787, 0.765457,
		0.980980, -0.024352, -0.192573,
		-0.101099, 0.782808, -0.613996,
		32.728489, 35.021770, 39.162754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370888, 34.846928, 39.621330>,  <32.799259, 34.473804, 39.592552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370888, 34.846928, 39.621330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120277, 35.113777, 39.460133>,  <32.969910, 35.273888, 39.363415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120277, 35.113777, 39.460133>,  <33.370888, 34.846928, 39.621330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120277, 35.113777, 39.460133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320111, 0.691694, 0.647370,
		0.710626, 0.276593, -0.646921,
		-0.626529, 0.667125, -0.402996,
		32.932320, 35.313915, 39.339233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726570, 35.529144, 39.613483>,  <33.370888, 34.846928, 39.621330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726570, 35.529144, 39.613483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335789, 35.613876, 39.602962>,  <33.101318, 35.664715, 39.596649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335789, 35.613876, 39.602962>,  <33.726570, 35.529144, 39.613483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335789, 35.613876, 39.602962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118770, 0.641829, 0.757594,
		0.177365, 0.737009, -0.652196,
		-0.976952, 0.211832, -0.026304,
		33.042702, 35.677425, 39.595070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741726, 36.215622, 39.712803>,  <33.726570, 35.529144, 39.613483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741726, 36.215622, 39.712803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366173, 36.111698, 39.803143>,  <33.140842, 36.049343, 39.857346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366173, 36.111698, 39.803143>,  <33.741726, 36.215622, 39.712803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366173, 36.111698, 39.803143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024466, 0.604039, 0.796579,
		-0.343378, 0.753416, -0.560763,
		-0.938878, -0.259808, 0.225847,
		33.084511, 36.033756, 39.870895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424328, 36.892719, 39.865974>,  <33.741726, 36.215622, 39.712803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424328, 36.892719, 39.865974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175491, 36.621109, 40.021881>,  <33.026188, 36.458141, 40.115425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175491, 36.621109, 40.021881>,  <33.424328, 36.892719, 39.865974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175491, 36.621109, 40.021881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193093, 0.615506, 0.764112,
		-0.758759, 0.400088, -0.514018,
		-0.622093, -0.679030, 0.389767,
		32.988865, 36.417400, 40.138813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849857, 37.277100, 39.963848>,  <33.424328, 36.892719, 39.865974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849857, 37.277100, 39.963848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832779, 36.970108, 40.219711>,  <32.822533, 36.785915, 40.373230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832779, 36.970108, 40.219711>,  <32.849857, 37.277100, 39.963848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832779, 36.970108, 40.219711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229591, 0.630642, 0.741335,
		-0.972350, -0.115206, -0.203131,
		-0.042697, -0.767475, 0.639656,
		32.819969, 36.739864, 40.411610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403942, 37.490391, 40.400005>,  <32.849857, 37.277100, 39.963848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403942, 37.490391, 40.400005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579227, 37.193977, 40.603508>,  <32.684399, 37.016129, 40.725609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579227, 37.193977, 40.603508>,  <32.403942, 37.490391, 40.400005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579227, 37.193977, 40.603508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108084, 0.518448, 0.848251,
		-0.892348, -0.426705, 0.147097,
		0.438215, -0.741036, 0.508757,
		32.710693, 36.971668, 40.756134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016361, 37.326099, 40.945747>,  <32.403942, 37.490391, 40.400005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016361, 37.326099, 40.945747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374142, 37.193031, 41.065266>,  <32.588810, 37.113190, 41.136978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.374142, 37.193031, 41.065266>,  <32.016361, 37.326099, 40.945747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374142, 37.193031, 41.065266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107764, 0.488152, 0.866080,
		-0.433978, -0.806870, 0.400780,
		0.894455, -0.332670, 0.298799,
		32.642479, 37.093231, 41.154903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902493, 37.005714, 41.561100>,  <32.016361, 37.326099, 40.945747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902493, 37.005714, 41.561100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289780, 37.105499, 41.553974>,  <32.522152, 37.165371, 41.549698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289780, 37.105499, 41.553974>,  <31.902493, 37.005714, 41.561100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289780, 37.105499, 41.553974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057947, 0.293038, 0.954343,
		0.243292, -0.922982, 0.298182,
		0.968220, 0.249463, -0.017810,
		32.580246, 37.180340, 41.548630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195171, 36.696430, 42.121181>,  <31.902493, 37.005714, 41.561100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195171, 36.696430, 42.121181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457031, 36.991318, 42.054310>,  <32.614147, 37.168251, 42.014187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457031, 36.991318, 42.054310>,  <32.195171, 36.696430, 42.121181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457031, 36.991318, 42.054310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123205, 0.322249, 0.938603,
		0.745827, -0.593857, 0.301788,
		0.654647, 0.737217, -0.167176,
		32.653427, 37.212482, 42.004158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662922, 36.579155, 42.620747>,  <32.195171, 36.696430, 42.121181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662922, 36.579155, 42.620747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671982, 36.967430, 42.525036>,  <32.677418, 37.200394, 42.467609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671982, 36.967430, 42.525036>,  <32.662922, 36.579155, 42.620747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671982, 36.967430, 42.525036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145028, 0.239995, 0.959880,
		0.989168, 0.012957, 0.146214,
		0.022653, 0.970688, -0.239275,
		32.678780, 37.258636, 42.453255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034767, 36.875290, 43.209602>,  <32.662922, 36.579155, 42.620747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034767, 36.875290, 43.209602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888504, 37.192280, 43.014347>,  <32.800747, 37.382473, 42.897194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888504, 37.192280, 43.014347>,  <33.034767, 36.875290, 43.209602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888504, 37.192280, 43.014347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103848, 0.486448, 0.867516,
		0.924936, 0.367910, -0.095579,
		-0.365662, 0.792471, -0.488140,
		32.778805, 37.430019, 42.867905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368847, 37.428085, 43.558449>,  <33.034767, 36.875290, 43.209602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368847, 37.428085, 43.558449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062347, 37.595104, 43.363098>,  <32.878448, 37.695316, 43.245888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.062347, 37.595104, 43.363098>,  <33.368847, 37.428085, 43.558449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062347, 37.595104, 43.363098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293271, 0.449013, 0.844026,
		0.571706, 0.789964, -0.221604,
		-0.766253, 0.417545, -0.488377,
		32.832470, 37.720367, 43.216583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293709, 38.086143, 43.840328>,  <33.368847, 37.428085, 43.558449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293709, 38.086143, 43.840328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937187, 38.054302, 43.661781>,  <32.723274, 38.035198, 43.554653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937187, 38.054302, 43.661781>,  <33.293709, 38.086143, 43.840328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937187, 38.054302, 43.661781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432948, 0.441809, 0.785723,
		0.134663, 0.893571, -0.428249,
		-0.891304, -0.079601, -0.446365,
		32.669796, 38.030422, 43.527870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009426, 38.724796, 43.835606>,  <33.293709, 38.086143, 43.840328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009426, 38.724796, 43.835606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705055, 38.465492, 43.824688>,  <32.522434, 38.309910, 43.818138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705055, 38.465492, 43.824688>,  <33.009426, 38.724796, 43.835606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705055, 38.465492, 43.824688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330333, 0.350853, 0.876232,
		-0.558454, 0.675763, -0.481117,
		-0.760926, -0.648264, -0.027292,
		32.476776, 38.271011, 43.816502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437080, 39.052387, 43.859665>,  <33.009426, 38.724796, 43.835606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437080, 39.052387, 43.859665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323677, 38.683784, 43.965839>,  <32.255634, 38.462624, 44.029545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.323677, 38.683784, 43.965839>,  <32.437080, 39.052387, 43.859665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323677, 38.683784, 43.965839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471691, 0.374994, 0.798052,
		-0.834944, 0.101049, -0.540978,
		-0.283506, -0.921504, 0.265435,
		32.238625, 38.407333, 44.045471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804508, 39.221710, 44.074249>,  <32.437080, 39.052387, 43.859665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804508, 39.221710, 44.074249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871477, 38.850342, 44.206921>,  <31.911659, 38.627522, 44.286522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871477, 38.850342, 44.206921>,  <31.804508, 39.221710, 44.074249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871477, 38.850342, 44.206921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382873, 0.248792, 0.889669,
		-0.908503, -0.275942, -0.313812,
		0.167423, -0.928417, 0.331680,
		31.921703, 38.571815, 44.306423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177834, 38.998337, 44.368576>,  <31.804508, 39.221710, 44.074249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177834, 38.998337, 44.368576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.478241, 38.796673, 44.539124>,  <31.658485, 38.675674, 44.641453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.478241, 38.796673, 44.539124>,  <31.177834, 38.998337, 44.368576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478241, 38.796673, 44.539124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396931, 0.171303, 0.901721,
		-0.527651, -0.846449, -0.071465,
		0.751019, -0.504161, 0.426370,
		31.703547, 38.645424, 44.667034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866358, 38.582409, 44.935558>,  <31.177834, 38.998337, 44.368576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866358, 38.582409, 44.935558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251146, 38.570263, 45.044140>,  <31.482019, 38.562977, 45.109291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.251146, 38.570263, 45.044140>,  <30.866358, 38.582409, 44.935558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251146, 38.570263, 45.044140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269757, 0.050549, 0.961601,
		-0.042924, -0.998260, 0.040435,
		0.961971, -0.030368, 0.271457,
		31.539738, 38.561153, 45.125576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918243, 37.996166, 45.361584>,  <30.866358, 38.582409, 44.935558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918243, 37.996166, 45.361584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215090, 38.247826, 45.454048>,  <31.393198, 38.398823, 45.509529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215090, 38.247826, 45.454048>,  <30.918243, 37.996166, 45.361584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215090, 38.247826, 45.454048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279777, -0.022639, 0.959798,
		0.609088, -0.776956, 0.159220,
		0.742116, 0.629148, 0.231164,
		31.437725, 38.436569, 45.523396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194832, 37.738670, 45.886402>,  <30.918243, 37.996166, 45.361584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194832, 37.738670, 45.886402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334705, 38.110222, 45.935242>,  <31.418631, 38.333153, 45.964546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334705, 38.110222, 45.935242>,  <31.194832, 37.738670, 45.886402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334705, 38.110222, 45.935242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247049, -0.034293, 0.968396,
		0.903707, -0.368799, 0.217486,
		0.349685, 0.928876, 0.122102,
		31.439611, 38.388885, 45.971874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482559, 37.699028, 46.525429>,  <31.194832, 37.738670, 45.886402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482559, 37.699028, 46.525429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458858, 38.092834, 46.459427>,  <31.444637, 38.329117, 46.419827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.458858, 38.092834, 46.459427>,  <31.482559, 37.699028, 46.525429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458858, 38.092834, 46.459427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248395, 0.145554, 0.957661,
		0.966845, 0.097731, 0.235923,
		-0.059253, 0.984511, -0.165004,
		31.441082, 38.388187, 46.409927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778618, 37.934143, 47.089756>,  <31.482559, 37.699028, 46.525429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778618, 37.934143, 47.089756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.585352, 38.260685, 46.963188>,  <31.469393, 38.456608, 46.887245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.585352, 38.260685, 46.963188>,  <31.778618, 37.934143, 47.089756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.585352, 38.260685, 46.963188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189096, 0.255576, 0.948116,
		0.854866, 0.517929, 0.030885,
		-0.483163, 0.816352, -0.316421,
		31.440403, 38.505592, 46.868263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199577, 38.477493, 47.240383>,  <31.778618, 37.934143, 47.089756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199577, 38.477493, 47.240383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819016, 38.596607, 47.208992>,  <31.590679, 38.668076, 47.190159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819016, 38.596607, 47.208992>,  <32.199577, 38.477493, 47.240383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819016, 38.596607, 47.208992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021169, 0.317475, 0.948030,
		0.307219, 0.900298, -0.308350,
		-0.951403, 0.297780, -0.078476,
		31.533594, 38.685940, 47.185448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106171, 39.227596, 47.652943>,  <32.199577, 38.477493, 47.240383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106171, 39.227596, 47.652943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738035, 39.083340, 47.592400>,  <31.517153, 38.996784, 47.556072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738035, 39.083340, 47.592400>,  <32.106171, 39.227596, 47.652943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738035, 39.083340, 47.592400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293130, 0.379812, 0.877392,
		-0.258937, 0.851868, -0.455272,
		-0.920340, -0.360643, -0.151361,
		31.461933, 38.975147, 47.546989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640671, 39.840420, 47.709648>,  <32.106171, 39.227596, 47.652943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640671, 39.840420, 47.709648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414429, 39.515770, 47.768105>,  <31.278683, 39.320980, 47.803177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414429, 39.515770, 47.768105>,  <31.640671, 39.840420, 47.709648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414429, 39.515770, 47.768105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338579, 0.390125, 0.856252,
		-0.751968, 0.434820, -0.495455,
		-0.565605, -0.811624, 0.146141,
		31.244747, 39.272282, 47.811947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027308, 40.070534, 47.886120>,  <31.640671, 39.840420, 47.709648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027308, 40.070534, 47.886120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010683, 39.691330, 48.012325>,  <31.000710, 39.463806, 48.088047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010683, 39.691330, 48.012325>,  <31.027308, 40.070534, 47.886120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010683, 39.691330, 48.012325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307089, 0.312622, 0.898868,
		-0.950773, -0.059535, -0.304116,
		-0.041559, -0.948010, 0.315515,
		30.998215, 39.406925, 48.106979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412928, 40.064640, 48.283211>,  <31.027308, 40.070534, 47.886120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412928, 40.064640, 48.283211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664814, 39.775002, 48.395741>,  <30.815947, 39.601219, 48.463257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664814, 39.775002, 48.395741>,  <30.412928, 40.064640, 48.283211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664814, 39.775002, 48.395741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020506, 0.346523, 0.937817,
		-0.776554, -0.596328, 0.203362,
		0.629717, -0.724096, 0.281322,
		30.853729, 39.557774, 48.480137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.146530, 39.844887, 48.865509>,  <30.412928, 40.064640, 48.283211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.146530, 39.844887, 48.865509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532293, 39.739117, 48.865547>,  <30.763752, 39.675655, 48.865570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532293, 39.739117, 48.865547>,  <30.146530, 39.844887, 48.865509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532293, 39.739117, 48.865547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092911, 0.339213, 0.936110,
		-0.247561, -0.902782, 0.351707,
		0.964407, -0.264421, 0.000098,
		30.821615, 39.659790, 48.865578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.126408, 39.485531, 49.485779>,  <30.146530, 39.844887, 48.865509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.126408, 39.485531, 49.485779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508709, 39.578693, 49.413902>,  <30.738091, 39.634590, 49.370777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508709, 39.578693, 49.413902>,  <30.126408, 39.485531, 49.485779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508709, 39.578693, 49.413902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173656, 0.046358, 0.983715,
		0.237440, -0.971394, 0.003862,
		0.955754, 0.232903, -0.179695,
		30.795435, 39.648563, 49.359993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.509932, 38.965248, 49.918587>,  <30.126408, 39.485531, 49.485779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.509932, 38.965248, 49.918587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742393, 39.275719, 49.820766>,  <30.881870, 39.462002, 49.762074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742393, 39.275719, 49.820766>,  <30.509932, 38.965248, 49.918587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742393, 39.275719, 49.820766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111988, 0.221370, 0.968738,
		0.806051, -0.590374, 0.041728,
		0.581155, 0.776179, -0.244551,
		30.916740, 39.508572, 49.747402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105864, 38.839977, 50.226761>,  <30.509932, 38.965248, 49.918587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105864, 38.839977, 50.226761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.148138, 39.231136, 50.154598>,  <31.173502, 39.465832, 50.111301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.148138, 39.231136, 50.154598>,  <31.105864, 38.839977, 50.226761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148138, 39.231136, 50.154598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432702, 0.118123, 0.893765,
		0.895321, -0.172522, -0.410654,
		0.105687, 0.977897, -0.180408,
		31.179844, 39.524506, 50.100475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759933, 38.897545, 50.432144>,  <31.105864, 38.839977, 50.226761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759933, 38.897545, 50.432144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572071, 39.250347, 50.416672>,  <31.459352, 39.462029, 50.407391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572071, 39.250347, 50.416672>,  <31.759933, 38.897545, 50.432144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572071, 39.250347, 50.416672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162819, 0.129592, 0.978108,
		0.867705, 0.453078, -0.204470,
		-0.469657, 0.882001, -0.038677,
		31.431173, 39.514946, 50.405067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176933, 39.389999, 50.809345>,  <31.759933, 38.897545, 50.432144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176933, 39.389999, 50.809345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819651, 39.569172, 50.793694>,  <31.605280, 39.676678, 50.784302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819651, 39.569172, 50.793694>,  <32.176933, 39.389999, 50.809345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819651, 39.569172, 50.793694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053764, 0.192790, 0.979766,
		0.446414, 0.873033, -0.196285,
		-0.893210, 0.447934, -0.039126,
		31.551687, 39.703552, 50.781956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238197, 39.953678, 51.277882>,  <32.176933, 39.389999, 50.809345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238197, 39.953678, 51.277882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841284, 39.917011, 51.244499>,  <31.603134, 39.895012, 51.224468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841284, 39.917011, 51.244499>,  <32.238197, 39.953678, 51.277882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841284, 39.917011, 51.244499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094797, 0.127253, 0.987330,
		-0.079882, 0.987625, -0.134961,
		-0.992286, -0.091663, -0.083459,
		31.543598, 39.889511, 51.219463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943253, 40.323521, 51.813084>,  <32.238197, 39.953678, 51.277882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943253, 40.323521, 51.813084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623098, 40.112740, 51.698746>,  <31.431005, 39.986271, 51.630142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623098, 40.112740, 51.698746>,  <31.943253, 40.323521, 51.813084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623098, 40.112740, 51.698746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353832, 0.030344, 0.934816,
		-0.483927, 0.849355, -0.210738,
		-0.800386, -0.526949, -0.285845,
		31.382982, 39.954655, 51.612991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274187, 40.574329, 52.067039>,  <31.943253, 40.323521, 51.813084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274187, 40.574329, 52.067039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145588, 40.206287, 51.977547>,  <31.068428, 39.985462, 51.923851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145588, 40.206287, 51.977547>,  <31.274187, 40.574329, 52.067039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145588, 40.206287, 51.977547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367507, -0.096508, 0.925000,
		-0.872685, 0.379606, -0.307117,
		-0.321496, -0.920101, -0.223729,
		31.049139, 39.930256, 51.910427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680874, 40.511562, 52.318100>,  <31.274187, 40.574329, 52.067039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680874, 40.511562, 52.318100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788107, 40.126263, 52.311317>,  <30.852446, 39.895084, 52.307247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.788107, 40.126263, 52.311317>,  <30.680874, 40.511562, 52.318100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.788107, 40.126263, 52.311317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218010, -0.077799, 0.972841,
		-0.938405, -0.257104, -0.230854,
		0.268081, -0.963247, -0.016955,
		30.868532, 39.837288, 52.306232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.082878, 40.000996, 52.479530>,  <30.680874, 40.511562, 52.318100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.082878, 40.000996, 52.479530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450745, 39.874638, 52.572842>,  <30.671465, 39.798820, 52.628830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.450745, 39.874638, 52.572842>,  <30.082878, 40.000996, 52.479530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.450745, 39.874638, 52.572842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225482, 0.061562, 0.972300,
		-0.321509, -0.946794, -0.014613,
		0.919668, -0.315898, 0.233277,
		30.726645, 39.779869, 52.642826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.146622, 39.325153, 52.826118>,  <30.082878, 40.000996, 52.479530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.146622, 39.325153, 52.826118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482161, 39.523335, 52.916332>,  <30.683483, 39.642242, 52.970459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482161, 39.523335, 52.916332>,  <30.146622, 39.325153, 52.826118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482161, 39.523335, 52.916332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220169, -0.070121, 0.972938,
		0.497858, -0.865801, 0.050262,
		0.838847, 0.495451, 0.225533,
		30.733814, 39.671970, 52.983994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500233, 38.937508, 53.322521>,  <30.146622, 39.325153, 52.826118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500233, 38.937508, 53.322521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669643, 39.296310, 53.373123>,  <30.771290, 39.511593, 53.403484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669643, 39.296310, 53.373123>,  <30.500233, 38.937508, 53.322521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669643, 39.296310, 53.373123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082571, -0.100844, 0.991470,
		0.902112, -0.430361, 0.031356,
		0.423528, 0.897006, 0.126508,
		30.796701, 39.565411, 53.411076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097622, 38.817570, 53.767059>,  <30.500233, 38.937508, 53.322521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097622, 38.817570, 53.767059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.985207, 39.198147, 53.817287>,  <30.917757, 39.426495, 53.847424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.985207, 39.198147, 53.817287>,  <31.097622, 38.817570, 53.767059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.985207, 39.198147, 53.817287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015891, -0.126213, 0.991876,
		0.959565, 0.280750, 0.020351,
		-0.281037, 0.951446, 0.125571,
		30.900896, 39.483582, 53.854958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435192, 39.095692, 54.331295>,  <31.097622, 38.817570, 53.767059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435192, 39.095692, 54.331295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092871, 39.295288, 54.276726>,  <30.887478, 39.415047, 54.243984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092871, 39.295288, 54.276726>,  <31.435192, 39.095692, 54.331295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092871, 39.295288, 54.276726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206242, -0.087274, 0.974601,
		0.474408, 0.862203, 0.177602,
		-0.855805, 0.498988, -0.136419,
		30.836130, 39.444984, 54.235802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403709, 39.761993, 54.651516>,  <31.435192, 39.095692, 54.331295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403709, 39.761993, 54.651516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050102, 39.575012, 54.651142>,  <30.837938, 39.462822, 54.650917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.050102, 39.575012, 54.651142>,  <31.403709, 39.761993, 54.651516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050102, 39.575012, 54.651142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029118, 0.053065, 0.998166,
		-0.466547, 0.882423, -0.060522,
		-0.884017, -0.467454, -0.000937,
		30.784897, 39.434776, 54.650860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.989754, 39.494503, 55.176258>,  <31.403709, 39.761993, 54.651516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.989754, 39.494503, 55.176258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851194, 39.149174, 55.323051>,  <30.768059, 38.941975, 55.411129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851194, 39.149174, 55.323051>,  <30.989754, 39.494503, 55.176258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851194, 39.149174, 55.323051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840453, 0.459391, 0.287401,
		-0.416709, -0.208876, -0.884717,
		-0.346400, -0.863326, 0.366983,
		30.747274, 38.890175, 55.433147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033140, 38.838425, 54.920143>,  <30.989754, 39.494503, 55.176258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033140, 38.838425, 54.920143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.108641, 38.517643, 55.146854>,  <31.153940, 38.325172, 55.282883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.108641, 38.517643, 55.146854>,  <31.033140, 38.838425, 54.920143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108641, 38.517643, 55.146854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484747, -0.425854, -0.763982,
		0.854045, 0.418949, 0.308365,
		0.188751, -0.801954, 0.566783,
		31.165266, 38.277058, 55.316891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739166, 38.623970, 54.767956>,  <31.033140, 38.838425, 54.920143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739166, 38.623970, 54.767956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589897, 38.282650, 54.913628>,  <31.500336, 38.077858, 55.001030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.589897, 38.282650, 54.913628>,  <31.739166, 38.623970, 54.767956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589897, 38.282650, 54.913628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300597, -0.482563, -0.822663,
		0.877715, -0.197524, 0.436578,
		-0.373172, -0.853298, 0.364178,
		31.477945, 38.026661, 55.022881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.297997, 38.132622, 54.650452>,  <31.739166, 38.623970, 54.767956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.297997, 38.132622, 54.650452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946716, 37.944130, 54.683228>,  <31.735949, 37.831036, 54.702892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946716, 37.944130, 54.683228>,  <32.297997, 38.132622, 54.650452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946716, 37.944130, 54.683228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238020, -0.579161, -0.779691,
		0.414865, -0.665221, 0.620780,
		-0.878199, -0.471225, 0.081938,
		31.683256, 37.802761, 54.707809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312870, 37.401810, 54.771095>,  <32.297997, 38.132622, 54.650452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312870, 37.401810, 54.771095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996843, 37.535912, 54.565807>,  <31.807226, 37.616371, 54.442635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.996843, 37.535912, 54.565807>,  <32.312870, 37.401810, 54.771095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996843, 37.535912, 54.565807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273332, -0.556715, -0.784447,
		-0.548699, -0.760051, 0.348213,
		-0.790075, 0.335248, -0.513215,
		31.759823, 37.636486, 54.411842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721149, 36.888500, 54.507660>,  <32.312870, 37.401810, 54.771095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721149, 36.888500, 54.507660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773932, 37.202702, 54.265812>,  <31.805601, 37.391224, 54.120701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773932, 37.202702, 54.265812>,  <31.721149, 36.888500, 54.507660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773932, 37.202702, 54.265812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185184, -0.618752, -0.763448,
		-0.973804, -0.011223, -0.227112,
		0.131957, 0.785506, -0.604622,
		31.813519, 37.438354, 54.084427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458611, 36.719662, 53.924198>,  <31.721149, 36.888500, 54.507660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458611, 36.719662, 53.924198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678972, 37.026215, 53.792042>,  <31.811190, 37.210148, 53.712746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678972, 37.026215, 53.792042>,  <31.458611, 36.719662, 53.924198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678972, 37.026215, 53.792042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317974, -0.558776, -0.765939,
		-0.771619, 0.316904, -0.551522,
		0.550906, 0.766382, -0.330395,
		31.844244, 37.256130, 53.692924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.136627, 36.843784, 53.238018>,  <31.458611, 36.719662, 53.924198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.136627, 36.843784, 53.238018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505831, 36.997505, 53.245686>,  <31.727352, 37.089737, 53.250286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505831, 36.997505, 53.245686>,  <31.136627, 36.843784, 53.238018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505831, 36.997505, 53.245686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254654, -0.572763, -0.779162,
		-0.288453, 0.724055, -0.626529,
		0.923009, 0.384300, 0.019168,
		31.782734, 37.112797, 53.251434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295925, 36.829533, 52.595394>,  <31.136627, 36.843784, 53.238018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295925, 36.829533, 52.595394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652361, 36.908775, 52.758717>,  <31.866222, 36.956322, 52.856712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.652361, 36.908775, 52.758717>,  <31.295925, 36.829533, 52.595394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652361, 36.908775, 52.758717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449449, -0.260498, -0.854480,
		-0.062915, 0.944931, -0.321166,
		0.891088, 0.198107, 0.408309,
		31.919687, 36.968208, 52.881210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609032, 37.211838, 52.108120>,  <31.295925, 36.829533, 52.595394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609032, 37.211838, 52.108120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890789, 37.024029, 52.321053>,  <32.059845, 36.911343, 52.448811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.890789, 37.024029, 52.321053>,  <31.609032, 37.211838, 52.108120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890789, 37.024029, 52.321053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479403, -0.238365, -0.844603,
		0.523452, 0.850134, 0.057189,
		0.704394, -0.469526, 0.532330,
		32.102108, 36.883171, 52.480751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217606, 37.377518, 51.723667>,  <31.609032, 37.211838, 52.108120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217606, 37.377518, 51.723667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314247, 37.049202, 51.930717>,  <32.372234, 36.852215, 52.054947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.314247, 37.049202, 51.930717>,  <32.217606, 37.377518, 51.723667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314247, 37.049202, 51.930717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533762, -0.333070, -0.777278,
		0.810385, 0.464086, 0.357632,
		0.241607, -0.820785, 0.517627,
		32.386730, 36.802967, 52.086006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888351, 37.333759, 51.531288>,  <32.217606, 37.377518, 51.723667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888351, 37.333759, 51.531288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852585, 36.978359, 51.711319>,  <32.831123, 36.765118, 51.819336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.852585, 36.978359, 51.711319>,  <32.888351, 37.333759, 51.531288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852585, 36.978359, 51.711319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674613, -0.386472, -0.628917,
		0.732735, 0.247389, 0.633954,
		-0.089419, -0.888503, 0.450074,
		32.825760, 36.711807, 51.846340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612286, 37.134987, 51.637100>,  <32.888351, 37.333759, 51.531288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612286, 37.134987, 51.637100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374043, 36.814728, 51.611115>,  <33.231094, 36.622574, 51.595524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374043, 36.814728, 51.611115>,  <33.612286, 37.134987, 51.637100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374043, 36.814728, 51.611115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438268, -0.256129, -0.861579,
		0.673179, -0.541635, 0.503450,
		-0.595609, -0.800643, -0.064961,
		33.195358, 36.574535, 51.591625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066467, 36.676811, 51.242016>,  <33.612286, 37.134987, 51.637100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066467, 36.676811, 51.242016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697670, 36.524548, 51.213627>,  <33.476391, 36.433189, 51.196594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.697670, 36.524548, 51.213627>,  <34.066467, 36.676811, 51.242016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697670, 36.524548, 51.213627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192153, -0.290660, -0.937333,
		0.336175, -0.877848, 0.341129,
		-0.921989, -0.380657, -0.070968,
		33.421074, 36.410351, 51.192337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283527, 36.049370, 50.988567>,  <34.066467, 36.676811, 51.242016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283527, 36.049370, 50.988567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896770, 36.107353, 50.904568>,  <33.664715, 36.142143, 50.854168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896770, 36.107353, 50.904568>,  <34.283527, 36.049370, 50.988567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896770, 36.107353, 50.904568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151578, -0.335752, -0.929675,
		-0.205273, -0.930730, 0.302664,
		-0.966896, 0.144960, -0.209999,
		33.606701, 36.150841, 50.841568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004421, 35.429779, 50.659298>,  <34.283527, 36.049370, 50.988567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004421, 35.429779, 50.659298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744392, 35.701900, 50.523888>,  <33.588375, 35.865173, 50.442642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.744392, 35.701900, 50.523888>,  <34.004421, 35.429779, 50.659298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744392, 35.701900, 50.523888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102077, -0.363285, -0.926069,
		-0.752987, -0.636566, 0.166718,
		-0.650070, 0.680300, -0.338527,
		33.549370, 35.905991, 50.422329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687500, 35.045536, 50.067257>,  <34.004421, 35.429779, 50.659298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687500, 35.045536, 50.067257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571747, 35.426418, 50.028141>,  <33.502293, 35.654945, 50.004669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571747, 35.426418, 50.028141>,  <33.687500, 35.045536, 50.067257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571747, 35.426418, 50.028141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085800, -0.127556, -0.988113,
		-0.953359, -0.277557, 0.118612,
		-0.289387, 0.952204, -0.097792,
		33.484932, 35.712078, 49.998802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164516, 35.026413, 49.673061>,  <33.687500, 35.045536, 50.067257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164516, 35.026413, 49.673061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318302, 35.393654, 49.634533>,  <33.410572, 35.613998, 49.611416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318302, 35.393654, 49.634533>,  <33.164516, 35.026413, 49.673061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318302, 35.393654, 49.634533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036244, -0.089244, -0.995350,
		-0.922428, 0.386167, -0.001036,
		0.384464, 0.918101, -0.096318,
		33.433640, 35.669083, 49.605637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758549, 35.308304, 49.211304>,  <33.164516, 35.026413, 49.673061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758549, 35.308304, 49.211304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080574, 35.545555, 49.207882>,  <33.273788, 35.687904, 49.205830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080574, 35.545555, 49.207882>,  <32.758549, 35.308304, 49.211304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080574, 35.545555, 49.207882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087272, 0.104168, -0.990723,
		-0.586734, 0.798342, 0.135625,
		0.805063, 0.593127, -0.008554,
		33.322094, 35.723492, 49.205315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550610, 35.776890, 48.686642>,  <32.758549, 35.308304, 49.211304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550610, 35.776890, 48.686642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943909, 35.817989, 48.746868>,  <33.179886, 35.842648, 48.783005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.943909, 35.817989, 48.746868>,  <32.550610, 35.776890, 48.686642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.943909, 35.817989, 48.746868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141276, 0.092431, -0.985646,
		-0.115191, 0.990404, 0.076366,
		0.983246, 0.102749, 0.150568,
		33.238884, 35.848812, 48.792038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751553, 36.434669, 48.311981>,  <32.550610, 35.776890, 48.686642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751553, 36.434669, 48.311981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086544, 36.220745, 48.356911>,  <33.287537, 36.092392, 48.383869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086544, 36.220745, 48.356911>,  <32.751553, 36.434669, 48.311981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086544, 36.220745, 48.356911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114116, -0.029864, -0.993018,
		0.534427, 0.844447, 0.036020,
		0.837476, -0.534806, 0.112326,
		33.337788, 36.060303, 48.390610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292488, 36.814556, 47.928738>,  <32.751553, 36.434669, 48.311981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292488, 36.814556, 47.928738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377258, 36.426590, 47.976662>,  <33.428120, 36.193810, 48.005417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377258, 36.426590, 47.976662>,  <33.292488, 36.814556, 47.928738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377258, 36.426590, 47.976662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174753, -0.083009, -0.981107,
		0.961536, 0.228855, 0.151904,
		0.211922, -0.969915, 0.119810,
		33.440834, 36.135616, 48.012604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976219, 36.639629, 47.598232>,  <33.292488, 36.814556, 47.928738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976219, 36.639629, 47.598232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802654, 36.281239, 47.636074>,  <33.698513, 36.066204, 47.658779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802654, 36.281239, 47.636074>,  <33.976219, 36.639629, 47.598232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802654, 36.281239, 47.636074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140048, -0.170802, -0.975302,
		0.890002, -0.409950, 0.199593,
		-0.433916, -0.895973, 0.094601,
		33.672478, 36.012447, 47.664455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.433338, 36.187138, 47.261795>,  <33.976219, 36.639629, 47.598232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.433338, 36.187138, 47.261795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104069, 35.960255, 47.272053>,  <33.906506, 35.824123, 47.278206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104069, 35.960255, 47.272053>,  <34.433338, 36.187138, 47.261795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104069, 35.960255, 47.272053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016106, -0.021813, -0.999632,
		0.567559, -0.823286, 0.008821,
		-0.823175, -0.567208, 0.025640,
		33.857117, 35.790092, 47.279743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539909, 35.610210, 46.869427>,  <34.433338, 36.187138, 47.261795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539909, 35.610210, 46.869427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140347, 35.609425, 46.888138>,  <33.900608, 35.608952, 46.899364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140347, 35.609425, 46.888138>,  <34.539909, 35.610210, 46.869427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140347, 35.609425, 46.888138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042536, -0.379197, -0.924338,
		0.019554, -0.925314, 0.378697,
		-0.998904, -0.001966, 0.046774,
		33.840675, 35.608833, 46.902168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431187, 34.905899, 46.816887>,  <34.539909, 35.610210, 46.869427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431187, 34.905899, 46.816887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107952, 35.106941, 46.694000>,  <33.914013, 35.227566, 46.620266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107952, 35.106941, 46.694000>,  <34.431187, 34.905899, 46.816887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107952, 35.106941, 46.694000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140838, -0.341566, -0.929245,
		-0.571979, -0.794179, 0.205229,
		-0.808087, 0.502605, -0.307220,
		33.865524, 35.257721, 46.601833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961990, 34.431007, 46.447075>,  <34.431187, 34.905899, 46.816887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961990, 34.431007, 46.447075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897491, 34.805637, 46.322609>,  <33.858791, 35.030415, 46.247929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897491, 34.805637, 46.322609>,  <33.961990, 34.431007, 46.447075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897491, 34.805637, 46.322609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014737, -0.312972, -0.949648,
		-0.986804, -0.157711, 0.036663,
		-0.161245, 0.936576, -0.311166,
		33.849117, 35.086609, 46.229259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530842, 34.336277, 45.849812>,  <33.961990, 34.431007, 46.447075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530842, 34.336277, 45.849812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668110, 34.711552, 45.831753>,  <33.750469, 34.936718, 45.820919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668110, 34.711552, 45.831753>,  <33.530842, 34.336277, 45.849812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668110, 34.711552, 45.831753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071712, -0.074090, -0.994670,
		-0.936533, 0.338100, -0.092705,
		0.343166, 0.938189, -0.045142,
		33.771061, 34.993008, 45.818211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258701, 34.558495, 45.205711>,  <33.530842, 34.336277, 45.849812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258701, 34.558495, 45.205711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543243, 34.827377, 45.287800>,  <33.713970, 34.988705, 45.337051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543243, 34.827377, 45.287800>,  <33.258701, 34.558495, 45.205711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543243, 34.827377, 45.287800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118080, 0.173535, -0.977723,
		-0.692843, 0.719741, 0.044071,
		0.711355, 0.672204, 0.205219,
		33.756649, 35.029037, 45.349365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194099, 35.202274, 44.764626>,  <33.258701, 34.558495, 45.205711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194099, 35.202274, 44.764626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577236, 35.200424, 44.879536>,  <33.807117, 35.199314, 44.948483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577236, 35.200424, 44.879536>,  <33.194099, 35.202274, 44.764626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577236, 35.200424, 44.879536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281785, 0.210292, -0.936149,
		-0.056080, 0.977628, 0.202729,
		0.957837, -0.004627, 0.287274,
		33.864586, 35.199036, 44.965717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392910, 35.446285, 44.253399>,  <33.194099, 35.202274, 44.764626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392910, 35.446285, 44.253399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753025, 35.348915, 44.397751>,  <33.969093, 35.290493, 44.484360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753025, 35.348915, 44.397751>,  <33.392910, 35.446285, 44.253399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753025, 35.348915, 44.397751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396696, 0.117469, -0.910403,
		0.179226, 0.962779, 0.202322,
		0.900284, -0.243428, 0.360877,
		34.023109, 35.275887, 44.506012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783772, 35.871708, 43.933945>,  <33.392910, 35.446285, 44.253399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783772, 35.871708, 43.933945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023346, 35.570610, 44.043228>,  <34.167091, 35.389950, 44.108799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023346, 35.570610, 44.043228>,  <33.783772, 35.871708, 43.933945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023346, 35.570610, 44.043228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432186, 0.016627, -0.901631,
		0.674157, 0.658100, 0.335285,
		0.598938, -0.752747, 0.273213,
		34.203026, 35.344788, 44.125191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449635, 35.959286, 43.571136>,  <33.783772, 35.871708, 43.933945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449635, 35.959286, 43.571136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411877, 35.582081, 43.698772>,  <34.389221, 35.355759, 43.775352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411877, 35.582081, 43.698772>,  <34.449635, 35.959286, 43.571136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411877, 35.582081, 43.698772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245709, -0.332672, -0.910470,
		0.964736, -0.007545, 0.263111,
		-0.094399, -0.943013, 0.319087,
		34.383556, 35.299175, 43.794498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936543, 35.508503, 43.302311>,  <34.449635, 35.959286, 43.571136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936543, 35.508503, 43.302311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653164, 35.248291, 43.411793>,  <34.483135, 35.092163, 43.477482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.653164, 35.248291, 43.411793>,  <34.936543, 35.508503, 43.302311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653164, 35.248291, 43.411793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086625, -0.465036, -0.881043,
		0.700428, -0.600463, 0.385806,
		-0.708447, -0.650527, 0.273709,
		34.440628, 35.053131, 43.493904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193260, 34.832088, 43.069271>,  <34.936543, 35.508503, 43.302311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193260, 34.832088, 43.069271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799614, 34.800232, 43.132736>,  <34.563427, 34.781116, 43.170815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799614, 34.800232, 43.132736>,  <35.193260, 34.832088, 43.069271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799614, 34.800232, 43.132736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070825, -0.643400, -0.762247,
		0.162791, -0.761376, 0.627540,
		-0.984115, -0.079642, 0.158665,
		34.504379, 34.776340, 43.180336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094913, 34.086838, 43.177120>,  <35.193260, 34.832088, 43.069271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094913, 34.086838, 43.177120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755283, 34.253464, 43.047176>,  <34.551506, 34.353439, 42.969212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.755283, 34.253464, 43.047176>,  <35.094913, 34.086838, 43.177120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755283, 34.253464, 43.047176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062851, -0.530930, -0.845082,
		-0.524506, -0.737963, 0.424623,
		-0.849083, 0.416563, -0.324857,
		34.500561, 34.378433, 42.949718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760429, 33.567368, 42.887924>,  <35.094913, 34.086838, 43.177120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760429, 33.567368, 42.887924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566547, 33.874981, 42.721241>,  <34.450218, 34.059551, 42.621231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566547, 33.874981, 42.721241>,  <34.760429, 33.567368, 42.887924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566547, 33.874981, 42.721241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010598, -0.481543, -0.876359,
		-0.874614, -0.420359, 0.241556,
		-0.484704, 0.769035, -0.416709,
		34.421135, 34.105690, 42.596230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165520, 33.225040, 42.429344>,  <34.760429, 33.567368, 42.887924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165520, 33.225040, 42.429344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240311, 33.603981, 42.325375>,  <34.285187, 33.831345, 42.262993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240311, 33.603981, 42.325375>,  <34.165520, 33.225040, 42.429344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240311, 33.603981, 42.325375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091790, -0.246582, -0.964765,
		-0.978066, 0.204248, 0.040852,
		0.186978, 0.947354, -0.259921,
		34.296406, 33.888187, 42.247398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605415, 33.409912, 41.911556>,  <34.165520, 33.225040, 42.429344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605415, 33.409912, 41.911556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900478, 33.671764, 41.845448>,  <34.077515, 33.828876, 41.805782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900478, 33.671764, 41.845448>,  <33.605415, 33.409912, 41.911556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900478, 33.671764, 41.845448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012530, -0.258021, -0.966058,
		-0.675058, 0.710550, -0.198534,
		0.737659, 0.654633, -0.165276,
		34.121777, 33.868153, 41.795864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431812, 33.764561, 41.276241>,  <33.605415, 33.409912, 41.911556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431812, 33.764561, 41.276241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823887, 33.836491, 41.309475>,  <34.059132, 33.879646, 41.329414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823887, 33.836491, 41.309475>,  <33.431812, 33.764561, 41.276241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823887, 33.836491, 41.309475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122644, -0.221534, -0.967410,
		-0.155554, 0.958430, -0.239198,
		0.980184, 0.179821, 0.083085,
		34.117943, 33.890438, 41.334400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609180, 34.121098, 40.691772>,  <33.431812, 33.764561, 41.276241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609180, 34.121098, 40.691772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972462, 34.001034, 40.808441>,  <34.190430, 33.928997, 40.878445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972462, 34.001034, 40.808441>,  <33.609180, 34.121098, 40.691772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972462, 34.001034, 40.808441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251822, -0.164745, -0.953648,
		0.334295, 0.939556, -0.074036,
		0.908203, -0.300156, 0.291675,
		34.244923, 33.910988, 40.895943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127087, 34.457947, 40.275341>,  <33.609180, 34.121098, 40.691772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127087, 34.457947, 40.275341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345070, 34.163155, 40.435280>,  <34.475861, 33.986279, 40.531242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345070, 34.163155, 40.435280>,  <34.127087, 34.457947, 40.275341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345070, 34.163155, 40.435280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360072, -0.224970, -0.905393,
		0.757210, 0.637378, 0.142766,
		0.544960, -0.736979, 0.399851,
		34.508556, 33.942062, 40.555237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774281, 34.510841, 39.919670>,  <34.127087, 34.457947, 40.275341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774281, 34.510841, 39.919670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771267, 34.142994, 40.076767>,  <34.769459, 33.922287, 40.171024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771267, 34.142994, 40.076767>,  <34.774281, 34.510841, 39.919670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771267, 34.142994, 40.076767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457143, -0.352476, -0.816566,
		0.889361, 0.173384, 0.423054,
		-0.007537, -0.919619, 0.392740,
		34.769005, 33.867107, 40.194588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383713, 34.285465, 39.664520>,  <34.774281, 34.510841, 39.919670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383713, 34.285465, 39.664520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178444, 33.957005, 39.764408>,  <35.055283, 33.759930, 39.824341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178444, 33.957005, 39.764408>,  <35.383713, 34.285465, 39.664520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178444, 33.957005, 39.764408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204075, -0.399350, -0.893797,
		0.833671, -0.407710, 0.372512,
		-0.513173, -0.821153, 0.249723,
		35.024490, 33.710659, 39.839325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466297, 34.617496, 40.370716>,  <35.383713, 34.285465, 39.664520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466297, 34.617496, 40.370716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841698, 34.541237, 40.255573>,  <36.066940, 34.495480, 40.186489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841698, 34.541237, 40.255573>,  <35.466297, 34.617496, 40.370716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841698, 34.541237, 40.255573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274858, -0.092005, 0.957073,
		-0.208952, -0.977336, -0.033944,
		0.938505, -0.190653, -0.287854,
		36.123249, 34.484043, 40.169216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913082, 33.993847, 40.702999>,  <35.466297, 34.617496, 40.370716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913082, 33.993847, 40.702999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163147, 34.279427, 40.576859>,  <36.313187, 34.450775, 40.501175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163147, 34.279427, 40.576859>,  <35.913082, 33.993847, 40.702999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163147, 34.279427, 40.576859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437794, 0.013728, 0.898970,
		0.646152, -0.700059, -0.303982,
		0.625159, 0.713953, -0.315352,
		36.350697, 34.493614, 40.482254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722443, 33.751331, 40.851589>,  <35.913082, 33.993847, 40.702999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722443, 33.751331, 40.851589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695393, 34.149601, 40.826080>,  <36.679161, 34.388561, 40.810776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695393, 34.149601, 40.826080>,  <36.722443, 33.751331, 40.851589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695393, 34.149601, 40.826080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504429, 0.089265, 0.858826,
		0.860800, 0.025911, -0.508282,
		-0.067625, 0.995671, -0.063769,
		36.675106, 34.448303, 40.806950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298569, 33.857586, 41.160038>,  <36.722443, 33.751331, 40.851589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298569, 33.857586, 41.160038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100334, 34.205002, 41.162525>,  <36.981392, 34.413452, 41.164017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100334, 34.205002, 41.162525>,  <37.298569, 33.857586, 41.160038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100334, 34.205002, 41.162525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375901, 0.208021, 0.903010,
		0.783001, 0.449860, -0.429576,
		-0.495589, 0.868535, 0.006222,
		36.951656, 34.465561, 41.164391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814297, 34.319225, 41.405914>,  <37.298569, 33.857586, 41.160038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814297, 34.319225, 41.405914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474945, 34.514973, 41.486691>,  <37.271336, 34.632420, 41.535156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474945, 34.514973, 41.486691>,  <37.814297, 34.319225, 41.405914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474945, 34.514973, 41.486691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410987, 0.368377, 0.833899,
		0.333690, 0.790456, -0.513645,
		-0.848375, 0.489365, 0.201943,
		37.220432, 34.661781, 41.547272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948162, 34.982014, 41.785515>,  <37.814297, 34.319225, 41.405914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948162, 34.982014, 41.785515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558437, 34.929520, 41.858715>,  <37.324600, 34.898022, 41.902634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558437, 34.929520, 41.858715>,  <37.948162, 34.982014, 41.785515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558437, 34.929520, 41.858715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126537, 0.353155, 0.926968,
		-0.186281, 0.926314, -0.327478,
		-0.974314, -0.131238, 0.182999,
		37.266144, 34.890148, 41.913616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619251, 35.630020, 42.032772>,  <37.948162, 34.982014, 41.785515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619251, 35.630020, 42.032772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401791, 35.317219, 42.154701>,  <37.271317, 35.129539, 42.227859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401791, 35.317219, 42.154701>,  <37.619251, 35.630020, 42.032772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401791, 35.317219, 42.154701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105293, 0.296764, 0.949128,
		-0.832682, 0.548087, -0.078996,
		-0.543648, -0.782005, 0.304820,
		37.238697, 35.082619, 42.246147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.475273, 35.858849, 42.667492>,  <37.619251, 35.630020, 42.032772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.475273, 35.858849, 42.667492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373043, 35.472164, 42.672527>,  <37.311707, 35.240154, 42.675549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373043, 35.472164, 42.672527>,  <37.475273, 35.858849, 42.667492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373043, 35.472164, 42.672527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037438, 0.022902, 0.999037,
		-0.966065, 0.254856, -0.042045,
		-0.255573, -0.966708, 0.012584,
		37.296371, 35.182152, 42.676304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009727, 35.957291, 43.172791>,  <37.475273, 35.858849, 42.667492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009727, 35.957291, 43.172791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105602, 35.569176, 43.159576>,  <37.163128, 35.336308, 43.151649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.105602, 35.569176, 43.159576>,  <37.009727, 35.957291, 43.172791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105602, 35.569176, 43.159576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126146, -0.064864, 0.989889,
		-0.962620, -0.233097, -0.137945,
		0.239687, -0.970288, -0.033035,
		37.177509, 35.278088, 43.149666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398262, 35.454689, 43.403496>,  <37.009727, 35.957291, 43.172791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398262, 35.454689, 43.403496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754768, 35.283943, 43.464722>,  <36.968674, 35.181496, 43.501457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754768, 35.283943, 43.464722>,  <36.398262, 35.454689, 43.403496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754768, 35.283943, 43.464722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178047, -0.018967, 0.983839,
		-0.417059, -0.904118, -0.092906,
		0.891269, -0.426861, 0.153065,
		37.022148, 35.155884, 43.510643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255848, 34.997070, 43.856808>,  <36.398262, 35.454689, 43.403496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255848, 34.997070, 43.856808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654408, 35.018578, 43.883018>,  <36.893543, 35.031483, 43.898743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654408, 35.018578, 43.883018>,  <36.255848, 34.997070, 43.856808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654408, 35.018578, 43.883018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059190, -0.111972, 0.991947,
		0.060672, -0.992256, -0.108386,
		0.996402, 0.053768, 0.065525,
		36.953327, 35.034706, 43.902676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411278, 34.422108, 44.352634>,  <36.255848, 34.997070, 43.856808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411278, 34.422108, 44.352634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721695, 34.673183, 44.328087>,  <36.907944, 34.823830, 44.313358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721695, 34.673183, 44.328087>,  <36.411278, 34.422108, 44.352634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721695, 34.673183, 44.328087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080217, -0.001725, 0.996776,
		0.625563, -0.778460, -0.051690,
		0.776039, 0.627692, -0.061367,
		36.954506, 34.861492, 44.309677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973152, 34.113850, 44.710907>,  <36.411278, 34.422108, 44.352634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973152, 34.113850, 44.710907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031376, 34.509453, 44.700539>,  <37.066311, 34.746815, 44.694317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031376, 34.509453, 44.700539>,  <36.973152, 34.113850, 44.710907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031376, 34.509453, 44.700539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058524, 0.017546, 0.998132,
		0.987617, -0.146805, -0.055327,
		0.145560, 0.989010, -0.025921,
		37.075043, 34.806156, 44.692764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572205, 34.267567, 45.165192>,  <36.973152, 34.113850, 44.710907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572205, 34.267567, 45.165192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356873, 34.603958, 45.143433>,  <37.227673, 34.805794, 45.130379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356873, 34.603958, 45.143433>,  <37.572205, 34.267567, 45.165192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356873, 34.603958, 45.143433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099524, 0.127539, 0.986828,
		0.836839, 0.525822, -0.152355,
		-0.538326, 0.840979, -0.054397,
		37.195374, 34.856251, 45.127113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800453, 34.584206, 45.607635>,  <37.572205, 34.267567, 45.165192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800453, 34.584206, 45.607635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495548, 34.839664, 45.565521>,  <37.312607, 34.992939, 45.540253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495548, 34.839664, 45.565521>,  <37.800453, 34.584206, 45.607635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495548, 34.839664, 45.565521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184514, 0.370311, 0.910398,
		0.620411, 0.674536, -0.400114,
		-0.762263, 0.638648, -0.105284,
		37.266869, 35.031258, 45.533936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964878, 35.126926, 46.009556>,  <37.800453, 34.584206, 45.607635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964878, 35.126926, 46.009556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572514, 35.196308, 45.974384>,  <37.337097, 35.237938, 45.953281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572514, 35.196308, 45.974384>,  <37.964878, 35.126926, 46.009556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572514, 35.196308, 45.974384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031369, 0.305100, 0.951804,
		0.191921, 0.936391, -0.293834,
		-0.980909, 0.173453, -0.087929,
		37.278240, 35.248344, 45.948006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771225, 35.701447, 46.479687>,  <37.964878, 35.126926, 46.009556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771225, 35.701447, 46.479687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407707, 35.542431, 46.429001>,  <37.189598, 35.447021, 46.398590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407707, 35.542431, 46.429001>,  <37.771225, 35.701447, 46.479687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407707, 35.542431, 46.429001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262983, 0.309952, 0.913657,
		-0.323942, 0.863648, -0.386229,
		-0.908791, -0.397544, -0.126719,
		37.135071, 35.423168, 46.390984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258305, 36.241844, 46.656166>,  <37.771225, 35.701447, 46.479687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258305, 36.241844, 46.656166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.054058, 35.897919, 46.655819>,  <36.931511, 35.691563, 46.655609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.054058, 35.897919, 46.655819>,  <37.258305, 36.241844, 46.656166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054058, 35.897919, 46.655819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503218, 0.298024, 0.811143,
		-0.697169, 0.414619, -0.584847,
		-0.510614, -0.859810, -0.000871,
		36.900875, 35.639977, 46.655556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634384, 36.426537, 46.918861>,  <37.258305, 36.241844, 46.656166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634384, 36.426537, 46.918861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613853, 36.029739, 46.965034>,  <36.601536, 35.791660, 46.992737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.613853, 36.029739, 46.965034>,  <36.634384, 36.426537, 46.918861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.613853, 36.029739, 46.965034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476137, 0.125907, 0.870311,
		-0.877872, -0.010293, -0.478785,
		-0.051325, -0.991988, 0.115431,
		36.598457, 35.732143, 46.999664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938557, 36.371700, 47.185783>,  <36.634384, 36.426537, 46.918861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938557, 36.371700, 47.185783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169548, 36.060589, 47.285042>,  <36.308144, 35.873920, 47.344597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.169548, 36.060589, 47.285042>,  <35.938557, 36.371700, 47.185783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169548, 36.060589, 47.285042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340009, 0.047212, 0.939236,
		-0.742237, -0.626758, -0.237189,
		0.577476, -0.777782, 0.248146,
		36.342793, 35.827255, 47.359486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539230, 35.929272, 47.524094>,  <35.938557, 36.371700, 47.185783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539230, 35.929272, 47.524094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910667, 35.833256, 47.637302>,  <36.133530, 35.775646, 47.705227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910667, 35.833256, 47.637302>,  <35.539230, 35.929272, 47.524094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910667, 35.833256, 47.637302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282986, 0.035351, 0.958472,
		-0.240074, -0.970120, -0.035101,
		0.928592, -0.240037, 0.283017,
		36.189243, 35.761246, 47.722206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516247, 35.372002, 48.150177>,  <35.539230, 35.929272, 47.524094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516247, 35.372002, 48.150177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871502, 35.554836, 48.169258>,  <36.084656, 35.664536, 48.180706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871502, 35.554836, 48.169258>,  <35.516247, 35.372002, 48.150177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871502, 35.554836, 48.169258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152356, 0.194913, 0.968915,
		0.433580, -0.867802, 0.242750,
		0.888142, 0.457086, 0.047705,
		36.137943, 35.691963, 48.183571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611832, 35.366932, 48.920719>,  <35.516247, 35.372002, 48.150177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611832, 35.366932, 48.920719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874950, 35.649868, 48.817196>,  <36.032822, 35.819630, 48.755081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874950, 35.649868, 48.817196>,  <35.611832, 35.366932, 48.920719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874950, 35.649868, 48.817196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289669, 0.554760, 0.779957,
		0.695271, -0.438080, 0.569811,
		0.657792, 0.707338, -0.258810,
		36.072289, 35.862068, 48.739552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048267, 35.494705, 49.528728>,  <35.611832, 35.366932, 48.920719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048267, 35.494705, 49.528728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066078, 35.824562, 49.303169>,  <36.076767, 36.022476, 49.167835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.066078, 35.824562, 49.303169>,  <36.048267, 35.494705, 49.528728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066078, 35.824562, 49.303169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353951, 0.540867, 0.763008,
		0.934203, 0.165616, 0.315968,
		0.044530, 0.824642, -0.563900,
		36.079437, 36.071953, 49.133999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257862, 35.911137, 49.980839>,  <36.048267, 35.494705, 49.528728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257862, 35.911137, 49.980839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116203, 36.152802, 49.695305>,  <36.031208, 36.297802, 49.523983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.116203, 36.152802, 49.695305>,  <36.257862, 35.911137, 49.980839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116203, 36.152802, 49.695305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206341, 0.694017, 0.689757,
		0.912142, 0.391569, -0.121119,
		-0.354146, 0.604164, -0.713839,
		36.009960, 36.334049, 49.481152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.524559, 36.579594, 50.188400>,  <36.257862, 35.911137, 49.980839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.524559, 36.579594, 50.188400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205338, 36.657787, 49.960400>,  <36.013805, 36.704704, 49.823601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205338, 36.657787, 49.960400>,  <36.524559, 36.579594, 50.188400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205338, 36.657787, 49.960400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321063, 0.662534, 0.676733,
		0.509933, 0.723074, -0.465975,
		-0.798052, 0.195481, -0.570000,
		35.965923, 36.716431, 49.789398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532692, 37.300606, 50.086079>,  <36.524559, 36.579594, 50.188400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532692, 37.300606, 50.086079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161324, 37.160336, 50.036991>,  <35.938503, 37.076172, 50.007538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161324, 37.160336, 50.036991>,  <36.532692, 37.300606, 50.086079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161324, 37.160336, 50.036991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343155, 0.682762, 0.645043,
		-0.142413, 0.640983, -0.754228,
		-0.928420, -0.350679, -0.122723,
		35.882797, 37.055130, 50.000175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182709, 37.912979, 50.054008>,  <36.532692, 37.300606, 50.086079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182709, 37.912979, 50.054008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889942, 37.647774, 50.116894>,  <35.714283, 37.488651, 50.154625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.889942, 37.647774, 50.116894>,  <36.182709, 37.912979, 50.054008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889942, 37.647774, 50.116894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442359, 0.637825, 0.630474,
		-0.518287, 0.391908, -0.760123,
		-0.731914, -0.663013, 0.157212,
		35.670368, 37.448872, 50.164059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529716, 38.248699, 50.018917>,  <36.182709, 37.912979, 50.054008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529716, 38.248699, 50.018917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446911, 37.920372, 50.231861>,  <35.397228, 37.723377, 50.359627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446911, 37.920372, 50.231861>,  <35.529716, 38.248699, 50.018917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446911, 37.920372, 50.231861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559051, 0.545799, 0.624152,
		-0.802875, -0.168406, -0.571867,
		-0.207013, -0.820818, 0.532356,
		35.384808, 37.674126, 50.391567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853962, 38.366199, 50.260712>,  <35.529716, 38.248699, 50.018917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853962, 38.366199, 50.260712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959946, 38.065796, 50.502632>,  <35.023537, 37.885555, 50.647785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959946, 38.065796, 50.502632>,  <34.853962, 38.366199, 50.260712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959946, 38.065796, 50.502632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466914, 0.448853, 0.761920,
		-0.843675, -0.484267, -0.231728,
		0.264961, -0.751010, 0.604797,
		35.039433, 37.840492, 50.684071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260815, 38.058670, 50.450603>,  <34.853962, 38.366199, 50.260712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260815, 38.058670, 50.450603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543072, 37.993526, 50.726444>,  <34.712425, 37.954441, 50.891949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543072, 37.993526, 50.726444>,  <34.260815, 38.058670, 50.450603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543072, 37.993526, 50.726444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545133, 0.496957, 0.675177,
		-0.452657, -0.852357, 0.261896,
		0.705643, -0.162856, 0.689599,
		34.754765, 37.944672, 50.933323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925167, 37.836525, 51.181652>,  <34.260815, 38.058670, 50.450603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925167, 37.836525, 51.181652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296349, 37.950077, 51.278236>,  <34.519058, 38.018208, 51.336189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296349, 37.950077, 51.278236>,  <33.925167, 37.836525, 51.181652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296349, 37.950077, 51.278236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351485, 0.451240, 0.820269,
		0.123902, -0.846046, 0.518512,
		0.927958, 0.283882, 0.241463,
		34.574738, 38.035240, 51.350674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891598, 37.800987, 51.999023>,  <33.925167, 37.836525, 51.181652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891598, 37.800987, 51.999023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206787, 38.026295, 51.899563>,  <34.395901, 38.161480, 51.839886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206787, 38.026295, 51.899563>,  <33.891598, 37.800987, 51.999023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206787, 38.026295, 51.899563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187285, 0.603970, 0.774690,
		0.586534, -0.563868, 0.581404,
		0.787974, 0.563270, -0.248645,
		34.443180, 38.195278, 51.824970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326092, 37.973892, 52.606838>,  <33.891598, 37.800987, 51.999023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326092, 37.973892, 52.606838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445114, 38.264011, 52.358513>,  <34.516525, 38.438084, 52.209518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445114, 38.264011, 52.358513>,  <34.326092, 37.973892, 52.606838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445114, 38.264011, 52.358513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041788, 0.659540, 0.750507,
		0.953790, -0.197373, 0.226557,
		0.297553, 0.725293, -0.620816,
		34.534382, 38.481598, 52.172268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807854, 38.455425, 52.988018>,  <34.326092, 37.973892, 52.606838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807854, 38.455425, 52.988018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675209, 38.658913, 52.670216>,  <34.595623, 38.781006, 52.479534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.675209, 38.658913, 52.670216>,  <34.807854, 38.455425, 52.988018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675209, 38.658913, 52.670216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204703, 0.783297, 0.586978,
		0.920941, 0.357285, -0.155613,
		-0.331609, 0.508718, -0.794507,
		34.575726, 38.811527, 52.431862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091164, 39.070118, 53.157372>,  <34.807854, 38.455425, 52.988018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091164, 39.070118, 53.157372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802116, 39.130939, 52.887642>,  <34.628689, 39.167431, 52.725803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802116, 39.130939, 52.887642>,  <35.091164, 39.070118, 53.157372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802116, 39.130939, 52.887642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321561, 0.789588, 0.522636,
		0.611905, 0.594500, -0.521673,
		-0.722614, 0.152054, -0.674321,
		34.585331, 39.176556, 52.685345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.186756, 39.716385, 52.832916>,  <35.091164, 39.070118, 53.157372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.186756, 39.716385, 52.832916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796879, 39.627132, 52.838333>,  <34.562954, 39.573582, 52.841583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796879, 39.627132, 52.838333>,  <35.186756, 39.716385, 52.832916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796879, 39.627132, 52.838333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166289, 0.764212, 0.623160,
		-0.149397, 0.605138, -0.781977,
		-0.974694, -0.223132, 0.013544,
		34.504471, 39.560192, 52.842396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897598, 40.386410, 52.880905>,  <35.186756, 39.716385, 52.832916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897598, 40.386410, 52.880905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633228, 40.113087, 53.005013>,  <34.474606, 39.949093, 53.079479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633228, 40.113087, 53.005013>,  <34.897598, 40.386410, 52.880905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633228, 40.113087, 53.005013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201007, 0.559530, 0.804066,
		-0.723029, 0.469062, -0.507158,
		-0.660928, -0.683306, 0.310272,
		34.434952, 39.908096, 53.098095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069588, 41.056782, 52.644787>,  <34.897598, 40.386410, 52.880905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069588, 41.056782, 52.644787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270847, 41.380604, 52.523815>,  <35.391605, 41.574898, 52.451233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270847, 41.380604, 52.523815>,  <35.069588, 41.056782, 52.644787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270847, 41.380604, 52.523815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099428, -0.401857, -0.910288,
		-0.858459, 0.427944, -0.282687,
		0.503152, 0.809552, -0.302428,
		35.421791, 41.623470, 52.433086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736496, 41.162586, 52.032280>,  <35.069588, 41.056782, 52.644787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736496, 41.162586, 52.032280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092033, 41.344845, 52.012905>,  <35.305355, 41.454201, 52.001282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.092033, 41.344845, 52.012905>,  <34.736496, 41.162586, 52.032280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092033, 41.344845, 52.012905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104578, -0.304645, -0.946707,
		-0.446118, 0.836409, -0.318432,
		0.888843, 0.455644, -0.048438,
		35.358685, 41.481537, 51.998375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719246, 41.441074, 51.376072>,  <34.736496, 41.162586, 52.032280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719246, 41.441074, 51.376072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105061, 41.444221, 51.481606>,  <35.336548, 41.446110, 51.544926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.105061, 41.444221, 51.481606>,  <34.719246, 41.441074, 51.376072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105061, 41.444221, 51.481606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248336, -0.365707, -0.896988,
		0.089426, 0.930697, -0.354692,
		0.964537, 0.007868, 0.263829,
		35.394421, 41.446583, 51.560753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090073, 41.808880, 50.835579>,  <34.719246, 41.441074, 51.376072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090073, 41.808880, 50.835579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351284, 41.564243, 51.014244>,  <35.508011, 41.417461, 51.121445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351284, 41.564243, 51.014244>,  <35.090073, 41.808880, 50.835579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351284, 41.564243, 51.014244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209605, -0.420796, -0.882608,
		0.727747, 0.669994, -0.146601,
		0.653031, -0.611587, 0.446667,
		35.547192, 41.380768, 51.148243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736523, 41.925056, 50.489990>,  <35.090073, 41.808880, 50.835579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736523, 41.925056, 50.489990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792439, 41.581455, 50.686996>,  <35.825989, 41.375294, 50.805202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792439, 41.581455, 50.686996>,  <35.736523, 41.925056, 50.489990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792439, 41.581455, 50.686996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277630, -0.443451, -0.852217,
		0.950464, 0.255867, 0.176496,
		0.139787, -0.859001, 0.492520,
		35.834373, 41.323753, 50.834751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347397, 41.648380, 50.176823>,  <35.736523, 41.925056, 50.489990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347397, 41.648380, 50.176823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211235, 41.322273, 50.364208>,  <36.129539, 41.126610, 50.476639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211235, 41.322273, 50.364208>,  <36.347397, 41.648380, 50.176823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211235, 41.322273, 50.364208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259007, -0.560248, -0.786790,
		0.903902, -0.146492, 0.401872,
		-0.340406, -0.815269, 0.468467,
		36.109112, 41.077694, 50.504749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926037, 41.080524, 50.130047>,  <36.347397, 41.648380, 50.176823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926037, 41.080524, 50.130047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578419, 40.898571, 50.207851>,  <36.369846, 40.789398, 50.254536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578419, 40.898571, 50.207851>,  <36.926037, 41.080524, 50.130047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578419, 40.898571, 50.207851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268705, -0.764126, -0.586438,
		0.415392, -0.457377, 0.786292,
		-0.869050, -0.454882, 0.194513,
		36.317703, 40.762108, 50.266205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999691, 40.366776, 50.238167>,  <36.926037, 41.080524, 50.130047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999691, 40.366776, 50.238167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618069, 40.406563, 50.125118>,  <36.389095, 40.430435, 50.057289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618069, 40.406563, 50.125118>,  <36.999691, 40.366776, 50.238167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618069, 40.406563, 50.125118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154289, -0.645494, -0.748019,
		-0.256834, -0.757261, 0.600494,
		-0.954060, 0.099467, -0.282622,
		36.331852, 40.436401, 50.040333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840393, 39.682388, 50.096001>,  <36.999691, 40.366776, 50.238167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840393, 39.682388, 50.096001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619678, 39.958847, 49.909302>,  <36.487251, 40.124722, 49.797283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.619678, 39.958847, 49.909302>,  <36.840393, 39.682388, 50.096001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619678, 39.958847, 49.909302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135936, -0.477638, -0.867976,
		-0.822833, -0.542384, 0.169603,
		-0.551785, 0.691145, -0.466746,
		36.454144, 40.166191, 49.769279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509315, 39.283737, 49.710983>,  <36.840393, 39.682388, 50.096001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509315, 39.283737, 49.710983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458260, 39.628887, 49.515373>,  <36.427628, 39.835979, 49.398006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458260, 39.628887, 49.515373>,  <36.509315, 39.283737, 49.710983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458260, 39.628887, 49.515373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293090, -0.438225, -0.849740,
		-0.947527, -0.251790, -0.196966,
		-0.127641, 0.862879, -0.489027,
		36.419968, 39.887753, 49.368664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190399, 39.186970, 49.096340>,  <36.509315, 39.283737, 49.710983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190399, 39.186970, 49.096340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369980, 39.539143, 49.035305>,  <36.477726, 39.750446, 48.998684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369980, 39.539143, 49.035305>,  <36.190399, 39.186970, 49.096340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369980, 39.539143, 49.035305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470983, -0.378281, -0.796918,
		-0.759354, 0.285908, -0.584498,
		0.448950, 0.880432, -0.152592,
		36.504665, 39.803272, 48.989529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119289, 39.354542, 48.365406>,  <36.190399, 39.186970, 49.096340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119289, 39.354542, 48.365406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436111, 39.553314, 48.507225>,  <36.626205, 39.672577, 48.592316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436111, 39.553314, 48.507225>,  <36.119289, 39.354542, 48.365406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436111, 39.553314, 48.507225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452132, -0.087326, -0.887666,
		-0.410145, 0.863386, -0.293845,
		0.792059, 0.496929, 0.354548,
		36.673729, 39.702393, 48.613590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198311, 39.978378, 48.001438>,  <36.119289, 39.354542, 48.365406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198311, 39.978378, 48.001438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547653, 39.849812, 48.147831>,  <36.757259, 39.772671, 48.235668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547653, 39.849812, 48.147831>,  <36.198311, 39.978378, 48.001438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547653, 39.849812, 48.147831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347190, -0.116211, -0.930566,
		0.341627, 0.939781, 0.010097,
		0.873355, -0.321413, 0.365984,
		36.809658, 39.753387, 48.257626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732403, 40.300968, 47.700127>,  <36.198311, 39.978378, 48.001438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732403, 40.300968, 47.700127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904613, 39.962418, 47.825535>,  <37.007942, 39.759289, 47.900780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904613, 39.962418, 47.825535>,  <36.732403, 40.300968, 47.700127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904613, 39.962418, 47.825535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425783, -0.115828, -0.897381,
		0.795835, 0.519839, 0.310505,
		0.430529, -0.846375, 0.313518,
		37.033772, 39.708504, 47.919590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423092, 40.219799, 47.219528>,  <36.732403, 40.300968, 47.700127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.423092, 40.219799, 47.219528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402409, 39.849579, 47.369560>,  <37.389999, 39.627445, 47.459579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402409, 39.849579, 47.369560>,  <37.423092, 40.219799, 47.219528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402409, 39.849579, 47.369560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519961, -0.345608, -0.781150,
		0.852623, 0.154632, 0.499122,
		-0.051710, -0.925550, 0.375076,
		37.386894, 39.571915, 47.482082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108654, 39.988720, 47.075153>,  <37.423092, 40.219799, 47.219528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108654, 39.988720, 47.075153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875881, 39.674351, 47.158760>,  <37.736217, 39.485729, 47.208923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875881, 39.674351, 47.158760>,  <38.108654, 39.988720, 47.075153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875881, 39.674351, 47.158760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513806, -0.554533, -0.654596,
		0.630365, -0.273538, 0.726510,
		-0.581931, -0.785920, 0.209013,
		37.701302, 39.438576, 47.221462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619484, 39.549107, 47.050571>,  <38.108654, 39.988720, 47.075153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619484, 39.549107, 47.050571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269577, 39.359589, 47.009987>,  <38.059631, 39.245876, 46.985634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269577, 39.359589, 47.009987>,  <38.619484, 39.549107, 47.050571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269577, 39.359589, 47.009987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336510, -0.443387, -0.830764,
		0.348628, -0.760869, 0.547299,
		-0.874768, -0.473799, -0.101463,
		38.007145, 39.217449, 46.979549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766579, 38.765045, 46.974289>,  <38.619484, 39.549107, 47.050571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766579, 38.765045, 46.974289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404617, 38.825638, 46.815189>,  <38.187443, 38.861996, 46.719730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.404617, 38.825638, 46.815189>,  <38.766579, 38.765045, 46.974289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404617, 38.825638, 46.815189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217499, -0.638707, -0.738071,
		-0.365851, -0.754392, 0.545019,
		-0.904902, 0.151483, -0.397751,
		38.133148, 38.871082, 46.695866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486855, 38.108429, 46.815804>,  <38.766579, 38.765045, 46.974289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486855, 38.108429, 46.815804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275665, 38.339176, 46.566494>,  <38.148952, 38.477623, 46.416908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275665, 38.339176, 46.566494>,  <38.486855, 38.108429, 46.815804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275665, 38.339176, 46.566494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154341, -0.656505, -0.738363,
		-0.835121, -0.486030, 0.257580,
		-0.527969, 0.576867, -0.623275,
		38.117275, 38.512238, 46.379513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193588, 37.606255, 46.370426>,  <38.486855, 38.108429, 46.815804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193588, 37.606255, 46.370426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156891, 37.961838, 46.190945>,  <38.134872, 38.175190, 46.083256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156891, 37.961838, 46.190945>,  <38.193588, 37.606255, 46.370426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156891, 37.961838, 46.190945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019629, -0.448898, -0.893367,
		-0.995590, -0.090764, 0.023733,
		-0.091740, 0.888961, -0.448700,
		38.129368, 38.228527, 46.056335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640408, 37.500912, 45.972530>,  <38.193588, 37.606255, 46.370426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640408, 37.500912, 45.972530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855045, 37.795769, 45.808247>,  <37.983829, 37.972683, 45.709679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855045, 37.795769, 45.808247>,  <37.640408, 37.500912, 45.972530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855045, 37.795769, 45.808247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007547, -0.482499, -0.875864,
		-0.843804, 0.473086, -0.253345,
		0.536597, 0.737146, -0.410705,
		38.016026, 38.016914, 45.685036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380806, 37.597805, 45.355450>,  <37.640408, 37.500912, 45.972530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380806, 37.597805, 45.355450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747482, 37.756237, 45.334278>,  <37.967487, 37.851295, 45.321575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.747482, 37.756237, 45.334278>,  <37.380806, 37.597805, 45.355450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747482, 37.756237, 45.334278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129592, -0.419969, -0.898238,
		-0.378001, 0.816547, -0.436310,
		0.916690, 0.396077, -0.052931,
		38.022488, 37.875061, 45.318398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383385, 37.843609, 44.680130>,  <37.380806, 37.597805, 45.355450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383385, 37.843609, 44.680130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773800, 37.817059, 44.763016>,  <38.008049, 37.801128, 44.812748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773800, 37.817059, 44.763016>,  <37.383385, 37.843609, 44.680130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773800, 37.817059, 44.763016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188302, -0.219469, -0.957275,
		0.109020, 0.973359, -0.201712,
		0.976041, -0.066380, 0.207212,
		38.066612, 37.797146, 44.825180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669281, 37.938393, 44.024086>,  <37.383385, 37.843609, 44.680130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669281, 37.938393, 44.024086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.982922, 37.796585, 44.227848>,  <38.171108, 37.711498, 44.350105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.982922, 37.796585, 44.227848>,  <37.669281, 37.938393, 44.024086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982922, 37.796585, 44.227848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304928, -0.494823, -0.813737,
		0.540553, 0.793388, -0.279890,
		0.784105, -0.354522, 0.509405,
		38.218155, 37.690228, 44.380669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.320133, 37.968037, 43.613926>,  <37.669281, 37.938393, 44.024086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.320133, 37.968037, 43.613926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419117, 37.694469, 43.888451>,  <38.478508, 37.530331, 44.053165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.419117, 37.694469, 43.888451>,  <38.320133, 37.968037, 43.613926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419117, 37.694469, 43.888451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352731, -0.596140, -0.721247,
		0.902410, 0.420563, 0.093718,
		0.247460, -0.683918, 0.686309,
		38.493355, 37.489296, 44.094345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022797, 37.717964, 43.495502>,  <38.320133, 37.968037, 43.613926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022797, 37.717964, 43.495502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862770, 37.423454, 43.713802>,  <38.766754, 37.246750, 43.844784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862770, 37.423454, 43.713802>,  <39.022797, 37.717964, 43.495502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862770, 37.423454, 43.713802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328378, -0.671106, -0.664669,
		0.855635, -0.086702, 0.510265,
		-0.400070, -0.736274, 0.545751,
		38.742748, 37.202572, 43.877529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647861, 37.253338, 43.626728>,  <39.022797, 37.717964, 43.495502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647861, 37.253338, 43.626728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304485, 37.056046, 43.683006>,  <39.098457, 36.937672, 43.716774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304485, 37.056046, 43.683006>,  <39.647861, 37.253338, 43.626728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304485, 37.056046, 43.683006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305813, -0.712420, -0.631614,
		0.411765, -0.499180, 0.762410,
		-0.858445, -0.493231, 0.140693,
		39.046951, 36.908077, 43.725216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816494, 36.519039, 43.685528>,  <39.647861, 37.253338, 43.626728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816494, 36.519039, 43.685528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429443, 36.502201, 43.585983>,  <39.197212, 36.492096, 43.526257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429443, 36.502201, 43.585983>,  <39.816494, 36.519039, 43.685528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429443, 36.502201, 43.585983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191316, -0.765459, -0.614386,
		-0.164630, -0.642106, 0.748730,
		-0.967623, -0.042098, -0.248863,
		39.139156, 36.489571, 43.511326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650524, 35.826675, 43.674179>,  <39.816494, 36.519039, 43.685528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650524, 35.826675, 43.674179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399300, 36.020515, 43.430637>,  <39.248566, 36.136818, 43.284512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399300, 36.020515, 43.430637>,  <39.650524, 35.826675, 43.674179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399300, 36.020515, 43.430637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232406, -0.629901, -0.741089,
		-0.742648, -0.606951, 0.282993,
		-0.628062, 0.484599, -0.608854,
		39.210880, 36.165894, 43.247982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534386, 35.373859, 43.122623>,  <39.650524, 35.826675, 43.674179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534386, 35.373859, 43.122623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330288, 35.678749, 42.963295>,  <39.207829, 35.861683, 42.867699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330288, 35.678749, 42.963295>,  <39.534386, 35.373859, 43.122623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330288, 35.678749, 42.963295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037490, -0.482423, -0.875136,
		-0.859213, -0.431598, 0.274729,
		-0.510242, 0.762228, -0.398324,
		39.177216, 35.907417, 42.843800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953217, 35.129250, 42.688587>,  <39.534386, 35.373859, 43.122623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953217, 35.129250, 42.688587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037445, 35.497124, 42.556019>,  <39.087982, 35.717846, 42.476479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037445, 35.497124, 42.556019>,  <38.953217, 35.129250, 42.688587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037445, 35.497124, 42.556019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150400, -0.365468, -0.918593,
		-0.965940, 0.143584, -0.215277,
		0.210572, 0.919683, -0.331425,
		39.100616, 35.773029, 42.456593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559738, 35.226376, 42.064678>,  <38.953217, 35.129250, 42.688587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559738, 35.226376, 42.064678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865322, 35.483772, 42.045586>,  <39.048672, 35.638210, 42.034130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.865322, 35.483772, 42.045586>,  <38.559738, 35.226376, 42.064678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865322, 35.483772, 42.045586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121653, -0.216276, -0.968724,
		-0.633691, 0.734260, -0.243509,
		0.763961, 0.643495, -0.047727,
		39.094509, 35.676823, 42.031269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470047, 35.609962, 41.404953>,  <38.559738, 35.226376, 42.064678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470047, 35.609962, 41.404953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851925, 35.666504, 41.509705>,  <39.081051, 35.700428, 41.572556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.851925, 35.666504, 41.509705>,  <38.470047, 35.609962, 41.404953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851925, 35.666504, 41.509705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286276, -0.195893, -0.937908,
		-0.081279, 0.970384, -0.227485,
		0.954694, 0.141356, 0.261875,
		39.138332, 35.708912, 41.588268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717560, 35.914177, 40.756012>,  <38.470047, 35.609962, 41.404953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717560, 35.914177, 40.756012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043430, 35.831623, 40.972794>,  <39.238953, 35.782093, 41.102863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043430, 35.831623, 40.972794>,  <38.717560, 35.914177, 40.756012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043430, 35.831623, 40.972794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520247, -0.152797, -0.840236,
		0.256217, 0.966468, -0.017111,
		0.814675, -0.206381, 0.541951,
		39.287834, 35.769711, 41.135380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413666, 36.289608, 40.523693>,  <38.717560, 35.914177, 40.756012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413666, 36.289608, 40.523693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523727, 35.967026, 40.733044>,  <39.589764, 35.773476, 40.858654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523727, 35.967026, 40.733044>,  <39.413666, 36.289608, 40.523693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523727, 35.967026, 40.733044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672298, -0.227747, -0.704376,
		0.687246, 0.545673, 0.479515,
		0.275151, -0.806456, 0.523374,
		39.606274, 35.725090, 40.890057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.216640, 36.265797, 40.583069>,  <39.413666, 36.289608, 40.523693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.216640, 36.265797, 40.583069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116203, 35.883999, 40.647442>,  <40.055943, 35.654922, 40.686066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.116203, 35.883999, 40.647442>,  <40.216640, 36.265797, 40.583069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116203, 35.883999, 40.647442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657227, -0.290174, -0.695594,
		0.710639, -0.068884, 0.700177,
		-0.251088, -0.954492, 0.160937,
		40.040878, 35.597652, 40.695724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879608, 35.760582, 40.705620>,  <40.216640, 36.265797, 40.583069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879608, 35.760582, 40.705620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567467, 35.546505, 40.576244>,  <40.380180, 35.418056, 40.498619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567467, 35.546505, 40.576244>,  <40.879608, 35.760582, 40.705620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567467, 35.546505, 40.576244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532498, -0.297539, -0.792412,
		0.327861, -0.790591, 0.517177,
		-0.780354, -0.535197, -0.323437,
		40.333359, 35.385944, 40.479214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184380, 35.066185, 40.597145>,  <40.879608, 35.760582, 40.705620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184380, 35.066185, 40.597145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859009, 35.129112, 40.373146>,  <40.663788, 35.166870, 40.238747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859009, 35.129112, 40.373146>,  <41.184380, 35.066185, 40.597145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859009, 35.129112, 40.373146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481920, -0.356833, -0.800264,
		-0.325721, -0.920826, 0.214442,
		-0.813424, 0.157319, -0.559992,
		40.614983, 35.176308, 40.205147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075523, 34.495625, 40.194454>,  <41.184380, 35.066185, 40.597145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075523, 34.495625, 40.194454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859890, 34.764706, 39.991730>,  <40.730511, 34.926155, 39.870094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859890, 34.764706, 39.991730>,  <41.075523, 34.495625, 40.194454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859890, 34.764706, 39.991730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575631, -0.144998, -0.804751,
		-0.614848, -0.725562, -0.309065,
		-0.539083, 0.672707, -0.506808,
		40.698166, 34.966518, 39.839687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888676, 34.207432, 39.547386>,  <41.075523, 34.495625, 40.194454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888676, 34.207432, 39.547386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888680, 34.602291, 39.483471>,  <40.888683, 34.839207, 39.445122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888680, 34.602291, 39.483471>,  <40.888676, 34.207432, 39.547386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888680, 34.602291, 39.483471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613959, -0.126135, -0.779194,
		-0.789338, -0.098094, -0.606072,
		0.000013, 0.987151, -0.159789,
		40.888683, 34.898438, 39.435535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279026, 34.111217, 38.872677>,  <40.888676, 34.207432, 39.547386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279026, 34.111217, 38.872677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265495, 33.875130, 38.550064>,  <41.257378, 33.733479, 38.356495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265495, 33.875130, 38.550064>,  <41.279026, 34.111217, 38.872677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265495, 33.875130, 38.550064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743389, -0.554245, 0.374415,
		-0.668004, -0.586902, 0.457511,
		-0.033828, -0.590219, -0.806534,
		41.255348, 33.698063, 38.308105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173649, 33.399635, 39.020439>,  <41.279026, 34.111217, 38.872677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173649, 33.399635, 39.020439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406723, 33.413265, 38.695644>,  <41.546566, 33.421444, 38.500767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.406723, 33.413265, 38.695644>,  <41.173649, 33.399635, 39.020439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406723, 33.413265, 38.695644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710620, -0.506146, 0.488708,
		-0.394331, -0.861774, -0.319136,
		0.582685, 0.034072, -0.811983,
		41.581528, 33.423485, 38.452049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346954, 32.703770, 38.598392>,  <41.173649, 33.399635, 39.020439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346954, 32.703770, 38.598392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658997, 32.946190, 38.536251>,  <41.846222, 33.091640, 38.498966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.658997, 32.946190, 38.536251>,  <41.346954, 32.703770, 38.598392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.658997, 32.946190, 38.536251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606008, -0.670224, 0.428434,
		0.155529, -0.428371, -0.890117,
		0.780106, 0.606051, -0.155357,
		41.893028, 33.128006, 38.489643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880898, 32.239574, 38.560886>,  <41.346954, 32.703770, 38.598392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880898, 32.239574, 38.560886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070980, 32.585602, 38.625179>,  <42.185028, 32.793221, 38.663754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070980, 32.585602, 38.625179>,  <41.880898, 32.239574, 38.560886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070980, 32.585602, 38.625179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801788, -0.500978, 0.325816,
		0.362377, -0.025957, -0.931670,
		0.475204, 0.865071, 0.160731,
		42.213543, 32.845123, 38.673397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364140, 32.323502, 38.030376>,  <41.880898, 32.239574, 38.560886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.364140, 32.323502, 38.030376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.444923, 32.443810, 38.403202>,  <42.493393, 32.515995, 38.626900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.444923, 32.443810, 38.403202>,  <42.364140, 32.323502, 38.030376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.444923, 32.443810, 38.403202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670343, -0.736284, 0.092341,
		0.714040, 0.606156, -0.350318,
		0.201960, 0.300768, 0.932068,
		42.505512, 32.534039, 38.682823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047409, 32.371002, 38.070564>,  <42.364140, 32.323502, 38.030376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047409, 32.371002, 38.070564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.927055, 32.312305, 38.447487>,  <42.854843, 32.277088, 38.673641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.927055, 32.312305, 38.447487>,  <43.047409, 32.371002, 38.070564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.927055, 32.312305, 38.447487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682755, -0.723003, 0.105415,
		0.665820, 0.675080, 0.317727,
		-0.300881, -0.146742, 0.942304,
		42.836792, 32.268284, 38.730179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.639351, 32.332436, 38.504791>,  <43.047409, 32.371002, 38.070564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.639351, 32.332436, 38.504791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.330078, 32.113731, 38.633320>,  <43.144516, 31.982508, 38.710438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.330078, 32.113731, 38.633320>,  <43.639351, 32.332436, 38.504791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.330078, 32.113731, 38.633320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568266, -0.822232, -0.031735,
		0.281549, 0.158057, 0.946440,
		-0.773178, -0.546765, 0.321317,
		43.098125, 31.949701, 38.729713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.072117, 32.917355, 38.167709>,  <43.639351, 32.332436, 38.504791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.072117, 32.917355, 38.167709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.316704, 33.233700, 38.177834>,  <44.463455, 33.423508, 38.183907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.316704, 33.233700, 38.177834>,  <44.072117, 32.917355, 38.167709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.316704, 33.233700, 38.177834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761358, 0.579338, 0.291034,
		0.215506, -0.197227, 0.956378,
		0.611466, 0.790866, 0.025310,
		44.500145, 33.470959, 38.185425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.963154, 33.234444, 38.794090>,  <44.072117, 32.917355, 38.167709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.963154, 33.234444, 38.794090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.122536, 33.521740, 38.565926>,  <44.218166, 33.694118, 38.429028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.122536, 33.521740, 38.565926>,  <43.963154, 33.234444, 38.794090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.122536, 33.521740, 38.565926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613205, 0.671095, 0.416666,
		0.682061, 0.183748, 0.707834,
		0.398462, 0.718239, -0.570403,
		44.242073, 33.737209, 38.394802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.168686, 33.905884, 39.229469>,  <43.963154, 33.234444, 38.794090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.168686, 33.905884, 39.229469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.106220, 33.994106, 38.844353>,  <44.068741, 34.047039, 38.613281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.106220, 33.994106, 38.844353>,  <44.168686, 33.905884, 39.229469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.106220, 33.994106, 38.844353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469750, 0.840875, 0.268821,
		0.868878, 0.494251, -0.027703,
		-0.156160, 0.220559, -0.962792,
		44.059372, 34.060272, 38.555515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.527771, 34.555378, 39.061592>,  <44.168686, 33.905884, 39.229469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.527771, 34.555378, 39.061592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.213516, 34.512768, 38.817814>,  <44.024963, 34.487202, 38.671547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.213516, 34.512768, 38.817814>,  <44.527771, 34.555378, 39.061592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.213516, 34.512768, 38.817814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326226, 0.908321, 0.261781,
		0.525686, 0.404483, -0.748363,
		-0.785640, -0.106521, -0.609445,
		43.977825, 34.480812, 38.634979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.545029, 35.226307, 38.781761>,  <44.527771, 34.555378, 39.061592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.545029, 35.226307, 38.781761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.186691, 35.086296, 38.672260>,  <43.971687, 35.002289, 38.606560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.186691, 35.086296, 38.672260>,  <44.545029, 35.226307, 38.781761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.186691, 35.086296, 38.672260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367765, 0.929804, 0.014627,
		0.249412, 0.113778, -0.961690,
		-0.895847, -0.350028, -0.273747,
		43.917938, 34.981289, 38.590137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.325645, 35.604340, 38.235516>,  <44.545029, 35.226307, 38.781761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.325645, 35.604340, 38.235516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.987106, 35.446743, 38.378887>,  <43.783981, 35.352184, 38.464909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.987106, 35.446743, 38.378887>,  <44.325645, 35.604340, 38.235516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.987106, 35.446743, 38.378887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431807, 0.901510, -0.028671,
		-0.311827, -0.179036, -0.933118,
		-0.846349, -0.393987, 0.358425,
		43.733200, 35.328548, 38.486416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.846756, 35.978737, 37.873692>,  <44.325645, 35.604340, 38.235516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.846756, 35.978737, 37.873692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.677166, 35.826588, 38.202461>,  <43.575413, 35.735298, 38.399723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.677166, 35.826588, 38.202461>,  <43.846756, 35.978737, 37.873692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.677166, 35.826588, 38.202461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464813, 0.870280, 0.162980,
		-0.777298, -0.312942, -0.545779,
		-0.423978, -0.380369, 0.821926,
		43.549973, 35.712479, 38.449039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.093376, 36.194679, 37.839520>,  <43.846756, 35.978737, 37.873692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.093376, 36.194679, 37.839520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.154282, 36.103767, 38.224258>,  <43.190826, 36.049221, 38.455101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.154282, 36.103767, 38.224258>,  <43.093376, 36.194679, 37.839520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.154282, 36.103767, 38.224258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507965, 0.816829, 0.273427,
		-0.847813, -0.530220, 0.008920,
		0.152262, -0.227284, 0.961851,
		43.199959, 36.035583, 38.512814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410969, 36.314079, 38.074699>,  <43.093376, 36.194679, 37.839520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.410969, 36.314079, 38.074699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.656578, 36.309441, 38.390381>,  <42.803944, 36.306660, 38.579788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.656578, 36.309441, 38.390381>,  <42.410969, 36.314079, 38.074699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.656578, 36.309441, 38.390381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430689, 0.832990, 0.347326,
		-0.661425, -0.553167, 0.506482,
		0.614023, -0.011594, 0.789202,
		42.840786, 36.305962, 38.627140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.017479, 36.456989, 38.693188>,  <42.410969, 36.314079, 38.074699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.017479, 36.456989, 38.693188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.392452, 36.549332, 38.797436>,  <42.617435, 36.604736, 38.859985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.392452, 36.549332, 38.797436>,  <42.017479, 36.456989, 38.693188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.392452, 36.549332, 38.797436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342880, 0.742005, 0.576074,
		-0.060390, -0.629393, 0.774737,
		0.937436, 0.230853, 0.260616,
		42.673683, 36.618587, 38.875622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815987, 36.798428, 39.260059>,  <42.017479, 36.456989, 38.693188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.815987, 36.798428, 39.260059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197399, 36.902359, 39.199039>,  <42.426247, 36.964718, 39.162426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.197399, 36.902359, 39.199039>,  <41.815987, 36.798428, 39.260059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197399, 36.902359, 39.199039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170860, 0.883327, 0.436509,
		0.248168, -0.390160, 0.886672,
		0.953530, 0.259825, -0.152551,
		42.483459, 36.980305, 39.153275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023479, 36.957584, 39.923969>,  <41.815987, 36.798428, 39.260059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.023479, 36.957584, 39.923969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238903, 37.139847, 39.640469>,  <42.368156, 37.249203, 39.470367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.238903, 37.139847, 39.640469>,  <42.023479, 36.957584, 39.923969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.238903, 37.139847, 39.640469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160678, 0.881265, 0.444472,
		0.827123, -0.125496, 0.547831,
		0.538563, 0.455657, -0.708750,
		42.400471, 37.276543, 39.427845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375355, 37.466995, 40.330856>,  <42.023479, 36.957584, 39.923969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375355, 37.466995, 40.330856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.391029, 37.602009, 39.954659>,  <42.400433, 37.683018, 39.728939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.391029, 37.602009, 39.954659>,  <42.375355, 37.466995, 40.330856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.391029, 37.602009, 39.954659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065541, 0.938327, 0.339481,
		0.997080, -0.074944, 0.014647,
		0.039186, 0.337530, -0.940499,
		42.402786, 37.703266, 39.672508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.010704, 37.891098, 40.345917>,  <42.375355, 37.466995, 40.330856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.010704, 37.891098, 40.345917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796322, 37.995922, 40.024899>,  <42.667694, 38.058819, 39.832287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796322, 37.995922, 40.024899>,  <43.010704, 37.891098, 40.345917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796322, 37.995922, 40.024899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081735, 0.962243, 0.259629,
		0.840281, 0.073553, -0.537138,
		-0.535954, 0.262065, -0.802543,
		42.635536, 38.074543, 39.784134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264889, 38.492409, 40.173309>,  <43.010704, 37.891098, 40.345917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.264889, 38.492409, 40.173309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944008, 38.505970, 39.934872>,  <42.751480, 38.514107, 39.791809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944008, 38.505970, 39.934872>,  <43.264889, 38.492409, 40.173309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.944008, 38.505970, 39.934872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007899, 0.998902, 0.046179,
		0.597003, 0.032337, -0.801587,
		-0.802200, 0.033901, -0.596092,
		42.703346, 38.516140, 39.756042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.375931, 39.044941, 39.674183>,  <43.264889, 38.492409, 40.173309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.375931, 39.044941, 39.674183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.979511, 38.992241, 39.682716>,  <42.741657, 38.960621, 39.687836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.979511, 38.992241, 39.682716>,  <43.375931, 39.044941, 39.674183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.979511, 38.992241, 39.682716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129753, 0.988536, 0.077211,
		-0.031266, 0.073752, -0.996786,
		-0.991053, -0.131750, 0.021338,
		42.682194, 38.952717, 39.689117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.096340, 39.591290, 39.299530>,  <43.375931, 39.044941, 39.674183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.096340, 39.591290, 39.299530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.781120, 39.462337, 39.509312>,  <42.591988, 39.384968, 39.635181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.781120, 39.462337, 39.509312>,  <43.096340, 39.591290, 39.299530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.781120, 39.462337, 39.509312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348076, 0.936004, 0.052335,
		-0.507759, -0.141305, -0.849832,
		-0.788051, -0.322380, 0.524449,
		42.544704, 39.365623, 39.666645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.506443, 39.994526, 38.991535>,  <43.096340, 39.591290, 39.299530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.506443, 39.994526, 38.991535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406609, 39.882603, 39.362354>,  <42.346710, 39.815449, 39.584846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.406609, 39.882603, 39.362354>,  <42.506443, 39.994526, 38.991535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.406609, 39.882603, 39.362354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485701, 0.864384, 0.130130,
		-0.837737, -0.417790, -0.351638,
		-0.249583, -0.279806, 0.927047,
		42.331734, 39.798660, 39.640469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.777431, 40.232761, 39.147247>,  <42.506443, 39.994526, 38.991535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.777431, 40.232761, 39.147247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941425, 40.175797, 39.507610>,  <42.039822, 40.141617, 39.723827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941425, 40.175797, 39.507610>,  <41.777431, 40.232761, 39.147247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941425, 40.175797, 39.507610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323174, 0.900975, 0.289488,
		-0.852920, -0.409835, 0.323362,
		0.409983, -0.142408, 0.900907,
		42.064419, 40.133076, 39.777882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362492, 40.554466, 39.662712>,  <41.777431, 40.232761, 39.147247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362492, 40.554466, 39.662712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.688229, 40.503395, 39.889175>,  <41.883671, 40.472752, 40.025055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.688229, 40.503395, 39.889175>,  <41.362492, 40.554466, 39.662712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.688229, 40.503395, 39.889175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069429, 0.947067, 0.313438,
		-0.576211, -0.294555, 0.762377,
		0.814346, -0.127675, 0.566161,
		41.932533, 40.465092, 40.059025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162018, 40.769882, 40.212261>,  <41.362492, 40.554466, 39.662712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162018, 40.769882, 40.212261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560795, 40.801117, 40.213146>,  <41.800060, 40.819859, 40.213676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.560795, 40.801117, 40.213146>,  <41.162018, 40.769882, 40.212261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560795, 40.801117, 40.213146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078034, 0.994174, 0.074360,
		0.003604, -0.074305, 0.997229,
		0.996944, 0.078086, 0.002216,
		41.859879, 40.824543, 40.213810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.305763, 41.316193, 40.661987>,  <41.162018, 40.769882, 40.212261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.305763, 41.316193, 40.661987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637047, 41.265308, 40.443668>,  <41.835815, 41.234779, 40.312679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.637047, 41.265308, 40.443668>,  <41.305763, 41.316193, 40.661987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637047, 41.265308, 40.443668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055226, 0.987683, -0.146401,
		0.557694, 0.091108, 0.825031,
		0.828207, -0.127210, -0.545793,
		41.885509, 41.227146, 40.279930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863113, 41.856781, 40.748371>,  <41.305763, 41.316193, 40.661987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863113, 41.856781, 40.748371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763947, 42.203487, 40.921463>,  <40.704445, 42.411510, 41.025318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763947, 42.203487, 40.921463>,  <40.863113, 41.856781, 40.748371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763947, 42.203487, 40.921463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903414, 0.045555, 0.426342,
		0.349825, 0.496631, -0.794342,
		-0.247921, 0.866765, 0.432727,
		40.689571, 42.463516, 41.051281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410229, 42.468575, 40.712143>,  <40.863113, 41.856781, 40.748371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410229, 42.468575, 40.712143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191185, 42.565903, 41.032372>,  <41.059757, 42.624298, 41.224510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191185, 42.565903, 41.032372>,  <41.410229, 42.468575, 40.712143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191185, 42.565903, 41.032372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805770, 0.411226, 0.426178,
		-0.225518, 0.878458, -0.421253,
		-0.547609, 0.243322, 0.800574,
		41.026901, 42.638901, 41.272545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390659, 43.195667, 40.436615>,  <41.410229, 42.468575, 40.712143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390659, 43.195667, 40.436615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.576126, 43.348209, 40.756508>,  <41.687408, 43.439735, 40.948444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.576126, 43.348209, 40.756508>,  <41.390659, 43.195667, 40.436615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576126, 43.348209, 40.756508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165523, 0.849451, -0.501035,
		-0.870409, 0.364689, 0.330742,
		0.463671, 0.381360, 0.799734,
		41.715229, 43.462616, 40.996429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402439, 43.844723, 40.209461>,  <41.390659, 43.195667, 40.436615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402439, 43.844723, 40.209461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.646114, 43.841824, 40.526657>,  <41.792320, 43.840084, 40.716976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.646114, 43.841824, 40.526657>,  <41.402439, 43.844723, 40.209461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.646114, 43.841824, 40.526657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420034, 0.851124, -0.314895,
		-0.672651, 0.524914, 0.521541,
		0.609189, -0.007250, 0.792992,
		41.828873, 43.839649, 40.764553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138142, 43.615265, 40.278614>,  <41.402439, 43.844723, 40.209461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138142, 43.615265, 40.278614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527634, 43.629238, 40.188618>,  <42.761330, 43.637623, 40.134621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527634, 43.629238, 40.188618>,  <42.138142, 43.615265, 40.278614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527634, 43.629238, 40.188618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142635, -0.676651, -0.722357,
		-0.177474, 0.735475, -0.653895,
		0.973734, 0.034931, -0.224992,
		42.819756, 43.639717, 40.121120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224804, 43.841766, 39.542309>,  <42.138142, 43.615265, 40.278614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.224804, 43.841766, 39.542309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527161, 43.622013, 39.684750>,  <42.708576, 43.490162, 39.770214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.527161, 43.622013, 39.684750>,  <42.224804, 43.841766, 39.542309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.527161, 43.622013, 39.684750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019171, -0.562262, -0.826737,
		0.654416, 0.618097, -0.435541,
		0.755892, -0.549380, 0.356103,
		42.753929, 43.457199, 39.791580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.812496, 43.817860, 39.076805>,  <42.224804, 43.841766, 39.542309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.812496, 43.817860, 39.076805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.787891, 43.488701, 39.302746>,  <42.773129, 43.291206, 39.438313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.787891, 43.488701, 39.302746>,  <42.812496, 43.817860, 39.076805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.787891, 43.488701, 39.302746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306055, -0.523111, -0.795415,
		0.950024, -0.221806, -0.219672,
		-0.061515, -0.822895, 0.564853,
		42.769436, 43.241833, 39.472202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.291962, 43.476078, 39.540997>,  <42.812496, 43.817860, 39.076805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.291962, 43.476078, 39.540997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461708, 43.489162, 39.902954>,  <43.563557, 43.497013, 40.120129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461708, 43.489162, 39.902954>,  <43.291962, 43.476078, 39.540997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.461708, 43.489162, 39.902954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359175, -0.923445, -0.135063,
		0.831206, 0.382334, -0.403631,
		0.424370, 0.032709, 0.904898,
		43.589020, 43.498974, 40.174423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.064491, 43.507915, 39.537376>,  <43.291962, 43.476078, 39.540997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.064491, 43.507915, 39.537376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.908432, 43.314850, 39.851021>,  <43.814796, 43.199013, 40.039207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.908432, 43.314850, 39.851021>,  <44.064491, 43.507915, 39.537376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.908432, 43.314850, 39.851021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536656, -0.811192, -0.232309,
		0.748188, 0.330161, 0.575507,
		-0.390148, -0.482660, 0.784107,
		43.791389, 43.170052, 40.086254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685253, 43.197037, 39.981388>,  <44.064491, 43.507915, 39.537376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.685253, 43.197037, 39.981388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.338985, 42.998005, 40.003403>,  <44.131226, 42.878586, 40.016613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.338985, 42.998005, 40.003403>,  <44.685253, 43.197037, 39.981388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.338985, 42.998005, 40.003403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482846, -0.858919, -0.170640,
		0.132182, -0.121142, 0.983795,
		-0.865672, -0.497577, 0.055041,
		44.079285, 42.848732, 40.019917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.868050, 42.590157, 40.461357>,  <44.685253, 43.197037, 39.981388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.868050, 42.590157, 40.461357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.538296, 42.471260, 40.268677>,  <44.340443, 42.399925, 40.153069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.538296, 42.471260, 40.268677>,  <44.868050, 42.590157, 40.461357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.538296, 42.471260, 40.268677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351901, -0.935707, -0.024864,
		-0.443340, -0.190008, 0.875984,
		-0.824388, -0.297237, -0.481700,
		44.290977, 42.382088, 40.124168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.655918, 41.804226, 40.713264>,  <44.868050, 42.590157, 40.461357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.655918, 41.804226, 40.713264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.486492, 41.872013, 40.357315>,  <44.384838, 41.912685, 40.143745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.486492, 41.872013, 40.357315>,  <44.655918, 41.804226, 40.713264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.486492, 41.872013, 40.357315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183033, -0.946072, -0.267294,
		-0.887184, -0.276092, 0.369701,
		-0.423561, 0.169471, -0.889874,
		44.359425, 41.922855, 40.090351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.199539, 41.265263, 40.647877>,  <44.655918, 41.804226, 40.713264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.199539, 41.265263, 40.647877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.287571, 41.405056, 40.283585>,  <44.340389, 41.488934, 40.065010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.287571, 41.405056, 40.283585>,  <44.199539, 41.265263, 40.647877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.287571, 41.405056, 40.283585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096496, -0.936838, -0.336189,
		-0.970697, -0.013892, -0.239905,
		0.220082, 0.349487, -0.910727,
		44.353596, 41.509903, 40.010368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.861298, 40.810310, 40.151264>,  <44.199539, 41.265263, 40.647877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.861298, 40.810310, 40.151264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.115189, 40.997971, 39.905655>,  <44.267525, 41.110565, 39.758289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.115189, 40.997971, 39.905655>,  <43.861298, 40.810310, 40.151264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.115189, 40.997971, 39.905655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197837, -0.866784, -0.457762,
		-0.746981, 0.169079, -0.642986,
		0.634728, 0.469146, -0.614021,
		44.305607, 41.138714, 39.721447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.759159, 40.617004, 39.413944>,  <43.861298, 40.810310, 40.151264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.759159, 40.617004, 39.413944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.142696, 40.729771, 39.427483>,  <44.372818, 40.797432, 39.435604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.142696, 40.729771, 39.427483>,  <43.759159, 40.617004, 39.413944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.142696, 40.729771, 39.427483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256065, -0.807041, -0.532086,
		-0.122691, 0.518852, -0.846014,
		0.958842, 0.281917, 0.033843,
		44.430347, 40.814346, 39.437634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.011875, 40.326771, 38.790237>,  <43.759159, 40.617004, 39.413944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.011875, 40.326771, 38.790237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.334377, 40.406635, 39.012978>,  <44.527878, 40.454552, 39.146622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.334377, 40.406635, 39.012978>,  <44.011875, 40.326771, 38.790237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.334377, 40.406635, 39.012978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427898, -0.846814, -0.315925,
		0.408472, 0.492993, -0.768185,
		0.806259, 0.199658, 0.556850,
		44.576256, 40.466534, 39.180031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.476177, 40.022717, 38.429565>,  <44.011875, 40.326771, 38.790237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.476177, 40.022717, 38.429565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.670818, 40.070412, 38.775745>,  <44.787601, 40.099030, 38.983452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.670818, 40.070412, 38.775745>,  <44.476177, 40.022717, 38.429565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.670818, 40.070412, 38.775745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562654, -0.800602, -0.206048,
		0.668309, 0.587211, -0.456668,
		0.486604, 0.119242, 0.865447,
		44.816799, 40.106186, 39.035381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.100681, 40.016163, 38.253983>,  <44.476177, 40.022717, 38.429565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.100681, 40.016163, 38.253983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.079620, 39.909241, 38.638851>,  <45.066986, 39.845089, 38.869774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.079620, 39.909241, 38.638851>,  <45.100681, 40.016163, 38.253983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.079620, 39.909241, 38.638851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580679, -0.792064, -0.188274,
		0.812429, 0.548801, 0.196920,
		-0.052648, -0.267307, 0.962172,
		45.063828, 39.829048, 38.927502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.687149, 39.708736, 38.360966>,  <45.100681, 40.016163, 38.253983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.687149, 39.708736, 38.360966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.481289, 39.576191, 38.677277>,  <45.357773, 39.496662, 38.867062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.481289, 39.576191, 38.677277>,  <45.687149, 39.708736, 38.360966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.481289, 39.576191, 38.677277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405076, -0.906846, -0.116375,
		0.755676, 0.260432, 0.600940,
		-0.514652, -0.331368, 0.790777,
		45.326893, 39.476780, 38.914509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.116863, 39.224922, 38.728844>,  <45.687149, 39.708736, 38.360966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.116863, 39.224922, 38.728844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.746677, 39.108612, 38.825974>,  <45.524567, 39.038826, 38.884251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.746677, 39.108612, 38.825974>,  <46.116863, 39.224922, 38.728844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.746677, 39.108612, 38.825974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280166, -0.956781, -0.077955,
		0.254999, -0.004113, 0.966933,
		-0.925464, -0.290780, 0.242826,
		45.469040, 39.021378, 38.898823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.261578, 38.730583, 39.154976>,  <46.116863, 39.224922, 38.728844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.261578, 38.730583, 39.154976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.880268, 38.670559, 39.050098>,  <45.651482, 38.634544, 38.987171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.880268, 38.670559, 39.050098>,  <46.261578, 38.730583, 39.154976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.880268, 38.670559, 39.050098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139543, -0.988492, 0.058409,
		-0.267944, 0.019092, 0.963245,
		-0.953275, -0.150065, -0.262196,
		45.594284, 38.625538, 38.971439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.144794, 38.215763, 39.580082>,  <46.261578, 38.730583, 39.154976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.144794, 38.215763, 39.580082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.867817, 38.178070, 39.293964>,  <45.701630, 38.155453, 39.122295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.867817, 38.178070, 39.293964>,  <46.144794, 38.215763, 39.580082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.867817, 38.178070, 39.293964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252871, -0.960241, -0.118294,
		-0.675705, -0.262788, 0.688742,
		-0.692444, -0.094231, -0.715291,
		45.660084, 38.149799, 39.079376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.797470, 37.592537, 39.684566>,  <46.144794, 38.215763, 39.580082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.797470, 37.592537, 39.684566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.717361, 37.673237, 39.301067>,  <45.669296, 37.721657, 39.070969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.717361, 37.673237, 39.301067>,  <45.797470, 37.592537, 39.684566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.717361, 37.673237, 39.301067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164616, -0.957728, -0.235922,
		-0.965813, -0.205072, 0.158591,
		-0.200268, 0.201750, -0.958744,
		45.657280, 37.733761, 39.013443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.478611, 36.975147, 39.513824>,  <45.797470, 37.592537, 39.684566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.478611, 36.975147, 39.513824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.575481, 37.146999, 39.165855>,  <45.633606, 37.250111, 38.957073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.575481, 37.146999, 39.165855>,  <45.478611, 36.975147, 39.513824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.575481, 37.146999, 39.165855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086741, -0.902611, -0.421628,
		-0.966346, 0.026652, -0.255862,
		0.242180, 0.429632, -0.869922,
		45.648136, 37.275890, 38.904881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.171684, 36.582767, 39.036716>,  <45.478611, 36.975147, 39.513824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.171684, 36.582767, 39.036716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.454475, 36.759148, 38.815540>,  <45.624149, 36.864975, 38.682835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.454475, 36.759148, 38.815540>,  <45.171684, 36.582767, 39.036716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.454475, 36.759148, 38.815540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117482, -0.844193, -0.523007,
		-0.697412, 0.304792, -0.648628,
		0.706975, 0.440953, -0.552943,
		45.666569, 36.891434, 38.649658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.000282, 36.453407, 38.413036>,  <45.171684, 36.582767, 39.036716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.000282, 36.453407, 38.413036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392376, 36.532246, 38.406124>,  <45.627632, 36.579548, 38.401978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392376, 36.532246, 38.406124>,  <45.000282, 36.453407, 38.413036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.392376, 36.532246, 38.406124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146488, -0.781665, -0.606252,
		-0.132997, 0.591736, -0.795085,
		0.980231, 0.197100, -0.017277,
		45.686447, 36.591377, 38.400940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.117050, 36.278019, 37.750496>,  <45.000282, 36.453407, 38.413036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.117050, 36.278019, 37.750496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.484425, 36.302311, 37.906845>,  <45.704849, 36.316887, 38.000652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.484425, 36.302311, 37.906845>,  <45.117050, 36.278019, 37.750496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.484425, 36.302311, 37.906845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272739, -0.812927, -0.514550,
		0.286497, 0.579189, -0.763190,
		0.918440, 0.060734, 0.390869,
		45.759956, 36.320530, 38.024105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.615864, 36.250305, 37.258427>,  <45.117050, 36.278019, 37.750496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.615864, 36.250305, 37.258427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.819500, 36.129818, 37.580940>,  <45.941681, 36.057526, 37.774448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.819500, 36.129818, 37.580940>,  <45.615864, 36.250305, 37.258427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.819500, 36.129818, 37.580940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315926, -0.805980, -0.500586,
		0.800636, 0.509569, -0.315153,
		0.509090, -0.301222, 0.806283,
		45.972225, 36.039452, 37.822826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.211655, 36.000191, 36.951649>,  <45.615864, 36.250305, 37.258427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.211655, 36.000191, 36.951649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.202770, 35.848858, 37.321812>,  <46.197437, 35.758060, 37.543907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.202770, 35.848858, 37.321812>,  <46.211655, 36.000191, 36.951649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.202770, 35.848858, 37.321812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256253, -0.896865, -0.360509,
		0.966354, 0.229129, 0.116871,
		-0.022214, -0.378328, 0.925405,
		46.196106, 35.735359, 37.599434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.814602, 35.586384, 37.022823>,  <46.211655, 36.000191, 36.951649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.814602, 35.586384, 37.022823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.544956, 35.468765, 37.293854>,  <46.383171, 35.398193, 37.456474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.544956, 35.468765, 37.293854>,  <46.814602, 35.586384, 37.022823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.544956, 35.468765, 37.293854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263634, -0.952706, -0.151155,
		0.689981, 0.076738, 0.719749,
		-0.674110, -0.294044, 0.677580,
		46.342724, 35.380550, 37.497128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.730217, 35.797901, 36.239746>,  <46.814602, 35.586384, 37.022823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.730217, 35.797901, 36.239746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.709621, 35.431244, 36.081192>,  <46.697266, 35.211250, 35.986061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.709621, 35.431244, 36.081192>,  <46.730217, 35.797901, 36.239746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.709621, 35.431244, 36.081192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595961, 0.290289, -0.748707,
		0.801361, -0.274776, 0.531336,
		-0.051486, -0.916641, -0.396382,
		46.694176, 35.156250, 35.962276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.491642, 35.574173, 36.037415>,  <46.730217, 35.797901, 36.239746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.491642, 35.574173, 36.037415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.205967, 35.402737, 35.816055>,  <47.034561, 35.299877, 35.683239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.205967, 35.402737, 35.816055>,  <47.491642, 35.574173, 36.037415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.205967, 35.402737, 35.816055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611904, 0.001599, -0.790930,
		0.339869, -0.903498, 0.261113,
		-0.714186, -0.428588, -0.553398,
		46.991711, 35.274158, 35.650036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.871475, 35.171562, 35.583687>,  <47.491642, 35.574173, 36.037415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.871475, 35.171562, 35.583687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.521465, 35.238976, 35.402172>,  <47.311459, 35.279423, 35.293262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.521465, 35.238976, 35.402172>,  <47.871475, 35.171562, 35.583687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.521465, 35.238976, 35.402172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459970, -0.002656, -0.887931,
		-0.150854, -0.985692, -0.075197,
		-0.875026, 0.168536, -0.453789,
		47.258957, 35.289536, 35.266037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.830578, 34.617580, 35.090904>,  <47.871475, 35.171562, 35.583687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.830578, 34.617580, 35.090904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.631699, 34.955692, 35.012623>,  <47.512371, 35.158558, 34.965656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.631699, 34.955692, 35.012623>,  <47.830578, 34.617580, 35.090904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.631699, 34.955692, 35.012623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534913, 0.121041, -0.836192,
		-0.683129, -0.520433, -0.512332,
		-0.497195, 0.845280, -0.195699,
		47.482540, 35.209278, 34.953915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.699661, 41.404121, 44.571342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.355984, 41.200928, 44.546886>,  <33.149776, 41.079010, 44.532211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.355984, 41.200928, 44.546886>,  <33.699661, 41.404121, 44.571342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355984, 41.200928, 44.546886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314828, -0.430691, -0.845806,
		0.403322, -0.745961, 0.529975,
		-0.859194, -0.507983, -0.061142,
		33.098225, 41.048534, 44.528545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952118, 40.814579, 44.354023>,  <33.699661, 41.404121, 44.571342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952118, 40.814579, 44.354023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.565998, 40.760471, 44.264671>,  <33.334328, 40.728008, 44.211060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.565998, 40.760471, 44.264671>,  <33.952118, 40.814579, 44.354023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565998, 40.760471, 44.264671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260966, -0.531369, -0.805942,
		-0.009680, -0.836271, 0.548231,
		-0.965299, -0.135268, -0.223383,
		33.276409, 40.719891, 44.197655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835163, 40.122768, 44.217495>,  <33.952118, 40.814579, 44.354023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835163, 40.122768, 44.217495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.535339, 40.300793, 44.021503>,  <33.355446, 40.407608, 43.903908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.535339, 40.300793, 44.021503>,  <33.835163, 40.122768, 44.217495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535339, 40.300793, 44.021503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226326, -0.523293, -0.821548,
		-0.622048, -0.726691, 0.291507,
		-0.749555, 0.445067, -0.489983,
		33.310471, 40.434311, 43.874508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401596, 39.616661, 43.984440>,  <33.835163, 40.122768, 44.217495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401596, 39.616661, 43.984440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.339577, 39.921864, 43.733433>,  <33.302364, 40.104984, 43.582829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.339577, 39.921864, 43.733433>,  <33.401596, 39.616661, 43.984440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339577, 39.921864, 43.733433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276936, -0.576163, -0.768988,
		-0.948297, -0.293012, -0.121971,
		-0.155048, 0.763007, -0.627519,
		33.293064, 40.150764, 43.545177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038399, 39.359596, 43.466133>,  <33.401596, 39.616661, 43.984440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038399, 39.359596, 43.466133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.205387, 39.693111, 43.321629>,  <33.305580, 39.893223, 43.234924>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.205387, 39.693111, 43.321629>,  <33.038399, 39.359596, 43.466133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205387, 39.693111, 43.321629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370144, -0.519121, -0.770394,
		-0.829888, 0.187894, -0.525339,
		0.417467, 0.833792, -0.361265,
		33.330627, 39.943249, 43.213249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824955, 39.472031, 42.836899>,  <33.038399, 39.359596, 43.466133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824955, 39.472031, 42.836899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.169289, 39.675354, 42.827244>,  <33.375889, 39.797348, 42.821453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.169289, 39.675354, 42.827244>,  <32.824955, 39.472031, 42.836899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169289, 39.675354, 42.827244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315171, -0.569782, -0.758957,
		-0.399538, 0.645730, -0.650693,
		0.860835, 0.508312, -0.024135,
		33.427540, 39.827847, 42.820004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939304, 39.563599, 42.092289>,  <32.824955, 39.472031, 42.836899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939304, 39.563599, 42.092289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.280251, 39.633118, 42.289577>,  <33.484818, 39.674828, 42.407951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.280251, 39.633118, 42.289577>,  <32.939304, 39.563599, 42.092289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280251, 39.633118, 42.289577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514325, -0.449136, -0.730579,
		0.094552, 0.876397, -0.472216,
		0.852367, 0.173795, 0.493220,
		33.535961, 39.685257, 42.437542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279655, 39.953598, 41.607491>,  <32.939304, 39.563599, 42.092289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279655, 39.953598, 41.607491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.548279, 39.812119, 41.867924>,  <33.709454, 39.727230, 42.024185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.548279, 39.812119, 41.867924>,  <33.279655, 39.953598, 41.607491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548279, 39.812119, 41.867924> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542482, -0.363830, -0.757193,
		0.504703, 0.861698, -0.052455,
		0.671556, -0.353701, 0.651082,
		33.749744, 39.706009, 42.063248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915283, 40.233013, 41.316002>,  <33.279655, 39.953598, 41.607491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915283, 40.233013, 41.316002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.989075, 39.909615, 41.539536>,  <34.033348, 39.715576, 41.673656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.989075, 39.909615, 41.539536>,  <33.915283, 40.233013, 41.316002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989075, 39.909615, 41.539536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422608, -0.448093, -0.787791,
		0.887339, 0.381498, 0.259015,
		0.184478, -0.808500, 0.558834,
		34.044418, 39.667065, 41.707184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593357, 40.015163, 41.080315>,  <33.915283, 40.233013, 41.316002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593357, 40.015163, 41.080315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.473736, 39.692127, 41.283630>,  <34.401962, 39.498306, 41.405621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.473736, 39.692127, 41.283630>,  <34.593357, 40.015163, 41.080315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473736, 39.692127, 41.283630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436027, -0.589455, -0.680017,
		0.848792, 0.018268, 0.528411,
		-0.299052, -0.807594, 0.508291,
		34.384022, 39.449848, 41.436119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134850, 39.612659, 41.156181>,  <34.593357, 40.015163, 41.080315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134850, 39.612659, 41.156181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.841202, 39.345364, 41.204384>,  <34.665012, 39.184986, 41.233307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.841202, 39.345364, 41.204384>,  <35.134850, 39.612659, 41.156181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841202, 39.345364, 41.204384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515255, -0.663818, -0.542087,
		0.442240, -0.335864, 0.831636,
		-0.734123, -0.668237, 0.120511,
		34.620964, 39.144894, 41.240536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436718, 39.081287, 41.504593>,  <35.134850, 39.612659, 41.156181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436718, 39.081287, 41.504593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.115520, 38.956436, 41.301502>,  <34.922802, 38.881527, 41.179649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.115520, 38.956436, 41.301502>,  <35.436718, 39.081287, 41.504593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115520, 38.956436, 41.301502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583440, -0.585599, -0.562737,
		-0.121677, -0.748098, 0.652337,
		-0.802990, -0.312127, -0.507724,
		34.874622, 38.862797, 41.149185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508759, 38.323864, 41.360519>,  <35.436718, 39.081287, 41.504593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508759, 38.323864, 41.360519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.207890, 38.390808, 41.105576>,  <35.027367, 38.430973, 40.952610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.207890, 38.390808, 41.105576>,  <35.508759, 38.323864, 41.360519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207890, 38.390808, 41.105576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399128, -0.653907, -0.642731,
		-0.524338, -0.737834, 0.425055,
		-0.752175, 0.167356, -0.637358,
		34.982239, 38.441013, 40.914368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410404, 37.727100, 41.125721>,  <35.508759, 38.323864, 41.360519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410404, 37.727100, 41.125721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.201992, 37.924622, 40.847244>,  <35.076946, 38.043133, 40.680157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.201992, 37.924622, 40.847244>,  <35.410404, 37.727100, 41.125721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201992, 37.924622, 40.847244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391029, -0.586934, -0.708946,
		-0.758700, -0.641615, 0.112719,
		-0.521029, 0.493801, -0.696196,
		35.045685, 38.072762, 40.638386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369564, 37.172710, 40.754963>,  <35.410404, 37.727100, 41.125721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369564, 37.172710, 40.754963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.269855, 37.469723, 40.506279>,  <35.210030, 37.647930, 40.357071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.269855, 37.469723, 40.506279>,  <35.369564, 37.172710, 40.754963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269855, 37.469723, 40.506279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210688, -0.585014, -0.783179,
		-0.945239, -0.326208, -0.010617,
		-0.249268, 0.742527, -0.621706,
		35.195076, 37.692482, 40.319767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881493, 36.814949, 40.224781>,  <35.369564, 37.172710, 40.754963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881493, 36.814949, 40.224781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.062244, 37.158051, 40.126743>,  <35.170696, 37.363911, 40.067921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.062244, 37.158051, 40.126743>,  <34.881493, 36.814949, 40.224781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062244, 37.158051, 40.126743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583287, -0.491968, -0.646331,
		-0.674968, 0.149105, -0.722625,
		0.451879, 0.857750, -0.245091,
		35.197807, 37.415375, 40.053215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028675, 36.714050, 39.472313>,  <34.881493, 36.814949, 40.224781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028675, 36.714050, 39.472313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.275890, 37.000206, 39.602695>,  <35.424217, 37.171902, 39.680923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.275890, 37.000206, 39.602695>,  <35.028675, 36.714050, 39.472313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275890, 37.000206, 39.602695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663166, -0.251759, -0.704861,
		-0.422190, 0.651790, -0.630020,
		0.618035, 0.715393, 0.325955,
		35.461300, 37.214825, 39.700481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414505, 36.910370, 38.887039>,  <35.028675, 36.714050, 39.472313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414505, 36.910370, 38.887039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.635448, 37.053501, 39.188198>,  <35.768017, 37.139381, 39.368893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.635448, 37.053501, 39.188198>,  <35.414505, 36.910370, 38.887039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635448, 37.053501, 39.188198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831250, -0.304262, -0.465240,
		0.062600, 0.882826, -0.465511,
		0.552363, 0.357832, 0.752896,
		35.801159, 37.160851, 39.414066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858120, 37.286243, 38.529774>,  <35.414505, 36.910370, 38.887039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858120, 37.286243, 38.529774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.029911, 37.219692, 38.884823>,  <36.132984, 37.179760, 39.097851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.029911, 37.219692, 38.884823>,  <35.858120, 37.286243, 38.529774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029911, 37.219692, 38.884823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800780, -0.384224, -0.459481,
		0.417492, 0.908124, -0.031783,
		0.429478, -0.166378, 0.887619,
		36.158756, 37.169777, 39.151108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535355, 37.546879, 38.440811>,  <35.858120, 37.286243, 38.529774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535355, 37.546879, 38.440811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.565048, 37.311157, 38.762608>,  <36.582867, 37.169724, 38.955685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.565048, 37.311157, 38.762608>,  <36.535355, 37.546879, 38.440811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565048, 37.311157, 38.762608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852719, -0.380771, -0.357609,
		0.517069, 0.712555, 0.474243,
		0.074238, -0.589304, 0.804493,
		36.587318, 37.134365, 39.003956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239952, 37.502766, 38.552296>,  <36.535355, 37.546879, 38.440811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239952, 37.502766, 38.552296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.110950, 37.194439, 38.772053>,  <37.033550, 37.009441, 38.903908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.110950, 37.194439, 38.772053>,  <37.239952, 37.502766, 38.552296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110950, 37.194439, 38.772053> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866123, -0.474452, -0.157246,
		0.381868, 0.425129, 0.820635,
		-0.322502, -0.770818, 0.549392,
		37.014198, 36.963192, 38.936871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841766, 37.308270, 38.927490>,  <37.239952, 37.502766, 38.552296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841766, 37.308270, 38.927490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.599102, 36.990288, 38.928333>,  <37.453503, 36.799500, 38.928837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.599102, 36.990288, 38.928333>,  <37.841766, 37.308270, 38.927490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599102, 36.990288, 38.928333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788353, -0.601963, -0.127046,
		0.102263, -0.075416, 0.991895,
		-0.606665, -0.794955, 0.002104,
		37.417103, 36.751801, 38.928963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570621, 37.383278, 39.110752>,  <37.841766, 37.308270, 38.927490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570621, 37.383278, 39.110752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.960155, 37.459450, 39.160347>,  <39.193878, 37.505154, 39.190105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.960155, 37.459450, 39.160347>,  <38.570621, 37.383278, 39.110752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960155, 37.459450, 39.160347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217920, 0.627991, 0.747087,
		0.064407, -0.754561, 0.653061,
		0.973839, 0.190433, 0.123987,
		39.252308, 37.516579, 39.197544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711655, 37.207939, 39.771488>,  <38.570621, 37.383278, 39.110752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711655, 37.207939, 39.771488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.024986, 37.442863, 39.690033>,  <39.212986, 37.583817, 39.641159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.024986, 37.442863, 39.690033>,  <38.711655, 37.207939, 39.771488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024986, 37.442863, 39.690033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101549, 0.444099, 0.890204,
		0.613260, -0.676641, 0.407515,
		0.783326, 0.587309, -0.203636,
		39.259983, 37.619057, 39.628941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121483, 37.164326, 40.377541>,  <38.711655, 37.207939, 39.771488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121483, 37.164326, 40.377541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.216953, 37.502071, 40.185673>,  <39.274235, 37.704720, 40.070553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.216953, 37.502071, 40.185673>,  <39.121483, 37.164326, 40.377541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216953, 37.502071, 40.185673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005820, 0.495181, 0.868771,
		0.971081, -0.204566, 0.123103,
		0.238679, 0.844363, -0.479670,
		39.288555, 37.755379, 40.041771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563953, 37.461086, 40.790794>,  <39.121483, 37.164326, 40.377541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563953, 37.461086, 40.790794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.441387, 37.759937, 40.554855>,  <39.367847, 37.939247, 40.413292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.441387, 37.759937, 40.554855>,  <39.563953, 37.461086, 40.790794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441387, 37.759937, 40.554855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216876, 0.548562, 0.807493,
		0.926864, 0.375349, -0.006052,
		-0.306412, 0.747124, -0.589846,
		39.349464, 37.984074, 40.377903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899944, 38.031570, 41.033154>,  <39.563953, 37.461086, 40.790794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899944, 38.031570, 41.033154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.587933, 38.170139, 40.824715>,  <39.400726, 38.253281, 40.699650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.587933, 38.170139, 40.824715>,  <39.899944, 38.031570, 41.033154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587933, 38.170139, 40.824715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328196, 0.482535, 0.812063,
		0.532767, 0.804456, -0.262697,
		-0.780030, 0.346424, -0.521098,
		39.353924, 38.274067, 40.668385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855869, 38.704185, 41.266827>,  <39.899944, 38.031570, 41.033154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855869, 38.704185, 41.266827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.499866, 38.653481, 41.091640>,  <39.286263, 38.623058, 40.986530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.499866, 38.653481, 41.091640>,  <39.855869, 38.704185, 41.266827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499866, 38.653481, 41.091640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429884, 0.553387, 0.713416,
		0.151930, 0.823222, -0.547013,
		-0.890010, -0.126763, -0.437966,
		39.232864, 38.615452, 40.960251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596012, 39.404125, 41.110565>,  <39.855869, 38.704185, 41.266827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596012, 39.404125, 41.110565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.287514, 39.149536, 41.114426>,  <39.102417, 38.996784, 41.116741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.287514, 39.149536, 41.114426>,  <39.596012, 39.404125, 41.110565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287514, 39.149536, 41.114426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392246, 0.487136, 0.780283,
		-0.501328, 0.598001, -0.625352,
		-0.771242, -0.636469, 0.009651,
		39.056141, 38.958595, 41.117321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189274, 39.829929, 41.380318>,  <39.596012, 39.404125, 41.110565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189274, 39.829929, 41.380318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.970360, 39.497734, 41.421822>,  <38.839012, 39.298416, 41.446724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.970360, 39.497734, 41.421822>,  <39.189274, 39.829929, 41.380318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970360, 39.497734, 41.421822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573774, 0.462555, 0.675889,
		-0.609311, 0.310374, -0.729663,
		-0.547288, -0.830489, 0.103755,
		38.806175, 39.248589, 41.452950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495186, 40.067677, 41.291698>,  <39.189274, 39.829929, 41.380318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495186, 40.067677, 41.291698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.467606, 39.722958, 41.492718>,  <38.451057, 39.516125, 41.613327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.467606, 39.722958, 41.492718>,  <38.495186, 40.067677, 41.291698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467606, 39.722958, 41.492718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615759, 0.433105, 0.658226,
		-0.784911, -0.264060, -0.560524,
		-0.068954, -0.861796, 0.502546,
		38.446918, 39.464420, 41.643482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820007, 39.966671, 41.491127>,  <38.495186, 40.067677, 41.291698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820007, 39.966671, 41.491127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.990459, 39.702461, 41.738392>,  <38.092731, 39.543938, 41.886749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.990459, 39.702461, 41.738392>,  <37.820007, 39.966671, 41.491127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990459, 39.702461, 41.738392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620216, 0.284144, 0.731159,
		-0.658593, -0.694964, -0.288583,
		0.426130, -0.660521, 0.618163,
		38.118298, 39.504307, 41.923840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264118, 39.680542, 41.849365>,  <37.820007, 39.966671, 41.491127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264118, 39.680542, 41.849365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.585155, 39.611828, 42.077869>,  <37.777779, 39.570599, 42.214970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.585155, 39.611828, 42.077869>,  <37.264118, 39.680542, 41.849365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585155, 39.611828, 42.077869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481456, 0.378864, 0.790356,
		-0.352197, -0.909370, 0.221369,
		0.802594, -0.171781, 0.571256,
		37.825935, 39.560295, 42.249245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157101, 39.141685, 42.387474>,  <37.264118, 39.680542, 41.849365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157101, 39.141685, 42.387474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.429092, 39.400803, 42.524872>,  <37.592285, 39.556274, 42.607311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.429092, 39.400803, 42.524872>,  <37.157101, 39.141685, 42.387474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429092, 39.400803, 42.524872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559212, 0.155168, 0.814374,
		0.474250, -0.745842, 0.467767,
		0.679977, 0.647798, 0.343496,
		37.633087, 39.595142, 42.627922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025539, 39.215435, 43.022865>,  <37.157101, 39.141685, 42.387474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025539, 39.215435, 43.022865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.291477, 39.512863, 42.994343>,  <37.451038, 39.691319, 42.977230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.291477, 39.512863, 42.994343>,  <37.025539, 39.215435, 43.022865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.291477, 39.512863, 42.994343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530181, 0.536977, 0.656174,
		0.526201, -0.398448, 0.751233,
		0.664847, 0.743569, -0.071308,
		37.490932, 39.735935, 42.972950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290726, 39.394772, 43.748245>,  <37.025539, 39.215435, 43.022865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290726, 39.394772, 43.748245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.373657, 39.719364, 43.529697>,  <37.423416, 39.914120, 43.398567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.373657, 39.719364, 43.529697>,  <37.290726, 39.394772, 43.748245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373657, 39.719364, 43.529697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540431, 0.560554, 0.627466,
		0.815444, 0.165181, 0.554767,
		0.207331, 0.811477, -0.546369,
		37.435856, 39.962807, 43.365788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.563683, 39.830070, 44.185387>,  <37.290726, 39.394772, 43.748245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.563683, 39.830070, 44.185387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.398811, 40.033916, 43.883286>,  <37.299889, 40.156223, 43.702026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.398811, 40.033916, 43.883286>,  <37.563683, 39.830070, 44.185387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398811, 40.033916, 43.883286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556816, 0.515221, 0.651539,
		0.721155, 0.689085, 0.071400,
		-0.412179, 0.509617, -0.755248,
		37.275158, 40.186802, 43.656712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544941, 40.525940, 44.430161>,  <37.563683, 39.830070, 44.185387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544941, 40.525940, 44.430161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.302353, 40.558628, 44.113800>,  <37.156799, 40.578239, 43.923985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.302353, 40.558628, 44.113800>,  <37.544941, 40.525940, 44.430161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302353, 40.558628, 44.113800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641495, 0.537405, 0.547430,
		0.469769, 0.839356, -0.273496,
		-0.606467, 0.081720, -0.790898,
		37.120415, 40.583145, 43.876530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289131, 41.233635, 44.407104>,  <37.544941, 40.525940, 44.430161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289131, 41.233635, 44.407104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.020855, 41.006294, 44.216461>,  <36.859890, 40.869892, 44.102077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.020855, 41.006294, 44.216461>,  <37.289131, 41.233635, 44.407104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020855, 41.006294, 44.216461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740356, 0.473772, 0.476879,
		-0.045232, 0.672696, -0.738535,
		-0.670692, -0.568349, -0.476604,
		36.819649, 40.835789, 44.073479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663349, 41.668671, 44.091599>,  <37.289131, 41.233635, 44.407104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663349, 41.668671, 44.091599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.534668, 41.295654, 44.157185>,  <36.457458, 41.071846, 44.196537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.534668, 41.295654, 44.157185>,  <36.663349, 41.668671, 44.091599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534668, 41.295654, 44.157185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716991, 0.353029, 0.601078,
		-0.618411, 0.075806, -0.782190,
		-0.321701, -0.932536, 0.163965,
		36.438156, 41.015892, 44.206375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.952648, 41.715755, 43.978840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.007164, 41.368374, 44.169510>,  <36.039875, 41.159946, 44.283913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.007164, 41.368374, 44.169510>,  <35.952648, 41.715755, 43.978840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007164, 41.368374, 44.169510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700549, 0.255726, 0.666210,
		-0.700469, -0.424729, -0.573541,
		0.136289, -0.868452, 0.476671,
		36.048050, 41.107838, 44.312511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273788, 41.629875, 44.182545>,  <35.952648, 41.715755, 43.978840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273788, 41.629875, 44.182545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.485584, 41.376194, 44.407906>,  <35.612663, 41.223984, 44.543121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.485584, 41.376194, 44.407906>,  <35.273788, 41.629875, 44.182545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485584, 41.376194, 44.407906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599643, 0.189973, 0.777392,
		-0.600058, -0.749462, -0.279708,
		0.529489, -0.634206, 0.563405,
		35.644432, 41.185932, 44.576927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786327, 41.057247, 44.470848>,  <35.273788, 41.629875, 44.182545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786327, 41.057247, 44.470848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.110500, 41.080372, 44.704037>,  <35.305004, 41.094246, 44.843948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.110500, 41.080372, 44.704037>,  <34.786327, 41.057247, 44.470848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110500, 41.080372, 44.704037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585809, 0.088116, 0.805645,
		-0.004791, -0.994431, 0.105280,
		0.810435, 0.057814, 0.582969,
		35.353630, 41.097717, 44.878929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480499, 40.820068, 45.089409>,  <34.786327, 41.057247, 44.470848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480499, 40.820068, 45.089409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.840599, 40.940655, 45.215057>,  <35.056660, 41.013008, 45.290447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.840599, 40.940655, 45.215057>,  <34.480499, 40.820068, 45.089409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840599, 40.940655, 45.215057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368338, 0.142695, 0.918676,
		0.232126, -0.942739, 0.239502,
		0.900247, 0.301467, 0.314123,
		35.110672, 41.031094, 45.309296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523613, 40.518459, 45.740833>,  <34.480499, 40.820068, 45.089409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523613, 40.518459, 45.740833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.772053, 40.831345, 45.721348>,  <34.921116, 41.019077, 45.709656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.772053, 40.831345, 45.721348>,  <34.523613, 40.518459, 45.740833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772053, 40.831345, 45.721348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381320, 0.355908, 0.853185,
		0.684714, -0.511335, 0.519329,
		0.621097, 0.782218, -0.048713,
		34.958382, 41.066010, 45.706734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903214, 40.519966, 46.360420>,  <34.523613, 40.518459, 45.740833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903214, 40.519966, 46.360420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.899727, 40.889233, 46.206703>,  <34.897633, 41.110794, 46.114471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.899727, 40.889233, 46.206703>,  <34.903214, 40.519966, 46.360420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899727, 40.889233, 46.206703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302201, 0.363904, 0.881050,
		0.953204, 0.123815, 0.275810,
		-0.008719, 0.923170, -0.384292,
		34.897110, 41.166183, 46.091415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253429, 40.936459, 46.931656>,  <34.903214, 40.519966, 46.360420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253429, 40.936459, 46.931656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.067554, 41.187256, 46.681553>,  <34.956032, 41.337734, 46.531490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.067554, 41.187256, 46.681553>,  <35.253429, 40.936459, 46.931656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067554, 41.187256, 46.681553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072698, 0.676725, 0.732638,
		0.882487, 0.385901, -0.268883,
		-0.464685, 0.626996, -0.625255,
		34.928150, 41.375355, 46.493977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558640, 41.638165, 47.124203>,  <35.253429, 40.936459, 46.931656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558640, 41.638165, 47.124203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.215759, 41.699409, 46.927525>,  <35.010033, 41.736156, 46.809517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.215759, 41.699409, 46.927525>,  <35.558640, 41.638165, 47.124203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215759, 41.699409, 46.927525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254494, 0.704096, 0.662934,
		0.447703, 0.693401, -0.564586,
		-0.857202, 0.153114, -0.491692,
		34.958599, 41.745342, 46.780018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562523, 42.298859, 46.929787>,  <35.558640, 41.638165, 47.124203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562523, 42.298859, 46.929787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.170387, 42.224419, 46.903549>,  <34.935104, 42.179756, 46.887806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.170387, 42.224419, 46.903549>,  <35.562523, 42.298859, 46.929787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170387, 42.224419, 46.903549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191087, 0.812446, 0.550833,
		-0.049217, 0.552538, -0.832033,
		-0.980338, -0.186101, -0.065596,
		34.876286, 42.168587, 46.883869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168934, 42.941120, 46.799164>,  <35.562523, 42.298859, 46.929787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168934, 42.941120, 46.799164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.937794, 42.673752, 46.986485>,  <34.799110, 42.513332, 47.098877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.937794, 42.673752, 46.986485>,  <35.168934, 42.941120, 46.799164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937794, 42.673752, 46.986485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089343, 0.622156, 0.777779,
		-0.811236, 0.407602, -0.419233,
		-0.577852, -0.668418, 0.468299,
		34.764439, 42.473225, 47.126976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710209, 43.341270, 47.179256>,  <35.168934, 42.941120, 46.799164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710209, 43.341270, 47.179256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.600342, 42.994453, 47.345531>,  <34.534424, 42.786362, 47.445297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.600342, 42.994453, 47.345531>,  <34.710209, 43.341270, 47.179256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600342, 42.994453, 47.345531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236618, 0.479971, 0.844772,
		-0.931971, 0.133670, -0.336989,
		-0.274665, -0.867041, 0.415690,
		34.517941, 42.734341, 47.470238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140396, 43.471943, 47.477760>,  <34.710209, 43.341270, 47.179256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140396, 43.471943, 47.477760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.258232, 43.147442, 47.679787>,  <34.328934, 42.952744, 47.801003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.258232, 43.147442, 47.679787>,  <34.140396, 43.471943, 47.477760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258232, 43.147442, 47.679787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224149, 0.455121, 0.861755,
		-0.928965, -0.367071, -0.047768,
		0.294585, -0.811248, 0.505070,
		34.346607, 42.904068, 47.831306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708126, 43.350651, 48.021774>,  <34.140396, 43.471943, 47.477760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708126, 43.350651, 48.021774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.007446, 43.122948, 48.158009>,  <34.187038, 42.986328, 48.239750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.007446, 43.122948, 48.158009>,  <33.708126, 43.350651, 48.021774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007446, 43.122948, 48.158009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134506, 0.372561, 0.918208,
		-0.649584, -0.732904, 0.202218,
		0.748297, -0.569254, 0.340589,
		34.231934, 42.952171, 48.260185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503952, 43.086159, 48.708225>,  <33.708126, 43.350651, 48.021774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503952, 43.086159, 48.708225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.901600, 43.052811, 48.680588>,  <34.140190, 43.032803, 48.664005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.901600, 43.052811, 48.680588>,  <33.503952, 43.086159, 48.708225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901600, 43.052811, 48.680588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086888, 0.233392, 0.968493,
		-0.064621, -0.968802, 0.239265,
		0.994120, -0.083375, -0.069095,
		34.199837, 43.027798, 48.659859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720001, 42.676403, 49.216743>,  <33.503952, 43.086159, 48.708225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720001, 42.676403, 49.216743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.041874, 42.903069, 49.145878>,  <34.234997, 43.039066, 49.103359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.041874, 42.903069, 49.145878>,  <33.720001, 42.676403, 49.216743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041874, 42.903069, 49.145878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049289, 0.361135, 0.931210,
		0.591660, -0.740593, 0.318528,
		0.804679, 0.566660, -0.177166,
		34.283279, 43.073067, 49.092728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158398, 42.480213, 49.740932>,  <33.720001, 42.676403, 49.216743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158398, 42.480213, 49.740932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.246738, 42.839787, 49.589592>,  <34.299744, 43.055531, 49.498787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.246738, 42.839787, 49.589592>,  <34.158398, 42.480213, 49.740932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246738, 42.839787, 49.589592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163120, 0.416507, 0.894379,
		0.961569, -0.135811, 0.238620,
		0.220854, 0.898931, -0.378347,
		34.312996, 43.109467, 49.476089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625195, 42.731548, 50.162186>,  <34.158398, 42.480213, 49.740932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625195, 42.731548, 50.162186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.502403, 43.061554, 49.972401>,  <34.428726, 43.259556, 49.858528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.502403, 43.061554, 49.972401>,  <34.625195, 42.731548, 50.162186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502403, 43.061554, 49.972401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138855, 0.532029, 0.835263,
		0.941531, 0.190529, -0.277881,
		-0.306983, 0.825011, -0.474466,
		34.410309, 43.309059, 49.830059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085213, 43.279949, 50.442757>,  <34.625195, 42.731548, 50.162186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085213, 43.279949, 50.442757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.774029, 43.466217, 50.274029>,  <34.587318, 43.577976, 50.172791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.774029, 43.466217, 50.274029>,  <35.085213, 43.279949, 50.442757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774029, 43.466217, 50.274029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029350, 0.643688, 0.764725,
		0.627631, 0.607304, -0.487094,
		-0.777957, 0.465669, -0.421823,
		34.540642, 43.605919, 50.147480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261723, 43.983021, 50.336945>,  <35.085213, 43.279949, 50.442757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261723, 43.983021, 50.336945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.864639, 43.944061, 50.365356>,  <34.626389, 43.920685, 50.382404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.864639, 43.944061, 50.365356>,  <35.261723, 43.983021, 50.336945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864639, 43.944061, 50.365356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023549, 0.421219, 0.906653,
		-0.118223, 0.901714, -0.415854,
		-0.992708, -0.097394, 0.071032,
		34.566826, 43.914845, 50.386665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133423, 44.467457, 50.755009>,  <35.261723, 43.983021, 50.336945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133423, 44.467457, 50.755009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.775879, 44.288128, 50.756538>,  <34.561352, 44.180531, 50.757458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.775879, 44.288128, 50.756538>,  <35.133423, 44.467457, 50.755009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775879, 44.288128, 50.756538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212771, 0.431698, 0.876565,
		-0.394637, 0.782715, -0.481269,
		-0.893863, -0.448325, 0.003825,
		34.507721, 44.153629, 50.757687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642017, 45.001682, 51.033787>,  <35.133423, 44.467457, 50.755009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642017, 45.001682, 51.033787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.514423, 44.627426, 51.094212>,  <34.437866, 44.402870, 51.130466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.514423, 44.627426, 51.094212>,  <34.642017, 45.001682, 51.033787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514423, 44.627426, 51.094212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180344, 0.216398, 0.959504,
		-0.930442, 0.278827, -0.237766,
		-0.318988, -0.935643, 0.151061,
		34.418728, 44.346733, 51.139530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939636, 44.999447, 51.234756>,  <34.642017, 45.001682, 51.033787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939636, 44.999447, 51.234756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.092239, 44.665863, 51.394238>,  <34.183804, 44.465714, 51.489925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.092239, 44.665863, 51.394238>,  <33.939636, 44.999447, 51.234756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092239, 44.665863, 51.394238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373681, 0.255367, 0.891712,
		-0.845465, -0.489186, -0.214209,
		0.381511, -0.833957, 0.398704,
		34.206692, 44.415676, 51.513847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380318, 44.453506, 51.432644>,  <33.939636, 44.999447, 51.234756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380318, 44.453506, 51.432644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.709042, 44.454006, 51.660545>,  <33.906277, 44.454308, 51.797287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.709042, 44.454006, 51.660545>,  <33.380318, 44.453506, 51.432644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709042, 44.454006, 51.660545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569084, 0.050403, 0.820733,
		-0.027692, -0.998728, 0.042133,
		0.821813, 0.001250, 0.569756,
		33.955585, 44.454380, 51.831470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163433, 43.777000, 51.403828>,  <33.380318, 44.453506, 51.432644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163433, 43.777000, 51.403828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.563236, 43.766087, 51.409908>,  <33.803120, 43.759537, 51.413559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.563236, 43.766087, 51.409908>,  <33.163433, 43.777000, 51.403828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563236, 43.766087, 51.409908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004915, 0.618078, 0.786101,
		-0.030848, -0.785643, 0.617911,
		0.999512, -0.027286, 0.015205,
		33.863091, 43.757900, 51.414471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197937, 43.503433, 52.067921>,  <33.163433, 43.777000, 51.403828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197937, 43.503433, 52.067921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.813183, 43.400738, 52.105564>,  <32.582329, 43.339119, 52.128151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.813183, 43.400738, 52.105564>,  <33.197937, 43.503433, 52.067921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813183, 43.400738, 52.105564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118123, -0.700523, -0.703785,
		0.246616, -0.665846, 0.704152,
		-0.961888, -0.256741, 0.094108,
		32.524616, 43.323715, 52.133797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249512, 42.947533, 51.815262>,  <33.197937, 43.503433, 52.067921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249512, 42.947533, 51.815262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.856979, 43.023132, 51.801056>,  <32.621460, 43.068493, 51.792534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.856979, 43.023132, 51.801056>,  <33.249512, 42.947533, 51.815262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856979, 43.023132, 51.801056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046871, -0.414146, -0.909003,
		-0.186510, -0.890371, 0.415274,
		-0.981335, 0.189003, -0.035510,
		32.562580, 43.079834, 51.790401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053295, 42.336819, 51.464516>,  <33.249512, 42.947533, 51.815262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053295, 42.336819, 51.464516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.745850, 42.592655, 51.459465>,  <32.561382, 42.746159, 51.456436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.745850, 42.592655, 51.459465>,  <33.053295, 42.336819, 51.464516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745850, 42.592655, 51.459465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309498, -0.389052, -0.867669,
		-0.559867, -0.662992, 0.496982,
		-0.768610, 0.639594, -0.012622,
		32.515266, 42.784534, 51.455677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382816, 41.871986, 51.508987>,  <33.053295, 42.336819, 51.464516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382816, 41.871986, 51.508987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.309238, 42.220341, 51.326679>,  <32.265091, 42.429352, 51.217297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.309238, 42.220341, 51.326679>,  <32.382816, 41.871986, 51.508987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309238, 42.220341, 51.326679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396587, -0.490018, -0.776274,
		-0.899380, 0.037964, 0.435516,
		-0.183940, 0.870885, -0.455768,
		32.254055, 42.481606, 51.189949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694040, 41.854263, 51.224918>,  <32.382816, 41.871986, 51.508987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694040, 41.854263, 51.224918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.892302, 42.132645, 51.017082>,  <32.011257, 42.299671, 50.892380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.892302, 42.132645, 51.017082>,  <31.694040, 41.854263, 51.224918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892302, 42.132645, 51.017082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433053, -0.320548, -0.842445,
		-0.752855, 0.642574, 0.142503,
		0.495655, 0.695951, -0.519595,
		32.040997, 42.341431, 50.861202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.208225, 42.091347, 50.733280>,  <31.694040, 41.854263, 51.224918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.208225, 42.091347, 50.733280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.569574, 42.204781, 50.604599>,  <31.786385, 42.272842, 50.527390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.569574, 42.204781, 50.604599>,  <31.208225, 42.091347, 50.733280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569574, 42.204781, 50.604599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257227, -0.241929, -0.935577,
		-0.343148, 0.927927, -0.145606,
		0.903374, 0.283587, -0.321705,
		31.840586, 42.289856, 50.508087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042658, 42.467857, 50.140774>,  <31.208225, 42.091347, 50.733280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042658, 42.467857, 50.140774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.425917, 42.363102, 50.094536>,  <31.655872, 42.300247, 50.066792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.425917, 42.363102, 50.094536>,  <31.042658, 42.467857, 50.140774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425917, 42.363102, 50.094536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181814, -0.244811, -0.952371,
		0.221119, 0.933531, -0.282181,
		0.958149, -0.261892, -0.115596,
		31.713362, 42.284534, 50.059856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266687, 42.654957, 49.430691>,  <31.042658, 42.467857, 50.140774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266687, 42.654957, 49.430691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.551727, 42.405796, 49.559811>,  <31.722752, 42.256302, 49.637283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.551727, 42.405796, 49.559811>,  <31.266687, 42.654957, 49.430691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.551727, 42.405796, 49.559811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206952, -0.253001, -0.945072,
		0.670354, 0.740261, -0.051378,
		0.712599, -0.622900, 0.322799,
		31.765507, 42.218925, 49.656651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896797, 42.857483, 49.020802>,  <31.266687, 42.654957, 49.430691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896797, 42.857483, 49.020802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.938757, 42.482800, 49.154411>,  <31.963932, 42.257988, 49.234577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.938757, 42.482800, 49.154411>,  <31.896797, 42.857483, 49.020802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938757, 42.482800, 49.154411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236088, -0.302816, -0.923344,
		0.966053, 0.175715, 0.189382,
		0.104897, -0.936710, 0.334021,
		31.970226, 42.201786, 49.254616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450886, 42.662369, 48.723251>,  <31.896797, 42.857483, 49.020802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450886, 42.662369, 48.723251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.278244, 42.312500, 48.811497>,  <32.174660, 42.102581, 48.864445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.278244, 42.312500, 48.811497>,  <32.450886, 42.662369, 48.723251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278244, 42.312500, 48.811497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076327, -0.279103, -0.957223,
		0.898827, -0.396304, 0.187224,
		-0.431606, -0.874668, 0.220616,
		32.148762, 42.050098, 48.877682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959480, 42.150990, 48.543606>,  <32.450886, 42.662369, 48.723251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959480, 42.150990, 48.543606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.595150, 41.987507, 48.520451>,  <32.376553, 41.889420, 48.506557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.595150, 41.987507, 48.520451>,  <32.959480, 42.150990, 48.543606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595150, 41.987507, 48.520451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177897, -0.262106, -0.948501,
		0.372483, -0.874220, 0.311441,
		-0.910829, -0.408705, -0.057891,
		32.321903, 41.864895, 48.503082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126350, 41.583515, 48.050861>,  <32.959480, 42.150990, 48.543606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126350, 41.583515, 48.050861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.726383, 41.580120, 48.054871>,  <32.486404, 41.578083, 48.057274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.726383, 41.580120, 48.054871>,  <33.126350, 41.583515, 48.050861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726383, 41.580120, 48.054871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006458, -0.346374, -0.938074,
		0.011436, -0.938058, 0.346290,
		-0.999914, -0.008492, 0.010019,
		32.426411, 41.577572, 48.057877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981236, 40.997654, 47.722988>,  <33.126350, 41.583515, 48.050861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981236, 40.997654, 47.722988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.649364, 41.220203, 47.704765>,  <32.450241, 41.353733, 47.693832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.649364, 41.220203, 47.704765>,  <32.981236, 40.997654, 47.722988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649364, 41.220203, 47.704765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156616, -0.310333, -0.937638,
		-0.535817, -0.770805, 0.344615,
		-0.829682, 0.556374, -0.045562,
		32.400459, 41.387115, 47.691097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527523, 40.577721, 47.375965>,  <32.981236, 40.997654, 47.722988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527523, 40.577721, 47.375965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.377380, 40.943707, 47.316711>,  <32.287296, 41.163300, 47.281158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.377380, 40.943707, 47.316711>,  <32.527523, 40.577721, 47.375965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377380, 40.943707, 47.316711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025652, -0.170012, -0.985108,
		-0.926525, -0.365969, 0.087286,
		-0.375358, 0.914966, -0.148132,
		32.264774, 41.218197, 47.272270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111271, 40.489826, 46.876053>,  <32.527523, 40.577721, 47.375965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111271, 40.489826, 46.876053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.121010, 40.888603, 46.846363>,  <32.126854, 41.127869, 46.828548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.121010, 40.888603, 46.846363>,  <32.111271, 40.489826, 46.876053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121010, 40.888603, 46.846363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094618, -0.076211, -0.992592,
		-0.995216, 0.017147, -0.096184,
		0.024350, 0.996944, -0.074224,
		32.128315, 41.187687, 46.824097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669531, 40.649437, 46.306034>,  <32.111271, 40.489826, 46.876053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669531, 40.649437, 46.306034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.949678, 40.931107, 46.352730>,  <32.117767, 41.100109, 46.380745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.949678, 40.931107, 46.352730>,  <31.669531, 40.649437, 46.306034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949678, 40.931107, 46.352730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135339, 0.029570, -0.990358,
		-0.700832, 0.709416, -0.074592,
		0.700370, 0.704170, 0.116736,
		32.159790, 41.142357, 46.387749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584209, 41.256126, 45.822594>,  <31.669531, 40.649437, 46.306034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584209, 41.256126, 45.822594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.975014, 41.245174, 45.907166>,  <32.209496, 41.238602, 45.957909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.975014, 41.245174, 45.907166>,  <31.584209, 41.256126, 45.822594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975014, 41.245174, 45.907166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211753, 0.009641, -0.977276,
		0.024721, 0.999578, 0.015217,
		0.977010, -0.027382, 0.211426,
		32.268116, 41.236961, 45.970592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819147, 41.789925, 45.355900>,  <31.584209, 41.256126, 45.822594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819147, 41.789925, 45.355900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.138515, 41.575798, 45.466148>,  <32.330135, 41.447323, 45.532299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.138515, 41.575798, 45.466148>,  <31.819147, 41.789925, 45.355900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138515, 41.575798, 45.466148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266205, -0.096750, -0.959049,
		0.540058, 0.839095, 0.065256,
		0.798419, -0.535313, 0.275622,
		32.378040, 41.415203, 45.548836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504627, 42.055897, 45.030666>,  <31.819147, 41.789925, 45.355900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504627, 42.055897, 45.030666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.565540, 41.671986, 45.125015>,  <32.602089, 41.441639, 45.181625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.565540, 41.671986, 45.125015>,  <32.504627, 42.055897, 45.030666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565540, 41.671986, 45.125015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527693, -0.122835, -0.840507,
		0.835673, 0.252463, 0.487762,
		0.152283, -0.959778, 0.235873,
		32.611225, 41.384052, 45.195778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160324, 41.866405, 44.740002>,  <32.504627, 42.055897, 45.030666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160324, 41.866405, 44.740002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.979084, 41.513260, 44.789406>,  <32.870342, 41.301373, 44.819050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.979084, 41.513260, 44.789406>,  <33.160324, 41.866405, 44.740002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979084, 41.513260, 44.789406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488149, -0.361649, -0.794306,
		0.745931, -0.299606, 0.594831,
		-0.453098, -0.882863, 0.123513,
		32.843155, 41.248402, 44.826458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.113914, 40.709503, 40.298405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.717392, 40.754074, 40.326378>,  <42.479477, 40.780815, 40.343163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.717392, 40.754074, 40.326378>,  <43.113914, 40.709503, 40.298405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.717392, 40.754074, 40.326378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118583, -0.987016, -0.108336,
		0.056953, -0.115687, 0.991652,
		-0.991310, 0.111423, 0.069932,
		42.419998, 40.787502, 40.347359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.927872, 40.226292, 40.862595>,  <43.113914, 40.709503, 40.298405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.927872, 40.226292, 40.862595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.629372, 40.310848, 40.610111>,  <42.450272, 40.361584, 40.458622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.629372, 40.310848, 40.610111>,  <42.927872, 40.226292, 40.862595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.629372, 40.310848, 40.610111> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136387, -0.976674, -0.165850,
		-0.651544, -0.037677, 0.757675,
		-0.746250, 0.211395, -0.631208,
		42.405499, 40.374268, 40.420750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.404026, 39.822105, 40.978527>,  <42.927872, 40.226292, 40.862595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.404026, 39.822105, 40.978527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.322094, 39.923279, 40.600307>,  <42.272934, 39.983982, 40.373375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.322094, 39.923279, 40.600307>,  <42.404026, 39.822105, 40.978527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322094, 39.923279, 40.600307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425116, -0.893151, -0.146829,
		-0.881659, 0.371894, 0.290470,
		-0.204829, 0.252937, -0.945552,
		42.260647, 39.999161, 40.316643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855591, 39.441589, 40.808578>,  <42.404026, 39.822105, 40.978527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855591, 39.441589, 40.808578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.995590, 39.554344, 40.451244>,  <42.079590, 39.621998, 40.236843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.995590, 39.554344, 40.451244>,  <41.855591, 39.441589, 40.808578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.995590, 39.554344, 40.451244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037095, -0.957071, -0.287469,
		-0.936016, 0.067476, -0.345430,
		0.349998, 0.281889, -0.893331,
		42.100590, 39.638912, 40.183247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525700, 39.033855, 40.365036>,  <41.855591, 39.441589, 40.808578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525700, 39.033855, 40.365036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.844856, 39.136635, 40.146915>,  <42.036350, 39.198303, 40.016045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.844856, 39.136635, 40.146915>,  <41.525700, 39.033855, 40.365036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.844856, 39.136635, 40.146915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151320, -0.961014, -0.231417,
		-0.583501, 0.102131, -0.805665,
		0.797890, 0.256945, -0.545298,
		42.084225, 39.213718, 39.983326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398811, 38.803215, 39.796734>,  <41.525700, 39.033855, 40.365036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398811, 38.803215, 39.796734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.797104, 38.835884, 39.779526>,  <42.036079, 38.855484, 39.769199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.797104, 38.835884, 39.779526>,  <41.398811, 38.803215, 39.796734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.797104, 38.835884, 39.779526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056382, -0.907117, -0.417084,
		-0.073091, 0.412877, -0.907849,
		0.995730, 0.081672, -0.043023,
		42.095821, 38.860386, 39.766621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548176, 38.500023, 39.167862>,  <41.398811, 38.803215, 39.796734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548176, 38.500023, 39.167862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.905773, 38.520443, 39.345928>,  <42.120331, 38.532696, 39.452770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.905773, 38.520443, 39.345928>,  <41.548176, 38.500023, 39.167862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905773, 38.520443, 39.345928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199539, -0.934902, -0.293501,
		0.401205, 0.351216, -0.845980,
		0.893990, 0.051052, 0.445168,
		42.173969, 38.535759, 39.479477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.984371, 38.264282, 38.683243>,  <41.548176, 38.500023, 39.167862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.984371, 38.264282, 38.683243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.180233, 38.219242, 39.029087>,  <42.297749, 38.192219, 39.236595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.180233, 38.219242, 39.029087>,  <41.984371, 38.264282, 38.683243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180233, 38.219242, 39.029087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239472, -0.936126, -0.257528,
		0.838386, 0.333151, -0.431416,
		0.489655, -0.112596, 0.864615,
		42.327129, 38.185463, 39.288471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575611, 38.015282, 38.439899>,  <41.984371, 38.264282, 38.683243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575611, 38.015282, 38.439899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.532028, 37.919395, 38.825783>,  <42.505878, 37.861862, 39.057312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.532028, 37.919395, 38.825783>,  <42.575611, 38.015282, 38.439899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.532028, 37.919395, 38.825783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394440, -0.901240, -0.179396,
		0.912439, 0.360973, 0.192753,
		-0.108960, -0.239717, 0.964709,
		42.499340, 37.847481, 39.115196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.233082, 37.888802, 38.651646>,  <42.575611, 38.015282, 38.439899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.233082, 37.888802, 38.651646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.973904, 37.705910, 38.895317>,  <42.818398, 37.596172, 39.041519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.973904, 37.705910, 38.895317>,  <43.233082, 37.888802, 38.651646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.973904, 37.705910, 38.895317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500480, -0.858471, -0.112015,
		0.574182, 0.232303, 0.785080,
		-0.647947, -0.457234, 0.609182,
		42.779518, 37.568741, 39.078072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.696510, 37.356995, 38.925900>,  <43.233082, 37.888802, 38.651646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.696510, 37.356995, 38.925900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.316750, 37.250271, 38.992168>,  <43.088894, 37.186237, 39.031929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.316750, 37.250271, 38.992168>,  <43.696510, 37.356995, 38.925900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.316750, 37.250271, 38.992168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224555, -0.945492, -0.235838,
		0.219568, -0.186702, 0.957566,
		-0.949402, -0.266809, 0.165675,
		43.031929, 37.170227, 39.041870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.774097, 36.923836, 39.442001>,  <43.696510, 37.356995, 38.925900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.774097, 36.923836, 39.442001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.438522, 36.832760, 39.244278>,  <43.237179, 36.778114, 39.125645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.438522, 36.832760, 39.244278>,  <43.774097, 36.923836, 39.442001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.438522, 36.832760, 39.244278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377854, -0.897367, -0.227944,
		-0.391677, -0.378007, 0.838868,
		-0.838937, -0.227690, -0.494309,
		43.186840, 36.764454, 39.095985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.768925, 36.319710, 39.583820>,  <43.774097, 36.923836, 39.442001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.768925, 36.319710, 39.583820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.484890, 36.304955, 39.302559>,  <43.314468, 36.296101, 39.133804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.484890, 36.304955, 39.302559>,  <43.768925, 36.319710, 39.583820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.484890, 36.304955, 39.302559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279687, -0.931240, -0.233594,
		-0.646186, -0.362534, 0.671575,
		-0.710083, -0.036886, -0.703151,
		43.271866, 36.293888, 39.091614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.293125, 35.731674, 39.748680>,  <43.768925, 36.319710, 39.583820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.293125, 35.731674, 39.748680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.234570, 35.829487, 39.365269>,  <43.199436, 35.888176, 39.135223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.234570, 35.829487, 39.365269>,  <43.293125, 35.731674, 39.748680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.234570, 35.829487, 39.365269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126961, -0.956307, -0.263357,
		-0.981045, -0.160249, 0.108949,
		-0.146392, 0.244533, -0.958526,
		43.190651, 35.902847, 39.077709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.947144, 35.226658, 39.449844>,  <43.293125, 35.731674, 39.748680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.947144, 35.226658, 39.449844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.112270, 35.391403, 39.124893>,  <43.211346, 35.490250, 38.929924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.112270, 35.391403, 39.124893>,  <42.947144, 35.226658, 39.449844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.112270, 35.391403, 39.124893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076427, -0.904440, -0.419699,
		-0.907600, 0.111173, -0.404848,
		0.412820, 0.411860, -0.812374,
		43.236118, 35.514961, 38.881180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.650028, 34.844719, 38.972664>,  <42.947144, 35.226658, 39.449844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.650028, 34.844719, 38.972664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.988647, 34.983341, 38.811039>,  <43.191818, 35.066513, 38.714066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.988647, 34.983341, 38.811039>,  <42.650028, 34.844719, 38.972664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.988647, 34.983341, 38.811039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308213, -0.937979, -0.158746,
		-0.434013, 0.009849, -0.900853,
		0.846544, 0.346552, -0.404060,
		43.242611, 35.087307, 38.689819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747780, 34.509766, 38.228466>,  <42.650028, 34.844719, 38.972664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747780, 34.509766, 38.228466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.101105, 34.650738, 38.352116>,  <43.313099, 34.735321, 38.426308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.101105, 34.650738, 38.352116>,  <42.747780, 34.509766, 38.228466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.101105, 34.650738, 38.352116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443240, -0.842587, -0.305916,
		0.152653, 0.407236, -0.900475,
		0.883309, 0.352428, 0.309127,
		43.366096, 34.756466, 38.444855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.212212, 34.324844, 37.566063>,  <42.747780, 34.509766, 38.228466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.212212, 34.324844, 37.566063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.427422, 34.382835, 37.898209>,  <43.556549, 34.417629, 38.097496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.427422, 34.382835, 37.898209>,  <43.212212, 34.324844, 37.566063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.427422, 34.382835, 37.898209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599535, -0.758279, -0.256068,
		0.592523, 0.635604, -0.494897,
		0.538028, 0.144982, 0.830365,
		43.588829, 34.426331, 38.147320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.895039, 34.405209, 37.306690>,  <43.212212, 34.324844, 37.566063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.895039, 34.405209, 37.306690> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.954079, 34.307976, 37.690174>,  <43.989502, 34.249638, 37.920265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.954079, 34.307976, 37.690174>,  <43.895039, 34.405209, 37.306690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.954079, 34.307976, 37.690174> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772416, -0.577080, -0.265240,
		0.617727, 0.779673, 0.102578,
		0.147605, -0.243079, 0.958710,
		43.998360, 34.235050, 37.977787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.592850, 34.579823, 37.464104>,  <43.895039, 34.405209, 37.306690>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.592850, 34.579823, 37.464104> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.466858, 34.312973, 37.734135>,  <44.391262, 34.152863, 37.896152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.466858, 34.312973, 37.734135>,  <44.592850, 34.579823, 37.464104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.466858, 34.312973, 37.734135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796595, -0.572508, -0.194091,
		0.515970, 0.476628, 0.711758,
		-0.314978, -0.667128, 0.675077,
		44.372364, 34.112835, 37.936657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.185802, 34.503887, 37.935947>,  <44.592850, 34.579823, 37.464104>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.185802, 34.503887, 37.935947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.966518, 34.169918, 37.955383>,  <44.834946, 33.969536, 37.967045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.966518, 34.169918, 37.955383>,  <45.185802, 34.503887, 37.935947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.966518, 34.169918, 37.955383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817622, -0.547262, -0.178886,
		0.175948, -0.058339, 0.982669,
		-0.548213, -0.834926, 0.048591,
		44.802055, 33.919441, 37.969959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.388958, 34.930920, 38.382740>,  <45.185802, 34.503887, 37.935947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.388958, 34.930920, 38.382740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.709133, 35.051662, 38.175594>,  <45.901237, 35.124107, 38.051308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.709133, 35.051662, 38.175594>,  <45.388958, 34.930920, 38.382740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.709133, 35.051662, 38.175594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077042, 0.908591, 0.410520,
		0.594440, -0.288700, 0.750529,
		0.800441, 0.301852, -0.517860,
		45.949265, 35.142220, 38.020237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.978935, 35.193996, 38.841675>,  <45.388958, 34.930920, 38.382740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.978935, 35.193996, 38.841675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.059166, 35.349609, 38.482025>,  <46.107304, 35.442978, 38.266235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.059166, 35.349609, 38.482025>,  <45.978935, 35.193996, 38.841675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.059166, 35.349609, 38.482025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145549, 0.895756, 0.420044,
		0.968806, -0.215117, 0.123044,
		0.200576, 0.389033, -0.899123,
		46.119339, 35.466320, 38.212288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.662674, 35.641174, 38.838390>,  <45.978935, 35.193996, 38.841675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.662674, 35.641174, 38.838390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.430351, 35.752529, 38.532406>,  <46.290958, 35.819340, 38.348816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.430351, 35.752529, 38.532406>,  <46.662674, 35.641174, 38.838390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.430351, 35.752529, 38.532406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028011, 0.932317, 0.360554,
		0.813560, 0.230839, -0.533698,
		-0.580806, 0.278383, -0.764962,
		46.256111, 35.836044, 38.302917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.882824, 36.328114, 38.802116>,  <46.662674, 35.641174, 38.838390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.882824, 36.328114, 38.802116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.575157, 36.313171, 38.546932>,  <46.390556, 36.304207, 38.393822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.575157, 36.313171, 38.546932>,  <46.882824, 36.328114, 38.802116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.575157, 36.313171, 38.546932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130477, 0.986440, 0.099553,
		0.625592, 0.159812, -0.763606,
		-0.769162, -0.037353, -0.637961,
		46.344410, 36.301964, 38.355545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.970631, 36.860378, 38.294605>,  <46.882824, 36.328114, 38.802116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.970631, 36.860378, 38.294605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.582317, 36.773861, 38.336185>,  <46.349331, 36.721951, 38.361134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.582317, 36.773861, 38.336185>,  <46.970631, 36.860378, 38.294605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.582317, 36.773861, 38.336185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205035, 0.972662, 0.109040,
		-0.124698, 0.084539, -0.988587,
		-0.970779, -0.216292, 0.103955,
		46.291084, 36.708973, 38.367371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.690079, 37.359055, 37.996647>,  <46.970631, 36.860378, 38.294605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.690079, 37.359055, 37.996647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.374992, 37.218540, 38.199078>,  <46.185940, 37.134232, 38.320538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.374992, 37.218540, 38.199078>,  <46.690079, 37.359055, 37.996647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.374992, 37.218540, 38.199078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207777, 0.924851, 0.318559,
		-0.579948, 0.145782, -0.801503,
		-0.787711, -0.351282, 0.506075,
		46.138680, 37.113155, 38.350899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.132912, 37.820091, 37.849609>,  <46.690079, 37.359055, 37.996647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.132912, 37.820091, 37.849609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.973000, 37.659420, 38.179173>,  <45.877052, 37.563015, 38.376911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.973000, 37.659420, 38.179173>,  <46.132912, 37.820091, 37.849609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.973000, 37.659420, 38.179173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481337, 0.856955, 0.184237,
		-0.780060, -0.322927, -0.535933,
		-0.399776, -0.401681, 0.823913,
		45.853065, 37.538918, 38.426346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.419880, 37.971447, 37.802933>,  <46.132912, 37.820091, 37.849609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.419880, 37.971447, 37.802933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.454281, 37.886166, 38.192219>,  <45.474922, 37.834999, 38.425789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.454281, 37.886166, 38.192219>,  <45.419880, 37.971447, 37.802933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.454281, 37.886166, 38.192219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437298, 0.869632, 0.229151,
		-0.895195, -0.445292, -0.018446,
		0.085998, -0.213201, 0.973216,
		45.480080, 37.822205, 38.484184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.683243, 38.020702, 38.210926>,  <45.419880, 37.971447, 37.802933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.683243, 38.020702, 38.210926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.993664, 38.094913, 38.452030>,  <45.179916, 38.139442, 38.596695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.993664, 38.094913, 38.452030>,  <44.683243, 38.020702, 38.210926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.993664, 38.094913, 38.452030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449790, 0.832771, 0.322770,
		-0.442082, -0.521603, 0.729722,
		0.776049, 0.185531, 0.602765,
		45.226479, 38.150574, 38.632858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.344364, 38.301453, 38.736534>,  <44.683243, 38.020702, 38.210926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.344364, 38.301453, 38.736534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.723763, 38.416260, 38.790157>,  <44.951401, 38.485142, 38.822330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.723763, 38.416260, 38.790157>,  <44.344364, 38.301453, 38.736534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.723763, 38.416260, 38.790157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316008, 0.886789, 0.337259,
		-0.022082, -0.362253, 0.931818,
		0.948500, 0.287014, 0.134057,
		45.008312, 38.502365, 38.830376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.368073, 38.591354, 39.410732>,  <44.344364, 38.301453, 38.736534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.368073, 38.591354, 39.410732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.701069, 38.739616, 39.246021>,  <44.900867, 38.828575, 39.147194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.701069, 38.739616, 39.246021>,  <44.368073, 38.591354, 39.410732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.701069, 38.739616, 39.246021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213705, 0.900559, 0.378580,
		0.511158, -0.227166, 0.828923,
		0.832495, 0.370659, -0.411781,
		44.950817, 38.850815, 39.122486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.642612, 39.014256, 39.902077>,  <44.368073, 38.591354, 39.410732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.642612, 39.014256, 39.902077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.867023, 39.152264, 39.601089>,  <45.001671, 39.235069, 39.420498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.867023, 39.152264, 39.601089>,  <44.642612, 39.014256, 39.902077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.867023, 39.152264, 39.601089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107629, 0.931688, 0.346949,
		0.820768, -0.113662, 0.559841,
		0.561032, 0.345020, -0.752466,
		45.035332, 39.255768, 39.375351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.951691, 39.625473, 40.190636>,  <44.642612, 39.014256, 39.902077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.951691, 39.625473, 40.190636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.004345, 39.691303, 39.799618>,  <45.035938, 39.730801, 39.565006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.004345, 39.691303, 39.799618>,  <44.951691, 39.625473, 40.190636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.004345, 39.691303, 39.799618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130995, 0.980362, 0.147414,
		0.982605, 0.108649, 0.150607,
		0.131633, 0.164579, -0.977541,
		45.043835, 39.740677, 39.506355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.377380, 40.246246, 40.230556>,  <44.951691, 39.625473, 40.190636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.377380, 40.246246, 40.230556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.210651, 40.201298, 39.869751>,  <45.110615, 40.174328, 39.653267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.210651, 40.201298, 39.869751>,  <45.377380, 40.246246, 40.230556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.210651, 40.201298, 39.869751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094409, 0.992314, -0.079997,
		0.904073, 0.051814, -0.424226,
		-0.416821, -0.112374, -0.902016,
		45.085606, 40.167587, 39.599148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.684841, 40.808022, 39.798126>,  <45.377380, 40.246246, 40.230556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.684841, 40.808022, 39.798126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.329395, 40.699837, 39.649952>,  <45.116127, 40.634926, 39.561047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.329395, 40.699837, 39.649952>,  <45.684841, 40.808022, 39.798126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.329395, 40.699837, 39.649952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286420, 0.958024, -0.012394,
		0.358235, 0.095086, -0.928777,
		-0.888612, -0.270460, -0.370432,
		45.062813, 40.618698, 39.538822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.607452, 41.290901, 39.229679>,  <45.684841, 40.808022, 39.798126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.607452, 41.290901, 39.229679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.247223, 41.152428, 39.334846>,  <45.031086, 41.069344, 39.397945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.247223, 41.152428, 39.334846>,  <45.607452, 41.290901, 39.229679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.247223, 41.152428, 39.334846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355764, 0.934501, 0.011847,
		-0.249797, -0.082868, -0.964746,
		-0.900574, -0.346182, 0.262917,
		44.977051, 41.048573, 39.413723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.165470, 41.864578, 39.063583>,  <45.607452, 41.290901, 39.229679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.165470, 41.864578, 39.063583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.923939, 41.637913, 39.287830>,  <44.779022, 41.501915, 39.422379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.923939, 41.637913, 39.287830>,  <45.165470, 41.864578, 39.063583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.923939, 41.637913, 39.287830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592182, 0.789684, 0.160374,
		-0.533588, -0.235150, -0.812397,
		-0.603825, -0.566660, 0.560617,
		44.742790, 41.467915, 39.456017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.489059, 42.037689, 38.801128>,  <45.165470, 41.864578, 39.063583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.489059, 42.037689, 38.801128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.447720, 41.877354, 39.165249>,  <44.422916, 41.781151, 39.383720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.447720, 41.877354, 39.165249>,  <44.489059, 42.037689, 38.801128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.447720, 41.877354, 39.165249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513294, 0.805412, 0.296379,
		-0.851968, -0.436622, -0.288984,
		-0.103346, -0.400839, 0.910301,
		44.416718, 41.757103, 39.438339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.805866, 42.135277, 38.967674>,  <44.489059, 42.037689, 38.801128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.805866, 42.135277, 38.967674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.976490, 42.069767, 39.323479>,  <44.078865, 42.030460, 39.536961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.976490, 42.069767, 39.323479>,  <43.805866, 42.135277, 38.967674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.976490, 42.069767, 39.323479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444555, 0.818509, 0.363888,
		-0.787667, -0.550654, 0.276333,
		0.426557, -0.163778, 0.889508,
		44.104458, 42.020634, 39.590332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.222157, 42.184460, 39.447773>,  <43.805866, 42.135277, 38.967674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.222157, 42.184460, 39.447773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.576527, 42.258762, 39.617775>,  <43.789150, 42.303345, 39.719776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.576527, 42.258762, 39.617775>,  <43.222157, 42.184460, 39.447773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.576527, 42.258762, 39.617775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401660, 0.765487, 0.502692,
		-0.231958, -0.616056, 0.752776,
		0.885926, 0.185757, 0.425006,
		43.842304, 42.314491, 39.745277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.057487, 42.112904, 40.097855>,  <43.222157, 42.184460, 39.447773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.057487, 42.112904, 40.097855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.377441, 42.351597, 40.072285>,  <43.569416, 42.494812, 40.056942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.377441, 42.351597, 40.072285>,  <43.057487, 42.112904, 40.097855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.377441, 42.351597, 40.072285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484473, 0.704906, 0.518067,
		0.354212, -0.383424, 0.852948,
		0.799888, 0.596736, -0.063928,
		43.617409, 42.530617, 40.053108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.695415, 40.253468, 43.021408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376698, 40.039711, 42.908596>,  <38.185467, 39.911457, 42.840908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376698, 40.039711, 42.908596>,  <38.695415, 40.253468, 43.021408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376698, 40.039711, 42.908596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602908, -0.672038, -0.429961,
		0.040231, -0.512631, 0.857666,
		-0.796795, -0.534392, -0.282033,
		38.137657, 39.879395, 42.823986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951393, 39.535366, 42.941219>,  <38.695415, 40.253468, 43.021408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951393, 39.535366, 42.941219> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612316, 39.557182, 42.730148>,  <38.408871, 39.570274, 42.603504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612316, 39.557182, 42.730148>,  <38.951393, 39.535366, 42.941219>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612316, 39.557182, 42.730148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392908, -0.603782, -0.693593,
		-0.356436, -0.795281, 0.490389,
		-0.847689, 0.054544, -0.527682,
		38.358009, 39.573547, 42.571842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942760, 38.914894, 42.631828>,  <38.951393, 39.535366, 42.941219>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942760, 38.914894, 42.631828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648930, 39.093437, 42.427414>,  <38.472630, 39.200562, 42.304764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648930, 39.093437, 42.427414>,  <38.942760, 38.914894, 42.631828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648930, 39.093437, 42.427414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331200, -0.421471, -0.844197,
		-0.592198, -0.789387, 0.161772,
		-0.734580, 0.446353, -0.511039,
		38.428555, 39.227345, 42.274101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460155, 38.350342, 42.295155>,  <38.942760, 38.914894, 42.631828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460155, 38.350342, 42.295155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444344, 38.696903, 42.096046>,  <38.434856, 38.904842, 41.976582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444344, 38.696903, 42.096046>,  <38.460155, 38.350342, 42.295155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444344, 38.696903, 42.096046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353529, -0.453813, -0.817968,
		-0.934588, -0.208313, -0.288360,
		-0.039532, 0.866406, -0.497773,
		38.432484, 38.956825, 41.946716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207336, 38.148121, 41.741989>,  <38.460155, 38.350342, 42.295155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207336, 38.148121, 41.741989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385891, 38.493526, 41.648117>,  <38.493023, 38.700771, 41.591793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385891, 38.493526, 41.648117>,  <38.207336, 38.148121, 41.741989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385891, 38.493526, 41.648117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409124, -0.430193, -0.804706,
		-0.795836, 0.263196, -0.545319,
		0.446388, 0.863517, -0.234684,
		38.519806, 38.752583, 41.577713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919876, 38.394852, 41.168369>,  <38.207336, 38.148121, 41.741989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919876, 38.394852, 41.168369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297352, 38.526939, 41.176449>,  <38.523838, 38.606190, 41.181297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297352, 38.526939, 41.176449>,  <37.919876, 38.394852, 41.168369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297352, 38.526939, 41.176449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220576, -0.582507, -0.782325,
		-0.246568, 0.742728, -0.622543,
		0.943690, 0.330215, 0.020200,
		38.580460, 38.626003, 41.182510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029396, 38.414463, 40.457558>,  <37.919876, 38.394852, 41.168369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029396, 38.414463, 40.457558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396915, 38.451138, 40.611126>,  <38.617428, 38.473145, 40.703266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396915, 38.451138, 40.611126>,  <38.029396, 38.414463, 40.457558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396915, 38.451138, 40.611126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389666, -0.365787, -0.845198,
		0.062937, 0.926171, -0.371814,
		0.918803, 0.091689, 0.383919,
		38.672558, 38.478645, 40.726303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362896, 38.731174, 39.985817>,  <38.029396, 38.414463, 40.457558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362896, 38.731174, 39.985817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675838, 38.602104, 40.198910>,  <38.863605, 38.524662, 40.326763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675838, 38.602104, 40.198910>,  <38.362896, 38.731174, 39.985817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675838, 38.602104, 40.198910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439650, -0.319740, -0.839330,
		0.441167, 0.890868, -0.108286,
		0.782355, -0.322677, 0.532729,
		38.910545, 38.505302, 40.358727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955040, 38.924252, 39.588188>,  <38.362896, 38.731174, 39.985817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955040, 38.924252, 39.588188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083885, 38.635658, 39.833366>,  <39.161190, 38.462502, 39.980473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083885, 38.635658, 39.833366>,  <38.955040, 38.924252, 39.588188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083885, 38.635658, 39.833366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450151, -0.452856, -0.769601,
		0.832832, 0.523816, 0.178907,
		0.322111, -0.721483, 0.612949,
		39.180519, 38.419212, 40.017250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619205, 38.853024, 39.369106>,  <38.955040, 38.924252, 39.588188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619205, 38.853024, 39.369106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518578, 38.521423, 39.568893>,  <39.458202, 38.322464, 39.688766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518578, 38.521423, 39.568893>,  <39.619205, 38.853024, 39.369106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518578, 38.521423, 39.568893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406940, -0.558831, -0.722570,
		0.878131, 0.021478, 0.477938,
		-0.251567, -0.829003, 0.499467,
		39.443108, 38.272724, 39.718735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235134, 38.425262, 39.368156>,  <39.619205, 38.853024, 39.369106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235134, 38.425262, 39.368156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923637, 38.187592, 39.448666>,  <39.736740, 38.044991, 39.496971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923637, 38.187592, 39.448666>,  <40.235134, 38.425262, 39.368156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923637, 38.187592, 39.448666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381855, -0.703505, -0.599389,
		0.497736, -0.389916, 0.774741,
		-0.778746, -0.594177, 0.201268,
		39.690014, 38.009338, 39.509045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519783, 37.779991, 39.473442>,  <40.235134, 38.425262, 39.368156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519783, 37.779991, 39.473442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138824, 37.710865, 39.372978>,  <39.910252, 37.669388, 39.312698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138824, 37.710865, 39.372978>,  <40.519783, 37.779991, 39.473442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138824, 37.710865, 39.372978> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304855, -0.548722, -0.778439,
		-0.003290, -0.817948, 0.575283,
		-0.952393, -0.172816, -0.251161,
		39.853107, 37.659019, 39.297630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443214, 37.019718, 39.497128>,  <40.519783, 37.779991, 39.473442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443214, 37.019718, 39.497128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172237, 37.191097, 39.257957>,  <40.009651, 37.293922, 39.114456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172237, 37.191097, 39.257957>,  <40.443214, 37.019718, 39.497128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172237, 37.191097, 39.257957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253930, -0.626674, -0.736749,
		-0.690359, -0.650932, 0.315739,
		-0.677439, 0.428446, -0.597922,
		39.969006, 37.319630, 39.078583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839882, 36.607964, 39.267380>,  <40.443214, 37.019718, 39.497128>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839882, 36.607964, 39.267380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877811, 36.885075, 38.981422>,  <39.900570, 37.051342, 38.809849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877811, 36.885075, 38.981422>,  <39.839882, 36.607964, 39.267380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.877811, 36.885075, 38.981422> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098675, -0.721133, -0.685733,
		-0.990591, -0.005516, -0.136743,
		0.094827, 0.692775, -0.714892,
		39.906261, 37.092907, 38.766956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310173, 36.093296, 39.613529>,  <39.839882, 36.607964, 39.267380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310173, 36.093296, 39.613529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173973, 36.341175, 39.896381>,  <39.092251, 36.489902, 40.066093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173973, 36.341175, 39.896381>,  <39.310173, 36.093296, 39.613529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173973, 36.341175, 39.896381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884746, 0.465729, 0.017885,
		-0.318249, 0.631722, -0.706855,
		-0.340502, 0.619696, 0.707132,
		39.071823, 36.527084, 40.108521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779671, 35.731277, 39.340359>,  <39.310173, 36.093296, 39.613529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779671, 35.731277, 39.340359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052917, 35.470600, 39.472206>,  <40.216866, 35.314194, 39.551315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052917, 35.470600, 39.472206>,  <39.779671, 35.731277, 39.340359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052917, 35.470600, 39.472206> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419458, 0.019355, 0.907569,
		-0.597833, -0.758238, -0.260134,
		0.683118, -0.651690, 0.329620,
		40.257854, 35.275093, 39.571091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421028, 35.181473, 39.691883>,  <39.779671, 35.731277, 39.340359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421028, 35.181473, 39.691883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788551, 35.153206, 39.847214>,  <40.009064, 35.136246, 39.940414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788551, 35.153206, 39.847214>,  <39.421028, 35.181473, 39.691883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788551, 35.153206, 39.847214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393862, -0.099821, 0.913733,
		-0.025804, -0.992493, -0.119548,
		0.918807, -0.070663, 0.388330,
		40.064194, 35.132004, 39.963711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378002, 34.606483, 40.189575>,  <39.421028, 35.181473, 39.691883>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378002, 34.606483, 40.189575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681793, 34.855301, 40.265743>,  <39.864067, 35.004593, 40.311443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681793, 34.855301, 40.265743>,  <39.378002, 34.606483, 40.189575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681793, 34.855301, 40.265743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301039, 0.076570, 0.950533,
		0.576693, -0.779229, 0.245412,
		0.759474, 0.622044, 0.190421,
		39.909634, 35.041916, 40.322868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615227, 34.384804, 40.835876>,  <39.378002, 34.606483, 40.189575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615227, 34.384804, 40.835876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707699, 34.769253, 40.775475>,  <39.763184, 34.999920, 40.739231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707699, 34.769253, 40.775475>,  <39.615227, 34.384804, 40.835876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.707699, 34.769253, 40.775475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303702, 0.218747, 0.927316,
		0.924295, -0.168516, 0.342464,
		0.231181, 0.961120, -0.151008,
		39.777054, 35.057590, 40.730171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882179, 34.617321, 41.508820>,  <39.615227, 34.384804, 40.835876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882179, 34.617321, 41.508820> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788780, 34.951698, 41.310150>,  <39.732742, 35.152325, 41.190948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788780, 34.951698, 41.310150>,  <39.882179, 34.617321, 41.508820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788780, 34.951698, 41.310150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360687, 0.399887, 0.842613,
		0.902987, 0.375890, 0.208141,
		-0.233497, 0.835941, -0.496670,
		39.718731, 35.202480, 41.161148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127701, 35.231892, 41.938976>,  <39.882179, 34.617321, 41.508820>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127701, 35.231892, 41.938976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920834, 35.435604, 41.663826>,  <39.796715, 35.557831, 41.498737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920834, 35.435604, 41.663826>,  <40.127701, 35.231892, 41.938976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920834, 35.435604, 41.663826> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322930, 0.628189, 0.707880,
		0.792623, 0.588229, -0.160419,
		-0.517170, 0.509278, -0.687874,
		39.765682, 35.588387, 41.457462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342136, 35.885986, 41.983761>,  <40.127701, 35.231892, 41.938976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342136, 35.885986, 41.983761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970028, 35.857258, 41.839851>,  <39.746761, 35.840019, 41.753506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970028, 35.857258, 41.839851>,  <40.342136, 35.885986, 41.983761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970028, 35.857258, 41.839851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314866, 0.659598, 0.682487,
		0.188288, 0.748179, -0.636220,
		-0.930272, -0.071820, -0.359771,
		39.690945, 35.835712, 41.731918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002289, 36.609684, 42.070026>,  <40.342136, 35.885986, 41.983761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002289, 36.609684, 42.070026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728031, 36.320236, 42.038361>,  <39.563477, 36.146568, 42.019363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728031, 36.320236, 42.038361>,  <40.002289, 36.609684, 42.070026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728031, 36.320236, 42.038361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510066, 0.399990, 0.761472,
		-0.519355, 0.562474, -0.643346,
		-0.685640, -0.723624, -0.079162,
		39.522339, 36.103149, 42.014610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291702, 37.006729, 42.050621>,  <40.002289, 36.609684, 42.070026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291702, 37.006729, 42.050621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230007, 36.629051, 42.167034>,  <39.192989, 36.402443, 42.236881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230007, 36.629051, 42.167034>,  <39.291702, 37.006729, 42.050621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230007, 36.629051, 42.167034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614214, 0.322353, 0.720298,
		-0.773920, -0.067661, -0.629659,
		-0.154237, -0.944198, 0.291034,
		39.183735, 36.345791, 42.254345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626114, 36.897873, 42.293919>,  <39.291702, 37.006729, 42.050621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626114, 36.897873, 42.293919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805248, 36.593388, 42.481533>,  <38.912727, 36.410698, 42.594101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805248, 36.593388, 42.481533>,  <38.626114, 36.897873, 42.293919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805248, 36.593388, 42.481533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421008, 0.283263, 0.861693,
		-0.788793, -0.583366, -0.193621,
		0.447837, -0.761214, 0.469038,
		38.939598, 36.365025, 42.622246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108028, 36.502388, 42.636395>,  <38.626114, 36.897873, 42.293919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108028, 36.502388, 42.636395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451744, 36.409332, 42.818604>,  <38.657974, 36.353500, 42.927929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451744, 36.409332, 42.818604>,  <38.108028, 36.502388, 42.636395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451744, 36.409332, 42.818604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368397, 0.336312, 0.866705,
		-0.354826, -0.912564, 0.203286,
		0.859292, -0.232639, 0.455518,
		38.709530, 36.339542, 42.955257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909100, 36.256428, 43.256416>,  <38.108028, 36.502388, 42.636395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909100, 36.256428, 43.256416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289486, 36.339043, 43.348511>,  <38.517715, 36.388611, 43.403767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289486, 36.339043, 43.348511>,  <37.909100, 36.256428, 43.256416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289486, 36.339043, 43.348511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308338, 0.691777, 0.652971,
		-0.024413, -0.691944, 0.721538,
		0.950964, 0.206537, 0.230241,
		38.574776, 36.401005, 43.417583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867706, 36.307007, 43.861809>,  <37.909100, 36.256428, 43.256416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867706, 36.307007, 43.861809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218922, 36.495419, 43.827927>,  <38.429653, 36.608463, 43.807598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218922, 36.495419, 43.827927>,  <37.867706, 36.307007, 43.861809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218922, 36.495419, 43.827927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145556, 0.431446, 0.890319,
		0.455915, -0.769405, 0.447389,
		0.878040, 0.471030, -0.084711,
		38.482334, 36.636726, 43.802513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973667, 35.628826, 44.209507>,  <37.867706, 36.307007, 43.861809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973667, 35.628826, 44.209507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652668, 35.393494, 44.249222>,  <37.460068, 35.252293, 44.273048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652668, 35.393494, 44.249222>,  <37.973667, 35.628826, 44.209507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652668, 35.393494, 44.249222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088004, -0.281297, -0.955577,
		0.590128, -0.758112, 0.277516,
		-0.802499, -0.588335, 0.099285,
		37.411919, 35.216991, 44.279007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226887, 35.008083, 43.991165>,  <37.973667, 35.628826, 44.209507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226887, 35.008083, 43.991165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828255, 34.992176, 43.962177>,  <37.589077, 34.982632, 43.944786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828255, 34.992176, 43.962177>,  <38.226887, 35.008083, 43.991165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828255, 34.992176, 43.962177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079627, -0.226323, -0.970792,
		0.022205, -0.973240, 0.228715,
		-0.996577, -0.039768, -0.072471,
		37.529282, 34.980247, 43.940437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068283, 34.402878, 43.650715>,  <38.226887, 35.008083, 43.991165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068283, 34.402878, 43.650715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750668, 34.637993, 43.588730>,  <37.560097, 34.779060, 43.551540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750668, 34.637993, 43.588730>,  <38.068283, 34.402878, 43.650715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750668, 34.637993, 43.588730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008879, -0.243681, -0.969815,
		-0.607803, -0.771446, 0.188273,
		-0.794038, 0.587785, -0.154960,
		37.512455, 34.814327, 43.542240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651554, 34.055702, 43.175545>,  <38.068283, 34.402878, 43.650715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651554, 34.055702, 43.175545> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479103, 34.416199, 43.158115>,  <37.375633, 34.632496, 43.147655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479103, 34.416199, 43.158115>,  <37.651554, 34.055702, 43.175545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479103, 34.416199, 43.158115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209672, -0.147042, -0.966652,
		-0.877590, -0.407615, 0.252358,
		-0.431130, 0.901237, -0.043577,
		37.349766, 34.686569, 43.145042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075417, 33.929596, 42.806026>,  <37.651554, 34.055702, 43.175545>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075417, 33.929596, 42.806026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136246, 34.323746, 42.775291>,  <37.172741, 34.560238, 42.756851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136246, 34.323746, 42.775291>,  <37.075417, 33.929596, 42.806026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136246, 34.323746, 42.775291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414515, -0.006990, -0.910016,
		-0.897247, 0.170234, 0.407391,
		0.152068, 0.985379, -0.076836,
		37.181866, 34.619358, 42.752239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399742, 34.181690, 42.558842>,  <37.075417, 33.929596, 42.806026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399742, 34.181690, 42.558842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683544, 34.445896, 42.460598>,  <36.853825, 34.604420, 42.401653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.683544, 34.445896, 42.460598>,  <36.399742, 34.181690, 42.558842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683544, 34.445896, 42.460598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347641, 0.024901, -0.937297,
		-0.612983, 0.750399, 0.247290,
		0.709505, 0.660515, -0.245606,
		36.896397, 34.644051, 42.386917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020016, 34.720486, 42.237114>,  <36.399742, 34.181690, 42.558842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020016, 34.720486, 42.237114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393143, 34.795559, 42.114063>,  <36.617020, 34.840603, 42.040234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393143, 34.795559, 42.114063>,  <36.020016, 34.720486, 42.237114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393143, 34.795559, 42.114063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345271, 0.221052, -0.912099,
		-0.103184, 0.957033, 0.271002,
		0.932813, 0.187683, -0.307627,
		36.672985, 34.851864, 42.021774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069298, 35.313725, 41.739872>,  <36.020016, 34.720486, 42.237114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069298, 35.313725, 41.739872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414673, 35.131756, 41.652676>,  <36.621899, 35.022575, 41.600357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414673, 35.131756, 41.652676>,  <36.069298, 35.313725, 41.739872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414673, 35.131756, 41.652676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163786, 0.155907, -0.974098,
		0.477125, 0.876777, 0.060106,
		0.863438, -0.454923, -0.217991,
		36.673706, 34.995277, 41.587280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370296, 35.610233, 41.221981>,  <36.069298, 35.313725, 41.739872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370296, 35.610233, 41.221981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558090, 35.259266, 41.182549>,  <36.670769, 35.048687, 41.158890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558090, 35.259266, 41.182549>,  <36.370296, 35.610233, 41.221981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558090, 35.259266, 41.182549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064398, 0.077322, -0.994924,
		0.880588, 0.473451, -0.020202,
		0.469486, -0.877419, -0.098579,
		36.698936, 34.996040, 41.152973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782722, 35.722843, 40.695827>,  <36.370296, 35.610233, 41.221981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782722, 35.722843, 40.695827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750431, 35.325310, 40.726242>,  <36.731056, 35.086792, 40.744492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750431, 35.325310, 40.726242>,  <36.782722, 35.722843, 40.695827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.750431, 35.325310, 40.726242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133574, -0.064807, -0.988917,
		0.987745, -0.089993, -0.127518,
		-0.080731, -0.993832, 0.076034,
		36.726212, 35.027161, 40.749054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157021, 35.412415, 40.147873>,  <36.782722, 35.722843, 40.695827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157021, 35.412415, 40.147873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894978, 35.125687, 40.243370>,  <36.737751, 34.953651, 40.300671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894978, 35.125687, 40.243370>,  <37.157021, 35.412415, 40.147873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894978, 35.125687, 40.243370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104669, -0.226843, -0.968290,
		0.748248, -0.659326, 0.073578,
		-0.655110, -0.716820, 0.238746,
		36.698444, 34.910641, 40.314995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452770, 34.838821, 39.871197>,  <37.157021, 35.412415, 40.147873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452770, 34.838821, 39.871197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056828, 34.793823, 39.905895>,  <36.819260, 34.766823, 39.926716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056828, 34.793823, 39.905895>,  <37.452770, 34.838821, 39.871197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056828, 34.793823, 39.905895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056717, -0.246919, -0.967375,
		0.130246, -0.962484, 0.238034,
		-0.989858, -0.112496, 0.086749,
		36.759869, 34.760075, 39.931919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.433319, 35.574261, 48.102283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.052853, 35.619293, 47.987312>,  <36.824574, 35.646313, 47.918331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.052853, 35.619293, 47.987312>,  <37.433319, 35.574261, 48.102283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052853, 35.619293, 47.987312> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193715, -0.507266, -0.839735,
		-0.240338, -0.854405, 0.460684,
		-0.951164, 0.112579, -0.287427,
		36.767502, 35.653069, 47.901085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218689, 34.943031, 47.819221>,  <37.433319, 35.574261, 48.102283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218689, 34.943031, 47.819221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.979504, 35.222134, 47.661453>,  <36.835991, 35.389595, 47.566792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.979504, 35.222134, 47.661453>,  <37.218689, 34.943031, 47.819221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979504, 35.222134, 47.661453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141050, -0.392808, -0.908739,
		-0.789013, -0.599028, 0.136467,
		-0.597966, 0.697758, -0.394423,
		36.800114, 35.431461, 47.543125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827923, 34.489063, 47.237053>,  <37.218689, 34.943031, 47.819221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827923, 34.489063, 47.237053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.756256, 34.878517, 47.180580>,  <36.713257, 35.112190, 47.146698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.756256, 34.878517, 47.180580>,  <36.827923, 34.489063, 47.237053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.756256, 34.878517, 47.180580> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088535, -0.126965, -0.987948,
		-0.979827, -0.189510, -0.063452,
		-0.179169, 0.973636, -0.141182,
		36.702507, 35.170609, 47.138226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254124, 34.512726, 46.834351>,  <36.827923, 34.489063, 47.237053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254124, 34.512726, 46.834351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.462585, 34.850765, 46.786667>,  <36.587662, 35.053589, 46.758057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.462585, 34.850765, 46.786667>,  <36.254124, 34.512726, 46.834351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462585, 34.850765, 46.786667> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055912, -0.173182, -0.983302,
		-0.851628, 0.505788, -0.137506,
		0.521155, 0.845096, -0.119207,
		36.618931, 35.104294, 46.750904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943825, 34.898090, 46.235950>,  <36.254124, 34.512726, 46.834351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943825, 34.898090, 46.235950> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.316006, 35.033764, 46.291397>,  <36.539314, 35.115166, 46.324665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.316006, 35.033764, 46.291397>,  <35.943825, 34.898090, 46.235950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316006, 35.033764, 46.291397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137949, 0.026196, -0.990093,
		-0.339451, 0.940357, -0.022415,
		0.930453, 0.339180, 0.138614,
		36.595142, 35.135517, 46.332981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998600, 35.445297, 45.869812>,  <35.943825, 34.898090, 46.235950>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998600, 35.445297, 45.869812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.385509, 35.345535, 45.888477>,  <36.617657, 35.285679, 45.899677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.385509, 35.345535, 45.888477>,  <35.998600, 35.445297, 45.869812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385509, 35.345535, 45.888477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057186, 0.035093, -0.997747,
		0.247206, 0.967763, 0.048207,
		0.967274, -0.249405, 0.046667,
		36.675694, 35.270714, 45.902477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339924, 35.859711, 45.427750>,  <35.998600, 35.445297, 45.869812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339924, 35.859711, 45.427750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.629787, 35.584511, 45.443428>,  <36.803703, 35.419392, 45.452835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.629787, 35.584511, 45.443428>,  <36.339924, 35.859711, 45.427750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629787, 35.584511, 45.443428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182683, 0.136954, -0.973586,
		0.664455, 0.712675, 0.224930,
		0.724656, -0.687995, 0.039194,
		36.847183, 35.378113, 45.455185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784695, 36.100113, 45.028652>,  <36.339924, 35.859711, 45.427750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784695, 36.100113, 45.028652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.937122, 35.730812, 45.048191>,  <37.028580, 35.509232, 45.059914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.937122, 35.730812, 45.048191>,  <36.784695, 36.100113, 45.028652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937122, 35.730812, 45.048191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243331, 0.049177, -0.968696,
		0.891951, 0.381026, 0.243396,
		0.381068, -0.923256, 0.048851,
		37.051441, 35.453835, 45.062847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462433, 36.092300, 44.728043>,  <36.784695, 36.100113, 45.028652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462433, 36.092300, 44.728043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.333260, 35.713757, 44.723763>,  <37.255756, 35.486629, 44.721195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.333260, 35.713757, 44.723763>,  <37.462433, 36.092300, 44.728043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333260, 35.713757, 44.723763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334543, -0.103568, -0.936672,
		0.885322, -0.306063, 0.350044,
		-0.322934, -0.946361, -0.010700,
		37.236378, 35.429848, 44.720554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101826, 36.269108, 44.526184>,  <37.462433, 36.092300, 44.728043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101826, 36.269108, 44.526184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.306396, 36.551102, 44.329639>,  <38.429138, 36.720299, 44.211712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.306396, 36.551102, 44.329639>,  <38.101826, 36.269108, 44.526184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306396, 36.551102, 44.329639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153551, 0.637567, 0.754937,
		0.845497, -0.310646, 0.434320,
		0.511426, 0.704988, -0.491362,
		38.459824, 36.762596, 44.182232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634659, 36.600433, 44.983196>,  <38.101826, 36.269108, 44.526184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634659, 36.600433, 44.983196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.582714, 36.877914, 44.699814>,  <38.551548, 37.044403, 44.529785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.582714, 36.877914, 44.699814>,  <38.634659, 36.600433, 44.983196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.582714, 36.877914, 44.699814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165205, 0.689380, 0.705310,
		0.977672, 0.208633, 0.025080,
		-0.129861, 0.693706, -0.708455,
		38.543755, 37.086025, 44.487278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057072, 37.117462, 45.205624>,  <38.634659, 36.600433, 44.983196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057072, 37.117462, 45.205624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.816727, 37.298115, 44.941807>,  <38.672520, 37.406506, 44.783516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.816727, 37.298115, 44.941807>,  <39.057072, 37.117462, 45.205624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816727, 37.298115, 44.941807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081471, 0.786199, 0.612579,
		0.795189, 0.421810, -0.435604,
		-0.600863, 0.451627, -0.659542,
		38.636467, 37.433601, 44.743942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337971, 37.804340, 45.174183>,  <39.057072, 37.117462, 45.205624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337971, 37.804340, 45.174183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.954216, 37.789299, 45.062351>,  <38.723965, 37.780273, 44.995251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.954216, 37.789299, 45.062351>,  <39.337971, 37.804340, 45.174183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954216, 37.789299, 45.062351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228066, 0.686685, 0.690253,
		0.166027, 0.725982, -0.667372,
		-0.959386, -0.037605, -0.279580,
		38.666401, 37.778019, 44.978477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101597, 38.514481, 45.331799>,  <39.337971, 37.804340, 45.174183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101597, 38.514481, 45.331799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.744198, 38.336411, 45.308186>,  <38.529758, 38.229568, 45.294018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.744198, 38.336411, 45.308186>,  <39.101597, 38.514481, 45.331799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744198, 38.336411, 45.308186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357553, 0.625691, 0.693302,
		-0.271702, 0.640571, -0.718225,
		-0.893496, -0.445174, -0.059037,
		38.476151, 38.202858, 45.290474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736168, 39.099991, 45.321732>,  <39.101597, 38.514481, 45.331799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736168, 39.099991, 45.321732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.494331, 38.789799, 45.394497>,  <38.349228, 38.603683, 45.438156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.494331, 38.789799, 45.394497>,  <38.736168, 39.099991, 45.321732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.494331, 38.789799, 45.394497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328236, 0.450646, 0.830168,
		-0.725761, 0.442203, -0.526999,
		-0.604593, -0.775484, 0.181914,
		38.312954, 38.557152, 45.449070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084839, 39.295212, 45.334740>,  <38.736168, 39.099991, 45.321732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084839, 39.295212, 45.334740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.056179, 38.964104, 45.557327>,  <38.038982, 38.765438, 45.690880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.056179, 38.964104, 45.557327>,  <38.084839, 39.295212, 45.334740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056179, 38.964104, 45.557327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577256, 0.489390, 0.653661,
		-0.813414, -0.274393, -0.512901,
		-0.071648, -0.827772, 0.556471,
		38.034683, 38.715771, 45.724270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367134, 39.157841, 45.546368>,  <38.084839, 39.295212, 45.334740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367134, 39.157841, 45.546368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.613270, 38.989307, 45.812851>,  <37.760952, 38.888187, 45.972740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.613270, 38.989307, 45.812851>,  <37.367134, 39.157841, 45.546368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613270, 38.989307, 45.812851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516274, 0.423247, 0.744529,
		-0.595663, -0.802087, 0.042921,
		0.615343, -0.421329, 0.666209,
		37.797874, 38.862907, 46.012714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979687, 38.976231, 46.096535>,  <37.367134, 39.157841, 45.546368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979687, 38.976231, 46.096535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.339569, 38.963463, 46.270664>,  <37.555500, 38.955803, 46.375141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.339569, 38.963463, 46.270664>,  <36.979687, 38.976231, 46.096535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339569, 38.963463, 46.270664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406578, 0.301561, 0.862413,
		-0.158800, -0.952913, 0.258341,
		0.899709, -0.031916, 0.435321,
		37.609482, 38.953888, 46.401260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863605, 38.558182, 46.654980>,  <36.979687, 38.976231, 46.096535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863605, 38.558182, 46.654980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.193367, 38.764061, 46.749165>,  <37.391224, 38.887589, 46.805676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.193367, 38.764061, 46.749165>,  <36.863605, 38.558182, 46.654980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193367, 38.764061, 46.749165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311735, 0.065665, 0.947897,
		0.472421, -0.854852, 0.214585,
		0.824403, 0.514700, 0.235465,
		37.440689, 38.918472, 46.819805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020344, 38.314518, 47.371727>,  <36.863605, 38.558182, 46.654980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020344, 38.314518, 47.371727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.217773, 38.659916, 47.330231>,  <37.336231, 38.867153, 47.305332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.217773, 38.659916, 47.330231>,  <37.020344, 38.314518, 47.371727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217773, 38.659916, 47.330231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328459, 0.295521, 0.897097,
		0.805296, -0.408708, 0.429484,
		0.493572, 0.863496, -0.103739,
		37.365845, 38.918964, 47.299110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259129, 38.416100, 47.967285>,  <37.020344, 38.314518, 47.371727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259129, 38.416100, 47.967285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.327900, 38.789761, 47.842197>,  <37.369164, 39.013958, 47.767143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.327900, 38.789761, 47.842197>,  <37.259129, 38.416100, 47.967285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327900, 38.789761, 47.842197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223076, 0.346121, 0.911283,
		0.959519, -0.086919, 0.267897,
		0.171932, 0.934155, -0.312720,
		37.379478, 39.070007, 47.748383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803181, 38.862488, 48.400333>,  <37.259129, 38.416100, 47.967285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803181, 38.862488, 48.400333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.545013, 39.123150, 48.240944>,  <37.390114, 39.279545, 48.145309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.545013, 39.123150, 48.240944>,  <37.803181, 38.862488, 48.400333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545013, 39.123150, 48.240944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053247, 0.482025, 0.874538,
		0.761968, 0.585664, -0.276411,
		-0.645422, 0.651651, -0.398473,
		37.351387, 39.318645, 48.121403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981789, 39.506931, 48.724518>,  <37.803181, 38.862488, 48.400333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981789, 39.506931, 48.724518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.599442, 39.539291, 48.611538>,  <37.370033, 39.558708, 48.543751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.599442, 39.539291, 48.611538>,  <37.981789, 39.506931, 48.724518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599442, 39.539291, 48.611538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216146, 0.457548, 0.862514,
		0.199010, 0.885497, -0.419869,
		-0.955864, 0.080896, -0.282453,
		37.312683, 39.563560, 48.526802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.279804, 39.119827, 46.969112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.636999, 38.959358, 47.050728>,  <30.851316, 38.863075, 47.099697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.636999, 38.959358, 47.050728>,  <30.279804, 39.119827, 46.969112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636999, 38.959358, 47.050728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267731, 0.109065, -0.957301,
		0.361793, 0.909485, 0.204801,
		0.892987, -0.401176, 0.204039,
		30.904896, 38.839005, 47.111938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614374, 39.370968, 46.436951>,  <30.279804, 39.119827, 46.969112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614374, 39.370968, 46.436951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.896908, 39.136490, 46.595680>,  <31.066429, 38.995804, 46.690918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.896908, 39.136490, 46.595680>,  <30.614374, 39.370968, 46.436951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896908, 39.136490, 46.595680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334614, -0.217503, -0.916911,
		0.623797, 0.780429, 0.042518,
		0.706336, -0.586193, 0.396820,
		31.108809, 38.960632, 46.714725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270737, 39.658932, 46.204636>,  <30.614374, 39.370968, 46.436951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270737, 39.658932, 46.204636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.322563, 39.268738, 46.275780>,  <31.353659, 39.034622, 46.318466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.322563, 39.268738, 46.275780>,  <31.270737, 39.658932, 46.204636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.322563, 39.268738, 46.275780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528798, -0.083759, -0.844605,
		0.838800, 0.203481, 0.504985,
		0.129564, -0.975490, 0.177858,
		31.361433, 38.976089, 46.329136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906649, 39.612144, 46.015598>,  <31.270737, 39.658932, 46.204636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906649, 39.612144, 46.015598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.746681, 39.246269, 45.992218>,  <31.650702, 39.026745, 45.978191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.746681, 39.246269, 45.992218>,  <31.906649, 39.612144, 46.015598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746681, 39.246269, 45.992218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586870, -0.206563, -0.782889,
		0.704023, -0.347396, 0.619409,
		-0.399919, -0.914685, -0.058451,
		31.626705, 38.971863, 45.974682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466877, 39.129452, 45.839947>,  <31.906649, 39.612144, 46.015598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466877, 39.129452, 45.839947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.150566, 38.903774, 45.744984>,  <31.960781, 38.768368, 45.688007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.150566, 38.903774, 45.744984>,  <32.466877, 39.129452, 45.839947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150566, 38.903774, 45.744984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452616, -0.277845, -0.847314,
		0.412090, -0.777486, 0.475076,
		-0.790773, -0.564196, -0.237406,
		31.913334, 38.734516, 45.673763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735519, 38.450928, 45.573814>,  <32.466877, 39.129452, 45.839947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735519, 38.450928, 45.573814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.365822, 38.480129, 45.423912>,  <32.144005, 38.497650, 45.333969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.365822, 38.480129, 45.423912>,  <32.735519, 38.450928, 45.573814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365822, 38.480129, 45.423912> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327512, -0.352895, -0.876471,
		-0.196233, -0.932811, 0.302253,
		-0.924245, 0.073001, -0.374756,
		32.088547, 38.502029, 45.311485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534592, 37.806362, 45.301918>,  <32.735519, 38.450928, 45.573814>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534592, 37.806362, 45.301918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.292862, 38.055981, 45.103786>,  <32.147823, 38.205753, 44.984909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.292862, 38.055981, 45.103786>,  <32.534592, 37.806362, 45.301918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292862, 38.055981, 45.103786> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235248, -0.454218, -0.859269,
		-0.761213, -0.635806, 0.127691,
		-0.604328, 0.624048, -0.495329,
		32.111565, 38.243195, 44.955189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165573, 37.379723, 44.771751>,  <32.534592, 37.806362, 45.301918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165573, 37.379723, 44.771751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.117828, 37.749905, 44.627930>,  <32.089180, 37.972015, 44.541637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.117828, 37.749905, 44.627930>,  <32.165573, 37.379723, 44.771751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117828, 37.749905, 44.627930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181936, -0.335619, -0.924262,
		-0.976039, -0.175740, -0.128314,
		-0.119365, 0.925460, -0.359550,
		32.082020, 38.027542, 44.520065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618227, 37.308773, 44.270527>,  <32.165573, 37.379723, 44.771751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618227, 37.308773, 44.270527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.844423, 37.630211, 44.196274>,  <31.980141, 37.823074, 44.151722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.844423, 37.630211, 44.196274>,  <31.618227, 37.308773, 44.270527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844423, 37.630211, 44.196274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124152, -0.305448, -0.944080,
		-0.815358, 0.510821, -0.272495,
		0.565489, 0.803594, -0.185630,
		32.014069, 37.871288, 44.140583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.565563, 37.339951, 43.611698>,  <31.618227, 37.308773, 44.270527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.565563, 37.339951, 43.611698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.814449, 37.646763, 43.674328>,  <31.963781, 37.830849, 43.711906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.814449, 37.646763, 43.674328>,  <31.565563, 37.339951, 43.611698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814449, 37.646763, 43.674328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255247, -0.009699, -0.966827,
		-0.740066, 0.641539, -0.201817,
		0.622215, 0.767029, 0.156573,
		32.001114, 37.876873, 43.721298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441616, 37.793705, 43.112514>,  <31.565563, 37.339951, 43.611698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441616, 37.793705, 43.112514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.820431, 37.859978, 43.222549>,  <32.047718, 37.899742, 43.288570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.820431, 37.859978, 43.222549>,  <31.441616, 37.793705, 43.112514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820431, 37.859978, 43.222549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300832, -0.158011, -0.940496,
		-0.112353, 0.973439, -0.199483,
		0.947036, 0.165679, 0.275089,
		32.104542, 37.909683, 43.305077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720930, 38.184628, 42.597115>,  <31.441616, 37.793705, 43.112514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720930, 38.184628, 42.597115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.046471, 38.032757, 42.773067>,  <32.241795, 37.941635, 42.878639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.046471, 38.032757, 42.773067>,  <31.720930, 38.184628, 42.597115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046471, 38.032757, 42.773067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422448, -0.133175, -0.896550,
		0.398976, 0.915485, 0.052007,
		0.813852, -0.379672, 0.439879,
		32.290627, 37.918854, 42.905029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331646, 38.524120, 42.228371>,  <31.720930, 38.184628, 42.597115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331646, 38.524120, 42.228371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.462181, 38.200184, 42.423374>,  <32.540501, 38.005821, 42.540375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.462181, 38.200184, 42.423374>,  <32.331646, 38.524120, 42.228371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462181, 38.200184, 42.423374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562984, -0.247768, -0.788454,
		0.759312, 0.531758, 0.375072,
		0.326336, -0.809842, 0.487504,
		32.560081, 37.957230, 42.569626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071133, 38.490051, 42.155579>,  <32.331646, 38.524120, 42.228371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071133, 38.490051, 42.155579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.923958, 38.129772, 42.247982>,  <32.835655, 37.913605, 42.303425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.923958, 38.129772, 42.247982>,  <33.071133, 38.490051, 42.155579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923958, 38.129772, 42.247982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537976, -0.408835, -0.737181,
		0.758424, -0.146955, 0.634979,
		-0.367934, -0.900699, 0.231012,
		32.813576, 37.859562, 42.317284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871910, 38.414085, 42.103596>,  <33.071133, 38.490051, 42.155579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871910, 38.414085, 42.103596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.026173, 38.716145, 41.891552>,  <34.118732, 38.897381, 41.764324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.026173, 38.716145, 41.891552>,  <33.871910, 38.414085, 42.103596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026173, 38.716145, 41.891552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108203, 0.607612, 0.786829,
		0.916274, -0.246089, 0.316041,
		0.385660, 0.755148, -0.530112,
		34.141872, 38.942688, 41.732517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225395, 38.797325, 42.645687>,  <33.871910, 38.414085, 42.103596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225395, 38.797325, 42.645687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.213898, 39.058487, 42.342930>,  <34.207001, 39.215183, 42.161274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.213898, 39.058487, 42.342930>,  <34.225395, 38.797325, 42.645687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213898, 39.058487, 42.342930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060003, 0.754718, 0.653300,
		0.997784, 0.064193, 0.017485,
		-0.028741, 0.652901, -0.756898,
		34.205276, 39.254356, 42.115860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635433, 39.315723, 42.891541>,  <34.225395, 38.797325, 42.645687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635433, 39.315723, 42.891541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.386581, 39.450092, 42.608665>,  <34.237270, 39.530712, 42.438942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.386581, 39.450092, 42.608665>,  <34.635433, 39.315723, 42.891541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386581, 39.450092, 42.608665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244969, 0.774397, 0.583352,
		0.743605, 0.536158, -0.399482,
		-0.622127, 0.335923, -0.707188,
		34.199944, 39.550869, 42.396507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724705, 40.047977, 42.844109>,  <34.635433, 39.315723, 42.891541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724705, 40.047977, 42.844109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.369953, 39.982540, 42.671280>,  <34.157101, 39.943279, 42.567581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.369953, 39.982540, 42.671280>,  <34.724705, 40.047977, 42.844109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369953, 39.982540, 42.671280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361705, 0.827691, 0.429065,
		0.287431, 0.536811, -0.793232,
		-0.886878, -0.163589, -0.432072,
		34.103889, 39.933464, 42.541656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421993, 40.700958, 42.641521>,  <34.724705, 40.047977, 42.844109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421993, 40.700958, 42.641521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.131012, 40.434082, 42.705593>,  <33.956421, 40.273956, 42.744034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.131012, 40.434082, 42.705593>,  <34.421993, 40.700958, 42.641521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131012, 40.434082, 42.705593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429603, 0.624902, 0.651873,
		-0.535020, 0.405399, -0.741219,
		-0.727458, -0.667195, 0.160175,
		33.912773, 40.233925, 42.753647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761696, 41.072186, 42.752369>,  <34.421993, 40.700958, 42.641521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761696, 41.072186, 42.752369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.630661, 40.714428, 42.874187>,  <33.552040, 40.499775, 42.947277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.630661, 40.714428, 42.874187>,  <33.761696, 41.072186, 42.752369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630661, 40.714428, 42.874187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587655, 0.445269, 0.675571,
		-0.739831, 0.042341, -0.671459,
		-0.327584, -0.894395, 0.304542,
		33.532387, 40.446110, 42.965549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041874, 41.180420, 42.792423>,  <33.761696, 41.072186, 42.752369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041874, 41.180420, 42.792423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.125614, 40.860374, 43.017277>,  <33.175858, 40.668346, 43.152187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.125614, 40.860374, 43.017277>,  <33.041874, 41.180420, 42.792423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125614, 40.860374, 43.017277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468815, 0.422364, 0.775771,
		-0.858128, -0.425946, -0.286682,
		0.209353, -0.800112, 0.562132,
		33.188419, 40.620342, 43.185917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461315, 41.131500, 43.231026>,  <33.041874, 41.180420, 42.792423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461315, 41.131500, 43.231026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.725166, 40.911213, 43.435616>,  <32.883476, 40.779041, 43.558369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.725166, 40.911213, 43.435616>,  <32.461315, 41.131500, 43.231026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725166, 40.911213, 43.435616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357154, 0.369094, 0.858027,
		-0.661310, -0.748653, 0.046774,
		0.659628, -0.550716, 0.511470,
		32.923054, 40.745998, 43.589058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116982, 40.666641, 43.732632>,  <32.461315, 41.131500, 43.231026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116982, 40.666641, 43.732632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.480999, 40.698254, 43.895397>,  <32.699409, 40.717220, 43.993057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.480999, 40.698254, 43.895397>,  <32.116982, 40.666641, 43.732632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480999, 40.698254, 43.895397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414505, 0.179419, 0.892185,
		-0.002500, -0.980594, 0.196036,
		0.910044, 0.079027, 0.406909,
		32.754013, 40.721962, 44.017471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024609, 40.363621, 44.355186>,  <32.116982, 40.666641, 43.732632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024609, 40.363621, 44.355186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.370483, 40.558270, 44.404995>,  <32.578011, 40.675060, 44.434879>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.370483, 40.558270, 44.404995>,  <32.024609, 40.363621, 44.355186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370483, 40.558270, 44.404995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237376, 0.177408, 0.955081,
		0.442677, -0.855407, 0.268916,
		0.864691, 0.486627, 0.124519,
		32.629890, 40.704258, 44.442352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.298904, 40.129074, 45.048576>,  <32.024609, 40.363621, 44.355186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.298904, 40.129074, 45.048576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.494194, 40.472698, 44.987064>,  <32.611366, 40.678875, 44.950157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.494194, 40.472698, 44.987064>,  <32.298904, 40.129074, 45.048576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494194, 40.472698, 44.987064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164586, 0.263679, 0.950466,
		0.857058, -0.438732, 0.270124,
		0.488225, 0.859062, -0.153779,
		32.640663, 40.730415, 44.940929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.847973, 40.204948, 45.601559>,  <32.298904, 40.129074, 45.048576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.847973, 40.204948, 45.601559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.768238, 40.574108, 45.469788>,  <32.720398, 40.795605, 45.390724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.768238, 40.574108, 45.469788>,  <32.847973, 40.204948, 45.601559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768238, 40.574108, 45.469788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092118, 0.317034, 0.943930,
		0.975592, 0.218506, 0.021819,
		-0.199337, 0.922900, -0.329424,
		32.708439, 40.850979, 45.370960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338108, 40.691994, 46.030018>,  <32.847973, 40.204948, 45.601559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338108, 40.691994, 46.030018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.044800, 40.916111, 45.875938>,  <32.868813, 41.050583, 45.783489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.044800, 40.916111, 45.875938>,  <33.338108, 40.691994, 46.030018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044800, 40.916111, 45.875938> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161960, 0.406291, 0.899275,
		0.660362, 0.721803, -0.207178,
		-0.733275, 0.560292, -0.385202,
		32.824818, 41.084198, 45.760376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475475, 41.423038, 46.303902>,  <33.338108, 40.691994, 46.030018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475475, 41.423038, 46.303902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.095825, 41.350643, 46.200825>,  <32.868034, 41.307205, 46.138981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.095825, 41.350643, 46.200825>,  <33.475475, 41.423038, 46.303902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095825, 41.350643, 46.200825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287459, 0.163880, 0.943669,
		-0.128566, 0.969735, -0.207570,
		-0.949125, -0.180992, -0.257689,
		32.811089, 41.296345, 46.123520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837669, 41.976891, 46.214184>,  <33.475475, 41.423038, 46.303902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837669, 41.976891, 46.214184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.190895, 41.886478, 46.378677>,  <34.402828, 41.832233, 46.477375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.190895, 41.886478, 46.378677>,  <33.837669, 41.976891, 46.214184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190895, 41.886478, 46.378677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336739, -0.305124, -0.890790,
		0.326820, 0.925101, -0.193331,
		0.883060, -0.226026, 0.411238,
		34.455814, 41.818672, 46.502048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292519, 42.210987, 45.680576>,  <33.837669, 41.976891, 46.214184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292519, 42.210987, 45.680576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.496723, 41.966473, 45.922474>,  <34.619244, 41.819763, 46.067612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.496723, 41.966473, 45.922474>,  <34.292519, 42.210987, 45.680576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496723, 41.966473, 45.922474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518921, -0.341771, -0.783526,
		0.685640, 0.713811, 0.142730,
		0.510509, -0.611282, 0.604744,
		34.649876, 41.783089, 46.103897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026634, 42.359089, 45.561787>,  <34.292519, 42.210987, 45.680576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026634, 42.359089, 45.561787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.994392, 41.995872, 45.726204>,  <34.975048, 41.777943, 45.824856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.994392, 41.995872, 45.726204>,  <35.026634, 42.359089, 45.561787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994392, 41.995872, 45.726204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584011, -0.377209, -0.718779,
		0.807734, 0.182115, 0.560714,
		-0.080606, -0.908046, 0.411042,
		34.970211, 41.723457, 45.849518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717819, 42.109859, 45.665382>,  <35.026634, 42.359089, 45.561787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717819, 42.109859, 45.665382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.491444, 41.780231, 45.675289>,  <35.355618, 41.582455, 45.681232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.491444, 41.780231, 45.675289>,  <35.717819, 42.109859, 45.665382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491444, 41.780231, 45.675289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571354, -0.413689, -0.708814,
		0.594361, -0.386994, 0.704961,
		-0.565941, -0.824073, 0.024770,
		35.321663, 41.533009, 45.682720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161850, 41.613907, 45.785534>,  <35.717819, 42.109859, 45.665382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161850, 41.613907, 45.785534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.843937, 41.447712, 45.608585>,  <35.653191, 41.347996, 45.502419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.843937, 41.447712, 45.608585>,  <36.161850, 41.613907, 45.785534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843937, 41.447712, 45.608585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606747, -0.527827, -0.594354,
		0.013455, -0.740787, 0.671605,
		-0.794781, -0.415492, -0.442369,
		35.605503, 41.323063, 45.475876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424271, 41.095463, 45.576496>,  <36.161850, 41.613907, 45.785534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424271, 41.095463, 45.576496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.087292, 41.079082, 45.361607>,  <35.885105, 41.069252, 45.232674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.087292, 41.079082, 45.361607>,  <36.424271, 41.095463, 45.576496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087292, 41.079082, 45.361607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490487, -0.470920, -0.733250,
		-0.222961, -0.881225, 0.416811,
		-0.842443, -0.040954, -0.537226,
		35.834560, 41.066795, 45.200439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562904, 40.462845, 45.190716>,  <36.424271, 41.095463, 45.576496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562904, 40.462845, 45.190716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.252670, 40.642090, 45.012878>,  <36.066528, 40.749638, 44.906178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.252670, 40.642090, 45.012878>,  <36.562904, 40.462845, 45.190716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.252670, 40.642090, 45.012878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266670, -0.405782, -0.874201,
		-0.572149, -0.796577, 0.195220,
		-0.775585, 0.448114, -0.444591,
		36.019993, 40.776524, 44.879501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179432, 39.962044, 44.863297>,  <36.562904, 40.462845, 45.190716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179432, 39.962044, 44.863297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.153629, 40.325855, 44.699055>,  <36.138149, 40.544144, 44.600510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.153629, 40.325855, 44.699055>,  <36.179432, 39.962044, 44.863297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153629, 40.325855, 44.699055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522772, -0.319687, -0.790259,
		-0.850029, -0.265629, -0.454855,
		-0.064504, 0.909528, -0.410606,
		36.134277, 40.598713, 44.575874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062359, 39.767281, 44.200481>,  <36.179432, 39.962044, 44.863297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062359, 39.767281, 44.200481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.159775, 40.155235, 44.200413>,  <36.218224, 40.388008, 44.200371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.159775, 40.155235, 44.200413>,  <36.062359, 39.767281, 44.200481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159775, 40.155235, 44.200413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549807, -0.138203, -0.823779,
		-0.798999, 0.200533, -0.566911,
		0.243544, 0.969890, -0.000169,
		36.232838, 40.446201, 44.200363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079067, 39.987125, 43.475224>,  <36.062359, 39.767281, 44.200481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079067, 39.987125, 43.475224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.315708, 40.241516, 43.673431>,  <36.457691, 40.394150, 43.792358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.315708, 40.241516, 43.673431>,  <36.079067, 39.987125, 43.475224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315708, 40.241516, 43.673431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727323, -0.155811, -0.668375,
		-0.347861, 0.755818, -0.554736,
		0.591604, 0.635974, 0.495523,
		36.493191, 40.432308, 43.822090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249149, 40.489029, 42.918110>,  <36.079067, 39.987125, 43.475224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249149, 40.489029, 42.918110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.512211, 40.505692, 43.218979>,  <36.670048, 40.515690, 43.399498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.512211, 40.505692, 43.218979>,  <36.249149, 40.489029, 42.918110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512211, 40.505692, 43.218979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741269, -0.213686, -0.636285,
		0.134220, 0.976014, -0.171412,
		0.657652, 0.041660, 0.752169,
		36.709507, 40.518188, 43.444630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840954, 40.830158, 42.601837>,  <36.249149, 40.489029, 42.918110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840954, 40.830158, 42.601837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.978691, 40.657345, 42.935249>,  <37.061333, 40.553658, 43.135296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.978691, 40.657345, 42.935249>,  <36.840954, 40.830158, 42.601837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978691, 40.657345, 42.935249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845112, -0.244062, -0.475626,
		0.408920, 0.868205, 0.281077,
		0.344341, -0.432034, 0.833532,
		37.081993, 40.527733, 43.185310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553722, 40.993187, 42.567749>,  <36.840954, 40.830158, 42.601837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553722, 40.993187, 42.567749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.504837, 40.675797, 42.806232>,  <37.475506, 40.485363, 42.949322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.504837, 40.675797, 42.806232>,  <37.553722, 40.993187, 42.567749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504837, 40.675797, 42.806232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798255, -0.435553, -0.416033,
		0.589791, 0.425083, 0.686623,
		-0.122213, -0.793472, 0.596210,
		37.468174, 40.437756, 42.985096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253376, 40.706936, 42.696507>,  <37.553722, 40.993187, 42.567749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253376, 40.706936, 42.696507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.009670, 40.407688, 42.801659>,  <37.863445, 40.228138, 42.864750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.009670, 40.407688, 42.801659>,  <38.253376, 40.706936, 42.696507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009670, 40.407688, 42.801659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622250, -0.656554, -0.426311,
		0.491526, -0.096163, 0.865537,
		-0.609267, -0.748124, 0.262876,
		37.826889, 40.183250, 42.880520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.444660, 37.320518, 30.765165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.117670, 37.093117, 30.728214>,  <29.921476, 36.956676, 30.706043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.117670, 37.093117, 30.728214>,  <30.444660, 37.320518, 30.765165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.117670, 37.093117, 30.728214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054659, -0.083089, 0.995042,
		-0.573365, 0.818471, 0.036849,
		-0.817475, -0.568508, -0.092377,
		29.872427, 36.922565, 30.700500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713409, 37.661938, 30.939718>,  <30.444660, 37.320518, 30.765165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713409, 37.661938, 30.939718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.675032, 37.270786, 31.014065>,  <29.652006, 37.036095, 31.058672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.675032, 37.270786, 31.014065>,  <29.713409, 37.661938, 30.939718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675032, 37.270786, 31.014065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522542, 0.208408, 0.826750,
		-0.847198, -0.017802, -0.530979,
		-0.095943, -0.977880, 0.185865,
		29.646250, 36.977421, 31.069824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.074982, 37.616539, 31.204470>,  <29.713409, 37.661938, 30.939718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.074982, 37.616539, 31.204470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.288811, 37.300739, 31.325087>,  <29.417109, 37.111259, 31.397457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.288811, 37.300739, 31.325087>,  <29.074982, 37.616539, 31.204470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.288811, 37.300739, 31.325087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506345, -0.013530, 0.862225,
		-0.676645, -0.613604, -0.406991,
		0.534572, -0.789498, 0.301541,
		29.449183, 37.063889, 31.415548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525000, 37.357449, 31.568058>,  <29.074982, 37.616539, 31.204470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525000, 37.357449, 31.568058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.844088, 37.140602, 31.673700>,  <29.035540, 37.010494, 31.737085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.844088, 37.140602, 31.673700>,  <28.525000, 37.357449, 31.568058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844088, 37.140602, 31.673700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412435, -0.170973, 0.894799,
		-0.439934, -0.822724, -0.359977,
		0.797719, -0.542119, 0.264103,
		29.083403, 36.977966, 31.752932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.282925, 36.679291, 31.673899>,  <28.525000, 37.357449, 31.568058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.282925, 36.679291, 31.673899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.624321, 36.740101, 31.873276>,  <28.829159, 36.776588, 31.992901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.624321, 36.740101, 31.873276>,  <28.282925, 36.679291, 31.673899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.624321, 36.740101, 31.873276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443988, -0.288616, 0.848278,
		0.272820, -0.945298, -0.178832,
		0.853489, 0.152028, 0.498442,
		28.880367, 36.785709, 32.022808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218653, 36.136623, 32.156384>,  <28.282925, 36.679291, 31.673899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.218653, 36.136623, 32.156384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.519007, 36.365398, 32.288483>,  <28.699219, 36.502663, 32.367741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.519007, 36.365398, 32.288483>,  <28.218653, 36.136623, 32.156384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519007, 36.365398, 32.288483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186786, -0.295717, 0.936837,
		0.633470, -0.765141, -0.115219,
		0.750884, 0.571936, 0.330245,
		28.744272, 36.536980, 32.387558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.778988, 35.734699, 32.624779>,  <28.218653, 36.136623, 32.156384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.778988, 35.734699, 32.624779> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.799736, 36.120411, 32.728680>,  <28.812185, 36.351837, 32.791019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.799736, 36.120411, 32.728680>,  <28.778988, 35.734699, 32.624779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.799736, 36.120411, 32.728680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243964, -0.239989, 0.939621,
		0.968396, -0.112108, 0.222801,
		0.051869, 0.964281, 0.259754,
		28.815296, 36.409695, 32.806606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251459, 35.758320, 33.231167>,  <28.778988, 35.734699, 32.624779>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251459, 35.758320, 33.231167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.010107, 36.077084, 33.219345>,  <28.865295, 36.268341, 33.212254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.010107, 36.077084, 33.219345>,  <29.251459, 35.758320, 33.231167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.010107, 36.077084, 33.219345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252739, -0.155950, 0.954884,
		0.756343, 0.583628, 0.295506,
		-0.603381, 0.796905, -0.029554,
		28.829092, 36.316154, 33.210480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.509527, 36.194614, 33.694084>,  <29.251459, 35.758320, 33.231167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.509527, 36.194614, 33.694084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.120070, 36.278618, 33.658504>,  <28.886395, 36.329018, 33.637157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.120070, 36.278618, 33.658504>,  <29.509527, 36.194614, 33.694084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120070, 36.278618, 33.658504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118826, -0.134206, 0.983803,
		0.194665, 0.968445, 0.155623,
		-0.973646, 0.210005, -0.088951,
		28.827976, 36.341618, 33.631821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320555, 36.372227, 34.395092>,  <29.509527, 36.194614, 33.694084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320555, 36.372227, 34.395092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.947971, 36.366276, 34.249672>,  <28.724422, 36.362705, 34.162422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.947971, 36.366276, 34.249672>,  <29.320555, 36.372227, 34.395092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947971, 36.366276, 34.249672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349358, -0.242641, 0.905027,
		-0.101672, 0.970002, 0.220814,
		-0.931457, -0.014873, -0.363548,
		28.668535, 36.361813, 34.140606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.874237, 36.598221, 34.926952>,  <29.320555, 36.372227, 34.395092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.874237, 36.598221, 34.926952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.617577, 36.394619, 34.697453>,  <28.463579, 36.272457, 34.559753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.617577, 36.394619, 34.697453>,  <28.874237, 36.598221, 34.926952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.617577, 36.394619, 34.697453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339816, -0.481966, 0.807610,
		-0.687610, 0.713175, 0.136286,
		-0.641652, -0.509009, -0.573753,
		28.425081, 36.241917, 34.525326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.214394, 36.646183, 35.174904>,  <28.874237, 36.598221, 34.926952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.214394, 36.646183, 35.174904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.201464, 36.306198, 34.964565>,  <28.193705, 36.102207, 34.838360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.201464, 36.306198, 34.964565>,  <28.214394, 36.646183, 35.174904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.201464, 36.306198, 34.964565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338614, -0.485696, 0.805879,
		-0.940370, 0.204111, -0.272108,
		-0.032327, -0.849963, -0.525849,
		28.191765, 36.051208, 34.806812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.613359, 36.298527, 35.368187>,  <28.214394, 36.646183, 35.174904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.613359, 36.298527, 35.368187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.833399, 35.998974, 35.220364>,  <27.965422, 35.819244, 35.131668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.833399, 35.998974, 35.220364>,  <27.613359, 36.298527, 35.368187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.833399, 35.998974, 35.220364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268039, -0.577451, 0.771171,
		-0.790916, -0.325164, -0.518383,
		0.550098, -0.748878, -0.369559,
		27.998428, 35.774311, 35.109497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.096329, 35.823204, 35.329224>,  <27.613359, 36.298527, 35.368187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.096329, 35.823204, 35.329224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.432688, 35.607250, 35.344296>,  <27.634502, 35.477676, 35.353340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.432688, 35.607250, 35.344296>,  <27.096329, 35.823204, 35.329224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.432688, 35.607250, 35.344296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419843, -0.606825, 0.674904,
		-0.341505, -0.583344, -0.736942,
		0.840896, -0.539883, 0.037679,
		27.684956, 35.445286, 35.355598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935034, 35.085846, 35.277020>,  <27.096329, 35.823204, 35.329224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.935034, 35.085846, 35.277020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.298534, 35.084202, 35.443947>,  <27.516636, 35.083214, 35.544102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.298534, 35.084202, 35.443947>,  <26.935034, 35.085846, 35.277020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.298534, 35.084202, 35.443947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271320, -0.765612, 0.583288,
		0.317104, -0.643290, -0.696867,
		0.908752, -0.004111, 0.417315,
		27.571159, 35.082970, 35.569141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.092037, 34.497082, 35.238010>,  <26.935034, 35.085846, 35.277020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.092037, 34.497082, 35.238010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.386002, 34.618504, 35.480583>,  <27.562380, 34.691357, 35.626129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.386002, 34.618504, 35.480583>,  <27.092037, 34.497082, 35.238010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.386002, 34.618504, 35.480583> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132884, -0.812438, 0.567703,
		0.665020, -0.497795, -0.556730,
		0.734909, 0.303553, 0.606436,
		27.606474, 34.709568, 35.662514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.662989, 34.094620, 35.112732>,  <27.092037, 34.497082, 35.238010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.662989, 34.094620, 35.112732> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.693823, 34.239372, 35.484344>,  <27.712324, 34.326221, 35.707314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.693823, 34.239372, 35.484344>,  <27.662989, 34.094620, 35.112732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.693823, 34.239372, 35.484344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098665, -0.930001, 0.354068,
		0.992131, 0.064369, -0.107396,
		0.077087, 0.361878, 0.929033,
		27.716949, 34.347935, 35.763054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.273087, 33.767765, 35.485027>,  <27.662989, 34.094620, 35.112732>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.273087, 33.767765, 35.485027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.018885, 33.901035, 35.763630>,  <27.866364, 33.980999, 35.930790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.018885, 33.901035, 35.763630>,  <28.273087, 33.767765, 35.485027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018885, 33.901035, 35.763630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084149, -0.866838, 0.491438,
		0.767496, 0.370922, 0.522844,
		-0.635506, 0.333180, 0.696508,
		27.828234, 34.000988, 35.972584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665670, 33.634407, 36.201126>,  <28.273087, 33.767765, 35.485027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665670, 33.634407, 36.201126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.271065, 33.633461, 36.266590>,  <28.034302, 33.632893, 36.305866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.271065, 33.633461, 36.266590>,  <28.665670, 33.634407, 36.201126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271065, 33.633461, 36.266590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081656, -0.873671, 0.479615,
		0.141848, 0.486511, 0.862082,
		-0.986515, -0.002362, 0.163655,
		27.975111, 33.632751, 36.315685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515074, 33.392784, 36.948380>,  <28.665670, 33.634407, 36.201126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515074, 33.392784, 36.948380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.216145, 33.336098, 36.688709>,  <28.036787, 33.302086, 36.532909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.216145, 33.336098, 36.688709>,  <28.515074, 33.392784, 36.948380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.216145, 33.336098, 36.688709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111199, -0.936541, 0.332455,
		-0.655090, 0.320639, 0.684141,
		-0.747323, -0.141712, -0.649173,
		27.991947, 33.293583, 36.493958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.281538, 33.549587, 37.245205>,  <28.515074, 33.392784, 36.948380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.281538, 33.549587, 37.245205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.673359, 33.585907, 37.173389>,  <29.908451, 33.607697, 37.130299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.673359, 33.585907, 37.173389>,  <29.281538, 33.549587, 37.245205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673359, 33.585907, 37.173389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189374, 0.114713, -0.975181,
		-0.067946, 0.989241, 0.129562,
		0.979551, 0.090795, -0.179542,
		29.967224, 33.613144, 37.119526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.382961, 34.141277, 36.890282>,  <29.281538, 33.549587, 37.245205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.382961, 34.141277, 36.890282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.689091, 33.897640, 36.807064>,  <29.872768, 33.751457, 36.757133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.689091, 33.897640, 36.807064>,  <29.382961, 34.141277, 36.890282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689091, 33.897640, 36.807064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223899, 0.051102, -0.973272,
		0.603448, 0.791448, -0.097266,
		0.765324, -0.609097, -0.208042,
		29.918688, 33.714912, 36.744652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794437, 34.519016, 36.423130>,  <29.382961, 34.141277, 36.890282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794437, 34.519016, 36.423130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.903534, 34.139091, 36.361851>,  <29.968992, 33.911137, 36.325081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.903534, 34.139091, 36.361851>,  <29.794437, 34.519016, 36.423130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903534, 34.139091, 36.361851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191339, 0.209608, -0.958881,
		0.942869, 0.232213, 0.238905,
		0.272741, -0.949811, -0.153201,
		29.985355, 33.854149, 36.315891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478029, 34.543354, 36.142616>,  <29.794437, 34.519016, 36.423130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478029, 34.543354, 36.142616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.322004, 34.187946, 36.045956>,  <30.228390, 33.974701, 35.987961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.322004, 34.187946, 36.045956>,  <30.478029, 34.543354, 36.142616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322004, 34.187946, 36.045956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300115, 0.125430, -0.945620,
		0.870508, -0.441372, 0.217731,
		-0.390060, -0.888515, -0.241650,
		30.204987, 33.921391, 35.973461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.943911, 34.229572, 35.798515>,  <30.478029, 34.543354, 36.142616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.943911, 34.229572, 35.798515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.608780, 34.037571, 35.694485>,  <30.407701, 33.922371, 35.632065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.608780, 34.037571, 35.694485>,  <30.943911, 34.229572, 35.798515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.608780, 34.037571, 35.694485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241015, 0.102244, -0.965121,
		0.489857, -0.871285, 0.030026,
		-0.837825, -0.480008, -0.260078,
		30.357431, 33.893570, 35.616463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.220816, 33.855465, 35.322376>,  <30.943911, 34.229572, 35.798515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.220816, 33.855465, 35.322376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.830532, 33.828400, 35.239029>,  <30.596363, 33.812160, 35.189022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.830532, 33.828400, 35.239029>,  <31.220816, 33.855465, 35.322376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.830532, 33.828400, 35.239029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211544, -0.043666, -0.976393,
		0.056967, -0.996752, 0.056919,
		-0.975707, -0.067663, -0.208370,
		30.537821, 33.808102, 35.176517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124762, 33.366589, 34.706539>,  <31.220816, 33.855465, 35.322376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124762, 33.366589, 34.706539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.770958, 33.550510, 34.738087>,  <30.558676, 33.660862, 34.757015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.770958, 33.550510, 34.738087>,  <31.124762, 33.366589, 34.706539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.770958, 33.550510, 34.738087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107353, -0.036099, -0.993565,
		-0.453999, -0.887286, 0.081292,
		-0.884511, 0.459805, 0.078864,
		30.505604, 33.688454, 34.761745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.765560, 32.921238, 34.277939>,  <31.124762, 33.366589, 34.706539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.765560, 32.921238, 34.277939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.586754, 33.275131, 34.330730>,  <30.479469, 33.487469, 34.362404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.586754, 33.275131, 34.330730>,  <30.765560, 32.921238, 34.277939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586754, 33.275131, 34.330730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223666, 0.032306, -0.974130,
		-0.866111, -0.464973, 0.183444,
		-0.447018, 0.884735, 0.131979,
		30.452648, 33.540550, 34.370323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.114973, 32.858116, 34.084980>,  <30.765560, 32.921238, 34.277939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.114973, 32.858116, 34.084980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.224384, 33.240887, 34.046059>,  <30.290031, 33.470551, 34.022705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.224384, 33.240887, 34.046059>,  <30.114973, 32.858116, 34.084980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224384, 33.240887, 34.046059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436669, 0.033407, -0.899002,
		-0.857031, 0.288389, 0.427000,
		0.273527, 0.956930, -0.097300,
		30.306442, 33.527966, 34.016869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647303, 33.174664, 33.630585>,  <30.114973, 32.858116, 34.084980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.647303, 33.174664, 33.630585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.954441, 33.430122, 33.610401>,  <30.138725, 33.583397, 33.598289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.954441, 33.430122, 33.610401>,  <29.647303, 33.174664, 33.630585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954441, 33.430122, 33.610401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166297, 0.122636, -0.978420,
		-0.618673, 0.759668, 0.200370,
		0.767847, 0.638643, -0.050459,
		30.184795, 33.621716, 33.595264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.463259, 33.756611, 33.187325>,  <29.647303, 33.174664, 33.630585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.463259, 33.756611, 33.187325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.862953, 33.772228, 33.186623>,  <30.102770, 33.781601, 33.186203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.862953, 33.772228, 33.186623>,  <29.463259, 33.756611, 33.187325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.862953, 33.772228, 33.186623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003003, 0.031933, -0.999485,
		-0.038971, 0.998727, 0.032026,
		0.999236, 0.039047, -0.001755,
		30.162724, 33.783943, 33.186096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.519680, 34.113476, 32.614971>,  <29.463259, 33.756611, 33.187325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.519680, 34.113476, 32.614971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.900917, 34.007771, 32.674004>,  <30.129660, 33.944347, 32.709423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.900917, 34.007771, 32.674004>,  <29.519680, 34.113476, 32.614971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900917, 34.007771, 32.674004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190820, 0.146122, -0.970688,
		0.234949, 0.953318, 0.189694,
		0.953093, -0.264260, 0.147581,
		30.186846, 33.928493, 32.718277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940228, 34.619404, 32.396385>,  <29.519680, 34.113476, 32.614971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940228, 34.619404, 32.396385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.170567, 34.294762, 32.356991>,  <30.308769, 34.099976, 32.333355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.170567, 34.294762, 32.356991>,  <29.940228, 34.619404, 32.396385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.170567, 34.294762, 32.356991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068327, 0.167813, -0.983448,
		0.814698, 0.559586, 0.152089,
		0.575847, -0.811604, -0.098482,
		30.343321, 34.051281, 32.327446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369761, 34.805840, 31.818794>,  <29.940228, 34.619404, 32.396385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369761, 34.805840, 31.818794> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.440556, 34.413494, 31.851263>,  <30.483032, 34.178089, 31.870745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.440556, 34.413494, 31.851263>,  <30.369761, 34.805840, 31.818794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440556, 34.413494, 31.851263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159544, -0.052788, -0.985778,
		0.971196, 0.187422, 0.147148,
		0.176988, -0.980860, 0.081170,
		30.493652, 34.119236, 31.875614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015594, 34.668667, 31.515833>,  <30.369761, 34.805840, 31.818794>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015594, 34.668667, 31.515833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.842224, 34.309055, 31.490881>,  <30.738203, 34.093288, 31.475910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.842224, 34.309055, 31.490881>,  <31.015594, 34.668667, 31.515833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842224, 34.309055, 31.490881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301631, -0.079493, -0.950105,
		0.849213, -0.430614, 0.305629,
		-0.433424, -0.899028, -0.062381,
		30.712196, 34.039349, 31.472166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541786, 34.301739, 31.239826>,  <31.015594, 34.668667, 31.515833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541786, 34.301739, 31.239826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.195574, 34.128479, 31.139233>,  <30.987846, 34.024525, 31.078876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.195574, 34.128479, 31.139233>,  <31.541786, 34.301739, 31.239826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195574, 34.128479, 31.139233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313862, -0.077767, -0.946278,
		0.390320, -0.897962, 0.203258,
		-0.865530, -0.433146, -0.251482,
		30.935915, 33.998535, 31.063787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715218, 33.944828, 30.689268>,  <31.541786, 34.301739, 31.239826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715218, 33.944828, 30.689268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.317162, 33.911381, 30.668470>,  <31.078327, 33.891312, 30.655993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.317162, 33.911381, 30.668470>,  <31.715218, 33.944828, 30.689268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317162, 33.911381, 30.668470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056110, -0.047657, -0.997287,
		0.080919, -0.995357, 0.052117,
		-0.995140, -0.083624, -0.051993,
		31.018620, 33.886295, 30.652872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635262, 33.411964, 30.240269>,  <31.715218, 33.944828, 30.689268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635262, 33.411964, 30.240269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.292685, 33.618237, 30.230579>,  <31.087139, 33.742001, 30.224766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.292685, 33.618237, 30.230579>,  <31.635262, 33.411964, 30.240269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292685, 33.618237, 30.230579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012243, -0.067196, -0.997665,
		-0.516100, -0.854144, 0.063863,
		-0.856441, 0.515676, -0.024223,
		31.035751, 33.772938, 30.223312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290339, 33.134525, 29.627239>,  <31.635262, 33.411964, 30.240269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290339, 33.134525, 29.627239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.131933, 33.493107, 29.706781>,  <31.036890, 33.708256, 29.754507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.131933, 33.493107, 29.706781>,  <31.290339, 33.134525, 29.627239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131933, 33.493107, 29.706781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138349, 0.272339, -0.952203,
		-0.907764, -0.349571, -0.231872,
		-0.396011, 0.896455, 0.198856,
		31.013130, 33.762043, 29.766438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839869, 33.336342, 28.998720>,  <31.290339, 33.134525, 29.627239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839869, 33.336342, 28.998720> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.919374, 33.673656, 29.198467>,  <30.967077, 33.876045, 29.318316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.919374, 33.673656, 29.198467>,  <30.839869, 33.336342, 28.998720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919374, 33.673656, 29.198467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250650, 0.448847, -0.857736,
		-0.947453, 0.295652, -0.122155,
		0.198763, 0.843283, 0.499367,
		30.979004, 33.926640, 29.348278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.407293, 33.907585, 28.795614>,  <30.839869, 33.336342, 28.998720>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.407293, 33.907585, 28.795614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.782393, 34.006489, 28.893179>,  <31.007452, 34.065830, 28.951717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.782393, 34.006489, 28.893179>,  <30.407293, 33.907585, 28.795614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782393, 34.006489, 28.893179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170165, 0.285133, -0.943262,
		-0.302782, 0.926045, 0.225307,
		0.937746, 0.247264, 0.243914,
		31.063717, 34.080669, 28.966352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562227, 34.657444, 28.647026>,  <30.407293, 33.907585, 28.795614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562227, 34.657444, 28.647026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.869740, 34.405296, 28.603933>,  <31.054247, 34.254009, 28.578077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.869740, 34.405296, 28.603933>,  <30.562227, 34.657444, 28.647026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869740, 34.405296, 28.603933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103044, 0.288365, -0.951960,
		0.631154, 0.720749, 0.286646,
		0.768782, -0.630371, -0.107733,
		31.100374, 34.216187, 28.571613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.661491, 40.581268, 48.945705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.352001, 40.345291, 48.853340>,  <37.166309, 40.203705, 48.797920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.352001, 40.345291, 48.853340>,  <37.661491, 40.581268, 48.945705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352001, 40.345291, 48.853340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604747, 0.579163, 0.546673,
		-0.188768, 0.562619, -0.804877,
		-0.773723, -0.589941, -0.230915,
		37.119884, 40.168308, 48.784065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057472, 41.011326, 48.829330>,  <37.661491, 40.581268, 48.945705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057472, 41.011326, 48.829330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.914188, 40.642590, 48.888523>,  <36.828220, 40.421349, 48.924038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.914188, 40.642590, 48.888523>,  <37.057472, 41.011326, 48.829330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914188, 40.642590, 48.888523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700274, 0.370106, 0.610440,
		-0.617498, 0.115032, -0.778115,
		-0.358206, -0.921840, 0.147986,
		36.806728, 40.366039, 48.932919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251331, 41.085934, 48.906029>,  <37.057472, 41.011326, 48.829330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251331, 41.085934, 48.906029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.327473, 40.716885, 49.040215>,  <36.373158, 40.495457, 49.120728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.327473, 40.716885, 49.040215>,  <36.251331, 41.085934, 48.906029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327473, 40.716885, 49.040215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626809, 0.148772, 0.764838,
		-0.755563, -0.355865, -0.549986,
		0.190357, -0.922620, 0.335466,
		36.384579, 40.440098, 49.140854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635010, 40.870461, 49.132721>,  <36.251331, 41.085934, 48.906029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635010, 40.870461, 49.132721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.891994, 40.652241, 49.347988>,  <36.046185, 40.521309, 49.477150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.891994, 40.652241, 49.347988>,  <35.635010, 40.870461, 49.132721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891994, 40.652241, 49.347988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503779, 0.228518, 0.833058,
		-0.577456, -0.806321, -0.128024,
		0.642457, -0.545550, 0.538167,
		36.084732, 40.488575, 49.509438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167446, 40.552299, 49.583637>,  <35.635010, 40.870461, 49.132721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167446, 40.552299, 49.583637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.541019, 40.520264, 49.722977>,  <35.765163, 40.501041, 49.806580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.541019, 40.520264, 49.722977>,  <35.167446, 40.552299, 49.583637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541019, 40.520264, 49.722977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333335, 0.156688, 0.929697,
		-0.129042, -0.984396, 0.119640,
		0.933936, -0.080090, 0.348353,
		35.821201, 40.496235, 49.827484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106152, 40.174618, 50.249943>,  <35.167446, 40.552299, 49.583637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106152, 40.174618, 50.249943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.450825, 40.377529, 50.255295>,  <35.657627, 40.499275, 50.258507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.450825, 40.377529, 50.255295>,  <35.106152, 40.174618, 50.249943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450825, 40.377529, 50.255295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177747, 0.277013, 0.944283,
		0.475305, -0.816048, 0.328863,
		0.861679, 0.507277, 0.013384,
		35.709328, 40.529713, 50.259312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351269, 40.116478, 50.848373>,  <35.106152, 40.174618, 50.249943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351269, 40.116478, 50.848373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.593609, 40.413979, 50.735394>,  <35.739014, 40.592480, 50.667606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.593609, 40.413979, 50.735394>,  <35.351269, 40.116478, 50.848373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593609, 40.413979, 50.735394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067031, 0.306038, 0.949657,
		0.792753, -0.594279, 0.135557,
		0.605847, 0.743756, -0.282447,
		35.775364, 40.637104, 50.650658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860790, 40.171635, 51.434429>,  <35.351269, 40.116478, 50.848373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860790, 40.171635, 51.434429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.850376, 40.514679, 51.228973>,  <35.844128, 40.720505, 51.105701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.850376, 40.514679, 51.228973>,  <35.860790, 40.171635, 51.434429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850376, 40.514679, 51.228973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077839, 0.513990, 0.854257,
		0.996626, -0.017743, -0.080136,
		-0.026032, 0.857613, -0.513637,
		35.842567, 40.771961, 51.074883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458385, 40.642071, 51.785744>,  <35.860790, 40.171635, 51.434429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458385, 40.642071, 51.785744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.187328, 40.864716, 51.593506>,  <36.024693, 40.998302, 51.478161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.187328, 40.864716, 51.593506>,  <36.458385, 40.642071, 51.785744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187328, 40.864716, 51.593506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115896, 0.726198, 0.677646,
		0.726198, 0.403505, -0.556615,
		-0.677646, 0.556615, -0.480599,
		35.984035, 41.031700, 51.449326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696625, 41.321037, 51.829590>,  <36.458385, 40.642071, 51.785744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696625, 41.321037, 51.829590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.306255, 41.356163, 51.749737>,  <36.072033, 41.377239, 51.701824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.306255, 41.356163, 51.749737>,  <36.696625, 41.321037, 51.829590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306255, 41.356163, 51.749737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066498, 0.751954, 0.655854,
		0.207708, 0.653341, -0.728013,
		-0.975928, 0.087815, -0.199633,
		36.013477, 41.382507, 51.689846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577354, 42.049812, 51.942734>,  <36.696625, 41.321037, 51.829590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577354, 42.049812, 51.942734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.215084, 41.880753, 51.956070>,  <35.997723, 41.779316, 51.964069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.215084, 41.880753, 51.956070>,  <36.577354, 42.049812, 51.942734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215084, 41.880753, 51.956070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279143, 0.653653, 0.703432,
		-0.319097, 0.627778, -0.709981,
		-0.905680, -0.422649, 0.033339,
		35.943378, 41.753960, 51.966072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086121, 42.629799, 52.061852>,  <36.577354, 42.049812, 51.942734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086121, 42.629799, 52.061852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.880783, 42.307301, 52.179455>,  <35.757580, 42.113800, 52.250019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.880783, 42.307301, 52.179455>,  <36.086121, 42.629799, 52.061852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880783, 42.307301, 52.179455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499843, 0.559384, 0.661247,
		-0.697595, 0.192485, -0.690152,
		-0.513340, -0.806250, 0.294011,
		35.726780, 42.065426, 52.267658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436119, 42.917561, 52.074921>,  <36.086121, 42.629799, 52.061852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436119, 42.917561, 52.074921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.475231, 42.611034, 52.328915>,  <35.498699, 42.427120, 52.481312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.475231, 42.611034, 52.328915>,  <35.436119, 42.917561, 52.074921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475231, 42.611034, 52.328915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456416, 0.532458, 0.712862,
		-0.884377, -0.359522, -0.297693,
		0.097781, -0.766311, 0.634986,
		35.504566, 42.381142, 52.519409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737442, 42.750801, 52.286545>,  <35.436119, 42.917561, 52.074921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737442, 42.750801, 52.286545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.019093, 42.647694, 52.551197>,  <35.188084, 42.585831, 52.709988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.019093, 42.647694, 52.551197>,  <34.737442, 42.750801, 52.286545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019093, 42.647694, 52.551197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406856, 0.617207, 0.673442,
		-0.581956, -0.743379, 0.329719,
		0.704127, -0.257766, 0.661635,
		35.230331, 42.570362, 52.749687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531734, 43.210411, 51.759487>,  <34.737442, 42.750801, 52.286545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531734, 43.210411, 51.759487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.362686, 43.567543, 51.697205>,  <34.261257, 43.781822, 51.659836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.362686, 43.567543, 51.697205>,  <34.531734, 43.210411, 51.759487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362686, 43.567543, 51.697205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079278, -0.207561, -0.975004,
		-0.902831, -0.399716, 0.158502,
		-0.422624, 0.892830, -0.155704,
		34.235897, 43.835392, 51.650494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957623, 43.157917, 51.270115>,  <34.531734, 43.210411, 51.759487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957623, 43.157917, 51.270115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.066315, 43.540123, 51.224232>,  <34.131531, 43.769447, 51.196701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.066315, 43.540123, 51.224232>,  <33.957623, 43.157917, 51.270115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066315, 43.540123, 51.224232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058081, -0.102693, -0.993016,
		-0.960620, 0.276491, 0.027593,
		0.271727, 0.955514, -0.114708,
		34.147831, 43.826778, 51.189819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471867, 43.419106, 50.762707>,  <33.957623, 43.157917, 51.270115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471867, 43.419106, 50.762707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.765835, 43.689445, 50.740337>,  <33.942215, 43.851650, 50.726917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.765835, 43.689445, 50.740337>,  <33.471867, 43.419106, 50.762707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765835, 43.689445, 50.740337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002196, -0.080092, -0.996785,
		-0.678153, 0.732677, -0.057377,
		0.734917, 0.675847, -0.055924,
		33.986309, 43.892200, 50.723560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256367, 43.891815, 50.271809>,  <33.471867, 43.419106, 50.762707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256367, 43.891815, 50.271809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.655033, 43.905006, 50.301662>,  <33.894234, 43.912922, 50.319572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.655033, 43.905006, 50.301662>,  <33.256367, 43.891815, 50.271809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655033, 43.905006, 50.301662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080160, -0.224948, -0.971068,
		-0.015239, 0.973812, -0.226841,
		0.996666, 0.032982, 0.074633,
		33.954033, 43.914902, 50.324051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499687, 44.294064, 49.657276>,  <33.256367, 43.891815, 50.271809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499687, 44.294064, 49.657276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.800571, 44.082329, 49.814243>,  <33.981102, 43.955288, 49.908424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.800571, 44.082329, 49.814243>,  <33.499687, 44.294064, 49.657276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.800571, 44.082329, 49.814243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218929, -0.360938, -0.906529,
		0.621495, 0.767808, -0.155613,
		0.752206, -0.529335, 0.392416,
		34.026234, 43.923527, 49.931969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995140, 44.340389, 49.171570>,  <33.499687, 44.294064, 49.657276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995140, 44.340389, 49.171570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.118767, 44.034092, 49.397179>,  <34.192944, 43.850315, 49.532543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.118767, 44.034092, 49.397179>,  <33.995140, 44.340389, 49.171570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118767, 44.034092, 49.397179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341483, -0.464153, -0.817283,
		0.887620, 0.445194, 0.118037,
		0.309062, -0.765745, 0.564018,
		34.211487, 43.804367, 49.566383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756020, 44.228443, 49.102562>,  <33.995140, 44.340389, 49.171570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756020, 44.228443, 49.102562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.610630, 43.867638, 49.195732>,  <34.523396, 43.651154, 49.251633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.610630, 43.867638, 49.195732>,  <34.756020, 44.228443, 49.102562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610630, 43.867638, 49.195732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525800, -0.405023, -0.747992,
		0.769040, -0.149403, 0.621495,
		-0.363472, -0.902017, 0.232923,
		34.501587, 43.597031, 49.265610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286865, 43.803059, 48.873112>,  <34.756020, 44.228443, 49.102562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286865, 43.803059, 48.873112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.975834, 43.560562, 48.939861>,  <34.789215, 43.415066, 48.979912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.975834, 43.560562, 48.939861>,  <35.286865, 43.803059, 48.873112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975834, 43.560562, 48.939861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250781, -0.542372, -0.801837,
		0.576617, -0.581638, 0.573768,
		-0.777574, -0.606243, 0.166877,
		34.742561, 43.378689, 48.989925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516357, 43.000107, 48.678589>,  <35.286865, 43.803059, 48.873112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516357, 43.000107, 48.678589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.116795, 42.992908, 48.661373>,  <34.877056, 42.988590, 48.651043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.116795, 42.992908, 48.661373>,  <35.516357, 43.000107, 48.678589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116795, 42.992908, 48.661373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045843, -0.549900, -0.833972,
		-0.008661, -0.835037, 0.550126,
		-0.998911, -0.017996, -0.043044,
		34.817120, 42.987511, 48.648460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353508, 42.305275, 48.535885>,  <35.516357, 43.000107, 48.678589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353508, 42.305275, 48.535885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.016380, 42.510506, 48.470890>,  <34.814102, 42.633644, 48.431892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.016380, 42.510506, 48.470890>,  <35.353508, 42.305275, 48.535885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016380, 42.510506, 48.470890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140949, -0.501808, -0.853418,
		-0.519415, -0.696372, 0.495251,
		-0.842817, 0.513083, -0.162494,
		34.763535, 42.664429, 48.422142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756817, 41.819973, 48.392105>,  <35.353508, 42.305275, 48.535885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756817, 41.819973, 48.392105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.639080, 42.162975, 48.223324>,  <34.568439, 42.368778, 48.122055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.639080, 42.162975, 48.223324>,  <34.756817, 41.819973, 48.392105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639080, 42.162975, 48.223324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127698, -0.472846, -0.871843,
		-0.947131, -0.202735, 0.248680,
		-0.294340, 0.857505, -0.421958,
		34.550777, 42.420227, 48.096737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230743, 41.602406, 48.027382>,  <34.756817, 41.819973, 48.392105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230743, 41.602406, 48.027382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.354050, 41.937649, 47.847359>,  <34.428032, 42.138794, 47.739346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.354050, 41.937649, 47.847359>,  <34.230743, 41.602406, 48.027382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354050, 41.937649, 47.847359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173296, -0.415704, -0.892837,
		-0.935383, 0.353222, 0.017094,
		0.308264, 0.838107, -0.450055,
		34.446529, 42.189079, 47.712341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799183, 41.645493, 47.487743>,  <34.230743, 41.602406, 48.027382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799183, 41.645493, 47.487743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.109383, 41.885624, 47.409557>,  <34.295502, 42.029705, 47.362648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.109383, 41.885624, 47.409557>,  <33.799183, 41.645493, 47.487743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109383, 41.885624, 47.409557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048287, -0.252286, -0.966447,
		-0.629502, 0.758915, -0.166659,
		0.775497, 0.600333, -0.195461,
		34.342033, 42.065723, 47.350918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564323, 41.890068, 46.879684>,  <33.799183, 41.645493, 47.487743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564323, 41.890068, 46.879684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.961720, 41.933895, 46.892147>,  <34.200157, 41.960194, 46.899624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.961720, 41.933895, 46.892147>,  <33.564323, 41.890068, 46.879684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961720, 41.933895, 46.892147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083211, -0.511238, -0.855401,
		-0.077797, 0.852426, -0.517028,
		0.993491, 0.109570, 0.031159,
		34.259766, 41.966766, 46.901493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.981682, 42.127594, 46.493862>,  <33.564323, 41.890068, 46.879684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.981682, 42.127594, 46.493862> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.729786, 41.817688, 46.471367>,  <32.578648, 41.631744, 46.457870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.729786, 41.817688, 46.471367>,  <32.981682, 42.127594, 46.493862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729786, 41.817688, 46.471367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460582, 0.314107, 0.830181,
		-0.625530, 0.548704, -0.554650,
		-0.629743, -0.774765, -0.056240,
		32.540863, 41.585258, 46.454494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401493, 42.455040, 46.770332>,  <32.981682, 42.127594, 46.493862>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401493, 42.455040, 46.770332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.300339, 42.068398, 46.786911>,  <32.239647, 41.836411, 46.796860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.300339, 42.068398, 46.786911>,  <32.401493, 42.455040, 46.770332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300339, 42.068398, 46.786911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362546, 0.134393, 0.922225,
		-0.897001, 0.218190, -0.384426,
		-0.252884, -0.966608, 0.041447,
		32.224472, 41.778416, 46.799347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700075, 42.348038, 46.937557>,  <32.401493, 42.455040, 46.770332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700075, 42.348038, 46.937557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.860193, 42.000626, 47.054466>,  <31.956264, 41.792179, 47.124611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.860193, 42.000626, 47.054466>,  <31.700075, 42.348038, 46.937557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860193, 42.000626, 47.054466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294641, 0.180018, 0.938499,
		-0.867728, -0.461790, -0.183844,
		0.400294, -0.868530, 0.292268,
		31.980282, 41.740067, 47.142147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377392, 42.095909, 47.570255>,  <31.700075, 42.348038, 46.937557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377392, 42.095909, 47.570255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.665207, 41.827015, 47.639954>,  <31.837896, 41.665676, 47.681774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.665207, 41.827015, 47.639954>,  <31.377392, 42.095909, 47.570255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.665207, 41.827015, 47.639954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186130, 0.055049, 0.980982,
		-0.669045, -0.738286, -0.085514,
		0.719537, -0.672238, 0.174247,
		31.881067, 41.625343, 47.692226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110365, 41.650433, 48.059666>,  <31.377392, 42.095909, 47.570255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110365, 41.650433, 48.059666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.509502, 41.625267, 48.067169>,  <31.748985, 41.610168, 48.071671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.509502, 41.625267, 48.067169>,  <31.110365, 41.650433, 48.059666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509502, 41.625267, 48.067169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011971, 0.106511, 0.994239,
		-0.064552, -0.992319, 0.105528,
		0.997842, -0.062917, 0.018755,
		31.808855, 41.606392, 48.072796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219294, 41.179325, 48.584743>,  <31.110365, 41.650433, 48.059666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219294, 41.179325, 48.584743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.562157, 41.383984, 48.561073>,  <31.767874, 41.506779, 48.546871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.562157, 41.383984, 48.561073>,  <31.219294, 41.179325, 48.584743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562157, 41.383984, 48.561073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014610, 0.139002, 0.990184,
		0.514847, -0.847879, 0.126622,
		0.857158, 0.511643, -0.059177,
		31.819304, 41.537476, 48.543320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471502, 40.986221, 49.176323>,  <31.219294, 41.179325, 48.584743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471502, 40.986221, 49.176323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.698904, 41.303299, 49.088291>,  <31.835344, 41.493546, 49.035473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.698904, 41.303299, 49.088291>,  <31.471502, 40.986221, 49.176323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698904, 41.303299, 49.088291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121839, 0.183436, 0.975452,
		0.813608, -0.581363, 0.007703,
		0.568504, 0.792697, -0.220078,
		31.869455, 41.541107, 49.022266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896608, 40.336388, 49.459515>,  <31.471502, 40.986221, 49.176323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896608, 40.336388, 49.459515> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.600494, 40.080502, 49.542213>,  <31.422827, 39.926971, 49.591835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.600494, 40.080502, 49.542213>,  <31.896608, 40.336388, 49.459515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600494, 40.080502, 49.542213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029649, -0.338296, -0.940572,
		0.671640, -0.690161, 0.269402,
		-0.740285, -0.639713, 0.206751,
		31.378408, 39.888588, 49.604240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.072041, 39.777229, 48.972466>,  <31.896608, 40.336388, 49.459515>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.072041, 39.777229, 48.972466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.698261, 39.732609, 49.107731>,  <31.473993, 39.705837, 49.188892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.698261, 39.732609, 49.107731>,  <32.072041, 39.777229, 48.972466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698261, 39.732609, 49.107731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157768, -0.721673, -0.674016,
		0.319232, -0.683187, 0.656770,
		-0.934452, -0.111551, 0.338166,
		31.417925, 39.699142, 49.209179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926863, 39.067322, 49.135307>,  <32.072041, 39.777229, 48.972466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926863, 39.067322, 49.135307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.579742, 39.248051, 49.052578>,  <31.371469, 39.356487, 49.002941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.579742, 39.248051, 49.052578>,  <31.926863, 39.067322, 49.135307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579742, 39.248051, 49.052578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166989, -0.657171, -0.735011,
		-0.468012, -0.603307, 0.645744,
		-0.867802, 0.451826, -0.206818,
		31.319403, 39.383598, 48.990532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423729, 38.488609, 48.865025>,  <31.926863, 39.067322, 49.135307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423729, 38.488609, 48.865025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.268620, 38.836174, 48.741982>,  <31.175554, 39.044712, 48.668156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.268620, 38.836174, 48.741982>,  <31.423729, 38.488609, 48.865025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268620, 38.836174, 48.741982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240150, -0.417429, -0.876402,
		-0.889921, -0.265974, 0.370537,
		-0.387773, 0.868914, -0.307606,
		31.152287, 39.096848, 48.649700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881598, 38.200699, 48.619190>,  <31.423729, 38.488609, 48.865025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881598, 38.200699, 48.619190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.921167, 38.559082, 48.445999>,  <30.944908, 38.774113, 48.342083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.921167, 38.559082, 48.445999>,  <30.881598, 38.200699, 48.619190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921167, 38.559082, 48.445999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047592, -0.430358, -0.901403,
		-0.993956, 0.109776, 0.000068,
		0.098924, 0.895958, -0.432982,
		30.950844, 38.827869, 48.316105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473537, 38.234760, 48.061195>,  <30.881598, 38.200699, 48.619190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473537, 38.234760, 48.061195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.743946, 38.522179, 47.995853>,  <30.906191, 38.694630, 47.956646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.743946, 38.522179, 47.995853>,  <30.473537, 38.234760, 48.061195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.743946, 38.522179, 47.995853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006476, -0.227474, -0.973763,
		-0.736852, 0.657229, -0.158431,
		0.676023, 0.718545, -0.163358,
		30.946753, 38.737743, 47.946846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.108608, 38.612728, 47.524670>,  <30.473537, 38.234760, 48.061195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.108608, 38.612728, 47.524670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.500620, 38.692215, 47.527599>,  <30.735826, 38.739906, 47.529358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.500620, 38.692215, 47.527599>,  <30.108608, 38.612728, 47.524670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500620, 38.692215, 47.527599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066279, -0.291694, -0.954213,
		-0.187482, 0.935642, -0.299039,
		0.980030, 0.198717, 0.007326,
		30.794628, 38.751831, 47.529797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.273769, 39.288574, 53.321224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.611877, 39.488403, 53.245388>,  <33.814743, 39.608299, 53.199886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.611877, 39.488403, 53.245388>,  <33.273769, 39.288574, 53.321224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611877, 39.488403, 53.245388> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118368, -0.521065, -0.845269,
		-0.521065, 0.692038, -0.499574,
		0.845269, 0.499574, -0.189594,
		33.865459, 39.638275, 53.188511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245094, 39.364548, 52.594925>,  <33.273769, 39.288574, 53.321224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245094, 39.364548, 52.594925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.627441, 39.429668, 52.692745>,  <33.856850, 39.468742, 52.751438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.627441, 39.429668, 52.692745>,  <33.245094, 39.364548, 52.594925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627441, 39.429668, 52.692745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292584, -0.452414, -0.842447,
		-0.026515, 0.876822, -0.480083,
		0.955872, 0.162802, 0.244549,
		33.914204, 39.478508, 52.766109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571995, 39.350964, 51.906422>,  <33.245094, 39.364548, 52.594925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571995, 39.350964, 51.906422> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.863205, 39.313873, 52.178120>,  <34.037933, 39.291618, 52.341137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.863205, 39.313873, 52.178120>,  <33.571995, 39.350964, 51.906422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863205, 39.313873, 52.178120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555256, -0.501354, -0.663578,
		0.402075, 0.860259, -0.313512,
		0.728029, -0.092729, 0.679245,
		34.081615, 39.286057, 52.381893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116188, 39.525677, 51.408791>,  <33.571995, 39.350964, 51.906422>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116188, 39.525677, 51.408791> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.242867, 39.322701, 51.729343>,  <34.318874, 39.200916, 51.921673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.242867, 39.322701, 51.729343>,  <34.116188, 39.525677, 51.408791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242867, 39.322701, 51.729343> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574562, -0.569598, -0.587738,
		0.754705, 0.646577, 0.111166,
		0.316698, -0.507441, 0.801377,
		34.337875, 39.170467, 51.969757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713436, 39.318737, 51.185593>,  <34.116188, 39.525677, 51.408791>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713436, 39.318737, 51.185593> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.680389, 39.075054, 51.501072>,  <34.660561, 38.928844, 51.690361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.680389, 39.075054, 51.501072>,  <34.713436, 39.318737, 51.185593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680389, 39.075054, 51.501072> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449859, -0.728982, -0.515958,
		0.889270, 0.312176, 0.334282,
		-0.082616, -0.609206, 0.788697,
		34.655605, 38.892292, 51.737682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381569, 38.970882, 51.428799>,  <34.713436, 39.318737, 51.185593>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381569, 38.970882, 51.428799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.095142, 38.732716, 51.574524>,  <34.923286, 38.589817, 51.661961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.095142, 38.732716, 51.574524>,  <35.381569, 38.970882, 51.428799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095142, 38.732716, 51.574524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412893, -0.782116, -0.466705,
		0.562819, -0.183771, 0.805893,
		-0.716069, -0.595418, 0.364312,
		34.880322, 38.554089, 51.683819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726662, 38.392353, 51.690994>,  <35.381569, 38.970882, 51.428799>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726662, 38.392353, 51.690994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.355637, 38.274017, 51.599682>,  <35.133022, 38.203014, 51.544895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.355637, 38.274017, 51.599682>,  <35.726662, 38.392353, 51.690994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355637, 38.274017, 51.599682> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373462, -0.754614, -0.539522,
		-0.012654, -0.585694, 0.810433,
		-0.927559, -0.295839, -0.228284,
		35.077370, 38.185265, 51.531197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657547, 37.631325, 51.833038>,  <35.726662, 38.392353, 51.690994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657547, 37.631325, 51.833038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.379364, 37.722240, 51.560371>,  <35.212452, 37.776791, 51.396770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.379364, 37.722240, 51.560371>,  <35.657547, 37.631325, 51.833038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379364, 37.722240, 51.560371> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406159, -0.658231, -0.633851,
		-0.592765, -0.717684, 0.365458,
		-0.695460, 0.227291, -0.681670,
		35.170727, 37.790428, 51.355869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446373, 36.918701, 51.514263>,  <35.657547, 37.631325, 51.833038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446373, 36.918701, 51.514263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.330662, 37.214222, 51.270790>,  <35.261234, 37.391533, 51.124706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.330662, 37.214222, 51.270790>,  <35.446373, 36.918701, 51.514263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330662, 37.214222, 51.270790> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395452, -0.486839, -0.778849,
		-0.871743, -0.466010, -0.151327,
		-0.289279, 0.738798, -0.608683,
		35.243877, 37.435860, 51.088184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157249, 36.551586, 50.951511>,  <35.446373, 36.918701, 51.514263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157249, 36.551586, 50.951511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.238667, 36.913815, 50.802643>,  <35.287518, 37.131153, 50.713322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.238667, 36.913815, 50.802643>,  <35.157249, 36.551586, 50.951511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238667, 36.913815, 50.802643> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496586, -0.423090, -0.757890,
		-0.843785, -0.030551, -0.535811,
		0.203542, 0.905573, -0.372168,
		35.299728, 37.185486, 50.690994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783405, 36.572731, 50.371693>,  <35.157249, 36.551586, 50.951511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783405, 36.572731, 50.371693> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.060959, 36.849907, 50.293350>,  <35.227489, 37.016212, 50.246346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.060959, 36.849907, 50.293350>,  <34.783405, 36.572731, 50.371693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.060959, 36.849907, 50.293350> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269100, -0.501816, -0.822050,
		-0.667919, 0.517698, -0.534671,
		0.693880, 0.692942, -0.195860,
		35.269123, 37.057789, 50.234592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694309, 36.727299, 49.720848>,  <34.783405, 36.572731, 50.371693>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694309, 36.727299, 49.720848> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.062775, 36.867455, 49.788593>,  <35.283855, 36.951546, 49.829239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.062775, 36.867455, 49.788593>,  <34.694309, 36.727299, 49.720848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062775, 36.867455, 49.788593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317726, -0.425804, -0.847196,
		-0.224731, 0.834218, -0.503563,
		0.921166, 0.350386, 0.169361,
		35.339123, 36.972572, 49.839401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.972553, 36.868603, 49.664040>,  <34.694309, 36.727299, 49.720848>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.972553, 36.868603, 49.664040> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.810555, 36.504467, 49.629948>,  <33.713356, 36.285984, 49.609493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.810555, 36.504467, 49.629948>,  <33.972553, 36.868603, 49.664040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810555, 36.504467, 49.629948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447556, 0.116100, 0.886687,
		-0.797291, 0.397247, -0.454447,
		-0.404996, -0.910338, -0.085225,
		33.689056, 36.231365, 49.604382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236153, 36.966610, 49.799477>,  <33.972553, 36.868603, 49.664040>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236153, 36.966610, 49.799477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.309090, 36.579128, 49.866837>,  <33.352852, 36.346638, 49.907253>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.309090, 36.579128, 49.866837>,  <33.236153, 36.966610, 49.799477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309090, 36.579128, 49.866837> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579647, 0.032441, 0.814222,
		-0.794206, -0.246078, -0.555593,
		0.182338, -0.968707, 0.168403,
		33.363792, 36.288517, 49.917358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666397, 36.806286, 50.250576>,  <33.236153, 36.966610, 49.799477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666397, 36.806286, 50.250576> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.934155, 36.510929, 50.283302>,  <33.094807, 36.333714, 50.302937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.934155, 36.510929, 50.283302>,  <32.666397, 36.806286, 50.250576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.934155, 36.510929, 50.283302> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237518, -0.108363, 0.965320,
		-0.703918, -0.665609, -0.247918,
		0.669391, -0.738391, 0.081815,
		33.134972, 36.289413, 50.307846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337479, 36.328613, 50.529594>,  <32.666397, 36.806286, 50.250576>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337479, 36.328613, 50.529594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.720951, 36.270763, 50.627583>,  <32.951035, 36.236053, 50.686375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.720951, 36.270763, 50.627583>,  <32.337479, 36.328613, 50.529594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720951, 36.270763, 50.627583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255728, -0.060930, 0.964827,
		-0.124614, -0.987608, -0.095398,
		0.958684, -0.144627, 0.244966,
		33.008556, 36.227375, 50.701073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.280926, 35.845936, 50.941666>,  <32.337479, 36.328613, 50.529594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.280926, 35.845936, 50.941666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.626736, 36.022591, 51.037632>,  <32.834221, 36.128582, 51.095211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.626736, 36.022591, 51.037632>,  <32.280926, 35.845936, 50.941666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626736, 36.022591, 51.037632> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285808, 0.039342, 0.957479,
		0.413416, -0.896332, 0.160235,
		0.864523, 0.441634, 0.239914,
		32.886093, 36.155079, 51.109608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307770, 35.570526, 51.579113>,  <32.280926, 35.845936, 50.941666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307770, 35.570526, 51.579113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.596310, 35.846546, 51.602722>,  <32.769432, 36.012157, 51.616886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.596310, 35.846546, 51.602722>,  <32.307770, 35.570526, 51.579113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596310, 35.846546, 51.602722> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294184, 0.228142, 0.928120,
		0.626986, -0.686862, 0.367572,
		0.721349, 0.690052, 0.059022,
		32.812714, 36.053562, 51.620430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602413, 35.500427, 52.211681>,  <32.307770, 35.570526, 51.579113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602413, 35.500427, 52.211681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.664364, 35.878403, 52.096375>,  <32.701534, 36.105190, 52.027191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.664364, 35.878403, 52.096375>,  <32.602413, 35.500427, 52.211681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664364, 35.878403, 52.096375> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373298, 0.326135, 0.868496,
		0.914692, -0.026902, 0.403256,
		0.154880, 0.944941, -0.288270,
		32.710827, 36.161884, 52.009895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737370, 35.797962, 52.840790>,  <32.602413, 35.500427, 52.211681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737370, 35.797962, 52.840790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.635429, 36.110516, 52.612930>,  <32.574265, 36.298046, 52.476215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.635429, 36.110516, 52.612930>,  <32.737370, 35.797962, 52.840790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635429, 36.110516, 52.612930> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345402, 0.476675, 0.808380,
		0.903187, 0.402775, 0.148408,
		-0.254853, 0.781379, -0.569646,
		32.558975, 36.344929, 52.442036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951427, 36.377357, 53.274235>,  <32.737370, 35.797962, 52.840790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951427, 36.377357, 53.274235> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.698357, 36.536358, 53.008389>,  <32.546516, 36.631756, 52.848881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.698357, 36.536358, 53.008389>,  <32.951427, 36.377357, 53.274235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698357, 36.536358, 53.008389> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317255, 0.649856, 0.690678,
		0.706450, 0.647828, -0.285039,
		-0.632675, 0.397499, -0.664618,
		32.508553, 36.655609, 52.809002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175701, 37.085861, 53.156883>,  <32.951427, 36.377357, 53.274235>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175701, 37.085861, 53.156883> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.781654, 37.061398, 53.092617>,  <32.545227, 37.046719, 53.054058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.781654, 37.061398, 53.092617>,  <33.175701, 37.085861, 53.156883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781654, 37.061398, 53.092617> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161124, 0.654317, 0.738856,
		0.059936, 0.753743, -0.654430,
		-0.985112, -0.061160, -0.160664,
		32.486122, 37.043049, 53.044418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974728, 37.705189, 53.369141>,  <33.175701, 37.085861, 53.156883>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974728, 37.705189, 53.369141> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.619652, 37.529415, 53.314148>,  <32.406605, 37.423950, 53.281155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.619652, 37.529415, 53.314148>,  <32.974728, 37.705189, 53.369141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619652, 37.529415, 53.314148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419256, 0.648007, 0.635855,
		-0.190330, 0.622082, -0.759466,
		-0.887693, -0.439433, -0.137477,
		32.353344, 37.397587, 53.272903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632412, 38.253960, 53.506783>,  <32.974728, 37.705189, 53.369141>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632412, 38.253960, 53.506783> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.377544, 37.946609, 53.530796>,  <32.224625, 37.762199, 53.545204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.377544, 37.946609, 53.530796>,  <32.632412, 38.253960, 53.506783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377544, 37.946609, 53.530796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655484, 0.581233, 0.482192,
		-0.405402, 0.267886, -0.874006,
		-0.637173, -0.768378, 0.060038,
		32.186394, 37.716095, 53.548809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.874210, 38.461411, 53.297604>,  <32.632412, 38.253960, 53.506783>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.874210, 38.461411, 53.297604> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.914879, 38.157570, 53.554562>,  <31.939280, 37.975266, 53.708736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.914879, 38.157570, 53.554562>,  <31.874210, 38.461411, 53.297604>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914879, 38.157570, 53.554562> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590719, 0.473477, 0.653354,
		-0.800446, -0.445902, -0.400571,
		0.101670, -0.759600, 0.642395,
		31.945379, 37.929691, 53.747280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810362, 39.024673, 52.739475>,  <31.874210, 38.461411, 53.297604>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810362, 39.024673, 52.739475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.445246, 39.187973, 52.744366>,  <31.226177, 39.285954, 52.747299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.445246, 39.187973, 52.744366>,  <31.810362, 39.024673, 52.739475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445246, 39.187973, 52.744366> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014760, 0.062883, -0.997912,
		-0.408166, -0.910702, -0.063425,
		-0.912789, 0.408250, 0.012224,
		31.171410, 39.310448, 52.748032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.395191, 38.690380, 52.280560>,  <31.810362, 39.024673, 52.739475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.395191, 38.690380, 52.280560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.212606, 39.046253, 52.284798>,  <31.103056, 39.259777, 52.287342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.212606, 39.046253, 52.284798>,  <31.395191, 38.690380, 52.280560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212606, 39.046253, 52.284798> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161048, 0.094331, -0.982428,
		-0.875046, -0.446735, -0.186340,
		-0.456463, 0.889680, 0.010599,
		31.075668, 39.313156, 52.287979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957220, 38.642403, 51.707401>,  <31.395191, 38.690380, 52.280560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957220, 38.642403, 51.707401> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.028831, 39.025723, 51.796497>,  <31.071798, 39.255714, 51.849953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.028831, 39.025723, 51.796497>,  <30.957220, 38.642403, 51.707401>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028831, 39.025723, 51.796497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265093, 0.171036, -0.948932,
		-0.947457, 0.228930, -0.223418,
		0.179026, 0.958300, 0.222737,
		31.082539, 39.313213, 51.863319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515327, 39.051472, 51.371426>,  <30.957220, 38.642403, 51.707401>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515327, 39.051472, 51.371426> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.857483, 39.248993, 51.433998>,  <31.062777, 39.367504, 51.471542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.857483, 39.248993, 51.433998>,  <30.515327, 39.051472, 51.371426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.857483, 39.248993, 51.433998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059994, 0.205520, -0.976812,
		-0.514503, 0.844938, 0.146174,
		0.855387, 0.493803, 0.156432,
		31.114100, 39.397133, 51.480927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214785, 39.771214, 51.153137>,  <30.515327, 39.051472, 51.371426>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214785, 39.771214, 51.153137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.614264, 39.791271, 51.156841>,  <30.853951, 39.803307, 51.159061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.614264, 39.791271, 51.156841>,  <30.214785, 39.771214, 51.153137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614264, 39.791271, 51.156841> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004085, 0.259656, -0.965693,
		-0.050824, 0.964399, 0.259523,
		0.998699, 0.050140, 0.009257,
		30.913874, 39.806313, 51.159618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390747, 40.227459, 50.678825>,  <30.214785, 39.771214, 51.153137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390747, 40.227459, 50.678825> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.751045, 40.054733, 50.697559>,  <30.967224, 39.951099, 50.708801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.751045, 40.054733, 50.697559>,  <30.390747, 40.227459, 50.678825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751045, 40.054733, 50.697559> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137362, 0.180909, -0.973860,
		0.412055, 0.883633, 0.222268,
		0.900745, -0.431815, 0.046833,
		31.021269, 39.925190, 50.711609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849941, 40.722832, 50.392067>,  <30.390747, 40.227459, 50.678825>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849941, 40.722832, 50.392067> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.033834, 40.367626, 50.388630>,  <31.144171, 40.154503, 50.386566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.033834, 40.367626, 50.388630>,  <30.849941, 40.722832, 50.392067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033834, 40.367626, 50.388630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082671, 0.052427, -0.995197,
		0.884201, 0.456815, 0.097516,
		0.459734, -0.888015, -0.008591,
		31.171755, 40.101223, 50.386051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299074, 40.734241, 49.844307>,  <30.849941, 40.722832, 50.392067>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299074, 40.734241, 49.844307> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.284697, 40.338478, 49.900570>,  <31.276070, 40.101021, 49.934326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.284697, 40.338478, 49.900570>,  <31.299074, 40.734241, 49.844307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284697, 40.338478, 49.900570> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145864, -0.144433, -0.978705,
		0.988651, -0.014664, 0.149511,
		-0.035946, -0.989406, 0.140655,
		31.273912, 40.041656, 49.942768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048584, 40.982037, 49.774296>,  <31.299074, 40.734241, 49.844307>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048584, 40.982037, 49.774296> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.045353, 41.346592, 49.609711>,  <32.043415, 41.565327, 49.510960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.045353, 41.346592, 49.609711>,  <32.048584, 40.982037, 49.774296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045353, 41.346592, 49.609711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158095, 0.407464, 0.899432,
		0.987391, -0.057789, -0.147376,
		-0.008074, 0.911391, -0.411463,
		32.042931, 41.620010, 49.486271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608990, 41.360832, 50.028259>,  <32.048584, 40.982037, 49.774296>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608990, 41.360832, 50.028259> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.353687, 41.648975, 49.919655>,  <32.200508, 41.821861, 49.854492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.353687, 41.648975, 49.919655>,  <32.608990, 41.360832, 50.028259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353687, 41.648975, 49.919655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148653, 0.461384, 0.874658,
		0.755337, 0.517893, -0.401563,
		-0.638254, 0.720356, -0.271514,
		32.162212, 41.865082, 49.838200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971565, 41.931927, 50.141304>,  <32.608990, 41.360832, 50.028259>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971565, 41.931927, 50.141304> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.594727, 42.061504, 50.106628>,  <32.368622, 42.139252, 50.085823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.594727, 42.061504, 50.106628>,  <32.971565, 41.931927, 50.141304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594727, 42.061504, 50.106628> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151529, 0.641835, 0.751722,
		0.299157, 0.695058, -0.653757,
		-0.942095, 0.323946, -0.086688,
		32.312099, 42.158688, 50.080624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011364, 42.642639, 50.138111>,  <32.971565, 41.931927, 50.141304>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011364, 42.642639, 50.138111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.631973, 42.556206, 50.230808>,  <32.404339, 42.504345, 50.286427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.631973, 42.556206, 50.230808>,  <33.011364, 42.642639, 50.138111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631973, 42.556206, 50.230808> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107538, 0.468431, 0.876931,
		-0.298048, 0.856667, -0.421057,
		-0.948474, -0.216088, 0.231740,
		32.347431, 42.491379, 50.300331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631527, 43.322517, 50.232563>,  <33.011364, 42.642639, 50.138111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631527, 43.322517, 50.232563> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.459064, 43.011253, 50.415241>,  <32.355587, 42.824493, 50.524849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.459064, 43.011253, 50.415241>,  <32.631527, 43.322517, 50.232563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459064, 43.011253, 50.415241> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083000, 0.469802, 0.878861,
		-0.898450, 0.416834, -0.137972,
		-0.431159, -0.778161, 0.456691,
		32.329716, 42.777805, 50.552250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149506, 43.637707, 50.649212>,  <32.631527, 43.322517, 50.232563>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149506, 43.637707, 50.649212> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.161068, 43.275459, 50.818451>,  <32.168007, 43.058109, 50.919994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.161068, 43.275459, 50.818451>,  <32.149506, 43.637707, 50.649212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161068, 43.275459, 50.818451> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045284, 0.421657, 0.905624,
		-0.998556, -0.045339, -0.028821,
		0.028908, -0.905621, 0.423101,
		32.169739, 43.003773, 50.945381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654598, 43.706326, 51.141365>,  <32.149506, 43.637707, 50.649212>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654598, 43.706326, 51.141365> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.879246, 43.401043, 51.269173>,  <32.014034, 43.217873, 51.345860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.879246, 43.401043, 51.269173>,  <31.654598, 43.706326, 51.141365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879246, 43.401043, 51.269173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151264, 0.284960, 0.946529,
		-0.813450, -0.579923, 0.044593,
		0.561621, -0.763209, 0.319523,
		32.047733, 43.172081, 51.365028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331070, 43.396568, 51.648415>,  <31.654598, 43.706326, 51.141365>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331070, 43.396568, 51.648415> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.713274, 43.294949, 51.708366>,  <31.942596, 43.233978, 51.744339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.713274, 43.294949, 51.708366>,  <31.331070, 43.396568, 51.648415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713274, 43.294949, 51.708366> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084736, 0.250304, 0.964452,
		-0.282531, -0.934242, 0.217640,
		0.955508, -0.254046, 0.149882,
		31.999926, 43.218735, 51.753330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299389, 42.944351, 52.203136>,  <31.331070, 43.396568, 51.648415>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299389, 42.944351, 52.203136> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.669538, 43.093678, 52.176865>,  <31.891628, 43.183273, 52.161102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.669538, 43.093678, 52.176865>,  <31.299389, 42.944351, 52.203136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669538, 43.093678, 52.176865> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014467, 0.138362, 0.990276,
		0.378774, -0.917328, 0.122636,
		0.925376, 0.373317, -0.065679,
		31.947151, 43.205673, 52.157162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.731251, 35.698288, 38.888096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927113, 36.046680, 38.904243>,  <37.044628, 36.255714, 38.913933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.927113, 36.046680, 38.904243>,  <36.731251, 35.698288, 38.888096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927113, 36.046680, 38.904243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630614, 0.321790, 0.706241,
		0.602134, -0.371269, 0.706819,
		0.489653, 0.870983, 0.040367,
		37.074009, 36.307976, 38.916355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697918, 35.885235, 39.581657>,  <36.731251, 35.698288, 38.888096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697918, 35.885235, 39.581657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780666, 36.226303, 39.389759>,  <36.830315, 36.430943, 39.274620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780666, 36.226303, 39.389759>,  <36.697918, 35.885235, 39.581657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780666, 36.226303, 39.389759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628843, 0.491534, 0.602453,
		0.749505, 0.177053, 0.637882,
		0.206875, 0.852670, -0.479746,
		36.842728, 36.482105, 39.245834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363037, 36.292919, 39.906853>,  <36.697918, 35.885235, 39.581657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363037, 36.292919, 39.906853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485249, 36.570019, 39.645546>,  <36.558575, 36.736279, 39.488762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485249, 36.570019, 39.645546>,  <36.363037, 36.292919, 39.906853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485249, 36.570019, 39.645546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716832, 0.618923, 0.321069,
		0.626740, 0.370185, 0.685682,
		0.305529, 0.692746, -0.653265,
		36.576908, 36.777843, 39.449566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514862, 36.847343, 40.372059>,  <36.363037, 36.292919, 39.906853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514862, 36.847343, 40.372059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429432, 36.960701, 39.998093>,  <36.378174, 37.028717, 39.773712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429432, 36.960701, 39.998093>,  <36.514862, 36.847343, 40.372059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429432, 36.960701, 39.998093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654310, 0.669146, 0.352311,
		0.725440, 0.686971, 0.042515,
		-0.213578, 0.283399, -0.934917,
		36.365360, 37.045719, 39.717617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570274, 37.618797, 40.330734>,  <36.514862, 36.847343, 40.372059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570274, 37.618797, 40.330734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323299, 37.489910, 40.043694>,  <36.175114, 37.412579, 39.871468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.323299, 37.489910, 40.043694>,  <36.570274, 37.618797, 40.330734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323299, 37.489910, 40.043694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725113, 0.586777, 0.360422,
		0.304937, 0.742878, -0.595941,
		-0.617434, -0.322218, -0.717600,
		36.138069, 37.393246, 39.828415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220379, 38.163506, 40.151966>,  <36.570274, 37.618797, 40.330734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220379, 38.163506, 40.151966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987831, 37.876793, 39.997959>,  <35.848301, 37.704765, 39.905556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987831, 37.876793, 39.997959>,  <36.220379, 38.163506, 40.151966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987831, 37.876793, 39.997959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811650, 0.477840, 0.335996,
		-0.056859, 0.507835, -0.859576,
		-0.581370, -0.716779, -0.385015,
		35.813419, 37.661758, 39.882454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792397, 38.445007, 39.602478>,  <36.220379, 38.163506, 40.151966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792397, 38.445007, 39.602478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608303, 38.127609, 39.761749>,  <35.497845, 37.937172, 39.857311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608303, 38.127609, 39.761749>,  <35.792397, 38.445007, 39.602478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608303, 38.127609, 39.761749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684013, 0.602844, 0.410737,
		-0.565957, -0.083322, -0.820213,
		-0.460237, -0.793496, 0.398177,
		35.470230, 37.889561, 39.881203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193073, 38.770599, 39.640995>,  <35.792397, 38.445007, 39.602478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193073, 38.770599, 39.640995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175385, 38.433620, 39.855778>,  <35.164772, 38.231434, 39.984646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175385, 38.433620, 39.855778>,  <35.193073, 38.770599, 39.640995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175385, 38.433620, 39.855778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532393, 0.474674, 0.700887,
		-0.845342, -0.254880, -0.469504,
		-0.044219, -0.842450, 0.536957,
		35.162117, 38.180885, 40.016865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386803, 38.688221, 39.704708>,  <35.193073, 38.770599, 39.640995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386803, 38.688221, 39.704708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572857, 38.485050, 39.994717>,  <34.684490, 38.363148, 40.168720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572857, 38.485050, 39.994717>,  <34.386803, 38.688221, 39.704708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572857, 38.485050, 39.994717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564076, 0.461147, 0.684954,
		-0.682249, -0.727565, -0.072014,
		0.465140, -0.507930, 0.725019,
		34.712399, 38.332672, 40.212223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992382, 38.366405, 40.097965>,  <34.386803, 38.688221, 39.704708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992382, 38.366405, 40.097965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292458, 38.411591, 40.358566>,  <34.472504, 38.438702, 40.514927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292458, 38.411591, 40.358566>,  <33.992382, 38.366405, 40.097965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292458, 38.411591, 40.358566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630264, 0.420129, 0.652885,
		-0.199963, -0.900406, 0.386373,
		0.750188, 0.112964, 0.651504,
		34.517513, 38.445480, 40.554016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718876, 38.225327, 40.745110>,  <33.992382, 38.366405, 40.097965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718876, 38.225327, 40.745110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057739, 38.411438, 40.847744>,  <34.261059, 38.523106, 40.909325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057739, 38.411438, 40.847744>,  <33.718876, 38.225327, 40.745110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057739, 38.411438, 40.847744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494993, 0.515538, 0.699430,
		0.193150, -0.719537, 0.667053,
		0.847157, 0.465281, 0.256590,
		34.311886, 38.551022, 40.924721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657650, 38.304844, 41.416447>,  <33.718876, 38.225327, 40.745110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657650, 38.304844, 41.416447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931030, 38.586346, 41.338863>,  <34.095058, 38.755245, 41.292313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931030, 38.586346, 41.338863>,  <33.657650, 38.304844, 41.416447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931030, 38.586346, 41.338863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386613, 0.574334, 0.721575,
		0.619211, -0.418175, 0.664611,
		0.683453, 0.703755, -0.193962,
		34.136066, 38.797470, 41.280674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823982, 37.719906, 41.825397>,  <33.657650, 38.304844, 41.416447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823982, 37.719906, 41.825397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453270, 37.589691, 41.900337>,  <33.230843, 37.511562, 41.945301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.453270, 37.589691, 41.900337>,  <33.823982, 37.719906, 41.825397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453270, 37.589691, 41.900337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072233, -0.643969, -0.761634,
		0.368584, -0.692337, 0.620334,
		-0.926783, -0.325535, 0.187347,
		33.175236, 37.492031, 41.956543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901482, 37.207375, 41.448502>,  <33.823982, 37.719906, 41.825397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901482, 37.207375, 41.448502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506001, 37.189568, 41.505764>,  <33.268711, 37.178883, 41.540123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.506001, 37.189568, 41.505764>,  <33.901482, 37.207375, 41.448502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.506001, 37.189568, 41.505764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071136, -0.701260, -0.709347,
		0.131967, -0.711514, 0.690168,
		-0.988698, -0.044514, 0.143157,
		33.209393, 37.176212, 41.548710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826920, 36.532711, 41.348644>,  <33.901482, 37.207375, 41.448502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826920, 36.532711, 41.348644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465343, 36.701160, 41.318871>,  <33.248398, 36.802231, 41.301006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465343, 36.701160, 41.318871>,  <33.826920, 36.532711, 41.348644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465343, 36.701160, 41.318871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270865, -0.698478, -0.662391,
		-0.330939, -0.578602, 0.745452,
		-0.903942, 0.421128, -0.074430,
		33.194160, 36.827499, 41.296543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340519, 36.000500, 41.345665>,  <33.826920, 36.532711, 41.348644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340519, 36.000500, 41.345665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164078, 36.309837, 41.163517>,  <33.058212, 36.495441, 41.054226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164078, 36.309837, 41.163517>,  <33.340519, 36.000500, 41.345665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164078, 36.309837, 41.163517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437310, -0.628301, -0.643426,
		-0.783704, -0.084675, 0.615336,
		-0.441099, 0.773348, -0.455373,
		33.031750, 36.541843, 41.026905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677010, 35.735546, 41.226871>,  <33.340519, 36.000500, 41.345665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677010, 35.735546, 41.226871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716957, 36.035690, 40.965496>,  <32.740925, 36.215778, 40.808670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716957, 36.035690, 40.965496>,  <32.677010, 35.735546, 41.226871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716957, 36.035690, 40.965496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206109, -0.626874, -0.751364,
		-0.973419, 0.209720, 0.092049,
		0.099873, 0.750364, -0.653436,
		32.746918, 36.260799, 40.769466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308502, 35.465286, 40.600605>,  <32.677010, 35.735546, 41.226871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308502, 35.465286, 40.600605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490700, 35.785549, 40.444927>,  <32.600018, 35.977707, 40.351521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490700, 35.785549, 40.444927>,  <32.308502, 35.465286, 40.600605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490700, 35.785549, 40.444927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160279, -0.356286, -0.920527,
		-0.875689, 0.481679, -0.033960,
		0.455499, 0.800653, -0.389199,
		32.627350, 36.025745, 40.328167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840378, 35.761581, 40.148266>,  <32.308502, 35.465286, 40.600605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840378, 35.761581, 40.148266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220383, 35.852463, 40.062607>,  <32.448383, 35.906990, 40.011211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220383, 35.852463, 40.062607>,  <31.840378, 35.761581, 40.148266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220383, 35.852463, 40.062607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121617, -0.362438, -0.924039,
		-0.287558, 0.903891, -0.316688,
		0.950010, 0.227200, -0.214151,
		32.505386, 35.920624, 39.998363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879852, 36.125366, 39.539429>,  <31.840378, 35.761581, 40.148266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879852, 36.125366, 39.539429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239044, 35.952099, 39.570408>,  <32.454559, 35.848137, 39.588993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239044, 35.952099, 39.570408>,  <31.879852, 36.125366, 39.539429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239044, 35.952099, 39.570408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056307, -0.287663, -0.956075,
		0.436421, 0.854175, -0.282706,
		0.897979, -0.433169, 0.077446,
		32.508438, 35.822147, 39.593643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104988, 36.192352, 38.953968>,  <31.879852, 36.125366, 39.539429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104988, 36.192352, 38.953968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362724, 35.905293, 39.059654>,  <32.517365, 35.733055, 39.123066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362724, 35.905293, 39.059654>,  <32.104988, 36.192352, 38.953968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362724, 35.905293, 39.059654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110495, -0.429230, -0.896411,
		0.756718, 0.548396, -0.355866,
		0.644336, -0.717651, 0.264211,
		32.556026, 35.689999, 39.138916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458820, 36.006691, 38.319160>,  <32.104988, 36.192352, 38.953968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458820, 36.006691, 38.319160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528133, 35.709988, 38.578316>,  <32.569721, 35.531963, 38.733810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528133, 35.709988, 38.578316>,  <32.458820, 36.006691, 38.319160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528133, 35.709988, 38.578316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005428, -0.658552, -0.752515,
		0.984857, 0.126883, -0.118143,
		0.173285, -0.741761, 0.647891,
		32.580120, 35.487461, 38.772682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044754, 35.621475, 38.056145>,  <32.458820, 36.006691, 38.319160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044754, 35.621475, 38.056145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869190, 35.374702, 38.317451>,  <32.763851, 35.226639, 38.474236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.869190, 35.374702, 38.317451>,  <33.044754, 35.621475, 38.056145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869190, 35.374702, 38.317451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106890, -0.757719, -0.643767,
		0.892153, -0.212726, 0.398511,
		-0.438905, -0.616936, 0.653263,
		32.737518, 35.189621, 38.513432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447330, 35.000191, 38.104370>,  <33.044754, 35.621475, 38.056145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447330, 35.000191, 38.104370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075302, 34.891323, 38.203072>,  <32.852085, 34.826000, 38.262295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.075302, 34.891323, 38.203072>,  <33.447330, 35.000191, 38.104370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075302, 34.891323, 38.203072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061683, -0.777824, -0.625448,
		0.362162, -0.566491, 0.740221,
		-0.930072, -0.272173, 0.246755,
		32.796280, 34.809669, 38.277100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467487, 34.272869, 38.363274>,  <33.447330, 35.000191, 38.104370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467487, 34.272869, 38.363274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091255, 34.337402, 38.243752>,  <32.865517, 34.376122, 38.172039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091255, 34.337402, 38.243752>,  <33.467487, 34.272869, 38.363274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091255, 34.337402, 38.243752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002863, -0.876132, -0.482062,
		-0.339570, -0.454272, 0.823607,
		-0.940576, 0.161336, -0.298809,
		32.809082, 34.385803, 38.154110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.490208, 34.007206, 39.065884>,  <33.467487, 34.272869, 38.363274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.490208, 34.007206, 39.065884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720020, 34.253849, 39.281181>,  <33.857910, 34.401836, 39.410358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720020, 34.253849, 39.281181>,  <33.490208, 34.007206, 39.065884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720020, 34.253849, 39.281181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774139, 0.195873, 0.601949,
		0.265742, -0.762512, 0.589878,
		0.574534, 0.616611, 0.538239,
		33.892380, 34.438831, 39.442654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446758, 33.306202, 39.114399>,  <33.490208, 34.007206, 39.065884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446758, 33.306202, 39.114399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618805, 33.292084, 38.753567>,  <33.722031, 33.283615, 38.537067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618805, 33.292084, 38.753567>,  <33.446758, 33.306202, 39.114399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618805, 33.292084, 38.753567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004683, 0.999309, -0.036863,
		0.902763, 0.011630, 0.429981,
		0.430113, -0.035292, -0.902085,
		33.747837, 33.281498, 38.482941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993645, 33.111015, 39.587315>,  <33.446758, 33.306202, 39.114399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993645, 33.111015, 39.587315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392223, 33.144691, 39.586018>,  <34.631371, 33.164898, 39.585239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392223, 33.144691, 39.586018>,  <33.993645, 33.111015, 39.587315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392223, 33.144691, 39.586018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025433, 0.337303, 0.941053,
		0.080318, -0.937624, 0.338245,
		0.996445, 0.084186, -0.003245,
		34.691158, 33.169949, 39.585045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106564, 32.815540, 40.133076>,  <33.993645, 33.111015, 39.587315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106564, 32.815540, 40.133076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402622, 33.072372, 40.053162>,  <34.580257, 33.226471, 40.005215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402622, 33.072372, 40.053162>,  <34.106564, 32.815540, 40.133076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402622, 33.072372, 40.053162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049250, 0.244547, 0.968386,
		0.670639, -0.726588, 0.149378,
		0.740147, 0.642080, -0.199787,
		34.624668, 33.264996, 39.993225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639454, 32.650242, 40.481636>,  <34.106564, 32.815540, 40.133076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639454, 32.650242, 40.481636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673820, 33.039803, 40.397598>,  <34.694443, 33.273537, 40.347176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673820, 33.039803, 40.397598>,  <34.639454, 32.650242, 40.481636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673820, 33.039803, 40.397598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033947, 0.213617, 0.976328,
		0.995724, -0.076753, 0.051414,
		0.085919, 0.973898, -0.210098,
		34.699596, 33.331970, 40.334568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963104, 32.876915, 41.043465>,  <34.639454, 32.650242, 40.481636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963104, 32.876915, 41.043465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811668, 33.205093, 40.872101>,  <34.720806, 33.402000, 40.769283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811668, 33.205093, 40.872101>,  <34.963104, 32.876915, 41.043465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811668, 33.205093, 40.872101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172503, 0.392210, 0.903556,
		0.909347, 0.415981, -0.006958,
		-0.378591, 0.820446, -0.428413,
		34.698090, 33.451225, 40.743576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222572, 33.348747, 41.431950>,  <34.963104, 32.876915, 41.043465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.222572, 33.348747, 41.431950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915524, 33.531887, 41.252560>,  <34.731293, 33.641769, 41.144928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.915524, 33.531887, 41.252560>,  <35.222572, 33.348747, 41.431950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915524, 33.531887, 41.252560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272081, 0.400764, 0.874849,
		0.580277, 0.793578, -0.183065,
		-0.767627, 0.457846, -0.448471,
		34.685234, 33.669243, 41.118019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403217, 34.031269, 41.511391>,  <35.222572, 33.348747, 41.431950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403217, 34.031269, 41.511391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009857, 33.978050, 41.462051>,  <34.773842, 33.946121, 41.432449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009857, 33.978050, 41.462051>,  <35.403217, 34.031269, 41.511391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009857, 33.978050, 41.462051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177680, 0.568818, 0.803042,
		-0.036678, 0.811631, -0.583017,
		-0.983405, -0.133044, -0.123348,
		34.714836, 33.938137, 41.425049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133011, 34.659698, 41.636074>,  <35.403217, 34.031269, 41.511391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133011, 34.659698, 41.636074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810558, 34.429874, 41.692677>,  <34.617085, 34.291981, 41.726639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810558, 34.429874, 41.692677>,  <35.133011, 34.659698, 41.636074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810558, 34.429874, 41.692677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208868, 0.500035, 0.840440,
		-0.553641, 0.647953, -0.523104,
		-0.806136, -0.574562, 0.141503,
		34.568718, 34.257507, 41.735126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528217, 35.105129, 41.893074>,  <35.133011, 34.659698, 41.636074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528217, 35.105129, 41.893074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452503, 34.725895, 41.995293>,  <34.407074, 34.498356, 42.056625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452503, 34.725895, 41.995293>,  <34.528217, 35.105129, 41.893074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452503, 34.725895, 41.995293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225563, 0.295276, 0.928403,
		-0.955663, 0.118093, -0.269745,
		-0.189288, -0.948085, 0.255547,
		34.395718, 34.441471, 42.071957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832733, 35.132732, 42.100914>,  <34.528217, 35.105129, 41.893074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832733, 35.132732, 42.100914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022522, 34.818436, 42.259651>,  <34.136395, 34.629856, 42.354893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022522, 34.818436, 42.259651>,  <33.832733, 35.132732, 42.100914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022522, 34.818436, 42.259651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208365, 0.337759, 0.917880,
		-0.855256, -0.518195, -0.003465,
		0.474470, -0.785744, 0.396844,
		34.164864, 34.582714, 42.378704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419640, 34.914387, 42.527481>,  <33.832733, 35.132732, 42.100914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419640, 34.914387, 42.527481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759323, 34.742756, 42.650597>,  <33.963135, 34.639778, 42.724464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759323, 34.742756, 42.650597>,  <33.419640, 34.914387, 42.527481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759323, 34.742756, 42.650597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127362, 0.399239, 0.907958,
		-0.512464, -0.810249, 0.284390,
		0.849211, -0.429075, 0.307790,
		34.014088, 34.614033, 42.742935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313271, 34.447418, 43.124119>,  <33.419640, 34.914387, 42.527481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313271, 34.447418, 43.124119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690361, 34.576912, 43.156265>,  <33.916615, 34.654610, 43.175552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690361, 34.576912, 43.156265>,  <33.313271, 34.447418, 43.124119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690361, 34.576912, 43.156265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158837, 0.223809, 0.961603,
		0.293319, -0.919296, 0.262412,
		0.942728, 0.323737, 0.080370,
		33.973179, 34.674034, 43.180378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572083, 34.179623, 43.856411>,  <33.313271, 34.447418, 43.124119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572083, 34.179623, 43.856411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847923, 34.442192, 43.734062>,  <34.013428, 34.599735, 43.660652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847923, 34.442192, 43.734062>,  <33.572083, 34.179623, 43.856411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847923, 34.442192, 43.734062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286740, 0.140351, 0.947672,
		0.665002, -0.741223, -0.091436,
		0.689603, 0.656422, -0.305872,
		34.054806, 34.639118, 43.642300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298820, 34.069962, 44.229023>,  <33.572083, 34.179623, 43.856411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298820, 34.069962, 44.229023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276104, 34.448376, 44.101402>,  <34.262474, 34.675423, 44.024830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.276104, 34.448376, 44.101402>,  <34.298820, 34.069962, 44.229023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276104, 34.448376, 44.101402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426584, 0.311920, 0.848959,
		0.902663, -0.087893, -0.421277,
		-0.056787, 0.946034, -0.319052,
		34.259068, 34.732185, 44.005688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983837, 34.347790, 44.390221>,  <34.298820, 34.069962, 44.229023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983837, 34.347790, 44.390221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719620, 34.641594, 44.328026>,  <34.561089, 34.817875, 44.290710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719620, 34.641594, 44.328026>,  <34.983837, 34.347790, 44.390221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719620, 34.641594, 44.328026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127239, 0.313619, 0.940986,
		0.739928, 0.601777, -0.300617,
		-0.660543, 0.734512, -0.155486,
		34.521458, 34.861946, 44.281380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.093056, 34.777214, 44.993248>,  <34.983837, 34.347790, 44.390221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.093056, 34.777214, 44.993248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757790, 34.940887, 44.848999>,  <34.556629, 35.039089, 44.762451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.757790, 34.940887, 44.848999>,  <35.093056, 34.777214, 44.993248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757790, 34.940887, 44.848999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265876, 0.270776, 0.925197,
		0.476218, 0.871351, -0.118165,
		-0.838168, 0.409179, -0.360620,
		34.506340, 35.063641, 44.740814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055660, 35.375286, 45.380470>,  <35.093056, 34.777214, 44.993248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055660, 35.375286, 45.380470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689537, 35.309311, 45.233494>,  <34.469864, 35.269726, 45.145309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689537, 35.309311, 45.233494>,  <35.055660, 35.375286, 45.380470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689537, 35.309311, 45.233494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396687, 0.211361, 0.893289,
		-0.069675, 0.963391, -0.258889,
		-0.915306, -0.164938, -0.367438,
		34.414944, 35.259830, 45.123260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677250, 35.927475, 45.689980>,  <35.055660, 35.375286, 45.380470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677250, 35.927475, 45.689980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406410, 35.654373, 45.580151>,  <34.243908, 35.490513, 45.514256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.406410, 35.654373, 45.580151>,  <34.677250, 35.927475, 45.689980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406410, 35.654373, 45.580151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483559, 0.131544, 0.865371,
		-0.554719, 0.718709, -0.419220,
		-0.677095, -0.682755, -0.274568,
		34.203281, 35.449547, 45.497780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996773, 36.317963, 45.694851>,  <34.677250, 35.927475, 45.689980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996773, 36.317963, 45.694851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946053, 35.923382, 45.736500>,  <33.915619, 35.686634, 45.761490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.946053, 35.923382, 45.736500>,  <33.996773, 36.317963, 45.694851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946053, 35.923382, 45.736500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621426, 0.160819, 0.766790,
		-0.773144, 0.032522, -0.633396,
		-0.126799, -0.986448, 0.104126,
		33.908012, 35.627449, 45.767738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344498, 36.192444, 45.887730>,  <33.996773, 36.317963, 45.694851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344498, 36.192444, 45.887730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512756, 35.848248, 46.002701>,  <33.613712, 35.641731, 46.071682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512756, 35.848248, 46.002701>,  <33.344498, 36.192444, 45.887730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512756, 35.848248, 46.002701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419961, 0.096145, 0.902435,
		-0.804172, -0.500311, -0.320930,
		0.420642, -0.860491, 0.287429,
		33.638950, 35.590099, 46.088928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780151, 35.847401, 46.261890>,  <33.344498, 36.192444, 45.887730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780151, 35.847401, 46.261890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139160, 35.704433, 46.365200>,  <33.354565, 35.618652, 46.427185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.139160, 35.704433, 46.365200>,  <32.780151, 35.847401, 46.261890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139160, 35.704433, 46.365200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198044, 0.196592, 0.960276,
		-0.393996, -0.913019, 0.105661,
		0.897522, -0.357419, 0.258274,
		33.408417, 35.597206, 46.442680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573250, 35.676037, 46.895725>,  <32.780151, 35.847401, 46.261890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573250, 35.676037, 46.895725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972492, 35.655003, 46.882961>,  <33.212036, 35.642384, 46.875305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972492, 35.655003, 46.882961>,  <32.573250, 35.676037, 46.895725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972492, 35.655003, 46.882961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036962, 0.098173, 0.994483,
		-0.049166, -0.993779, 0.099930,
		0.998107, -0.052589, -0.031905,
		33.271923, 35.639225, 46.873390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692978, 35.179234, 47.320461>,  <32.573250, 35.676037, 46.895725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692978, 35.179234, 47.320461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032455, 35.390053, 47.302822>,  <33.236141, 35.516544, 47.292240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032455, 35.390053, 47.302822>,  <32.692978, 35.179234, 47.320461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032455, 35.390053, 47.302822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157301, -0.171937, 0.972468,
		0.504952, -0.832263, -0.228826,
		0.848693, 0.527044, -0.044096,
		33.287064, 35.548164, 47.289593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136349, 34.831905, 47.747242>,  <32.692978, 35.179234, 47.320461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136349, 34.831905, 47.747242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298405, 35.196541, 47.719330>,  <33.395638, 35.415321, 47.702583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298405, 35.196541, 47.719330>,  <33.136349, 34.831905, 47.747242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298405, 35.196541, 47.719330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249571, -0.036848, 0.967655,
		0.879532, -0.409449, -0.242435,
		0.405139, 0.911589, -0.069778,
		33.419945, 35.470016, 47.698395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.900944, 34.881042, 48.098698>,  <33.136349, 34.831905, 47.747242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.900944, 34.881042, 48.098698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726971, 35.240845, 48.082096>,  <33.622585, 35.456726, 48.072136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726971, 35.240845, 48.082096>,  <33.900944, 34.881042, 48.098698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726971, 35.240845, 48.082096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252129, 0.165906, 0.953366,
		0.864442, 0.404189, -0.298950,
		-0.434937, 0.899504, -0.041508,
		33.596489, 35.510696, 48.069645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349606, 35.271393, 48.617386>,  <33.900944, 34.881042, 48.098698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349606, 35.271393, 48.617386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048187, 35.524391, 48.545689>,  <33.867336, 35.676189, 48.502670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.048187, 35.524391, 48.545689>,  <34.349606, 35.271393, 48.617386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048187, 35.524391, 48.545689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009753, 0.283381, 0.958958,
		0.657327, 0.720867, -0.219709,
		-0.753542, 0.632492, -0.179243,
		33.822124, 35.714138, 48.491917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534027, 35.948788, 48.816544>,  <34.349606, 35.271393, 48.617386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534027, 35.948788, 48.816544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134789, 35.925755, 48.825336>,  <33.895245, 35.911934, 48.830612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134789, 35.925755, 48.825336>,  <34.534027, 35.948788, 48.816544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134789, 35.925755, 48.825336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002629, 0.396158, 0.918178,
		-0.061577, 0.916375, -0.395557,
		-0.998099, -0.057578, 0.021985,
		33.835358, 35.908482, 48.831932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342480, 36.570522, 49.112190>,  <34.534027, 35.948788, 48.816544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342480, 36.570522, 49.112190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028748, 36.326668, 49.158081>,  <33.840508, 36.180355, 49.185616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028748, 36.326668, 49.158081>,  <34.342480, 36.570522, 49.112190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028748, 36.326668, 49.158081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045183, 0.128311, 0.990704,
		-0.618691, 0.782227, -0.073093,
		-0.784334, -0.609637, 0.114728,
		33.793446, 36.143776, 49.192501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988224, 36.990005, 49.035236>,  <34.342480, 36.570522, 49.112190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988224, 36.990005, 49.035236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307228, 36.926880, 49.268158>,  <35.498631, 36.889004, 49.407909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.307228, 36.926880, 49.268158>,  <34.988224, 36.990005, 49.035236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307228, 36.926880, 49.268158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479654, -0.419583, -0.770638,
		0.365943, 0.893892, -0.258924,
		0.797507, -0.157816, 0.582302,
		35.546482, 36.879536, 49.442848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460560, 37.003185, 48.485188>,  <34.988224, 36.990005, 49.035236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460560, 37.003185, 48.485188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662025, 36.828403, 48.783287>,  <35.782906, 36.723534, 48.962147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.662025, 36.828403, 48.783287>,  <35.460560, 37.003185, 48.485188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662025, 36.828403, 48.783287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467934, -0.587165, -0.660512,
		0.726197, 0.681402, -0.091266,
		0.503662, -0.436955, 0.745248,
		35.813126, 36.697315, 49.006863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159756, 37.050064, 48.320793>,  <35.460560, 37.003185, 48.485188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159756, 37.050064, 48.320793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125721, 36.739231, 48.570240>,  <36.105301, 36.552731, 48.719910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.125721, 36.739231, 48.570240>,  <36.159756, 37.050064, 48.320793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.125721, 36.739231, 48.570240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500781, -0.574443, -0.647482,
		0.861381, 0.257201, 0.438030,
		-0.085090, -0.777086, 0.623616,
		36.100193, 36.506104, 48.757324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844788, 36.820881, 48.397209>,  <36.159756, 37.050064, 48.320793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844788, 36.820881, 48.397209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598392, 36.514145, 48.469334>,  <36.450554, 36.330101, 48.512608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.598392, 36.514145, 48.469334>,  <36.844788, 36.820881, 48.397209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598392, 36.514145, 48.469334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550458, -0.582743, -0.597835,
		0.563522, -0.269003, 0.781076,
		-0.615986, -0.766843, 0.180314,
		36.413597, 36.284092, 48.523426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283146, 36.238342, 48.401485>,  <36.844788, 36.820881, 48.397209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283146, 36.238342, 48.401485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925091, 36.081013, 48.317551>,  <36.710258, 35.986614, 48.267189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925091, 36.081013, 48.317551>,  <37.283146, 36.238342, 48.401485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925091, 36.081013, 48.317551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422940, -0.600496, -0.678620,
		0.140912, -0.696204, 0.703877,
		-0.895134, -0.393324, -0.209835,
		36.656551, 35.963017, 48.254601>
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
