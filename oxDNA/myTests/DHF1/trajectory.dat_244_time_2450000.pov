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
	<1.413976, 5.235622, 2.389675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.628399, 5.071754, 2.094429>,  <1.757053, 4.973433, 1.917282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.628399, 5.071754, 2.094429>,  <1.413976, 5.235622, 2.389675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.628399, 5.071754, 2.094429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355105, -0.902664, 0.243102,
		-0.765861, 0.131791, -0.629356,
		0.536058, -0.409670, -0.738114,
		1.789216, 4.948853, 1.872995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.973987, 4.847728, 2.001252>,  <1.413976, 5.235622, 2.389675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.973987, 4.847728, 2.001252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.328865, 4.670509, 1.949722>,  <1.541792, 4.564178, 1.918804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.328865, 4.670509, 1.949722>,  <0.973987, 4.847728, 2.001252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.328865, 4.670509, 1.949722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435594, -0.896332, 0.082752,
		-0.152132, -0.017302, -0.988209,
		0.887195, -0.443047, -0.128824,
		1.595023, 4.537595, 1.911075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.926408, 4.348778, 1.413070>,  <0.973987, 4.847728, 2.001252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.926408, 4.348778, 1.413070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.216732, 4.249123, 1.669548>,  <1.390926, 4.189329, 1.823435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.216732, 4.249123, 1.669548>,  <0.926408, 4.348778, 1.413070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.216732, 4.249123, 1.669548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406481, -0.907303, 0.107585,
		0.554955, -0.338720, -0.759799,
		0.725809, -0.249139, 0.641195,
		1.434475, 4.174381, 1.861907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.409504, 3.769546, 1.231104>,  <0.926408, 4.348778, 1.413070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.409504, 3.769546, 1.231104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.329014, 3.813866, 1.620407>,  <1.280720, 3.840458, 1.853989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.329014, 3.813866, 1.620407>,  <1.409504, 3.769546, 1.231104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.329014, 3.813866, 1.620407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458616, -0.888612, 0.006344,
		0.865552, -0.445075, 0.229625,
		-0.201224, 0.110800, 0.973258,
		1.268646, 3.847106, 1.912385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.571916, 3.104636, 1.608057>,  <1.409504, 3.769546, 1.231104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.571916, 3.104636, 1.608057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.287197, 3.284271, 1.824081>,  <1.116366, 3.392052, 1.953696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.287197, 3.284271, 1.824081>,  <1.571916, 3.104636, 1.608057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.287197, 3.284271, 1.824081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513297, -0.857435, 0.036480,
		0.479451, -0.251246, 0.840834,
		-0.711796, 0.449088, 0.540062,
		1.073658, 3.418998, 1.986100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.499046, 2.771728, 2.244475>,  <1.571916, 3.104636, 1.608057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.499046, 2.771728, 2.244475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.161320, 2.964828, 2.151451>,  <0.958684, 3.080688, 2.095637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.161320, 2.964828, 2.151451>,  <1.499046, 2.771728, 2.244475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.161320, 2.964828, 2.151451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483158, -0.873532, -0.059170,
		-0.231712, 0.062405, 0.970780,
		-0.844315, 0.482750, -0.232559,
		0.908025, 3.109654, 2.081683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.900485, 2.655271, 2.785897>,  <1.499046, 2.771728, 2.244475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.900485, 2.655271, 2.785897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.723824, 2.742912, 2.437889>,  <0.617827, 2.795497, 2.229084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.723824, 2.742912, 2.437889>,  <0.900485, 2.655271, 2.785897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.723824, 2.742912, 2.437889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402952, -0.914856, -0.025842,
		-0.801606, 0.339163, 0.492338,
		-0.441654, 0.219103, -0.870020,
		0.591327, 2.808643, 2.176883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.191234, 2.383979, 2.899627>,  <0.900485, 2.655271, 2.785897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.191234, 2.383979, 2.899627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.268719, 2.414688, 2.508408>,  <0.315210, 2.433114, 2.273676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.268719, 2.414688, 2.508408>,  <0.191234, 2.383979, 2.899627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.268719, 2.414688, 2.508408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463222, -0.871649, -0.160168,
		-0.864812, 0.484081, -0.133286,
		0.193713, 0.076774, -0.978050,
		0.326833, 2.437720, 2.214993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.822161, 1.159823, 1.080664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.566549, 1.266724, 0.792160>,  <-0.413182, 1.330864, 0.619057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.566549, 1.266724, 0.792160>,  <-0.822161, 1.159823, 1.080664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.566549, 1.266724, 0.792160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388743, 0.696913, 0.602653,
		0.663716, -0.665499, 0.341456,
		0.639031, 0.267252, -0.721260,
		-0.374840, 1.346899, 0.575782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.016031, 1.054803, 1.327529>,  <-0.822161, 1.159823, 1.080664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.016031, 1.054803, 1.327529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.097963, 1.345352, 1.065102>,  <-0.147123, 1.519682, 0.907645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.097963, 1.345352, 1.065102>,  <-0.016031, 1.054803, 1.327529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.097963, 1.345352, 1.065102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203449, 0.687236, 0.697362,
		0.957420, 0.009364, -0.288547,
		-0.204830, 0.726373, -0.656069,
		-0.159412, 1.563264, 0.868281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.547081, 1.479518, 1.196434>,  <-0.016031, 1.054803, 1.327529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.547081, 1.479518, 1.196434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.226492, 1.714340, 1.150810>,  <0.034139, 1.855233, 1.123436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.226492, 1.714340, 1.150810>,  <0.547081, 1.479518, 1.196434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.226492, 1.714340, 1.150810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445134, 0.712978, 0.541774,
		0.399373, 0.383445, -0.832749,
		-0.801472, 0.587055, -0.114060,
		-0.013950, 1.890457, 1.116592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.853769, 2.055864, 1.221481>,  <0.547081, 1.479518, 1.196434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.853769, 2.055864, 1.221481> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.473494, 2.157410, 1.292747>,  <0.245328, 2.218337, 1.335508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.473494, 2.157410, 1.292747>,  <0.853769, 2.055864, 1.221481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.473494, 2.157410, 1.292747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303614, 0.879060, 0.367521,
		-0.063319, 0.403492, -0.912790,
		-0.950689, 0.253864, 0.178167,
		0.188287, 2.233569, 1.346197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.520814, 2.681949, 0.887743>,  <0.853769, 2.055864, 1.221481>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.520814, 2.681949, 0.887743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.369839, 2.606857, 1.250465>,  <0.279254, 2.561802, 1.468099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.369839, 2.606857, 1.250465>,  <0.520814, 2.681949, 0.887743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.369839, 2.606857, 1.250465> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365917, 0.869311, 0.332271,
		-0.850674, 0.457227, -0.259417,
		-0.377437, -0.187729, 0.906807,
		0.256608, 2.550539, 1.522508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.107837, 3.164304, 1.008251>,  <0.520814, 2.681949, 0.887743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.107837, 3.164304, 1.008251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.266880, 3.030014, 1.349823>,  <0.362306, 2.949440, 1.554766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.266880, 3.030014, 1.349823>,  <0.107837, 3.164304, 1.008251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.266880, 3.030014, 1.349823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234887, 0.936889, 0.258972,
		-0.886981, 0.097608, 0.451372,
		0.397608, -0.335724, 0.853930,
		0.386162, 2.929297, 1.606002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.142037, 3.675039, 1.513015>,  <0.107837, 3.164304, 1.008251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.142037, 3.675039, 1.513015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.176880, 3.488815, 1.666679>,  <0.368230, 3.377081, 1.758878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.176880, 3.488815, 1.666679>,  <-0.142037, 3.675039, 1.513015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.176880, 3.488815, 1.666679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385443, 0.882490, 0.269526,
		-0.464499, -0.066819, 0.883049,
		0.797292, -0.465560, 0.384161,
		0.416067, 3.349147, 1.781928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.051426, 3.860981, 2.230289>,  <-0.142037, 3.675039, 1.513015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.051426, 3.860981, 2.230289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.289530, 3.768768, 2.042549>,  <0.494103, 3.713441, 1.929905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.289530, 3.768768, 2.042549>,  <-0.051426, 3.860981, 2.230289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.289530, 3.768768, 2.042549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347232, 0.920651, 0.178412,
		0.390978, -0.315049, 0.864800,
		0.852388, -0.230531, -0.469350,
		0.545246, 3.699609, 1.901744>
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
