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
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
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
	<1.919606, 0.883422, 3.629846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.142227, 0.639870, 3.403744>,  <2.275800, 0.493738, 3.268082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.142227, 0.639870, 3.403744>,  <1.919606, 0.883422, 3.629846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.142227, 0.639870, 3.403744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659142, 0.090564, -0.746546,
		0.505749, 0.788075, -0.350936,
		0.556552, -0.608881, -0.565255,
		2.309193, 0.457205, 3.234167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.861371, 1.155022, 2.957155>,  <1.919606, 0.883422, 3.629846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.861371, 1.155022, 2.957155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.997246, 0.791191, 2.861420>,  <2.078770, 0.572892, 2.803979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.997246, 0.791191, 2.861420>,  <1.861371, 1.155022, 2.957155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.997246, 0.791191, 2.861420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714586, -0.084130, -0.694470,
		0.611539, 0.406929, -0.678549,
		0.339686, -0.909577, -0.239337,
		2.099152, 0.518318, 2.789619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.019728, 1.133627, 2.159391>,  <1.861371, 1.155022, 2.957155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.019728, 1.133627, 2.159391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.926285, 0.783356, 2.328442>,  <1.870219, 0.573193, 2.429872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.926285, 0.783356, 2.328442>,  <2.019728, 1.133627, 2.159391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.926285, 0.783356, 2.328442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721139, -0.135519, -0.679406,
		0.652216, -0.463488, -0.599828,
		-0.233608, -0.875679, 0.422627,
		1.856202, 0.520652, 2.455230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.679726, 0.712209, 1.651746>,  <2.019728, 1.133627, 2.159391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.679726, 0.712209, 1.651746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.557865, 0.551247, 1.997059>,  <1.484749, 0.454669, 2.204247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.557865, 0.551247, 1.997059>,  <1.679726, 0.712209, 1.651746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.557865, 0.551247, 1.997059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748085, -0.459913, -0.478381,
		0.589539, -0.791548, -0.160922,
		-0.304651, -0.402408, 0.863282,
		1.466470, 0.430524, 2.256043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.666031, -0.023264, 1.616595>,  <1.679726, 0.712209, 1.651746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.666031, -0.023264, 1.616595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.422791, 0.049774, 1.925625>,  <1.276846, 0.093597, 2.111042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.422791, 0.049774, 1.925625>,  <1.666031, -0.023264, 1.616595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.422791, 0.049774, 1.925625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691324, -0.600192, -0.402295,
		0.390235, -0.778735, 0.491211,
		-0.608102, 0.182597, 0.772574,
		1.240360, 0.104553, 2.157397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.416232, -0.653883, 1.767870>,  <1.666031, -0.023264, 1.616595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.416232, -0.653883, 1.767870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.170326, -0.400719, 1.956120>,  <1.022782, -0.248820, 2.069069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.170326, -0.400719, 1.956120>,  <1.416232, -0.653883, 1.767870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.170326, -0.400719, 1.956120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747903, -0.657250, -0.093079,
		0.250408, -0.409203, 0.877410,
		-0.614766, 0.632910, 0.470625,
		0.985897, -0.210846, 2.097307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.005794, -1.050892, 2.256765>,  <1.416232, -0.653883, 1.767870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.005794, -1.050892, 2.256765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.794312, -0.724846, 2.162060>,  <0.667422, -0.529218, 2.105237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.794312, -0.724846, 2.162060>,  <1.005794, -1.050892, 2.256765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.794312, -0.724846, 2.162060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811081, -0.567389, -0.142185,
		-0.250234, 0.116861, 0.961107,
		-0.528706, 0.815115, -0.236764,
		0.635700, -0.480311, 2.091031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.511452, -0.915234, 2.744157>,  <1.005794, -1.050892, 2.256765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.511452, -0.915234, 2.744157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.397831, -0.782150, 2.384464>,  <0.329658, -0.702300, 2.168648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.397831, -0.782150, 2.384464>,  <0.511452, -0.915234, 2.744157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.397831, -0.782150, 2.384464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765884, -0.642966, 0.004038,
		-0.576832, 0.689855, 0.437453,
		-0.284053, 0.332709, -0.899232,
		0.312615, -0.682338, 2.114695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.352680, 3.164246, 1.978166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.581457, 3.491028, 2.007744>,  <-0.718723, 3.687097, 2.025491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.581457, 3.491028, 2.007744>,  <-0.352680, 3.164246, 1.978166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.581457, 3.491028, 2.007744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756693, 0.560252, -0.336948,
		-0.316699, -0.136761, -0.938615,
		-0.571942, 0.816954, 0.073946,
		-0.753040, 3.736114, 2.029927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.399047, 3.537433, 1.221344>,  <-0.352680, 3.164246, 1.978166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.399047, 3.537433, 1.221344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.436344, 3.751396, 1.557243>,  <-0.458723, 3.879774, 1.758783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.436344, 3.751396, 1.557243>,  <-0.399047, 3.537433, 1.221344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.436344, 3.751396, 1.557243> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596266, 0.705450, -0.383154,
		-0.797353, 0.464987, -0.384727,
		-0.093244, 0.534909, 0.839749,
		-0.464317, 3.911869, 1.809168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.487422, 4.289878, 1.080230>,  <-0.399047, 3.537433, 1.221344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.487422, 4.289878, 1.080230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.322172, 4.237328, 1.440689>,  <-0.223022, 4.205797, 1.656965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.322172, 4.237328, 1.440689>,  <-0.487422, 4.289878, 1.080230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.322172, 4.237328, 1.440689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603721, 0.780353, -0.163005,
		-0.681799, 0.611383, 0.401698,
		0.413125, -0.131376, 0.901148,
		-0.198235, 4.197915, 1.711034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.366124, 5.011391, 1.301134>,  <-0.487422, 4.289878, 1.080230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.366124, 5.011391, 1.301134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.163057, 4.799927, 1.573250>,  <-0.041218, 4.673048, 1.736519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.163057, 4.799927, 1.573250>,  <-0.366124, 5.011391, 1.301134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.163057, 4.799927, 1.573250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653539, 0.750811, 0.095761,
		-0.561393, 0.395981, 0.726661,
		0.507666, -0.528661, 0.680289,
		-0.010758, 4.641329, 1.777337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.088811, 5.586552, 1.804200>,  <-0.366124, 5.011391, 1.301134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.088811, 5.586552, 1.804200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.121002, 5.263664, 1.912468>,  <0.246890, 5.069932, 1.977429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.121002, 5.263664, 1.912468>,  <-0.088811, 5.586552, 1.804200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.121002, 5.263664, 1.912468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719048, 0.590249, 0.366847,
		-0.455889, 0.002201, 0.890034,
		0.524534, -0.807218, 0.270671,
		0.278362, 5.021499, 1.993669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.104172, 5.712880, 2.480526>,  <-0.088811, 5.586552, 1.804200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.104172, 5.712880, 2.480526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.365381, 5.426849, 2.380745>,  <0.522107, 5.255231, 2.320876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.365381, 5.426849, 2.380745>,  <0.104172, 5.712880, 2.480526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.365381, 5.426849, 2.380745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679919, 0.408475, 0.608981,
		-0.333573, -0.567287, 0.752938,
		0.653023, -0.715077, -0.249453,
		0.561288, 5.212327, 2.305909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.504007, 5.537273, 3.098430>,  <0.104172, 5.712880, 2.480526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.504007, 5.537273, 3.098430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.733189, 5.387276, 2.806923>,  <0.870698, 5.297277, 2.632019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.733189, 5.387276, 2.806923>,  <0.504007, 5.537273, 3.098430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.733189, 5.387276, 2.806923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805225, 0.423288, 0.415259,
		0.152760, -0.824747, 0.544478,
		0.572954, -0.374993, -0.728769,
		0.905075, 5.274778, 2.588292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.063512, 5.174376, 3.476599>,  <0.504007, 5.537273, 3.098430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.063512, 5.174376, 3.476599> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.180004, 5.282951, 3.109665>,  <1.249900, 5.348096, 2.889504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.180004, 5.282951, 3.109665>,  <1.063512, 5.174376, 3.476599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.180004, 5.282951, 3.109665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910083, 0.216926, 0.353117,
		0.294843, -0.937691, -0.183856,
		0.291231, 0.271438, -0.917336,
		1.267373, 5.364383, 2.834464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
