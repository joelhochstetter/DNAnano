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
	<24.520521, 34.549412, 35.005959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.492868, 34.937496, 34.913082>,  <24.476276, 35.170345, 34.857357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.492868, 34.937496, 34.913082>,  <24.520521, 34.549412, 35.005959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.492868, 34.937496, 34.913082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642015, 0.221411, 0.734026,
		0.763569, -0.098323, -0.638197,
		-0.069132, 0.970211, -0.232187,
		24.472128, 35.228561, 34.843426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.169861, 34.917545, 34.720520>,  <24.520521, 34.549412, 35.005959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.169861, 34.917545, 34.720520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.924738, 35.158680, 34.924896>,  <24.777664, 35.303360, 35.047520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.924738, 35.158680, 34.924896>,  <25.169861, 34.917545, 34.720520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.924738, 35.158680, 34.924896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754120, 0.252899, 0.606091,
		0.236156, 0.756726, -0.609587,
		-0.612808, 0.602834, 0.510938,
		24.740896, 35.339531, 35.078178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.412540, 35.574406, 34.711029>,  <25.169861, 34.917545, 34.720520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.412540, 35.574406, 34.711029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.189951, 35.531410, 35.040581>,  <25.056398, 35.505611, 35.238312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.189951, 35.531410, 35.040581>,  <25.412540, 35.574406, 34.711029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.189951, 35.531410, 35.040581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687384, 0.497465, 0.529180,
		-0.466734, 0.860799, -0.202939,
		-0.556473, -0.107489, 0.823884,
		25.023008, 35.499165, 35.287746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.433260, 35.978065, 34.070133>,  <25.412540, 35.574406, 34.711029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.433260, 35.978065, 34.070133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.160273, 36.139694, 34.313759>,  <24.996479, 36.236671, 34.459934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.160273, 36.139694, 34.313759>,  <25.433260, 35.978065, 34.070133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.160273, 36.139694, 34.313759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108255, 0.879983, -0.462506,
		-0.722852, -0.249712, -0.644305,
		-0.682470, 0.404073, 0.609064,
		24.955532, 36.260918, 34.496479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.070408, 35.864197, 34.493881>,  <25.433260, 35.978065, 34.070133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.070408, 35.864197, 34.493881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452488, 35.774216, 34.570812>,  <26.681736, 35.720226, 34.616970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452488, 35.774216, 34.570812>,  <26.070408, 35.864197, 34.493881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.452488, 35.774216, 34.570812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026319, -0.582704, -0.812258,
		0.294795, 0.780929, -0.550677,
		0.955198, -0.224957, 0.192332,
		26.739048, 35.706730, 34.628513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.483614, 36.158310, 34.006905>,  <26.070408, 35.864197, 34.493881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.483614, 36.158310, 34.006905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670130, 35.833157, 34.146503>,  <26.782040, 35.638065, 34.230263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.670130, 35.833157, 34.146503>,  <26.483614, 36.158310, 34.006905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.670130, 35.833157, 34.146503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062377, -0.363318, -0.929575,
		0.882429, 0.455222, -0.118706,
		0.466291, -0.812880, 0.348998,
		26.810017, 35.589294, 34.251202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.990973, 36.043224, 33.544991>,  <26.483614, 36.158310, 34.006905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.990973, 36.043224, 33.544991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.980978, 35.688046, 33.728695>,  <26.974981, 35.474937, 33.838917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.980978, 35.688046, 33.728695>,  <26.990973, 36.043224, 33.544991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.980978, 35.688046, 33.728695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186227, -0.455496, -0.870541,
		0.982189, 0.063774, 0.176742,
		-0.024988, -0.887950, 0.459260,
		26.973482, 35.421661, 33.866474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.791412, 35.894302, 33.596546>,  <26.990973, 36.043224, 33.544991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.791412, 35.894302, 33.596546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.538506, 35.593536, 33.521854>,  <27.386761, 35.413078, 33.477039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.538506, 35.593536, 33.521854>,  <27.791412, 35.894302, 33.596546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.538506, 35.593536, 33.521854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446936, -0.157123, -0.880659,
		0.632839, -0.640267, 0.435399,
		-0.632269, -0.751911, -0.186725,
		27.348825, 35.367962, 33.465836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.206486, 35.401268, 33.400791>,  <27.791412, 35.894302, 33.596546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.206486, 35.401268, 33.400791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867481, 35.261642, 33.240856>,  <27.664078, 35.177868, 33.144894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.867481, 35.261642, 33.240856>,  <28.206486, 35.401268, 33.400791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.867481, 35.261642, 33.240856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500805, -0.276350, -0.820260,
		0.175830, -0.895423, 0.409025,
		-0.847513, -0.349068, -0.399841,
		27.613228, 35.156921, 33.120903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431307, 34.816391, 33.033127>,  <28.206486, 35.401268, 33.400791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431307, 34.816391, 33.033127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.075819, 34.899841, 32.869835>,  <27.862526, 34.949913, 32.771858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.075819, 34.899841, 32.869835>,  <28.431307, 34.816391, 33.033127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.075819, 34.899841, 32.869835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299060, -0.411091, -0.861143,
		-0.347473, -0.887401, 0.302955,
		-0.888721, 0.208622, -0.408229,
		27.809202, 34.962429, 32.747368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246901, 34.326492, 32.518452>,  <28.431307, 34.816391, 33.033127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246901, 34.326492, 32.518452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.966497, 34.584202, 32.396137>,  <27.798256, 34.738827, 32.322750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.966497, 34.584202, 32.396137>,  <28.246901, 34.326492, 32.518452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.966497, 34.584202, 32.396137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114054, -0.321974, -0.939853,
		-0.703977, -0.693718, 0.152224,
		-0.701005, 0.644273, -0.305784,
		27.756195, 34.777485, 32.304401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.743418, 34.013115, 32.091045>,  <28.246901, 34.326492, 32.518452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.743418, 34.013115, 32.091045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.807037, 34.398808, 32.006237>,  <27.845209, 34.630222, 31.955351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.807037, 34.398808, 32.006237>,  <27.743418, 34.013115, 32.091045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.807037, 34.398808, 32.006237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283876, -0.250354, -0.925601,
		-0.945578, 0.087028, -0.313542,
		0.159050, 0.964235, -0.212024,
		27.854752, 34.688080, 31.942629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.802618, 33.821220, 31.378023>,  <27.743418, 34.013115, 32.091045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.802618, 33.821220, 31.378023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.599567, 33.977638, 31.070934>,  <27.477737, 34.071487, 30.886681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.599567, 33.977638, 31.070934>,  <27.802618, 33.821220, 31.378023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.599567, 33.977638, 31.070934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161282, 0.832187, 0.530521,
		0.846346, 0.393127, -0.359373,
		-0.507628, 0.391044, -0.767723,
		27.447279, 34.094952, 30.840618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.047333, 34.335495, 31.074982>,  <27.802618, 33.821220, 31.378023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.047333, 34.335495, 31.074982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652973, 34.402420, 31.073971>,  <27.416357, 34.442574, 31.073364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.652973, 34.402420, 31.073971>,  <28.047333, 34.335495, 31.074982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.652973, 34.402420, 31.073971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139470, 0.829988, 0.540064,
		0.092457, 0.532097, -0.841620,
		-0.985901, 0.167313, -0.002527,
		27.357203, 34.452614, 31.073214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020624, 35.017178, 31.273680>,  <28.047333, 34.335495, 31.074982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020624, 35.017178, 31.273680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.658123, 34.857250, 31.328608>,  <27.440622, 34.761295, 31.361565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.658123, 34.857250, 31.328608>,  <28.020624, 35.017178, 31.273680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.658123, 34.857250, 31.328608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169816, 0.641770, 0.747860,
		-0.387133, 0.654429, -0.649500,
		-0.906251, -0.399817, 0.137318,
		27.386248, 34.737305, 31.369802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482059, 35.505833, 31.334805>,  <28.020624, 35.017178, 31.273680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.482059, 35.505833, 31.334805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434761, 35.186989, 31.571663>,  <27.406382, 34.995682, 31.713778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434761, 35.186989, 31.571663>,  <27.482059, 35.505833, 31.334805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.434761, 35.186989, 31.571663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128776, 0.603604, 0.786816,
		-0.984599, 0.016783, -0.174022,
		-0.118246, -0.797108, 0.592147,
		27.399288, 34.947857, 31.749308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.923042, 35.633858, 31.847822>,  <27.482059, 35.505833, 31.334805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.923042, 35.633858, 31.847822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179522, 35.366795, 31.999132>,  <27.333408, 35.206554, 32.089920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.179522, 35.366795, 31.999132>,  <26.923042, 35.633858, 31.847822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.179522, 35.366795, 31.999132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180440, 0.347947, 0.919986,
		-0.745860, -0.658149, 0.102630,
		0.641198, -0.667662, 0.378276,
		27.371881, 35.166496, 32.112614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.629147, 35.249821, 32.329632>,  <26.923042, 35.633858, 31.847822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.629147, 35.249821, 32.329632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.997959, 35.164490, 32.458839>,  <27.219248, 35.113289, 32.536366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.997959, 35.164490, 32.458839>,  <26.629147, 35.249821, 32.329632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.997959, 35.164490, 32.458839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338933, -0.041735, 0.939884,
		-0.187028, -0.976088, -0.110787,
		0.922033, -0.213334, 0.323022,
		27.274569, 35.100491, 32.555748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.478661, 34.665321, 32.642735>,  <26.629147, 35.249821, 32.329632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.478661, 34.665321, 32.642735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.805765, 34.863060, 32.760643>,  <27.002028, 34.981705, 32.831387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.805765, 34.863060, 32.760643>,  <26.478661, 34.665321, 32.642735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.805765, 34.863060, 32.760643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361651, 0.042924, 0.931325,
		0.447745, -0.868204, 0.213883,
		0.817761, 0.494347, 0.294768,
		27.051094, 35.011364, 32.849075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.525661, 34.397655, 33.288250>,  <26.478661, 34.665321, 32.642735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.525661, 34.397655, 33.288250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790140, 34.693375, 33.339249>,  <26.948828, 34.870808, 33.369846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.790140, 34.693375, 33.339249>,  <26.525661, 34.397655, 33.288250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.790140, 34.693375, 33.339249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170473, -0.017439, 0.985208,
		0.730587, -0.673151, 0.114501,
		0.661197, 0.739300, 0.127495,
		26.988499, 34.915165, 33.377499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.051420, 34.167171, 33.774952>,  <26.525661, 34.397655, 33.288250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.051420, 34.167171, 33.774952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986525, 34.561771, 33.765991>,  <26.947588, 34.798531, 33.760612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.986525, 34.561771, 33.765991>,  <27.051420, 34.167171, 33.774952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986525, 34.561771, 33.765991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175997, -0.006588, 0.984369,
		0.970929, 0.163645, 0.174689,
		-0.162238, 0.986497, -0.022404,
		26.937853, 34.857719, 33.759270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930202, 34.240707, 34.369427>,  <27.051420, 34.167171, 33.774952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930202, 34.240707, 34.369427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.967176, 34.617126, 34.239269>,  <26.989361, 34.842979, 34.161175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.967176, 34.617126, 34.239269>,  <26.930202, 34.240707, 34.369427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.967176, 34.617126, 34.239269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026232, 0.328978, 0.943973,
		0.995373, -0.078721, 0.055095,
		0.092435, 0.941051, -0.325391,
		26.994907, 34.899441, 34.141651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.301168, 34.550301, 34.839043>,  <26.930202, 34.240707, 34.369427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.301168, 34.550301, 34.839043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.167030, 34.866642, 34.634258>,  <27.086548, 35.056446, 34.511387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.167030, 34.866642, 34.634258>,  <27.301168, 34.550301, 34.839043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.167030, 34.866642, 34.634258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037532, 0.554209, 0.831531,
		0.941347, 0.259635, -0.215534,
		-0.335346, 0.790849, -0.511958,
		27.066427, 35.103897, 34.480671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765533, 35.027409, 34.862087>,  <27.301168, 34.550301, 34.839043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765533, 35.027409, 34.862087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388885, 35.161591, 34.850643>,  <27.162897, 35.242100, 34.843777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.388885, 35.161591, 34.850643>,  <27.765533, 35.027409, 34.862087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.388885, 35.161591, 34.850643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126082, 0.430154, 0.893908,
		0.312172, 0.838116, -0.447337,
		-0.941622, 0.335454, -0.028611,
		27.106400, 35.262226, 34.842060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.734972, 35.675339, 35.260532>,  <27.765533, 35.027409, 34.862087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.734972, 35.675339, 35.260532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359428, 35.540569, 35.232178>,  <27.134102, 35.459709, 35.215164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359428, 35.540569, 35.232178>,  <27.734972, 35.675339, 35.260532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359428, 35.540569, 35.232178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204940, 0.381427, 0.901395,
		-0.276660, 0.860812, -0.427155,
		-0.938860, -0.336921, -0.070889,
		27.077770, 35.439491, 35.210911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.197174, 36.157585, 35.256672>,  <27.734972, 35.675339, 35.260532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.197174, 36.157585, 35.256672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.074305, 35.821293, 35.435028>,  <27.000584, 35.619518, 35.542042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.074305, 35.821293, 35.435028>,  <27.197174, 36.157585, 35.256672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.074305, 35.821293, 35.435028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014737, 0.464281, 0.885566,
		-0.951540, 0.278593, -0.130224,
		-0.307173, -0.840732, 0.445887,
		26.982153, 35.569073, 35.568794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.619495, 36.335648, 35.811695>,  <27.197174, 36.157585, 35.256672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.619495, 36.335648, 35.811695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.847494, 36.019356, 35.901005>,  <26.984293, 35.829582, 35.954590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.847494, 36.019356, 35.901005>,  <26.619495, 36.335648, 35.811695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.847494, 36.019356, 35.901005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070207, 0.317618, 0.945616,
		-0.818641, -0.523324, 0.236556,
		0.569998, -0.790728, 0.223274,
		27.018494, 35.782139, 35.967987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.442247, 35.986576, 36.393147>,  <26.619495, 36.335648, 35.811695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.442247, 35.986576, 36.393147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.836796, 35.939667, 36.346977>,  <27.073524, 35.911522, 36.319275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.836796, 35.939667, 36.346977>,  <26.442247, 35.986576, 36.393147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.836796, 35.939667, 36.346977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158715, 0.492955, 0.855456,
		-0.043419, -0.862115, 0.504848,
		0.986369, -0.117270, -0.115427,
		27.132706, 35.904488, 36.312347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.677391, 35.585575, 37.034801>,  <26.442247, 35.986576, 36.393147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.677391, 35.585575, 37.034801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.959801, 35.788910, 36.837570>,  <27.129246, 35.910912, 36.719231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.959801, 35.788910, 36.837570>,  <26.677391, 35.585575, 37.034801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.959801, 35.788910, 36.837570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361527, 0.339990, 0.868162,
		0.608959, -0.791204, 0.056264,
		0.706023, 0.508334, -0.493081,
		27.171608, 35.941410, 36.689648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.319735, 35.461319, 37.584190>,  <26.677391, 35.585575, 37.034801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.319735, 35.461319, 37.584190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.429136, 35.728668, 37.307507>,  <27.494778, 35.889080, 37.141495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.429136, 35.728668, 37.307507>,  <27.319735, 35.461319, 37.584190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.429136, 35.728668, 37.307507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692582, 0.362189, 0.623819,
		0.667477, -0.649686, -0.363844,
		0.273506, 0.668376, -0.691714,
		27.511189, 35.929180, 37.099991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.073845, 35.622398, 37.628021>,  <27.319735, 35.461319, 37.584190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.073845, 35.622398, 37.628021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885284, 35.956844, 37.515816>,  <27.772148, 36.157513, 37.448494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.885284, 35.956844, 37.515816>,  <28.073845, 35.622398, 37.628021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.885284, 35.956844, 37.515816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486139, 0.511737, 0.708374,
		0.735834, 0.197559, -0.647703,
		-0.471399, 0.836119, -0.280513,
		27.743864, 36.207680, 37.431664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.600365, 36.238159, 37.517735>,  <28.073845, 35.622398, 37.628021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.600365, 36.238159, 37.517735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236328, 36.362556, 37.627293>,  <28.017906, 36.437195, 37.693027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.236328, 36.362556, 37.627293>,  <28.600365, 36.238159, 37.517735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.236328, 36.362556, 37.627293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410762, 0.589512, 0.695522,
		0.054835, 0.745495, -0.664252,
		-0.910092, 0.310989, 0.273895,
		27.963301, 36.455853, 37.709461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893446, 36.374584, 38.142681>,  <28.600365, 36.238159, 37.517735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893446, 36.374584, 38.142681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.066584, 36.657452, 37.919052>,  <29.170465, 36.827171, 37.784874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.066584, 36.657452, 37.919052>,  <28.893446, 36.374584, 38.142681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.066584, 36.657452, 37.919052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558241, -0.276691, -0.782183,
		-0.707824, 0.650659, 0.275005,
		0.432843, 0.707166, -0.559073,
		29.196436, 36.869602, 37.751331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678116, 36.814056, 38.678951>,  <28.893446, 36.374584, 38.142681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678116, 36.814056, 38.678951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500750, 37.094833, 38.456001>,  <28.394329, 37.263298, 38.322231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500750, 37.094833, 38.456001>,  <28.678116, 36.814056, 38.678951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500750, 37.094833, 38.456001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616644, -0.690201, -0.378645,
		-0.650483, 0.175800, 0.738895,
		-0.443420, 0.701938, -0.557370,
		28.367723, 37.305416, 38.288788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377363, 36.917187, 38.567204>,  <28.678116, 36.814056, 38.678951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.377363, 36.917187, 38.567204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114676, 37.111374, 38.798042>,  <28.957062, 37.227886, 38.936546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114676, 37.111374, 38.798042>,  <29.377363, 36.917187, 38.567204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114676, 37.111374, 38.798042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434971, 0.381282, -0.815735,
		-0.616050, -0.786730, -0.039231,
		-0.656721, 0.485470, 0.577094,
		28.917660, 37.257015, 38.971169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.059141, 37.213356, 38.248562>,  <29.377363, 36.917187, 38.567204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.059141, 37.213356, 38.248562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925646, 37.061695, 37.903339>,  <29.845549, 36.970699, 37.696205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925646, 37.061695, 37.903339>,  <30.059141, 37.213356, 38.248562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925646, 37.061695, 37.903339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937762, 0.040267, 0.344937,
		-0.096030, 0.924459, -0.368991,
		-0.333739, -0.379150, -0.863055,
		29.825523, 36.947948, 37.644424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270807, 37.159378, 39.042431>,  <30.059141, 37.213356, 38.248562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270807, 37.159378, 39.042431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341702, 36.990669, 39.398113>,  <30.384237, 36.889442, 39.611523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341702, 36.990669, 39.398113>,  <30.270807, 37.159378, 39.042431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341702, 36.990669, 39.398113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727340, -0.552528, -0.407050,
		0.662996, 0.718902, 0.208845,
		0.177236, -0.421774, 0.889210,
		30.394873, 36.864136, 39.664875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907608, 36.841629, 39.083023>,  <30.270807, 37.159378, 39.042431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907608, 36.841629, 39.083023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772446, 36.645226, 39.404205>,  <30.691349, 36.527382, 39.596912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772446, 36.645226, 39.404205>,  <30.907608, 36.841629, 39.083023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772446, 36.645226, 39.404205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566384, -0.787448, -0.243179,
		0.751685, 0.372608, 0.544181,
		-0.337904, -0.491009, 0.802952,
		30.671074, 36.497921, 39.645092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.318651, 36.767921, 39.768177>,  <30.907608, 36.841629, 39.083023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.318651, 36.767921, 39.768177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089388, 36.455250, 39.669819>,  <30.951830, 36.267647, 39.610806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089388, 36.455250, 39.669819>,  <31.318651, 36.767921, 39.768177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089388, 36.455250, 39.669819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813766, -0.507692, -0.282902,
		0.096300, -0.362249, 0.927093,
		-0.573159, -0.781681, -0.245895,
		30.917440, 36.220745, 39.596050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371958, 36.063667, 40.168243>,  <31.318651, 36.767921, 39.768177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371958, 36.063667, 40.168243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300915, 36.081184, 39.774994>,  <31.258289, 36.091694, 39.539043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300915, 36.081184, 39.774994>,  <31.371958, 36.063667, 40.168243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300915, 36.081184, 39.774994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935002, -0.304105, -0.182458,
		-0.306964, -0.951632, 0.013066,
		-0.177606, 0.043791, -0.983127,
		31.247633, 36.094322, 39.480057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623232, 35.444969, 39.854317>,  <31.371958, 36.063667, 40.168243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623232, 35.444969, 39.854317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624296, 35.734360, 39.578178>,  <31.624935, 35.907993, 39.412495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624296, 35.734360, 39.578178>,  <31.623232, 35.444969, 39.854317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624296, 35.734360, 39.578178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978700, -0.143596, -0.146718,
		-0.205278, -0.675249, -0.708449,
		0.002659, 0.723477, -0.690343,
		31.625093, 35.951405, 39.371075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841867, 35.347420, 39.745499>,  <31.623232, 35.444969, 39.854317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841867, 35.347420, 39.745499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885815, 35.001896, 39.942177>,  <30.912184, 34.794582, 40.060184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.885815, 35.001896, 39.942177>,  <30.841867, 35.347420, 39.745499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885815, 35.001896, 39.942177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549601, 0.464981, 0.694069,
		-0.828171, 0.193981, 0.525836,
		0.109867, -0.863808, 0.491696,
		30.918776, 34.742752, 40.089687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599377, 35.433006, 40.530643>,  <30.841867, 35.347420, 39.745499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599377, 35.433006, 40.530643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893900, 35.183826, 40.424976>,  <31.070614, 35.034317, 40.361576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893900, 35.183826, 40.424976>,  <30.599377, 35.433006, 40.530643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893900, 35.183826, 40.424976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554691, 0.332121, 0.762898,
		-0.387513, -0.708258, 0.590088,
		0.736309, -0.622950, -0.264163,
		31.114792, 34.996941, 40.345726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746502, 35.014549, 41.128567>,  <30.599377, 35.433006, 40.530643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746502, 35.014549, 41.128567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058695, 35.080662, 40.887394>,  <31.246010, 35.120331, 40.742691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058695, 35.080662, 40.887394>,  <30.746502, 35.014549, 41.128567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058695, 35.080662, 40.887394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569794, 0.208801, 0.794819,
		0.257266, -0.963889, 0.068785,
		0.780480, 0.165287, -0.602936,
		31.292839, 35.130249, 40.706512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406628, 34.519444, 41.120022>,  <30.746502, 35.014549, 41.128567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406628, 34.519444, 41.120022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483707, 34.897854, 41.015793>,  <31.529955, 35.124901, 40.953255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483707, 34.897854, 41.015793>,  <31.406628, 34.519444, 41.120022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483707, 34.897854, 41.015793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738658, 0.034959, 0.673173,
		0.645950, -0.322193, -0.692055,
		0.192698, 0.946028, -0.260573,
		31.541517, 35.181664, 40.937622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335573, 34.542004, 41.864151>,  <31.406628, 34.519444, 41.120022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335573, 34.542004, 41.864151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300056, 34.939316, 41.834438>,  <31.278748, 35.177704, 41.816612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300056, 34.939316, 41.834438>,  <31.335573, 34.542004, 41.864151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300056, 34.939316, 41.834438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660331, 0.114530, 0.742190,
		0.745707, 0.016850, -0.666061,
		-0.088790, 0.993277, -0.074279,
		31.273420, 35.237297, 41.812153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042969, 34.964737, 41.873821>,  <31.335573, 34.542004, 41.864151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042969, 34.964737, 41.873821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731668, 35.153900, 42.039082>,  <31.544889, 35.267399, 42.138237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731668, 35.153900, 42.039082>,  <32.042969, 34.964737, 41.873821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731668, 35.153900, 42.039082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538965, 0.165390, 0.825931,
		0.322257, 0.865451, -0.383594,
		-0.778246, 0.472906, 0.413150,
		31.498194, 35.295773, 42.163025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404358, 35.477520, 42.358681>,  <32.042969, 34.964737, 41.873821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404358, 35.477520, 42.358681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031681, 35.399754, 42.481415>,  <31.808075, 35.353092, 42.555058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031681, 35.399754, 42.481415>,  <32.404358, 35.477520, 42.358681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031681, 35.399754, 42.481415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287490, 0.121655, 0.950026,
		-0.222030, 0.973346, -0.057452,
		-0.931693, -0.194418, 0.306838,
		31.752172, 35.341427, 42.573467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027611, 35.999306, 42.812599>,  <32.404358, 35.477520, 42.358681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027611, 35.999306, 42.812599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979422, 35.610085, 42.891235>,  <31.950508, 35.376553, 42.938419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.979422, 35.610085, 42.891235>,  <32.027611, 35.999306, 42.812599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979422, 35.610085, 42.891235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601975, 0.085865, 0.793885,
		-0.789375, 0.213984, 0.575411,
		-0.120471, -0.973056, 0.196593,
		31.943281, 35.318169, 42.950214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288391, 36.265953, 42.163589>,  <32.027611, 35.999306, 42.812599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288391, 36.265953, 42.163589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231762, 36.492413, 41.838768>,  <32.197784, 36.628288, 41.643875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231762, 36.492413, 41.838768>,  <32.288391, 36.265953, 42.163589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231762, 36.492413, 41.838768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978316, -0.045264, -0.202112,
		-0.151183, -0.823057, -0.547467,
		-0.141569, 0.566152, -0.812053,
		32.189293, 36.662258, 41.595154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485054, 35.995476, 41.586086>,  <32.288391, 36.265953, 42.163589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485054, 35.995476, 41.586086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545406, 36.374084, 41.472008>,  <32.581619, 36.601250, 41.403561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545406, 36.374084, 41.472008>,  <32.485054, 35.995476, 41.586086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545406, 36.374084, 41.472008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902573, -0.249584, -0.350814,
		-0.403232, -0.204480, -0.891960,
		0.150884, 0.946518, -0.285198,
		32.590672, 36.658039, 41.386448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089973, 35.803120, 41.307068>,  <32.485054, 35.995476, 41.586086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089973, 35.803120, 41.307068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119141, 35.993755, 41.657509>,  <33.136642, 36.108135, 41.867771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119141, 35.993755, 41.657509>,  <33.089973, 35.803120, 41.307068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119141, 35.993755, 41.657509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929674, -0.350526, 0.113304,
		0.361094, 0.806225, -0.468628,
		0.072918, 0.476585, 0.876099,
		33.141018, 36.136730, 41.920338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657360, 36.112606, 41.296677>,  <33.089973, 35.803120, 41.307068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657360, 36.112606, 41.296677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541031, 36.045734, 41.673500>,  <33.471233, 36.005611, 41.899593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541031, 36.045734, 41.673500>,  <33.657360, 36.112606, 41.296677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541031, 36.045734, 41.673500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864609, -0.467563, 0.183945,
		0.409720, 0.868008, 0.280520,
		-0.290826, -0.167174, 0.942058,
		33.453781, 35.995583, 41.956116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915218, 36.608807, 41.805096>,  <33.657360, 36.112606, 41.296677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915218, 36.608807, 41.805096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837784, 36.235191, 41.925159>,  <33.791321, 36.011021, 41.997196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837784, 36.235191, 41.925159>,  <33.915218, 36.608807, 41.805096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837784, 36.235191, 41.925159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978585, -0.205656, -0.008815,
		0.069963, 0.292025, 0.953848,
		-0.193590, -0.934038, 0.300159,
		33.779705, 35.954979, 42.015205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249630, 36.353085, 42.564594>,  <33.915218, 36.608807, 41.805096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249630, 36.353085, 42.564594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194000, 36.065781, 42.291901>,  <34.160622, 35.893398, 42.128284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.194000, 36.065781, 42.291901>,  <34.249630, 36.353085, 42.564594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.194000, 36.065781, 42.291901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950140, -0.290803, 0.112551,
		-0.279091, -0.632090, 0.722890,
		-0.139077, -0.718259, -0.681735,
		34.152279, 35.850304, 42.087379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332069, 35.749741, 42.842056>,  <34.249630, 36.353085, 42.564594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332069, 35.749741, 42.842056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441750, 35.754780, 42.457420>,  <34.507557, 35.757805, 42.226639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.441750, 35.754780, 42.457420>,  <34.332069, 35.749741, 42.842056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441750, 35.754780, 42.457420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914651, -0.312257, 0.256728,
		-0.297028, -0.949914, -0.097146,
		0.274204, 0.012599, -0.961589,
		34.524010, 35.758560, 42.168945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692257, 35.079861, 42.747478>,  <34.332069, 35.749741, 42.842056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692257, 35.079861, 42.747478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820183, 35.381546, 42.518085>,  <34.896938, 35.562557, 42.380451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820183, 35.381546, 42.518085>,  <34.692257, 35.079861, 42.747478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820183, 35.381546, 42.518085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942285, -0.189877, 0.275762,
		0.099093, -0.628577, -0.771409,
		0.319811, 0.754214, -0.573483,
		34.916126, 35.607811, 42.346039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244221, 34.958706, 42.104141>,  <34.692257, 35.079861, 42.747478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244221, 34.958706, 42.104141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256680, 35.283710, 42.336987>,  <35.264156, 35.478714, 42.476692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256680, 35.283710, 42.336987>,  <35.244221, 34.958706, 42.104141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256680, 35.283710, 42.336987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879619, -0.298858, 0.370074,
		0.474658, 0.500510, -0.724010,
		0.031151, 0.812511, 0.582113,
		35.266026, 35.527462, 42.511620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776459, 35.517487, 41.936272>,  <35.244221, 34.958706, 42.104141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776459, 35.517487, 41.936272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694122, 35.482410, 42.326130>,  <35.644722, 35.461365, 42.560047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694122, 35.482410, 42.326130>,  <35.776459, 35.517487, 41.936272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694122, 35.482410, 42.326130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922659, -0.349269, 0.163437,
		0.326082, 0.932910, 0.152803,
		-0.205841, -0.087691, 0.974648,
		35.632370, 35.456104, 42.618523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171772, 34.783318, 41.944393>,  <35.776459, 35.517487, 41.936272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171772, 34.783318, 41.944393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538651, 34.741962, 41.790474>,  <36.758778, 34.717148, 41.698124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538651, 34.741962, 41.790474>,  <36.171772, 34.783318, 41.944393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538651, 34.741962, 41.790474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389457, -0.028643, -0.920599,
		0.084156, 0.994229, -0.066536,
		0.917192, -0.103386, -0.384798,
		36.813808, 34.710945, 41.675034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370171, 35.240726, 41.311989>,  <36.171772, 34.783318, 41.944393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370171, 35.240726, 41.311989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507202, 34.864956, 41.316372>,  <36.589420, 34.639492, 41.319004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507202, 34.864956, 41.316372>,  <36.370171, 35.240726, 41.311989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507202, 34.864956, 41.316372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241526, -0.099339, -0.965296,
		0.907913, 0.328041, -0.260927,
		0.342578, -0.939426, 0.010961,
		36.609974, 34.583130, 41.319660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886414, 35.301102, 40.762657>,  <36.370171, 35.240726, 41.311989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886414, 35.301102, 40.762657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653210, 34.989380, 40.854557>,  <36.513287, 34.802349, 40.909698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653210, 34.989380, 40.854557>,  <36.886414, 35.301102, 40.762657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653210, 34.989380, 40.854557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341875, -0.021219, -0.939506,
		0.737033, -0.626290, -0.254052,
		-0.583012, -0.779301, 0.229752,
		36.478306, 34.755589, 40.923481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005138, 34.649181, 40.247734>,  <36.886414, 35.301102, 40.762657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005138, 34.649181, 40.247734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640938, 34.677895, 40.410625>,  <36.422417, 34.695122, 40.508362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640938, 34.677895, 40.410625>,  <37.005138, 34.649181, 40.247734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640938, 34.677895, 40.410625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395029, 0.140132, -0.907918,
		-0.122241, -0.987527, -0.099233,
		-0.910500, 0.071784, 0.407231,
		36.367786, 34.699429, 40.532795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445278, 34.145916, 40.151608>,  <37.005138, 34.649181, 40.247734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445278, 34.145916, 40.151608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286465, 34.511280, 40.187481>,  <36.191177, 34.730499, 40.209003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286465, 34.511280, 40.187481>,  <36.445278, 34.145916, 40.151608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286465, 34.511280, 40.187481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301192, -0.037367, -0.952831,
		-0.866976, -0.405318, 0.289949,
		-0.397034, 0.913412, 0.089682,
		36.167355, 34.785305, 40.214386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710724, 34.182468, 39.983059>,  <36.445278, 34.145916, 40.151608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710724, 34.182468, 39.983059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864311, 34.542904, 39.902447>,  <35.956463, 34.759163, 39.854080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.864311, 34.542904, 39.902447>,  <35.710724, 34.182468, 39.983059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864311, 34.542904, 39.902447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334826, -0.067526, -0.939857,
		-0.860499, 0.428354, 0.275779,
		0.383970, 0.901084, -0.201531,
		35.979504, 34.813229, 39.841988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077534, 34.581963, 39.839764>,  <35.710724, 34.182468, 39.983059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077534, 34.581963, 39.839764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387154, 34.787643, 39.692013>,  <35.572926, 34.911053, 39.603363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387154, 34.787643, 39.692013>,  <35.077534, 34.581963, 39.839764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387154, 34.787643, 39.692013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418923, -0.021468, -0.907768,
		-0.474704, 0.857402, 0.198793,
		0.774054, 0.514200, -0.369377,
		35.619370, 34.941902, 39.581200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.446510, 34.961388, 39.673683>,  <35.077534, 34.581963, 39.839764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.446510, 34.961388, 39.673683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551804, 35.327900, 39.552925>,  <34.614979, 35.547806, 39.480473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551804, 35.327900, 39.552925>,  <34.446510, 34.961388, 39.673683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551804, 35.327900, 39.552925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030834, -0.304777, -0.951925,
		-0.964238, 0.259890, -0.051976,
		0.263237, 0.916280, -0.301891,
		34.630775, 35.602783, 39.462357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993645, 35.241959, 39.287289>,  <34.446510, 34.961388, 39.673683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993645, 35.241959, 39.287289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368042, 35.348957, 39.195766>,  <34.592682, 35.413158, 39.140854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368042, 35.348957, 39.195766>,  <33.993645, 35.241959, 39.287289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368042, 35.348957, 39.195766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012350, -0.624657, -0.780802,
		-0.351791, 0.733654, -0.581373,
		0.935997, 0.267499, -0.228810,
		34.648842, 35.429207, 39.127125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016113, 35.051514, 38.644371>,  <33.993645, 35.241959, 39.287289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016113, 35.051514, 38.644371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403866, 35.138474, 38.690044>,  <34.636517, 35.190651, 38.717449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403866, 35.138474, 38.690044>,  <34.016113, 35.051514, 38.644371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403866, 35.138474, 38.690044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204954, -0.460170, -0.863851,
		-0.135255, 0.860803, -0.490636,
		0.969381, 0.217398, 0.114185,
		34.694679, 35.203693, 38.724300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313198, 35.335533, 37.985233>,  <34.016113, 35.051514, 38.644371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313198, 35.335533, 37.985233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609146, 35.166367, 38.194511>,  <34.786716, 35.064865, 38.320076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609146, 35.166367, 38.194511>,  <34.313198, 35.335533, 37.985233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609146, 35.166367, 38.194511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171149, -0.633778, -0.754343,
		0.650613, 0.647661, -0.396532,
		0.739872, -0.422919, 0.523191,
		34.831108, 35.039490, 38.351467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840866, 35.424404, 37.530884>,  <34.313198, 35.335533, 37.985233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840866, 35.424404, 37.530884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987896, 35.133045, 37.762169>,  <35.076115, 34.958229, 37.900940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987896, 35.133045, 37.762169>,  <34.840866, 35.424404, 37.530884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987896, 35.133045, 37.762169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285247, -0.503470, -0.815568,
		0.885168, 0.464717, 0.022709,
		0.367575, -0.728393, 0.578215,
		35.098167, 34.914528, 37.935635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452888, 35.279049, 37.252434>,  <34.840866, 35.424404, 37.530884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452888, 35.279049, 37.252434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400639, 34.941658, 37.460854>,  <35.369289, 34.739223, 37.585903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400639, 34.941658, 37.460854>,  <35.452888, 35.279049, 37.252434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400639, 34.941658, 37.460854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327022, -0.532792, -0.780505,
		0.935946, 0.068441, 0.345430,
		-0.130624, -0.843474, 0.521046,
		35.361450, 34.688618, 37.617168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022087, 34.816765, 37.036495>,  <35.452888, 35.279049, 37.252434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022087, 34.816765, 37.036495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733032, 34.596294, 37.203350>,  <35.559601, 34.464012, 37.303463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733032, 34.596294, 37.203350>,  <36.022087, 34.816765, 37.036495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733032, 34.596294, 37.203350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135867, -0.478437, -0.867547,
		0.677745, -0.683595, 0.270849,
		-0.722635, -0.551177, 0.417137,
		35.516243, 34.430943, 37.328491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244640, 34.120190, 36.836494>,  <36.022087, 34.816765, 37.036495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244640, 34.120190, 36.836494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856556, 34.091961, 36.929203>,  <35.623707, 34.075024, 36.984829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.856556, 34.091961, 36.929203>,  <36.244640, 34.120190, 36.836494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856556, 34.091961, 36.929203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186169, -0.395022, -0.899610,
		0.155039, -0.915957, 0.370115,
		-0.970208, -0.070571, 0.231767,
		35.565495, 34.070789, 36.998734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032909, 33.290703, 36.822495>,  <36.244640, 34.120190, 36.836494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032909, 33.290703, 36.822495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700417, 33.505386, 36.764526>,  <35.500923, 33.634197, 36.729744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700417, 33.505386, 36.764526>,  <36.032909, 33.290703, 36.822495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700417, 33.505386, 36.764526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237729, -0.578814, -0.780038,
		-0.502535, -0.613938, 0.608719,
		-0.831230, 0.536707, -0.144923,
		35.451046, 33.666397, 36.721050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477528, 32.798992, 36.779091>,  <36.032909, 33.290703, 36.822495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477528, 32.798992, 36.779091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365181, 33.146458, 36.615852>,  <35.297771, 33.354935, 36.517910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365181, 33.146458, 36.615852>,  <35.477528, 32.798992, 36.779091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365181, 33.146458, 36.615852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207308, -0.470085, -0.857930,
		-0.937090, -0.156363, 0.312111,
		-0.280867, 0.868660, -0.408097,
		35.280922, 33.407055, 36.493423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027950, 32.572784, 36.245510>,  <35.477528, 32.798992, 36.779091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027950, 32.572784, 36.245510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087090, 32.954029, 36.139893>,  <35.122574, 33.182777, 36.076523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087090, 32.954029, 36.139893>,  <35.027950, 32.572784, 36.245510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087090, 32.954029, 36.139893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125398, -0.246762, -0.960928,
		-0.981028, 0.175182, 0.083035,
		0.147847, 0.953111, -0.264048,
		35.131443, 33.239964, 36.060677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416985, 32.834801, 35.743698>,  <35.027950, 32.572784, 36.245510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416985, 32.834801, 35.743698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717335, 33.084652, 35.657883>,  <34.897545, 33.234562, 35.606396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717335, 33.084652, 35.657883>,  <34.416985, 32.834801, 35.743698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717335, 33.084652, 35.657883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254419, -0.026196, -0.966739,
		-0.609473, 0.780483, 0.139247,
		0.750876, 0.624628, -0.214536,
		34.942596, 33.272041, 35.593521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162045, 33.318630, 35.208881>,  <34.416985, 32.834801, 35.743698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162045, 33.318630, 35.208881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561668, 33.324776, 35.192654>,  <34.801441, 33.328461, 35.182919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.561668, 33.324776, 35.192654>,  <34.162045, 33.318630, 35.208881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.561668, 33.324776, 35.192654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040721, 0.009870, -0.999122,
		-0.014946, 0.999833, 0.010487,
		0.999059, 0.015359, -0.040566,
		34.861385, 33.329384, 35.180485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225758, 33.625240, 34.615871>,  <34.162045, 33.318630, 35.208881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225758, 33.625240, 34.615871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599365, 33.500996, 34.686451>,  <34.823528, 33.426449, 34.728798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599365, 33.500996, 34.686451>,  <34.225758, 33.625240, 34.615871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599365, 33.500996, 34.686451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229473, 0.143141, -0.962732,
		0.273780, 0.939697, 0.204973,
		0.934017, -0.310612, 0.176446,
		34.879570, 33.407810, 34.739384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671345, 34.096485, 34.279011>,  <34.225758, 33.625240, 34.615871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671345, 34.096485, 34.279011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852097, 33.740444, 34.302753>,  <34.960548, 33.526821, 34.316998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.852097, 33.740444, 34.302753>,  <34.671345, 34.096485, 34.279011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852097, 33.740444, 34.302753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221319, 0.047404, -0.974049,
		0.864187, 0.453294, 0.218417,
		0.451884, -0.890100, 0.059356,
		34.987663, 33.473415, 34.320560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281403, 34.191227, 33.966801>,  <34.671345, 34.096485, 34.279011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281403, 34.191227, 33.966801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235497, 33.794098, 33.953403>,  <35.207951, 33.555820, 33.945366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235497, 33.794098, 33.953403>,  <35.281403, 34.191227, 33.966801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235497, 33.794098, 33.953403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233728, 0.005785, -0.972285,
		0.965505, -0.119418, 0.231388,
		-0.114770, -0.992827, -0.033497,
		35.201065, 33.496250, 33.943356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821548, 33.942169, 33.514671>,  <35.281403, 34.191227, 33.966801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821548, 33.942169, 33.514671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546196, 33.652039, 33.516518>,  <35.380981, 33.477959, 33.517624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546196, 33.652039, 33.516518>,  <35.821548, 33.942169, 33.514671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546196, 33.652039, 33.516518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144303, -0.143185, -0.979120,
		0.710846, -0.673346, 0.203234,
		-0.688386, -0.725330, 0.004617,
		35.339680, 33.434441, 33.517902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130383, 33.323345, 33.165901>,  <35.821548, 33.942169, 33.514671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130383, 33.323345, 33.165901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733631, 33.274097, 33.153114>,  <35.495579, 33.244549, 33.145443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733631, 33.274097, 33.153114>,  <36.130383, 33.323345, 33.165901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733631, 33.274097, 33.153114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050297, -0.148752, -0.987594,
		0.116832, -0.981181, 0.153736,
		-0.991878, -0.123115, -0.031972,
		35.436069, 33.237164, 33.143524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976223, 32.784416, 32.776382>,  <36.130383, 33.323345, 33.165901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976223, 32.784416, 32.776382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618412, 32.960392, 32.744698>,  <35.403725, 33.065979, 32.725685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618412, 32.960392, 32.744698>,  <35.976223, 32.784416, 32.776382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618412, 32.960392, 32.744698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033523, -0.242730, -0.969515,
		-0.445760, -0.864599, 0.231876,
		-0.894524, 0.439944, -0.079215,
		35.350056, 33.092377, 32.720932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491440, 32.327679, 32.456211>,  <35.976223, 32.784416, 32.776382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491440, 32.327679, 32.456211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313950, 32.683479, 32.412598>,  <35.207455, 32.896961, 32.386429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.313950, 32.683479, 32.412598>,  <35.491440, 32.327679, 32.456211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313950, 32.683479, 32.412598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217723, -0.225024, -0.949716,
		-0.869310, -0.397679, 0.293515,
		-0.443730, 0.889503, -0.109032,
		35.180832, 32.950329, 32.379887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870117, 32.263847, 32.085384>,  <35.491440, 32.327679, 32.456211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870117, 32.263847, 32.085384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978546, 32.644310, 32.026299>,  <35.043602, 32.872589, 31.990847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978546, 32.644310, 32.026299>,  <34.870117, 32.263847, 32.085384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978546, 32.644310, 32.026299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324194, -0.054278, -0.944432,
		-0.906321, 0.303896, 0.293647,
		0.271071, 0.951158, -0.147715,
		35.059868, 32.929657, 31.981983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360744, 32.510765, 31.523010>,  <34.870117, 32.263847, 32.085384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360744, 32.510765, 31.523010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638897, 32.797825, 31.507912>,  <34.805790, 32.970062, 31.498854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.638897, 32.797825, 31.507912>,  <34.360744, 32.510765, 31.523010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638897, 32.797825, 31.507912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014500, -0.038501, -0.999153,
		-0.718496, 0.695338, -0.016367,
		0.695380, 0.717651, -0.037745,
		34.847511, 33.013119, 31.496588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087921, 33.060753, 31.037899>,  <34.360744, 32.510765, 31.523010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087921, 33.060753, 31.037899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485195, 33.088600, 31.075285>,  <34.723560, 33.105309, 31.097717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485195, 33.088600, 31.075285>,  <34.087921, 33.060753, 31.037899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485195, 33.088600, 31.075285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094404, -0.010299, -0.995481,
		-0.068337, 0.997521, -0.016800,
		0.993186, 0.069614, 0.093466,
		34.783150, 33.109486, 31.103325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276470, 33.549656, 30.570465>,  <34.087921, 33.060753, 31.037899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276470, 33.549656, 30.570465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624706, 33.372807, 30.656816>,  <34.833649, 33.266697, 30.708628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624706, 33.372807, 30.656816>,  <34.276470, 33.549656, 30.570465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624706, 33.372807, 30.656816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287482, 0.101025, -0.952443,
		0.399289, 0.891246, 0.215054,
		0.870588, -0.442124, 0.215879,
		34.885883, 33.240170, 30.721581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823185, 34.030426, 30.471281>,  <34.276470, 33.549656, 30.570465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823185, 34.030426, 30.471281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973999, 33.661892, 30.433340>,  <35.064487, 33.440773, 30.410576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973999, 33.661892, 30.433340>,  <34.823185, 34.030426, 30.471281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973999, 33.661892, 30.433340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199317, 0.180720, -0.963126,
		0.904500, 0.344224, 0.251774,
		0.377032, -0.921331, -0.094852,
		35.087109, 33.385494, 30.404884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260399, 34.143353, 29.915897>,  <34.823185, 34.030426, 30.471281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260399, 34.143353, 29.915897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254448, 33.743786, 29.933554>,  <35.250877, 33.504047, 29.944147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.254448, 33.743786, 29.933554>,  <35.260399, 34.143353, 29.915897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254448, 33.743786, 29.933554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001340, -0.044126, -0.999025,
		0.999888, -0.014920, -0.000683,
		-0.014876, -0.998915, 0.044141,
		35.249985, 33.444111, 29.946796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929806, 33.912945, 29.703587>,  <35.260399, 34.143353, 29.915897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929806, 33.912945, 29.703587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661930, 33.617508, 29.672577>,  <35.501205, 33.440247, 29.653971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661930, 33.617508, 29.672577>,  <35.929806, 33.912945, 29.703587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661930, 33.617508, 29.672577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208121, -0.086445, -0.974276,
		0.712887, -0.668591, 0.211607,
		-0.669685, -0.738589, -0.077522,
		35.461025, 33.395931, 29.649321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299099, 33.371731, 29.580090>,  <35.929806, 33.912945, 29.703587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299099, 33.371731, 29.580090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929546, 33.315804, 29.437597>,  <35.707817, 33.282249, 29.352102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929546, 33.315804, 29.437597>,  <36.299099, 33.371731, 29.580090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929546, 33.315804, 29.437597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380747, -0.242250, -0.892382,
		0.038472, -0.960086, 0.277044,
		-0.923878, -0.139816, -0.356230,
		35.652382, 33.273857, 29.330729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315922, 32.768463, 29.158197>,  <36.299099, 33.371731, 29.580090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315922, 32.768463, 29.158197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994362, 32.966072, 29.025723>,  <35.801426, 33.084637, 28.946238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994362, 32.966072, 29.025723>,  <36.315922, 32.768463, 29.158197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994362, 32.966072, 29.025723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211646, -0.282775, -0.935545,
		-0.555833, -0.822179, 0.122764,
		-0.803900, 0.494024, -0.331187,
		35.753193, 33.114281, 28.926367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149479, 32.308060, 28.704947>,  <36.315922, 32.768463, 29.158197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149479, 32.308060, 28.704947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898880, 32.608429, 28.621414>,  <35.748520, 32.788651, 28.571295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.898880, 32.608429, 28.621414>,  <36.149479, 32.308060, 28.704947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898880, 32.608429, 28.621414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149739, -0.146978, -0.977740,
		-0.764905, -0.643822, -0.020362,
		-0.626498, 0.750927, -0.208829,
		35.710930, 32.833706, 28.558765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650196, 32.038956, 28.300383>,  <36.149479, 32.308060, 28.704947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650196, 32.038956, 28.300383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704121, 32.429310, 28.231710>,  <35.736473, 32.663521, 28.190508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.704121, 32.429310, 28.231710>,  <35.650196, 32.038956, 28.300383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704121, 32.429310, 28.231710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041916, -0.167489, -0.984982,
		-0.989985, 0.139981, 0.018326,
		0.134810, 0.975886, -0.171679,
		35.744564, 32.722076, 28.180206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496559, 32.026680, 27.701509>,  <35.650196, 32.038956, 28.300383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496559, 32.026680, 27.701509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580143, 32.417236, 27.723404>,  <35.630295, 32.651569, 27.736542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.580143, 32.417236, 27.723404>,  <35.496559, 32.026680, 27.701509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.580143, 32.417236, 27.723404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202332, 0.097929, -0.974408,
		-0.956764, 0.192539, 0.218018,
		0.208962, 0.976391, 0.054738,
		35.642830, 32.710152, 27.739826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892952, 32.420101, 27.279209>,  <35.496559, 32.026680, 27.701509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892952, 32.420101, 27.279209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242840, 32.613670, 27.289629>,  <35.452774, 32.729813, 27.295881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242840, 32.613670, 27.289629>,  <34.892952, 32.420101, 27.279209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242840, 32.613670, 27.289629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048091, 0.140164, -0.988960,
		-0.482229, 0.863814, 0.145877,
		0.874724, 0.483920, 0.026049,
		35.505257, 32.758846, 27.297443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704346, 32.911392, 26.847750>,  <34.892952, 32.420101, 27.279209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704346, 32.911392, 26.847750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103832, 32.891163, 26.849327>,  <35.343525, 32.879025, 26.850273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.103832, 32.891163, 26.849327>,  <34.704346, 32.911392, 26.847750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103832, 32.891163, 26.849327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009112, 0.102417, -0.994700,
		0.049901, 0.993455, 0.102746,
		0.998713, -0.050573, 0.003941,
		35.403446, 32.875992, 26.850510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886238, 33.501862, 26.511028>,  <34.704346, 32.911392, 26.847750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886238, 33.501862, 26.511028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175919, 33.226475, 26.495335>,  <35.349728, 33.061241, 26.485918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175919, 33.226475, 26.495335>,  <34.886238, 33.501862, 26.511028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175919, 33.226475, 26.495335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010574, 0.045799, -0.998895,
		0.689504, 0.723819, 0.025888,
		0.724205, -0.688468, -0.039232,
		35.393181, 33.019936, 26.483564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523243, 33.830753, 26.246992>,  <34.886238, 33.501862, 26.511028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523243, 33.830753, 26.246992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572815, 33.434708, 26.220736>,  <35.602558, 33.197079, 26.204981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572815, 33.434708, 26.220736>,  <35.523243, 33.830753, 26.246992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572815, 33.434708, 26.220736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169926, 0.086351, -0.981666,
		0.977634, 0.110500, 0.178948,
		0.123926, -0.990118, -0.065643,
		35.609993, 33.137672, 26.201042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147747, 33.674290, 25.944347>,  <35.523243, 33.830753, 26.246992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147747, 33.674290, 25.944347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927959, 33.345661, 25.883549>,  <35.796085, 33.148483, 25.847071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927959, 33.345661, 25.883549>,  <36.147747, 33.674290, 25.944347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927959, 33.345661, 25.883549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271588, -0.003590, -0.962407,
		0.790139, -0.570097, 0.225101,
		-0.549473, -0.821570, -0.151995,
		35.763119, 33.099190, 25.837950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627998, 33.212772, 25.741402>,  <36.147747, 33.674290, 25.944347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627998, 33.212772, 25.741402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268242, 33.103359, 25.605009>,  <36.052387, 33.037712, 25.523172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268242, 33.103359, 25.605009>,  <36.627998, 33.212772, 25.741402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268242, 33.103359, 25.605009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301587, 0.176391, -0.936980,
		0.316443, -0.945550, -0.076150,
		-0.899394, -0.273535, -0.340984,
		35.998425, 33.021297, 25.502714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793568, 32.924629, 25.075180>,  <36.627998, 33.212772, 25.741402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793568, 32.924629, 25.075180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399406, 32.978977, 25.034163>,  <36.162910, 33.011585, 25.009552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.399406, 32.978977, 25.034163>,  <36.793568, 32.924629, 25.075180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399406, 32.978977, 25.034163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139980, 0.304027, -0.942323,
		-0.096859, -0.942924, -0.318609,
		-0.985405, 0.135871, -0.102543,
		36.103786, 33.019737, 25.003399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646137, 32.573521, 24.477766>,  <36.793568, 32.924629, 25.075180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646137, 32.573521, 24.477766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343758, 32.829201, 24.534279>,  <36.162331, 32.982609, 24.568186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343758, 32.829201, 24.534279>,  <36.646137, 32.573521, 24.477766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343758, 32.829201, 24.534279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014479, 0.199441, -0.979803,
		-0.654465, -0.742731, -0.141514,
		-0.755953, 0.639198, 0.141281,
		36.116970, 33.020962, 24.576664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.268566, 32.454926, 23.930691>,  <36.646137, 32.573521, 24.477766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.268566, 32.454926, 23.930691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142601, 32.816315, 24.047009>,  <36.067024, 33.033150, 24.116798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142601, 32.816315, 24.047009>,  <36.268566, 32.454926, 23.930691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142601, 32.816315, 24.047009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091280, 0.276133, -0.956775,
		-0.944723, -0.327840, -0.004487,
		-0.314908, 0.903477, 0.290794,
		36.048130, 33.087357, 24.134247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827015, 32.555286, 23.319967>,  <36.268566, 32.454926, 23.930691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827015, 32.555286, 23.319967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907658, 32.908588, 23.489305>,  <35.956043, 33.120567, 23.590908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907658, 32.908588, 23.489305>,  <35.827015, 32.555286, 23.319967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907658, 32.908588, 23.489305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101118, 0.448680, -0.887954,
		-0.974234, 0.136206, 0.179768,
		0.201603, 0.883252, 0.423346,
		35.968140, 33.173565, 23.616310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336472, 32.969543, 23.098656>,  <35.827015, 32.555286, 23.319967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336472, 32.969543, 23.098656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625462, 33.228558, 23.195585>,  <35.798855, 33.383968, 23.253742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.625462, 33.228558, 23.195585>,  <35.336472, 32.969543, 23.098656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625462, 33.228558, 23.195585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058986, 0.406934, -0.911551,
		-0.688872, 0.644283, 0.332197,
		0.722479, 0.647537, 0.242322,
		35.842205, 33.422817, 23.268282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135857, 33.606792, 22.800529>,  <35.336472, 32.969543, 23.098656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135857, 33.606792, 22.800529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524277, 33.663353, 22.877531>,  <35.757328, 33.697289, 22.923733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524277, 33.663353, 22.877531>,  <35.135857, 33.606792, 22.800529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524277, 33.663353, 22.877531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076625, 0.578927, -0.811771,
		-0.226233, 0.803025, 0.551335,
		0.971055, 0.141404, 0.192504,
		35.815594, 33.705772, 22.935282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327583, 34.314278, 22.796328>,  <35.135857, 33.606792, 22.800529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327583, 34.314278, 22.796328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657810, 34.124577, 22.673994>,  <35.855946, 34.010757, 22.600594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.657810, 34.124577, 22.673994>,  <35.327583, 34.314278, 22.796328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657810, 34.124577, 22.673994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169801, 0.725610, -0.666826,
		0.538157, 0.498576, 0.679565,
		0.825563, -0.474248, -0.305834,
		35.905479, 33.982304, 22.582245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905056, 34.760380, 22.796246>,  <35.327583, 34.314278, 22.796328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905056, 34.760380, 22.796246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977726, 34.467625, 22.533543>,  <36.021328, 34.291969, 22.375921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977726, 34.467625, 22.533543>,  <35.905056, 34.760380, 22.796246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977726, 34.467625, 22.533543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536574, 0.633465, -0.557503,
		0.824065, -0.251115, 0.507798,
		0.181675, -0.731890, -0.656758,
		36.032227, 34.248058, 22.336515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620850, 34.870029, 22.829880>,  <35.905056, 34.760380, 22.796246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620850, 34.870029, 22.829880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793247, 35.226444, 22.772879>,  <36.896687, 35.440292, 22.738678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.793247, 35.226444, 22.772879>,  <36.620850, 34.870029, 22.829880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793247, 35.226444, 22.772879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408939, 0.052093, -0.911074,
		-0.804373, 0.450940, 0.386830,
		0.430991, 0.891033, -0.142505,
		36.922546, 35.493755, 22.730127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159248, 35.259556, 22.367029>,  <36.620850, 34.870029, 22.829880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159248, 35.259556, 22.367029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510986, 35.449905, 22.360146>,  <36.722027, 35.564117, 22.356016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510986, 35.449905, 22.360146>,  <36.159248, 35.259556, 22.367029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510986, 35.449905, 22.360146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094272, 0.138551, -0.985858,
		-0.466764, 0.868530, 0.166695,
		0.879343, 0.475878, -0.017207,
		36.774788, 35.592670, 22.354982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029495, 35.690601, 21.795652>,  <36.159248, 35.259556, 22.367029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029495, 35.690601, 21.795652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422298, 35.722282, 21.864233>,  <36.657978, 35.741291, 21.905382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422298, 35.722282, 21.864233>,  <36.029495, 35.690601, 21.795652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422298, 35.722282, 21.864233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142170, 0.287600, -0.947140,
		-0.124321, 0.954470, 0.271165,
		0.982004, 0.079198, 0.171452,
		36.716900, 35.746040, 21.915668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.319618, 35.749641, 21.076736>,  <36.029495, 35.690601, 21.795652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.319618, 35.749641, 21.076736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654034, 35.966671, 21.109379>,  <36.854683, 36.096889, 21.128963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.654034, 35.966671, 21.109379>,  <36.319618, 35.749641, 21.076736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654034, 35.966671, 21.109379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116220, 0.029763, 0.992777,
		0.536225, -0.839481, 0.087940,
		0.836036, 0.542573, 0.081605,
		36.904846, 36.129444, 21.133860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005371, 35.359215, 21.339146>,  <36.319618, 35.749641, 21.076736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005371, 35.359215, 21.339146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003334, 35.747013, 21.437164>,  <37.002113, 35.979694, 21.495975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.003334, 35.747013, 21.437164>,  <37.005371, 35.359215, 21.339146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.003334, 35.747013, 21.437164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029625, -0.244796, 0.969122,
		0.999548, 0.012196, -0.027474,
		-0.005094, 0.969498, 0.245046,
		37.001804, 36.037861, 21.510677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651779, 35.568188, 21.710070>,  <37.005371, 35.359215, 21.339146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651779, 35.568188, 21.710070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355576, 35.809151, 21.829235>,  <37.177853, 35.953728, 21.900734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355576, 35.809151, 21.829235>,  <37.651779, 35.568188, 21.710070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355576, 35.809151, 21.829235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252507, -0.161411, 0.954037,
		0.622802, 0.781701, -0.032584,
		-0.740512, 0.602404, 0.297912,
		37.133423, 35.989872, 21.918610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919315, 36.209625, 22.242250>,  <37.651779, 35.568188, 21.710070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919315, 36.209625, 22.242250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555042, 36.049591, 22.283417>,  <37.336479, 35.953571, 22.308117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.555042, 36.049591, 22.283417>,  <37.919315, 36.209625, 22.242250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555042, 36.049591, 22.283417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139366, -0.063019, 0.988234,
		-0.388890, 0.914310, 0.113148,
		-0.910682, -0.400083, 0.102916,
		37.281837, 35.929565, 22.314291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613594, 36.587231, 22.752235>,  <37.919315, 36.209625, 22.242250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613594, 36.587231, 22.752235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406990, 36.245808, 22.724936>,  <37.283028, 36.040955, 22.708555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406990, 36.245808, 22.724936>,  <37.613594, 36.587231, 22.752235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406990, 36.245808, 22.724936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037758, -0.056922, 0.997664,
		-0.855450, 0.517877, -0.002828,
		-0.516506, -0.853559, -0.068248,
		37.252037, 35.989738, 22.704462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318745, 36.612572, 23.293921>,  <37.613594, 36.587231, 22.752235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318745, 36.612572, 23.293921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281277, 36.228622, 23.188196>,  <37.258797, 35.998253, 23.124762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.281277, 36.228622, 23.188196>,  <37.318745, 36.612572, 23.293921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281277, 36.228622, 23.188196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074869, -0.257937, 0.963256,
		-0.992784, 0.110016, -0.047705,
		-0.093669, -0.959877, -0.264313,
		37.253178, 35.940659, 23.108902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668133, 36.311359, 23.592524>,  <37.318745, 36.612572, 23.293921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668133, 36.311359, 23.592524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948006, 36.026546, 23.568974>,  <37.115929, 35.855659, 23.554844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948006, 36.026546, 23.568974>,  <36.668133, 36.311359, 23.592524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948006, 36.026546, 23.568974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189828, -0.264715, 0.945458,
		-0.688779, -0.650340, -0.320379,
		0.699678, -0.712028, -0.058877,
		37.157909, 35.812939, 23.551310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447010, 35.779255, 24.119125>,  <36.668133, 36.311359, 23.592524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447010, 35.779255, 24.119125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830109, 35.699066, 24.036634>,  <37.059967, 35.650951, 23.987141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830109, 35.699066, 24.036634>,  <36.447010, 35.779255, 24.119125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830109, 35.699066, 24.036634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125722, -0.353082, 0.927107,
		-0.258672, -0.913862, -0.312960,
		0.957749, -0.200471, -0.206225,
		37.117432, 35.638924, 23.974768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497185, 35.050293, 24.380747>,  <36.447010, 35.779255, 24.119125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497185, 35.050293, 24.380747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869576, 35.195023, 24.361277>,  <37.093010, 35.281860, 24.349594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.869576, 35.195023, 24.361277>,  <36.497185, 35.050293, 24.380747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869576, 35.195023, 24.361277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248704, -0.530929, 0.810099,
		0.267274, -0.766286, -0.584269,
		0.930973, 0.361829, -0.048675,
		37.148869, 35.303570, 24.346674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985294, 34.499466, 24.438713>,  <36.497185, 35.050293, 24.380747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985294, 34.499466, 24.438713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189835, 34.830982, 24.529606>,  <37.312557, 35.029892, 24.584141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189835, 34.830982, 24.529606>,  <36.985294, 34.499466, 24.438713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189835, 34.830982, 24.529606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395753, -0.461810, 0.793796,
		0.762826, -0.315978, -0.564140,
		0.511348, 0.828788, 0.227231,
		37.343239, 35.079620, 24.597775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647999, 34.353794, 24.700924>,  <36.985294, 34.499466, 24.438713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647999, 34.353794, 24.700924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663494, 34.729546, 24.837194>,  <37.672791, 34.954998, 24.918957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663494, 34.729546, 24.837194>,  <37.647999, 34.353794, 24.700924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663494, 34.729546, 24.837194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480082, -0.316506, 0.818135,
		0.876368, 0.131857, -0.463242,
		0.038742, 0.939382, 0.340678,
		37.675117, 35.011360, 24.939398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376095, 34.509617, 25.046875>,  <37.647999, 34.353794, 24.700924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376095, 34.509617, 25.046875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119793, 34.771671, 25.206989>,  <37.966011, 34.928905, 25.303057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119793, 34.771671, 25.206989>,  <38.376095, 34.509617, 25.046875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119793, 34.771671, 25.206989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227292, -0.336131, 0.913977,
		0.733328, 0.676618, 0.066472,
		-0.640757, 0.655136, 0.400284,
		37.927567, 34.968212, 25.327074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710407, 34.864029, 25.567530>,  <38.376095, 34.509617, 25.046875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710407, 34.864029, 25.567530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322701, 34.930191, 25.640373>,  <38.090076, 34.969887, 25.684078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322701, 34.930191, 25.640373>,  <38.710407, 34.864029, 25.567530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322701, 34.930191, 25.640373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141668, -0.229905, 0.962847,
		0.201128, 0.959054, 0.199406,
		-0.969266, 0.165407, 0.182108,
		38.031921, 34.979813, 25.695005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717793, 35.299553, 26.142839>,  <38.710407, 34.864029, 25.567530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717793, 35.299553, 26.142839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351822, 35.139835, 26.119278>,  <38.132240, 35.044006, 26.105141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.351822, 35.139835, 26.119278>,  <38.717793, 35.299553, 26.142839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351822, 35.139835, 26.119278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012474, -0.173849, 0.984693,
		-0.403421, 0.900190, 0.164040,
		-0.914929, -0.399293, -0.058905,
		38.077343, 35.020046, 26.101606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242165, 35.635880, 26.571585>,  <38.717793, 35.299553, 26.142839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242165, 35.635880, 26.571585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068607, 35.279373, 26.518850>,  <37.964474, 35.065468, 26.487209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.068607, 35.279373, 26.518850>,  <38.242165, 35.635880, 26.571585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.068607, 35.279373, 26.518850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055476, -0.119624, 0.991268,
		-0.899253, 0.437421, 0.002461,
		-0.433896, -0.891265, -0.131838,
		37.938438, 35.011993, 26.479300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720459, 35.635853, 27.105993>,  <38.242165, 35.635880, 26.571585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720459, 35.635853, 27.105993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802498, 35.269661, 26.967527>,  <37.851723, 35.049946, 26.884447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802498, 35.269661, 26.967527>,  <37.720459, 35.635853, 27.105993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802498, 35.269661, 26.967527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111767, -0.373277, 0.920963,
		-0.972339, -0.150197, -0.178879,
		0.205097, -0.915481, -0.346165,
		37.864025, 34.995018, 26.863678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182423, 35.243851, 27.325327>,  <37.720459, 35.635853, 27.105993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.182423, 35.243851, 27.325327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468128, 34.973610, 27.252232>,  <37.639553, 34.811466, 27.208374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.468128, 34.973610, 27.252232>,  <37.182423, 35.243851, 27.325327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468128, 34.973610, 27.252232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027924, -0.288400, 0.957103,
		-0.699319, -0.678521, -0.224859,
		0.714264, -0.675599, -0.182737,
		37.682407, 34.770931, 27.197411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022217, 34.689129, 27.749720>,  <37.182423, 35.243851, 27.325327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022217, 34.689129, 27.749720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407860, 34.622849, 27.666737>,  <37.639244, 34.583080, 27.616947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407860, 34.622849, 27.666737>,  <37.022217, 34.689129, 27.749720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407860, 34.622849, 27.666737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121437, -0.419646, 0.899528,
		-0.236113, -0.892435, -0.384462,
		0.964108, -0.165702, -0.207459,
		37.697090, 34.573139, 27.604500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222950, 33.867336, 27.904696>,  <37.022217, 34.689129, 27.749720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222950, 33.867336, 27.904696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564705, 34.075008, 27.896008>,  <37.769756, 34.199612, 27.890795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564705, 34.075008, 27.896008>,  <37.222950, 33.867336, 27.904696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564705, 34.075008, 27.896008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321588, -0.495462, 0.806907,
		0.408173, -0.696394, -0.590279,
		0.854386, 0.519185, -0.021718,
		37.821022, 34.230762, 27.889492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732014, 33.350273, 28.037834>,  <37.222950, 33.867336, 27.904696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732014, 33.350273, 28.037834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910881, 33.697266, 28.125032>,  <38.018200, 33.905460, 28.177351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910881, 33.697266, 28.125032>,  <37.732014, 33.350273, 28.037834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910881, 33.697266, 28.125032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280228, -0.367321, 0.886875,
		0.849420, -0.335492, -0.407345,
		0.447166, 0.867479, 0.217996,
		38.045033, 33.957508, 28.190432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396431, 33.163208, 28.378429>,  <37.732014, 33.350273, 28.037834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396431, 33.163208, 28.378429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328560, 33.544701, 28.477711>,  <38.287838, 33.773598, 28.537279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328560, 33.544701, 28.477711>,  <38.396431, 33.163208, 28.378429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328560, 33.544701, 28.477711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145580, -0.224836, 0.963460,
		0.974688, 0.199609, -0.100695,
		-0.169676, 0.953732, 0.248205,
		38.277657, 33.830822, 28.552172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005157, 33.381645, 28.706255>,  <38.396431, 33.163208, 28.378429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005157, 33.381645, 28.706255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.717258, 33.633068, 28.824163>,  <38.544521, 33.783920, 28.894909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.717258, 33.633068, 28.824163>,  <39.005157, 33.381645, 28.706255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717258, 33.633068, 28.824163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290036, -0.113526, 0.950258,
		0.630753, 0.769436, -0.100594,
		-0.719743, 0.628554, 0.294771,
		38.501335, 33.821636, 28.912594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326241, 33.864235, 29.062414>,  <39.005157, 33.381645, 28.706255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326241, 33.864235, 29.062414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947090, 33.902542, 29.183979>,  <38.719601, 33.925526, 29.256918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.947090, 33.902542, 29.183979>,  <39.326241, 33.864235, 29.062414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.947090, 33.902542, 29.183979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306365, 0.011699, 0.951842,
		0.087602, 0.995335, -0.040430,
		-0.947875, 0.095770, 0.303910,
		38.662727, 33.931274, 29.275152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302963, 34.308624, 29.660549>,  <39.326241, 33.864235, 29.062414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302963, 34.308624, 29.660549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944637, 34.133240, 29.689604>,  <38.729641, 34.028011, 29.707037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944637, 34.133240, 29.689604>,  <39.302963, 34.308624, 29.660549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944637, 34.133240, 29.689604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018954, 0.200981, 0.979412,
		-0.444030, 0.875991, -0.188351,
		-0.895811, -0.438458, 0.072638,
		38.675896, 34.001701, 29.711395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897476, 34.664635, 30.070259>,  <39.302963, 34.308624, 29.660549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897476, 34.664635, 30.070259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699730, 34.317463, 30.089407>,  <38.581081, 34.109158, 30.100895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.699730, 34.317463, 30.089407>,  <38.897476, 34.664635, 30.070259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699730, 34.317463, 30.089407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060277, 0.089167, 0.994191,
		-0.867160, 0.488612, -0.096398,
		-0.494369, -0.867933, 0.047871,
		38.551418, 34.057083, 30.103767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308113, 34.923519, 30.446941>,  <38.897476, 34.664635, 30.070259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308113, 34.923519, 30.446941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366562, 34.532341, 30.506626>,  <38.401630, 34.297634, 30.542437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366562, 34.532341, 30.506626>,  <38.308113, 34.923519, 30.446941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366562, 34.532341, 30.506626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330015, 0.094001, 0.939284,
		-0.932598, -0.186493, -0.309002,
		0.146123, -0.977949, 0.149210,
		38.410400, 34.238956, 30.551390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704117, 34.590614, 30.614933>,  <38.308113, 34.923519, 30.446941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704117, 34.590614, 30.614933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965000, 34.329254, 30.768656>,  <38.121532, 34.172440, 30.860889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.965000, 34.329254, 30.768656>,  <37.704117, 34.590614, 30.614933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965000, 34.329254, 30.768656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505073, 0.003474, 0.863070,
		-0.565263, -0.757007, -0.327748,
		0.652211, -0.653398, 0.384308,
		38.160664, 34.133236, 30.883947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289867, 34.062275, 30.822866>,  <37.704117, 34.590614, 30.614933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289867, 34.062275, 30.822866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626556, 34.044720, 31.038116>,  <37.828571, 34.034187, 31.167267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626556, 34.044720, 31.038116>,  <37.289867, 34.062275, 30.822866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626556, 34.044720, 31.038116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536129, 0.049850, 0.842663,
		-0.063811, -0.997792, 0.018429,
		0.841721, -0.043891, 0.538126,
		37.879074, 34.031551, 31.199554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061577, 33.822563, 31.421289>,  <37.289867, 34.062275, 30.822866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061577, 33.822563, 31.421289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432919, 33.910587, 31.541111>,  <37.655724, 33.963402, 31.613005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432919, 33.910587, 31.541111>,  <37.061577, 33.822563, 31.421289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432919, 33.910587, 31.541111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348263, 0.233339, 0.907891,
		0.129892, -0.947168, 0.293259,
		0.928354, 0.220059, 0.299554,
		37.711426, 33.976604, 31.630978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183990, 33.441269, 32.088379>,  <37.061577, 33.822563, 31.421289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183990, 33.441269, 32.088379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443676, 33.745510, 32.088749>,  <37.599487, 33.928055, 32.088970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443676, 33.745510, 32.088749>,  <37.183990, 33.441269, 32.088379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443676, 33.745510, 32.088749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222369, 0.188633, 0.956541,
		0.727376, -0.621204, 0.291598,
		0.649212, 0.760607, 0.000929,
		37.638439, 33.973694, 32.089027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447701, 33.531147, 32.789509>,  <37.183990, 33.441269, 32.088379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447701, 33.531147, 32.789509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580982, 33.887352, 32.665596>,  <37.660950, 34.101074, 32.591248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.580982, 33.887352, 32.665596>,  <37.447701, 33.531147, 32.789509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580982, 33.887352, 32.665596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244507, 0.398925, 0.883784,
		0.910600, -0.218735, 0.350660,
		0.333202, 0.890512, -0.309779,
		37.680943, 34.154507, 32.572662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885773, 33.782131, 33.345512>,  <37.447701, 33.531147, 32.789509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885773, 33.782131, 33.345512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780949, 34.094288, 33.118420>,  <37.718056, 34.281582, 32.982162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780949, 34.094288, 33.118420>,  <37.885773, 33.782131, 33.345512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780949, 34.094288, 33.118420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075654, 0.603093, 0.794075,
		0.962081, 0.165145, -0.217086,
		-0.262061, 0.780388, -0.567731,
		37.702332, 34.328403, 32.948101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431938, 34.406612, 33.480526>,  <37.885773, 33.782131, 33.345512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431938, 34.406612, 33.480526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087933, 34.556595, 33.342087>,  <37.881527, 34.646584, 33.259026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087933, 34.556595, 33.342087>,  <38.431938, 34.406612, 33.480526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087933, 34.556595, 33.342087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015285, 0.659028, 0.751963,
		0.510038, 0.651990, -0.561043,
		-0.860016, 0.374954, -0.346095,
		37.829929, 34.669083, 33.238258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495609, 35.137024, 33.512199>,  <38.431938, 34.406612, 33.480526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495609, 35.137024, 33.512199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107086, 35.041912, 33.513992>,  <37.873974, 34.984844, 33.515068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.107086, 35.041912, 33.513992>,  <38.495609, 35.137024, 33.512199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107086, 35.041912, 33.513992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128547, 0.540785, 0.831281,
		-0.200086, 0.806854, -0.555835,
		-0.971309, -0.237778, 0.004485,
		37.815693, 34.970577, 33.515339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123634, 35.666939, 33.570358>,  <38.495609, 35.137024, 33.512199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123634, 35.666939, 33.570358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.867931, 35.389847, 33.703907>,  <37.714508, 35.223591, 33.784035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.867931, 35.389847, 33.703907>,  <38.123634, 35.666939, 33.570358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867931, 35.389847, 33.703907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199950, 0.568971, 0.797679,
		-0.742539, 0.443168, -0.502233,
		-0.639261, -0.692729, 0.333872,
		37.676151, 35.182030, 33.804070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575668, 35.975910, 33.778301>,  <38.123634, 35.666939, 33.570358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575668, 35.975910, 33.778301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487064, 35.634899, 33.967667>,  <37.433903, 35.430290, 34.081287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487064, 35.634899, 33.967667>,  <37.575668, 35.975910, 33.778301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487064, 35.634899, 33.967667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419395, 0.521571, 0.743015,
		-0.880365, -0.033967, -0.473079,
		-0.221507, -0.852532, 0.473418,
		37.420612, 35.379139, 34.109692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906666, 36.208206, 34.101967>,  <37.575668, 35.975910, 33.778301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906666, 36.208206, 34.101967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037811, 35.871181, 34.272896>,  <37.116497, 35.668968, 34.375454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.037811, 35.871181, 34.272896>,  <36.906666, 36.208206, 34.101967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037811, 35.871181, 34.272896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248895, 0.359308, 0.899416,
		-0.911350, -0.401240, -0.091906,
		0.327859, -0.842558, 0.427323,
		37.136169, 35.618416, 34.401093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336540, 35.943314, 34.522839>,  <36.906666, 36.208206, 34.101967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336540, 35.943314, 34.522839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663712, 35.764740, 34.667995>,  <36.860012, 35.657597, 34.755089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663712, 35.764740, 34.667995>,  <36.336540, 35.943314, 34.522839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663712, 35.764740, 34.667995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289014, 0.226569, 0.930128,
		-0.497461, -0.865658, 0.056291,
		0.817927, -0.446434, 0.362897,
		36.909088, 35.630810, 34.776863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131363, 35.570358, 35.036846>,  <36.336540, 35.943314, 34.522839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131363, 35.570358, 35.036846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523674, 35.602509, 35.107975>,  <36.759060, 35.621799, 35.150650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523674, 35.602509, 35.107975>,  <36.131363, 35.570358, 35.036846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523674, 35.602509, 35.107975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188210, 0.148964, 0.970766,
		0.051530, -0.985571, 0.161226,
		0.980776, 0.080368, 0.177819,
		36.817905, 35.626621, 35.161320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108574, 35.294212, 35.622421>,  <36.131363, 35.570358, 35.036846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108574, 35.294212, 35.622421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464294, 35.476910, 35.631706>,  <36.677727, 35.586529, 35.637280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.464294, 35.476910, 35.631706>,  <36.108574, 35.294212, 35.622421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464294, 35.476910, 35.631706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090422, 0.125841, 0.987921,
		0.448302, -0.880655, 0.153210,
		0.889297, 0.456740, 0.023215,
		36.731083, 35.613930, 35.638672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496651, 34.983887, 36.175220>,  <36.108574, 35.294212, 35.622421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496651, 34.983887, 36.175220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668652, 35.341129, 36.122375>,  <36.771851, 35.555477, 36.090668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668652, 35.341129, 36.122375>,  <36.496651, 34.983887, 36.175220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668652, 35.341129, 36.122375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005916, 0.143537, 0.989627,
		0.902810, -0.426321, 0.056437,
		0.430000, 0.893111, -0.132108,
		36.797653, 35.609062, 36.082745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161621, 34.966736, 36.592567>,  <36.496651, 34.983887, 36.175220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161621, 34.966736, 36.592567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998886, 35.327782, 36.536312>,  <36.901245, 35.544407, 36.502560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998886, 35.327782, 36.536312>,  <37.161621, 34.966736, 36.592567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998886, 35.327782, 36.536312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019218, 0.162374, 0.986542,
		0.913298, 0.398660, -0.083406,
		-0.406838, 0.902610, -0.140635,
		36.876835, 35.598564, 36.494122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688160, 35.424614, 36.788319>,  <37.161621, 34.966736, 36.592567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688160, 35.424614, 36.788319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376537, 35.634300, 36.925877>,  <37.189564, 35.760113, 37.008411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376537, 35.634300, 36.925877>,  <37.688160, 35.424614, 36.788319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376537, 35.634300, 36.925877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315286, -0.146528, 0.937616,
		0.541904, 0.838884, -0.051124,
		-0.779060, 0.524217, 0.343893,
		37.142818, 35.791565, 37.029045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.385494, 35.833702, 36.984997>,  <37.688160, 35.424614, 36.788319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.385494, 35.833702, 36.984997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662575, 36.116291, 37.043060>,  <38.828823, 36.285843, 37.077900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662575, 36.116291, 37.043060>,  <38.385494, 35.833702, 36.984997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662575, 36.116291, 37.043060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392471, -0.200376, -0.897673,
		-0.605092, 0.678786, -0.416069,
		0.692698, 0.706470, 0.145158,
		38.870384, 36.328232, 37.086609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451584, 36.407024, 36.433117>,  <38.385494, 35.833702, 36.984997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451584, 36.407024, 36.433117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803364, 36.358585, 36.617249>,  <39.014431, 36.329521, 36.727730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.803364, 36.358585, 36.617249>,  <38.451584, 36.407024, 36.433117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803364, 36.358585, 36.617249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458747, -0.042340, -0.887558,
		0.126968, 0.991738, 0.018316,
		0.879449, -0.121094, 0.460333,
		39.067200, 36.322258, 36.755348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008816, 36.876663, 36.144371>,  <38.451584, 36.407024, 36.433117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.008816, 36.876663, 36.144371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.210804, 36.570580, 36.304096>,  <39.331997, 36.386929, 36.399933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.210804, 36.570580, 36.304096>,  <39.008816, 36.876663, 36.144371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210804, 36.570580, 36.304096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516263, -0.102988, -0.850215,
		0.691722, 0.635485, 0.343045,
		0.504970, -0.765214, 0.399316,
		39.362293, 36.341015, 36.423893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698959, 37.033428, 36.039467>,  <39.008816, 36.876663, 36.144371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698959, 37.033428, 36.039467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.685513, 36.639626, 36.108303>,  <39.677444, 36.403343, 36.149605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.685513, 36.639626, 36.108303>,  <39.698959, 37.033428, 36.039467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685513, 36.639626, 36.108303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632042, -0.154323, -0.759413,
		0.774205, 0.083236, 0.627438,
		-0.033618, -0.984508, 0.172087,
		39.675426, 36.344273, 36.159927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413475, 36.872925, 35.969765>,  <39.698959, 37.033428, 36.039467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413475, 36.872925, 35.969765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198368, 36.536274, 35.949860>,  <40.069305, 36.334286, 35.937916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198368, 36.536274, 35.949860>,  <40.413475, 36.872925, 35.969765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198368, 36.536274, 35.949860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593484, -0.335973, -0.731368,
		0.598820, -0.422836, 0.680165,
		-0.537766, -0.841625, -0.049759,
		40.037037, 36.283787, 35.934933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873341, 36.283470, 35.911934>,  <40.413475, 36.872925, 35.969765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873341, 36.283470, 35.911934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530586, 36.128952, 35.775394>,  <40.324932, 36.036240, 35.693470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530586, 36.128952, 35.775394>,  <40.873341, 36.283470, 35.911934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530586, 36.128952, 35.775394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508993, -0.529101, -0.678954,
		0.081668, -0.755532, 0.650001,
		-0.856888, -0.386295, -0.341350,
		40.273521, 36.013065, 35.672989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098442, 35.578403, 35.763538>,  <40.873341, 36.283470, 35.911934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098442, 35.578403, 35.763538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755486, 35.649769, 35.570438>,  <40.549709, 35.692589, 35.454578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755486, 35.649769, 35.570438>,  <41.098442, 35.578403, 35.763538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755486, 35.649769, 35.570438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407451, -0.337732, -0.848481,
		-0.314416, -0.924179, 0.216877,
		-0.857395, 0.178409, -0.482746,
		40.498268, 35.703293, 35.425613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937241, 34.971767, 35.381744>,  <41.098442, 35.578403, 35.763538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937241, 34.971767, 35.381744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762955, 35.277790, 35.192078>,  <40.658382, 35.461403, 35.078278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762955, 35.277790, 35.192078>,  <40.937241, 34.971767, 35.381744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762955, 35.277790, 35.192078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290330, -0.379184, -0.878594,
		-0.851975, -0.520481, -0.056905,
		-0.435714, 0.765061, -0.474167,
		40.632240, 35.507309, 35.049828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539986, 34.657867, 34.861607>,  <40.937241, 34.971767, 35.381744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539986, 34.657867, 34.861607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597385, 35.037926, 34.750885>,  <40.631824, 35.265961, 34.684452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597385, 35.037926, 34.750885>,  <40.539986, 34.657867, 34.861607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597385, 35.037926, 34.750885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217406, -0.303136, -0.927816,
		-0.965475, 0.072963, -0.250069,
		0.143501, 0.950150, -0.276808,
		40.640434, 35.322971, 34.667843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230656, 34.770500, 34.242767>,  <40.539986, 34.657867, 34.861607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230656, 34.770500, 34.242767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474442, 35.087563, 34.249100>,  <40.620712, 35.277802, 34.252899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474442, 35.087563, 34.249100>,  <40.230656, 34.770500, 34.242767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474442, 35.087563, 34.249100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096767, -0.054550, -0.993811,
		-0.786885, 0.607225, -0.109949,
		0.609465, 0.792655, 0.015835,
		40.657280, 35.325359, 34.253849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004318, 35.100586, 33.760078>,  <40.230656, 34.770500, 34.242767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004318, 35.100586, 33.760078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367077, 35.267593, 33.782734>,  <40.584732, 35.367798, 33.796329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367077, 35.267593, 33.782734>,  <40.004318, 35.100586, 33.760078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367077, 35.267593, 33.782734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090570, -0.061880, -0.993966,
		-0.411497, 0.906558, -0.093934,
		0.906900, 0.417521, 0.056643,
		40.639149, 35.392849, 33.799728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.028511, 35.517971, 33.207176>,  <40.004318, 35.100586, 33.760078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.028511, 35.517971, 33.207176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417400, 35.485626, 33.295036>,  <40.650734, 35.466221, 33.347752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417400, 35.485626, 33.295036>,  <40.028511, 35.517971, 33.207176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417400, 35.485626, 33.295036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228256, 0.119824, -0.966200,
		0.051807, 0.989497, 0.134952,
		0.972222, -0.080859, 0.219651,
		40.709068, 35.461369, 33.360931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318783, 35.959221, 32.753971>,  <40.028511, 35.517971, 33.207176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318783, 35.959221, 32.753971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597473, 35.686649, 32.843620>,  <40.764687, 35.523106, 32.897411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597473, 35.686649, 32.843620>,  <40.318783, 35.959221, 32.753971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597473, 35.686649, 32.843620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257685, -0.053834, -0.964728,
		0.669459, 0.729902, 0.138087,
		0.696723, -0.681429, 0.224124,
		40.806492, 35.482220, 32.910858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019119, 36.216885, 32.628563>,  <40.318783, 35.959221, 32.753971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019119, 36.216885, 32.628563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047901, 35.818401, 32.608994>,  <41.065170, 35.579311, 32.597252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047901, 35.818401, 32.608994>,  <41.019119, 36.216885, 32.628563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047901, 35.818401, 32.608994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323562, 0.069710, -0.943636,
		0.943467, 0.052069, 0.327351,
		0.071953, -0.996208, -0.048921,
		41.069489, 35.519539, 32.594318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.714897, 36.023521, 32.497887>,  <41.019119, 36.216885, 32.628563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.714897, 36.023521, 32.497887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495338, 35.702511, 32.404366>,  <41.363602, 35.509903, 32.348251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495338, 35.702511, 32.404366>,  <41.714897, 36.023521, 32.497887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495338, 35.702511, 32.404366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455432, -0.052587, -0.888716,
		0.700922, -0.594296, 0.394361,
		-0.548899, -0.802525, -0.233803,
		41.330669, 35.461754, 32.334225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102615, 35.779613, 31.965845>,  <41.714897, 36.023521, 32.497887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102615, 35.779613, 31.965845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778042, 35.550289, 31.920429>,  <41.583298, 35.412697, 31.893181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778042, 35.550289, 31.920429>,  <42.102615, 35.779613, 31.965845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778042, 35.550289, 31.920429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198402, -0.087481, -0.976209,
		0.549735, -0.814657, 0.184730,
		-0.811436, -0.573307, -0.113538,
		41.534611, 35.378296, 31.886368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.220325, 35.132816, 31.572548>,  <42.102615, 35.779613, 31.965845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.220325, 35.132816, 31.572548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.831299, 35.202923, 31.511354>,  <41.597885, 35.244987, 31.474638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.831299, 35.202923, 31.511354>,  <42.220325, 35.132816, 31.572548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.831299, 35.202923, 31.511354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129139, -0.140260, -0.981657,
		-0.193513, -0.974478, 0.113777,
		-0.972561, 0.175271, -0.152985,
		41.539532, 35.255505, 31.465460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.949532, 34.586952, 31.107038>,  <42.220325, 35.132816, 31.572548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.949532, 34.586952, 31.107038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668667, 34.871243, 31.089947>,  <41.500149, 35.041817, 31.079693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668667, 34.871243, 31.089947>,  <41.949532, 34.586952, 31.107038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668667, 34.871243, 31.089947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099876, -0.157735, -0.982418,
		-0.704973, -0.685553, 0.181741,
		-0.702166, 0.710730, -0.042728,
		41.458015, 35.084461, 31.077127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410004, 34.203560, 30.866219>,  <41.949532, 34.586952, 31.107038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410004, 34.203560, 30.866219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326859, 34.589485, 30.801800>,  <41.276970, 34.821041, 30.763149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.326859, 34.589485, 30.801800>,  <41.410004, 34.203560, 30.866219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326859, 34.589485, 30.801800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467749, -0.242642, -0.849903,
		-0.859070, -0.101337, 0.501726,
		-0.207866, 0.964808, -0.161047,
		41.264500, 34.878929, 30.753487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747250, 34.239841, 30.589941>,  <41.410004, 34.203560, 30.866219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747250, 34.239841, 30.589941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894348, 34.589828, 30.463964>,  <40.982609, 34.799820, 30.388378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894348, 34.589828, 30.463964>,  <40.747250, 34.239841, 30.589941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894348, 34.589828, 30.463964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533822, -0.078682, -0.841928,
		-0.761442, 0.477741, 0.438143,
		0.367750, 0.874970, -0.314941,
		41.004673, 34.852318, 30.369482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211105, 34.593128, 30.313452>,  <40.747250, 34.239841, 30.589941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211105, 34.593128, 30.313452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529533, 34.777077, 30.156080>,  <40.720589, 34.887447, 30.061657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529533, 34.777077, 30.156080>,  <40.211105, 34.593128, 30.313452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529533, 34.777077, 30.156080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404966, -0.078325, -0.910971,
		-0.449748, 0.884522, 0.123882,
		0.796071, 0.459875, -0.393428,
		40.768356, 34.915039, 30.038052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944118, 35.001041, 29.858696>,  <40.211105, 34.593128, 30.313452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944118, 35.001041, 29.858696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325489, 34.959785, 29.745319>,  <40.554310, 34.935032, 29.677294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325489, 34.959785, 29.745319>,  <39.944118, 35.001041, 29.858696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325489, 34.959785, 29.745319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289721, -0.051767, -0.955710,
		0.083902, 0.993318, -0.079239,
		0.953426, -0.103144, -0.283442,
		40.611519, 34.928841, 29.660286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912159, 35.339344, 29.335714>,  <39.944118, 35.001041, 29.858696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912159, 35.339344, 29.335714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249809, 35.132477, 29.279158>,  <40.452400, 35.008358, 29.245224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.249809, 35.132477, 29.279158>,  <39.912159, 35.339344, 29.335714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249809, 35.132477, 29.279158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171021, -0.009788, -0.985219,
		0.508139, 0.855828, -0.096710,
		0.844125, -0.517168, -0.141391,
		40.503048, 34.977325, 29.236740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260368, 35.637581, 28.672451>,  <39.912159, 35.339344, 29.335714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260368, 35.637581, 28.672451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396126, 35.265133, 28.725851>,  <40.477581, 35.041664, 28.757891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.396126, 35.265133, 28.725851>,  <40.260368, 35.637581, 28.672451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396126, 35.265133, 28.725851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022813, -0.150028, -0.988419,
		0.940366, 0.332422, -0.072161,
		0.339398, -0.931122, 0.133498,
		40.497944, 34.985798, 28.765900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.692654, 35.492630, 28.182817>,  <40.260368, 35.637581, 28.672451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.692654, 35.492630, 28.182817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630928, 35.117832, 28.308186>,  <40.593891, 34.892952, 28.383406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630928, 35.117832, 28.308186>,  <40.692654, 35.492630, 28.182817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630928, 35.117832, 28.308186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074338, -0.327329, -0.941981,
		0.985222, -0.122061, 0.120165,
		-0.154313, -0.936993, 0.313418,
		40.584633, 34.836735, 28.402210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219971, 35.118458, 27.844259>,  <40.692654, 35.492630, 28.182817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219971, 35.118458, 27.844259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.924866, 34.867348, 27.943544>,  <40.747803, 34.716682, 28.003115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.924866, 34.867348, 27.943544>,  <41.219971, 35.118458, 27.844259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924866, 34.867348, 27.943544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100356, -0.465598, -0.879288,
		0.667559, -0.623796, 0.406501,
		-0.737762, -0.627771, 0.248213,
		40.703537, 34.679016, 28.018009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401321, 34.416203, 27.573448>,  <41.219971, 35.118458, 27.844259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.401321, 34.416203, 27.573448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.007389, 34.373749, 27.628344>,  <40.771030, 34.348274, 27.661282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.007389, 34.373749, 27.628344>,  <41.401321, 34.416203, 27.573448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007389, 34.373749, 27.628344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068532, -0.488707, -0.869752,
		0.159384, -0.865968, 0.474022,
		-0.984835, -0.106139, 0.137239,
		40.711937, 34.341908, 27.669516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209610, 33.792271, 27.298843>,  <41.401321, 34.416203, 27.573448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209610, 33.792271, 27.298843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866158, 33.995625, 27.325056>,  <40.660088, 34.117638, 27.340784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.866158, 33.995625, 27.325056>,  <41.209610, 33.792271, 27.298843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866158, 33.995625, 27.325056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247198, -0.298683, -0.921782,
		-0.449050, -0.807669, 0.382131,
		-0.858631, 0.508389, 0.065530,
		40.608566, 34.148140, 27.344715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581223, 33.216801, 27.213692>,  <41.209610, 33.792271, 27.298843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581223, 33.216801, 27.213692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499630, 33.592010, 27.101622>,  <40.450676, 33.817135, 27.034380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.499630, 33.592010, 27.101622>,  <40.581223, 33.216801, 27.213692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.499630, 33.592010, 27.101622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006800, -0.287545, -0.957743,
		-0.978951, -0.193456, 0.065032,
		-0.203981, 0.938026, -0.280177,
		40.438435, 33.873417, 27.017569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036858, 33.139751, 26.722172>,  <40.581223, 33.216801, 27.213692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036858, 33.139751, 26.722172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162189, 33.508091, 26.629332>,  <40.237389, 33.729095, 26.573627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162189, 33.508091, 26.629332>,  <40.036858, 33.139751, 26.722172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162189, 33.508091, 26.629332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018663, -0.238391, -0.970990,
		-0.949462, 0.308568, -0.057508,
		0.313326, 0.920845, -0.232102,
		40.256187, 33.784344, 26.559700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613930, 33.443096, 26.136209>,  <40.036858, 33.139751, 26.722172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613930, 33.443096, 26.136209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958042, 33.646996, 26.132708>,  <40.164509, 33.769337, 26.130606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958042, 33.646996, 26.132708>,  <39.613930, 33.443096, 26.136209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958042, 33.646996, 26.132708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171671, -0.305805, -0.936489,
		-0.480053, 0.804138, -0.350587,
		0.860278, 0.509750, -0.008756,
		40.216125, 33.799919, 26.130081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644604, 33.803970, 25.546305>,  <39.613930, 33.443096, 26.136209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644604, 33.803970, 25.546305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029495, 33.817772, 25.654320>,  <40.260429, 33.826054, 25.719128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029495, 33.817772, 25.654320>,  <39.644604, 33.803970, 25.546305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029495, 33.817772, 25.654320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272231, -0.119215, -0.954818,
		-0.000757, 0.992269, -0.124106,
		0.962232, 0.034508, 0.270036,
		40.318165, 33.828125, 25.735331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068863, 34.334953, 25.135534>,  <39.644604, 33.803970, 25.546305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068863, 34.334953, 25.135534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374775, 34.115654, 25.270906>,  <40.558323, 33.984074, 25.352129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.374775, 34.115654, 25.270906>,  <40.068863, 34.334953, 25.135534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.374775, 34.115654, 25.270906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376382, -0.046157, -0.925314,
		0.522926, 0.835039, 0.171052,
		0.764778, -0.548252, 0.338430,
		40.604210, 33.951180, 25.372435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645908, 34.613541, 24.797855>,  <40.068863, 34.334953, 25.135534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645908, 34.613541, 24.797855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732170, 34.235287, 24.895237>,  <40.783928, 34.008335, 24.953667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732170, 34.235287, 24.895237>,  <40.645908, 34.613541, 24.797855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732170, 34.235287, 24.895237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461915, -0.120870, -0.878650,
		0.860307, 0.301939, 0.410736,
		0.215653, -0.945634, 0.243455,
		40.796867, 33.951595, 24.968273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.361771, 34.531723, 24.578081>,  <40.645908, 34.613541, 24.797855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.361771, 34.531723, 24.578081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183525, 34.173885, 24.591576>,  <41.076580, 33.959183, 24.599672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183525, 34.173885, 24.591576>,  <41.361771, 34.531723, 24.578081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.183525, 34.173885, 24.591576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484898, -0.272870, -0.830913,
		0.752534, -0.353903, 0.555379,
		-0.445609, -0.894592, 0.033737,
		41.049843, 33.905506, 24.601696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.818550, 34.032089, 24.523254>,  <41.361771, 34.531723, 24.578081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.818550, 34.032089, 24.523254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496613, 33.817020, 24.422743>,  <41.303452, 33.687981, 24.362436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496613, 33.817020, 24.422743>,  <41.818550, 34.032089, 24.523254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496613, 33.817020, 24.422743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471774, -0.322718, -0.820538,
		0.360087, -0.778949, 0.513396,
		-0.804839, -0.537672, -0.251281,
		41.255161, 33.655720, 24.347359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070335, 33.260323, 24.386534>,  <41.818550, 34.032089, 24.523254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070335, 33.260323, 24.386534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.715118, 33.345516, 24.223553>,  <41.501987, 33.396633, 24.125763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.715118, 33.345516, 24.223553>,  <42.070335, 33.260323, 24.386534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.715118, 33.345516, 24.223553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349460, -0.263199, -0.899224,
		-0.298761, -0.940938, 0.159303,
		-0.888042, 0.212983, -0.407454,
		41.448704, 33.409409, 24.101316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026058, 32.764809, 24.006910>,  <42.070335, 33.260323, 24.386534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026058, 32.764809, 24.006910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745274, 33.008793, 23.859829>,  <41.576805, 33.155182, 23.771580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.745274, 33.008793, 23.859829>,  <42.026058, 32.764809, 24.006910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745274, 33.008793, 23.859829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239943, -0.283569, -0.928448,
		-0.670584, -0.739959, 0.052698,
		-0.701957, 0.609958, -0.367705,
		41.534687, 33.191780, 23.749517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493896, 32.341946, 23.535807>,  <42.026058, 32.764809, 24.006910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493896, 32.341946, 23.535807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501755, 32.726456, 23.425850>,  <41.506470, 32.957161, 23.359875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501755, 32.726456, 23.425850>,  <41.493896, 32.341946, 23.535807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501755, 32.726456, 23.425850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260321, -0.270381, -0.926891,
		-0.965322, -0.053354, -0.255551,
		0.019643, 0.961274, -0.274894,
		41.507648, 33.014839, 23.343382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409916, 31.728556, 23.367779>,  <41.493896, 32.341946, 23.535807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409916, 31.728556, 23.367779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404755, 31.329823, 23.399162>,  <41.401657, 31.090582, 23.417994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.404755, 31.329823, 23.399162>,  <41.409916, 31.728556, 23.367779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404755, 31.329823, 23.399162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172557, 0.079509, 0.981785,
		-0.984915, -0.000873, -0.173036,
		-0.012901, -0.996834, 0.078460,
		41.400883, 31.030773, 23.422701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731422, 31.510056, 23.664629>,  <41.409916, 31.728556, 23.367779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731422, 31.510056, 23.664629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012844, 31.230774, 23.717581>,  <41.181698, 31.063204, 23.749352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012844, 31.230774, 23.717581>,  <40.731422, 31.510056, 23.664629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012844, 31.230774, 23.717581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179877, 0.005253, 0.983675,
		-0.687503, -0.715878, -0.121895,
		0.703551, -0.698205, 0.132382,
		41.223911, 31.021313, 23.757296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391701, 31.030781, 24.074665>,  <40.731422, 31.510056, 23.664629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391701, 31.030781, 24.074665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777401, 30.931190, 24.110958>,  <41.008820, 30.871435, 24.132734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.777401, 30.931190, 24.110958>,  <40.391701, 31.030781, 24.074665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.777401, 30.931190, 24.110958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076315, 0.066985, 0.994831,
		-0.253770, -0.966190, 0.045589,
		0.964249, -0.248979, 0.090733,
		41.066677, 30.856497, 24.138178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462883, 30.471224, 24.539091>,  <40.391701, 31.030781, 24.074665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462883, 30.471224, 24.539091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822433, 30.640709, 24.583784>,  <41.038166, 30.742399, 24.610600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822433, 30.640709, 24.583784>,  <40.462883, 30.471224, 24.539091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822433, 30.640709, 24.583784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154009, 0.066762, 0.985811,
		0.410241, -0.903333, 0.125267,
		0.898879, 0.423712, 0.111732,
		41.092098, 30.767822, 24.617304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714958, 30.225288, 25.106882>,  <40.462883, 30.471224, 24.539091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714958, 30.225288, 25.106882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969406, 30.530731, 25.062597>,  <41.122074, 30.713997, 25.036026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.969406, 30.530731, 25.062597>,  <40.714958, 30.225288, 25.106882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.969406, 30.530731, 25.062597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068796, 0.086781, 0.993849,
		0.768519, -0.639821, 0.002669,
		0.636118, 0.763608, -0.110710,
		41.160240, 30.759813, 25.029385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168606, 30.112749, 25.646025>,  <40.714958, 30.225288, 25.106882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.168606, 30.112749, 25.646025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229111, 30.491884, 25.533792>,  <41.265411, 30.719366, 25.466454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229111, 30.491884, 25.533792>,  <41.168606, 30.112749, 25.646025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229111, 30.491884, 25.533792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258976, 0.235931, 0.936626,
		0.953967, -0.214336, -0.209780,
		0.151259, 0.947838, -0.280578,
		41.274487, 30.776236, 25.449619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724327, 30.332676, 26.085703>,  <41.168606, 30.112749, 25.646025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724327, 30.332676, 26.085703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.555084, 30.665771, 25.942862>,  <41.453537, 30.865629, 25.857157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.555084, 30.665771, 25.942862>,  <41.724327, 30.332676, 26.085703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.555084, 30.665771, 25.942862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125918, 0.444336, 0.886967,
		0.897287, 0.330317, -0.292859,
		-0.423108, 0.832740, -0.357104,
		41.428150, 30.915594, 25.835730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.099789, 30.994606, 26.212141>,  <41.724327, 30.332676, 26.085703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.099789, 30.994606, 26.212141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737514, 31.160772, 26.178272>,  <41.520149, 31.260471, 26.157951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.737514, 31.160772, 26.178272>,  <42.099789, 30.994606, 26.212141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.737514, 31.160772, 26.178272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141590, 0.484629, 0.863184,
		0.399613, 0.769782, -0.497739,
		-0.905683, 0.415415, -0.084670,
		41.465809, 31.285397, 26.152870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203957, 31.709404, 26.430300>,  <42.099789, 30.994606, 26.212141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203957, 31.709404, 26.430300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.807983, 31.664700, 26.465019>,  <41.570400, 31.637877, 26.485851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.807983, 31.664700, 26.465019>,  <42.203957, 31.709404, 26.430300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.807983, 31.664700, 26.465019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031675, 0.422825, 0.905658,
		-0.137918, 0.899293, -0.415030,
		-0.989937, -0.111760, 0.086800,
		41.511002, 31.631172, 26.491058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.016026, 32.255157, 26.807732>,  <42.203957, 31.709404, 26.430300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.016026, 32.255157, 26.807732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.710636, 31.998726, 26.839025>,  <41.527401, 31.844866, 26.857801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.710636, 31.998726, 26.839025>,  <42.016026, 32.255157, 26.807732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.710636, 31.998726, 26.839025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149504, 0.293282, 0.944264,
		-0.628298, 0.709223, -0.319757,
		-0.763473, -0.641084, 0.078237,
		41.481594, 31.806400, 26.862497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326443, 32.627796, 27.060686>,  <42.016026, 32.255157, 26.807732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326443, 32.627796, 27.060686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.323555, 32.234749, 27.134893>,  <41.321823, 31.998920, 27.179419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.323555, 32.234749, 27.134893>,  <41.326443, 32.627796, 27.060686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.323555, 32.234749, 27.134893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021341, 0.185329, 0.982445,
		-0.999746, 0.011048, 0.019632,
		-0.007216, -0.982614, 0.185518,
		41.321392, 31.939964, 27.190548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777988, 32.563461, 27.458145>,  <41.326443, 32.627796, 27.060686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777988, 32.563461, 27.458145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957127, 32.222431, 27.565882>,  <41.064610, 32.017811, 27.630524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957127, 32.222431, 27.565882>,  <40.777988, 32.563461, 27.458145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957127, 32.222431, 27.565882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033176, 0.285187, 0.957897,
		-0.893495, -0.437927, 0.099435,
		0.447847, -0.852577, 0.269342,
		41.091480, 31.966658, 27.646685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432888, 32.392979, 28.108763>,  <40.777988, 32.563461, 27.458145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432888, 32.392979, 28.108763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761009, 32.164616, 28.122465>,  <40.957882, 32.027599, 28.130688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761009, 32.164616, 28.122465>,  <40.432888, 32.392979, 28.108763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761009, 32.164616, 28.122465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077896, 0.170864, 0.982210,
		-0.566602, -0.803040, 0.184632,
		0.820301, -0.570905, 0.034258,
		41.007099, 31.993343, 28.132742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337078, 31.884712, 28.660625>,  <40.432888, 32.392979, 28.108763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337078, 31.884712, 28.660625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734047, 31.862804, 28.616638>,  <40.972229, 31.849661, 28.590246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734047, 31.862804, 28.616638>,  <40.337078, 31.884712, 28.660625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734047, 31.862804, 28.616638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120669, 0.266502, 0.956251,
		-0.023066, -0.962277, 0.271092,
		0.992425, -0.054769, -0.109970,
		41.031773, 31.846375, 28.583647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552280, 31.379271, 29.161533>,  <40.337078, 31.884712, 28.660625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552280, 31.379271, 29.161533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.873993, 31.604235, 29.084770>,  <41.067020, 31.739214, 29.038712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.873993, 31.604235, 29.084770>,  <40.552280, 31.379271, 29.161533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.873993, 31.604235, 29.084770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231374, 0.001088, 0.972864,
		0.547360, -0.826856, -0.129252,
		0.804278, 0.562413, -0.191908,
		41.115276, 31.772959, 29.027197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184593, 31.026953, 29.553614>,  <40.552280, 31.379271, 29.161533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184593, 31.026953, 29.553614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234035, 31.416435, 29.477076>,  <41.263702, 31.650126, 29.431152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.234035, 31.416435, 29.477076>,  <41.184593, 31.026953, 29.553614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.234035, 31.416435, 29.477076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175546, 0.168327, 0.969974,
		0.976680, -0.153487, -0.150124,
		0.123609, 0.973708, -0.191346,
		41.271118, 31.708548, 29.419672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704098, 31.168633, 29.932030>,  <41.184593, 31.026953, 29.553614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704098, 31.168633, 29.932030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566967, 31.538338, 29.864845>,  <41.484688, 31.760160, 29.824535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.566967, 31.538338, 29.864845>,  <41.704098, 31.168633, 29.932030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.566967, 31.538338, 29.864845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232611, 0.256750, 0.938068,
		0.910144, 0.282525, -0.303014,
		-0.342826, 0.924262, -0.167961,
		41.464119, 31.815617, 29.814457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094223, 31.602346, 30.349800>,  <41.704098, 31.168633, 29.932030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094223, 31.602346, 30.349800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771339, 31.825720, 30.273308>,  <41.577610, 31.959743, 30.227413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771339, 31.825720, 30.273308>,  <42.094223, 31.602346, 30.349800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771339, 31.825720, 30.273308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045083, 0.381353, 0.923330,
		0.588547, 0.736695, -0.333006,
		-0.807205, 0.558435, -0.191231,
		41.529179, 31.993250, 30.215939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.279736, 32.207375, 30.586531>,  <42.094223, 31.602346, 30.349800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.279736, 32.207375, 30.586531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.887741, 32.281719, 30.558043>,  <41.652542, 32.326328, 30.540949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.887741, 32.281719, 30.558043>,  <42.279736, 32.207375, 30.586531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.887741, 32.281719, 30.558043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019808, 0.447106, 0.894262,
		0.198056, 0.874957, -0.441841,
		-0.979991, 0.185866, -0.071221,
		41.593742, 32.337479, 30.536676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195755, 32.888298, 30.884207>,  <42.279736, 32.207375, 30.586531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.195755, 32.888298, 30.884207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.828068, 32.730919, 30.890444>,  <41.607456, 32.636494, 30.894186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.828068, 32.730919, 30.890444>,  <42.195755, 32.888298, 30.884207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.828068, 32.730919, 30.890444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106777, 0.287195, 0.951902,
		-0.379000, 0.873338, -0.306005,
		-0.919216, -0.393445, 0.015594,
		41.552303, 32.612885, 30.895123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629429, 33.469524, 31.141943>,  <42.195755, 32.888298, 30.884207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629429, 33.469524, 31.141943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517200, 33.098240, 31.239681>,  <41.449863, 32.875469, 31.298325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517200, 33.098240, 31.239681>,  <41.629429, 33.469524, 31.141943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517200, 33.098240, 31.239681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097835, 0.280903, 0.954737,
		-0.954834, 0.243966, -0.169625,
		-0.280572, -0.928210, 0.244347,
		41.433029, 32.819778, 31.312984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083714, 33.479637, 31.582848>,  <41.629429, 33.469524, 31.141943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083714, 33.479637, 31.582848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217598, 33.113388, 31.671942>,  <41.297928, 32.893639, 31.725397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217598, 33.113388, 31.671942>,  <41.083714, 33.479637, 31.582848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217598, 33.113388, 31.671942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199022, 0.162346, 0.966454,
		-0.921064, -0.367812, -0.127889,
		0.334712, -0.915619, 0.222733,
		41.318012, 32.838703, 31.738762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622402, 33.206230, 32.121037>,  <41.083714, 33.479637, 31.582848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622402, 33.206230, 32.121037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926514, 32.949509, 32.161156>,  <41.108982, 32.795475, 32.185226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926514, 32.949509, 32.161156>,  <40.622402, 33.206230, 32.121037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926514, 32.949509, 32.161156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027963, 0.121929, 0.992145,
		-0.648991, -0.757115, 0.074754,
		0.760282, -0.641803, 0.100302,
		41.154598, 32.756969, 32.191246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457390, 32.725994, 32.659309>,  <40.622402, 33.206230, 32.121037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457390, 32.725994, 32.659309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.853451, 32.703068, 32.608227>,  <41.091087, 32.689312, 32.577576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.853451, 32.703068, 32.608227>,  <40.457390, 32.725994, 32.659309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853451, 32.703068, 32.608227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134196, 0.129185, 0.982498,
		-0.039817, -0.989963, 0.135605,
		0.990154, -0.057318, -0.127705,
		41.150497, 32.685871, 32.569916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772301, 32.402138, 33.269215>,  <40.457390, 32.725994, 32.659309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772301, 32.402138, 33.269215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.104488, 32.588699, 33.147369>,  <41.303802, 32.700638, 33.074265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.104488, 32.588699, 33.147369>,  <40.772301, 32.402138, 33.269215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104488, 32.588699, 33.147369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347555, -0.006474, 0.937637,
		0.435345, -0.884548, -0.167477,
		0.830469, 0.466403, -0.304611,
		41.353630, 32.728619, 33.055984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388786, 32.029831, 33.466530>,  <40.772301, 32.402138, 33.269215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.388786, 32.029831, 33.466530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518665, 32.398823, 33.383003>,  <41.596592, 32.620216, 33.332890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518665, 32.398823, 33.383003>,  <41.388786, 32.029831, 33.466530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.518665, 32.398823, 33.383003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546164, -0.002625, 0.837674,
		0.772189, -0.386036, -0.504678,
		0.324697, 0.922480, -0.208812,
		41.616074, 32.675568, 33.320358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.999249, 31.949247, 33.599499>,  <41.388786, 32.029831, 33.466530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.999249, 31.949247, 33.599499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958755, 32.347122, 33.606964>,  <41.934460, 32.585846, 33.611443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958755, 32.347122, 33.606964>,  <41.999249, 31.949247, 33.599499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958755, 32.347122, 33.606964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367340, 0.019934, 0.929873,
		0.924562, 0.100987, -0.367406,
		-0.101229, 0.994688, 0.018666,
		41.928387, 32.645527, 33.612564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.466064, 32.175850, 34.157642>,  <41.999249, 31.949247, 33.599499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.466064, 32.175850, 34.157642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.248169, 32.510124, 34.129696>,  <42.117432, 32.710690, 34.112926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.248169, 32.510124, 34.129696>,  <42.466064, 32.175850, 34.157642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.248169, 32.510124, 34.129696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163490, 0.187543, 0.968555,
		0.822514, 0.516188, -0.238789,
		-0.544740, 0.835690, -0.069865,
		42.084747, 32.760830, 34.108738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883224, 32.724426, 34.393360>,  <42.466064, 32.175850, 34.157642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883224, 32.724426, 34.393360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498951, 32.818127, 34.452972>,  <42.268387, 32.874348, 34.488739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.498951, 32.818127, 34.452972>,  <42.883224, 32.724426, 34.393360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498951, 32.818127, 34.452972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203205, 0.227505, 0.952339,
		0.189178, 0.945183, -0.266161,
		-0.960687, 0.234246, 0.149027,
		42.210743, 32.888401, 34.497681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.960655, 33.291416, 34.845024>,  <42.883224, 32.724426, 34.393360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.960655, 33.291416, 34.845024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586086, 33.165302, 34.906624>,  <42.361347, 33.089634, 34.943584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.586086, 33.165302, 34.906624>,  <42.960655, 33.291416, 34.845024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.586086, 33.165302, 34.906624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110230, 0.152329, 0.982163,
		-0.333117, 0.936692, -0.107890,
		-0.936420, -0.315283, 0.153995,
		42.305161, 33.070717, 34.952824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782196, 33.648266, 35.451946>,  <42.960655, 33.291416, 34.845024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.782196, 33.648266, 35.451946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.482319, 33.386662, 35.411484>,  <42.302395, 33.229698, 35.387207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.482319, 33.386662, 35.411484>,  <42.782196, 33.648266, 35.451946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.482319, 33.386662, 35.411484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094456, -0.045538, 0.994487,
		-0.655015, 0.755111, -0.027636,
		-0.749689, -0.654014, -0.101153,
		42.257412, 33.190456, 35.381138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.270737, 33.884476, 35.917625>,  <42.782196, 33.648266, 35.451946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.270737, 33.884476, 35.917625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.174847, 33.505310, 35.833721>,  <42.117313, 33.277813, 35.783379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.174847, 33.505310, 35.833721>,  <42.270737, 33.884476, 35.917625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.174847, 33.505310, 35.833721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274908, -0.140945, 0.951084,
		-0.931107, 0.285661, -0.226800,
		-0.239721, -0.947909, -0.209765,
		42.102932, 33.220936, 35.770790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.557755, 33.712780, 36.314503>,  <42.270737, 33.884476, 35.917625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.557755, 33.712780, 36.314503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.756435, 33.376598, 36.227848>,  <41.875645, 33.174889, 36.175858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.756435, 33.376598, 36.227848>,  <41.557755, 33.712780, 36.314503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.756435, 33.376598, 36.227848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102950, -0.304891, 0.946807,
		-0.861794, -0.447977, -0.237964,
		0.496701, -0.840451, -0.216634,
		41.905445, 33.124462, 36.162857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142326, 33.164738, 36.508530>,  <41.557755, 33.712780, 36.314503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142326, 33.164738, 36.508530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506321, 33.003788, 36.468494>,  <41.724716, 32.907219, 36.444473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506321, 33.003788, 36.468494>,  <41.142326, 33.164738, 36.508530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506321, 33.003788, 36.468494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128184, -0.502569, 0.854981,
		-0.394324, -0.765193, -0.508910,
		0.909988, -0.402374, -0.100089,
		41.779316, 32.883076, 36.438469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081673, 32.431023, 36.564934>,  <41.142326, 33.164738, 36.508530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081673, 32.431023, 36.564934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.458973, 32.528015, 36.655685>,  <41.685352, 32.586212, 36.710136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.458973, 32.528015, 36.655685>,  <41.081673, 32.431023, 36.564934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.458973, 32.528015, 36.655685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123567, -0.377852, 0.917584,
		0.308224, -0.893549, -0.326447,
		0.943255, 0.242483, 0.226876,
		41.741951, 32.600761, 36.723747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262276, 31.816814, 36.901279>,  <41.081673, 32.431023, 36.564934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.262276, 31.816814, 36.901279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526600, 32.101433, 36.996811>,  <41.685192, 32.272202, 37.054131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.526600, 32.101433, 36.996811>,  <41.262276, 31.816814, 36.901279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.526600, 32.101433, 36.996811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025490, -0.339295, 0.940334,
		0.750123, -0.615292, -0.242346,
		0.660807, 0.711544, 0.238829,
		41.724842, 32.314896, 37.068459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763058, 31.381336, 37.233009>,  <41.262276, 31.816814, 36.901279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763058, 31.381336, 37.233009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812431, 31.766731, 37.328049>,  <41.842056, 31.997969, 37.385071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.812431, 31.766731, 37.328049>,  <41.763058, 31.381336, 37.233009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.812431, 31.766731, 37.328049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249260, -0.261852, 0.932364,
		0.960538, -0.055866, -0.272482,
		0.123437, 0.963490, 0.237594,
		41.849464, 32.055779, 37.399326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498947, 31.379675, 37.689831>,  <41.763058, 31.381336, 37.233009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498947, 31.379675, 37.689831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268574, 31.697525, 37.766636>,  <42.130348, 31.888235, 37.812717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268574, 31.697525, 37.766636>,  <42.498947, 31.379675, 37.689831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.268574, 31.697525, 37.766636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036349, -0.259538, 0.965048,
		0.816685, 0.548828, 0.178361,
		-0.575937, 0.794624, 0.192011,
		42.095791, 31.935913, 37.824238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.907234, 31.727703, 38.174427>,  <42.498947, 31.379675, 37.689831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.907234, 31.727703, 38.174427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.543404, 31.893661, 38.183670>,  <42.325104, 31.993237, 38.189217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.543404, 31.893661, 38.183670>,  <42.907234, 31.727703, 38.174427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.543404, 31.893661, 38.183670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023663, -0.003794, 0.999713,
		0.414865, 0.909861, -0.006366,
		-0.909575, 0.414896, 0.023104,
		42.270531, 32.018131, 38.190601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.990959, 32.225681, 38.635429>,  <42.907234, 31.727703, 38.174427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.990959, 32.225681, 38.635429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.605019, 32.120590, 38.638016>,  <42.373455, 32.057533, 38.639568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.605019, 32.120590, 38.638016>,  <42.990959, 32.225681, 38.635429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.605019, 32.120590, 38.638016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067376, -0.223494, 0.972374,
		-0.254027, 0.938629, 0.233339,
		-0.964848, -0.262730, 0.006468,
		42.315563, 32.041771, 38.639957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.006168, 31.913702, 39.377754>,  <42.990959, 32.225681, 38.635429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.006168, 31.913702, 39.377754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155006, 32.279888, 39.439026>,  <43.244308, 32.499599, 39.475788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.155006, 32.279888, 39.439026>,  <43.006168, 31.913702, 39.377754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.155006, 32.279888, 39.439026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486065, -0.332778, 0.808084,
		0.790749, -0.226229, -0.568802,
		0.372097, 0.915466, 0.153182,
		43.266636, 32.554527, 39.484982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.776154, 31.965734, 39.549984>,  <43.006168, 31.913702, 39.377754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.776154, 31.965734, 39.549984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657536, 32.317963, 39.697853>,  <43.586365, 32.529301, 39.786575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657536, 32.317963, 39.697853>,  <43.776154, 31.965734, 39.549984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.657536, 32.317963, 39.697853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611804, -0.122062, 0.781535,
		0.733319, 0.457928, -0.502539,
		-0.296546, 0.880569, 0.369673,
		43.568573, 32.582134, 39.808754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.304115, 32.290283, 39.878620>,  <43.776154, 31.965734, 39.549984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.304115, 32.290283, 39.878620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.007607, 32.510098, 40.032780>,  <43.829700, 32.641987, 40.125275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.007607, 32.510098, 40.032780>,  <44.304115, 32.290283, 39.878620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.007607, 32.510098, 40.032780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453391, -0.013442, 0.891210,
		0.494933, 0.835361, -0.239191,
		-0.741268, 0.549537, 0.385398,
		43.785225, 32.674957, 40.148399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.620686, 32.935669, 40.086025>,  <44.304115, 32.290283, 39.878620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.620686, 32.935669, 40.086025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.269711, 32.886433, 40.271477>,  <44.059124, 32.856892, 40.382748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.269711, 32.886433, 40.271477>,  <44.620686, 32.935669, 40.086025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.269711, 32.886433, 40.271477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448688, 0.131219, 0.884003,
		-0.169647, 0.983682, -0.059908,
		-0.877439, -0.123089, 0.463627,
		44.006477, 32.849506, 40.410564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.696354, 33.482521, 40.615761>,  <44.620686, 32.935669, 40.086025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.696354, 33.482521, 40.615761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.412655, 33.230099, 40.741447>,  <44.242435, 33.078644, 40.816860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.412655, 33.230099, 40.741447>,  <44.696354, 33.482521, 40.615761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.412655, 33.230099, 40.741447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483679, -0.111351, 0.868134,
		-0.512853, 0.767704, 0.384204,
		-0.709251, -0.631056, 0.314215,
		44.199879, 33.040783, 40.835712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.351307, 33.665733, 41.355244>,  <44.696354, 33.482521, 40.615761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.351307, 33.665733, 41.355244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.246342, 33.283184, 41.303867>,  <44.183365, 33.053654, 41.273041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.246342, 33.283184, 41.303867>,  <44.351307, 33.665733, 41.355244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.246342, 33.283184, 41.303867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286381, -0.204293, 0.936082,
		-0.921480, 0.208856, 0.327495,
		-0.262411, -0.956370, -0.128440,
		44.167618, 32.996273, 41.265335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.201824, 33.495762, 41.991837>,  <44.351307, 33.665733, 41.355244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.201824, 33.495762, 41.991837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.254360, 33.145527, 41.805893>,  <44.285881, 32.935387, 41.694328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.254360, 33.145527, 41.805893>,  <44.201824, 33.495762, 41.991837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.254360, 33.145527, 41.805893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340352, -0.400587, 0.850700,
		-0.931080, -0.269942, 0.245398,
		0.131336, -0.875592, -0.464854,
		44.293762, 32.882851, 41.666435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.002323, 32.912556, 42.540340>,  <44.201824, 33.495762, 41.991837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.002323, 32.912556, 42.540340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.206600, 32.719864, 42.255489>,  <44.329166, 32.604248, 42.084579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.206600, 32.719864, 42.255489>,  <44.002323, 32.912556, 42.540340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.206600, 32.719864, 42.255489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344784, -0.644020, 0.682907,
		-0.787602, -0.594288, -0.162805,
		0.510693, -0.481727, -0.712132,
		44.359810, 32.575344, 42.041851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.895332, 32.163094, 42.648586>,  <44.002323, 32.912556, 42.540340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.895332, 32.163094, 42.648586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.235916, 32.220608, 42.446857>,  <44.440266, 32.255116, 42.325821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.235916, 32.220608, 42.446857>,  <43.895332, 32.163094, 42.648586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.235916, 32.220608, 42.446857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491983, -0.551991, 0.673245,
		-0.181580, -0.821360, -0.540738,
		0.851459, 0.143785, -0.504325,
		44.491352, 32.263744, 42.295559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.155643, 31.426672, 42.360878>,  <43.895332, 32.163094, 42.648586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.155643, 31.426672, 42.360878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.453232, 31.689667, 42.408577>,  <44.631783, 31.847464, 42.437195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.453232, 31.689667, 42.408577>,  <44.155643, 31.426672, 42.360878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.453232, 31.689667, 42.408577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450903, -0.625664, 0.636577,
		0.493151, -0.419824, -0.761938,
		0.743968, 0.657489, 0.119247,
		44.676422, 31.886913, 42.444351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.649357, 31.060577, 42.398815>,  <44.155643, 31.426672, 42.360878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.649357, 31.060577, 42.398815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.806923, 31.390093, 42.561886>,  <44.901463, 31.587801, 42.659729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.806923, 31.390093, 42.561886>,  <44.649357, 31.060577, 42.398815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.806923, 31.390093, 42.561886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482342, -0.562833, 0.671242,
		0.782415, -0.067774, -0.619058,
		0.393919, 0.823788, 0.407679,
		44.925098, 31.637230, 42.684189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.341747, 30.960485, 42.465084>,  <44.649357, 31.060577, 42.398815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.341747, 30.960485, 42.465084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.261139, 31.229452, 42.749969>,  <45.212776, 31.390833, 42.920898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.261139, 31.229452, 42.749969>,  <45.341747, 30.960485, 42.465084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.261139, 31.229452, 42.749969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368392, -0.621707, 0.691208,
		0.907567, 0.401664, -0.122428,
		-0.201519, 0.672419, 0.712210,
		45.200684, 31.431177, 42.963631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.940872, 31.169212, 42.866158>,  <45.341747, 30.960485, 42.465084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.940872, 31.169212, 42.866158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.642620, 31.267441, 43.113945>,  <45.463669, 31.326378, 43.262615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.642620, 31.267441, 43.113945>,  <45.940872, 31.169212, 42.866158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.642620, 31.267441, 43.113945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546346, -0.306936, 0.779292,
		0.381508, 0.919503, 0.094692,
		-0.745626, 0.245571, 0.619465,
		45.418934, 31.341112, 43.299786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.182384, 31.669071, 43.349651>,  <45.940872, 31.169212, 42.866158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.182384, 31.669071, 43.349651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.879665, 31.467758, 43.516487>,  <45.698032, 31.346970, 43.616589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.879665, 31.467758, 43.516487>,  <46.182384, 31.669071, 43.349651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.879665, 31.467758, 43.516487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570754, -0.197808, 0.796939,
		-0.318581, 0.841177, 0.436951,
		-0.756800, -0.503282, 0.417087,
		45.652626, 31.316774, 43.641613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.968391, 32.011688, 43.968735>,  <46.182384, 31.669071, 43.349651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.968391, 32.011688, 43.968735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.870205, 31.624542, 43.990562>,  <45.811291, 31.392254, 44.003658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.870205, 31.624542, 43.990562>,  <45.968391, 32.011688, 43.968735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.870205, 31.624542, 43.990562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541261, -0.090135, 0.836009,
		-0.804227, 0.234752, 0.545995,
		-0.245469, -0.967867, 0.054573,
		45.796566, 31.334183, 44.006935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.245953, 31.928450, 44.649719>,  <45.968391, 32.011688, 43.968735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.245953, 31.928450, 44.649719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.093380, 31.576206, 44.537262>,  <46.001839, 31.364861, 44.469788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.093380, 31.576206, 44.537262>,  <46.245953, 31.928450, 44.649719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.093380, 31.576206, 44.537262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321988, -0.411656, 0.852562,
		-0.866508, 0.234666, 0.440563,
		-0.381428, -0.880608, -0.281144,
		45.978951, 31.312023, 44.452919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.799755, 31.684414, 45.136803>,  <46.245953, 31.928450, 44.649719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.799755, 31.684414, 45.136803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.875057, 31.327454, 44.972763>,  <45.920238, 31.113277, 44.874340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.875057, 31.327454, 44.972763>,  <45.799755, 31.684414, 45.136803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.875057, 31.327454, 44.972763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252954, -0.359421, 0.898238,
		-0.948985, -0.272838, 0.158072,
		0.188259, -0.892399, -0.410101,
		45.931534, 31.059734, 44.849731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.463085, 31.134850, 45.660709>,  <45.799755, 31.684414, 45.136803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.463085, 31.134850, 45.660709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.726574, 30.941645, 45.429962>,  <45.884666, 30.825722, 45.291512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.726574, 30.941645, 45.429962>,  <45.463085, 31.134850, 45.660709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.726574, 30.941645, 45.429962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316619, -0.517571, 0.794904,
		-0.682520, -0.706272, -0.188006,
		0.658725, -0.483012, -0.576871,
		45.924191, 30.796741, 45.256901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.420330, 30.499887, 45.815907>,  <45.463085, 31.134850, 45.660709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.420330, 30.499887, 45.815907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.793644, 30.538507, 45.677544>,  <46.017632, 30.561680, 45.594524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.793644, 30.538507, 45.677544>,  <45.420330, 30.499887, 45.815907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.793644, 30.538507, 45.677544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334108, -0.586674, 0.737689,
		-0.131714, -0.804047, -0.579793,
		0.933286, 0.096550, -0.345912,
		46.073631, 30.567472, 45.573769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.674770, 29.768719, 45.628654>,  <45.420330, 30.499887, 45.815907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.674770, 29.768719, 45.628654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.922718, 30.054537, 45.758385>,  <46.071487, 30.226027, 45.836224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.922718, 30.054537, 45.758385>,  <45.674770, 29.768719, 45.628654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.922718, 30.054537, 45.758385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188864, -0.537012, 0.822161,
		0.761637, -0.448381, -0.467829,
		0.619871, 0.714544, 0.324325,
		46.108681, 30.268900, 45.855682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.213593, 29.415031, 46.009834>,  <45.674770, 29.768719, 45.628654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.213593, 29.415031, 46.009834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.190365, 29.795721, 46.130402>,  <46.176430, 30.024134, 46.202740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.190365, 29.795721, 46.130402>,  <46.213593, 29.415031, 46.009834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.190365, 29.795721, 46.130402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331935, -0.266340, 0.904921,
		0.941513, 0.152600, -0.300444,
		-0.058071, 0.951723, 0.301416,
		46.172943, 30.081238, 46.220825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.528885, 29.255432, 46.685059>,  <46.213593, 29.415031, 46.009834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.528885, 29.255432, 46.685059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.782890, 29.430841, 46.939445>,  <46.935295, 29.536087, 47.092079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.782890, 29.430841, 46.939445>,  <46.528885, 29.255432, 46.685059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.782890, 29.430841, 46.939445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266741, 0.648152, -0.713266,
		-0.724987, 0.622573, 0.294614,
		0.635015, 0.438522, 0.635967,
		46.973396, 29.562399, 47.130238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.142963, 29.855785, 46.961174>,  <46.528885, 29.255432, 46.685059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.142963, 29.855785, 46.961174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.521111, 29.792290, 46.847267>,  <46.747997, 29.754192, 46.778923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.521111, 29.792290, 46.847267>,  <46.142963, 29.855785, 46.961174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.521111, 29.792290, 46.847267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113883, 0.657647, -0.744668,
		0.305480, 0.736412, 0.603638,
		0.945364, -0.158737, -0.284763,
		46.804718, 29.744669, 46.761837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.569160, 30.535311, 46.814777>,  <46.142963, 29.855785, 46.961174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.569160, 30.535311, 46.814777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.713799, 30.219568, 46.616318>,  <46.800579, 30.030123, 46.497242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.713799, 30.219568, 46.616318>,  <46.569160, 30.535311, 46.814777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.713799, 30.219568, 46.616318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065871, 0.509199, -0.858124,
		0.930007, 0.342973, 0.132126,
		0.361592, -0.789358, -0.496151,
		46.822277, 29.982761, 46.467472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.161274, 30.769045, 46.456390>,  <46.569160, 30.535311, 46.814777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.161274, 30.769045, 46.456390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.976135, 30.457577, 46.286949>,  <46.865051, 30.270697, 46.185284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.976135, 30.457577, 46.286949>,  <47.161274, 30.769045, 46.456390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.976135, 30.457577, 46.286949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155881, 0.541927, -0.825843,
		0.872624, -0.316208, -0.372210,
		-0.462848, -0.778671, -0.423607,
		46.837280, 30.223976, 46.159866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.264973, 30.855618, 45.676727>,  <47.161274, 30.769045, 46.456390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.264973, 30.855618, 45.676727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.975819, 30.579334, 45.669167>,  <46.802326, 30.413565, 45.664631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.975819, 30.579334, 45.669167>,  <47.264973, 30.855618, 45.676727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.975819, 30.579334, 45.669167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342755, 0.382211, -0.858157,
		0.599961, -0.613871, -0.513039,
		-0.722887, -0.690708, -0.018904,
		46.758953, 30.372122, 45.663494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.262508, 30.500298, 45.036331>,  <47.264973, 30.855618, 45.676727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.262508, 30.500298, 45.036331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.892056, 30.493891, 45.187073>,  <46.669785, 30.490046, 45.277515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.892056, 30.493891, 45.187073>,  <47.262508, 30.500298, 45.036331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.892056, 30.493891, 45.187073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355280, 0.372615, -0.857283,
		-0.126688, -0.927848, -0.350783,
		-0.926135, -0.016019, 0.376851,
		46.614216, 30.489084, 45.300129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.889111, 30.297848, 44.451729>,  <47.262508, 30.500298, 45.036331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.889111, 30.297848, 44.451729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.601505, 30.433943, 44.694138>,  <46.428944, 30.515600, 44.839581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.601505, 30.433943, 44.694138>,  <46.889111, 30.297848, 44.451729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.601505, 30.433943, 44.694138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576254, 0.195602, -0.793518,
		-0.388523, -0.919771, 0.055423,
		-0.719014, 0.340238, 0.606018,
		46.385799, 30.536015, 44.875942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.296780, 30.010380, 44.276245>,  <46.889111, 30.297848, 44.451729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.296780, 30.010380, 44.276245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.187374, 30.349215, 44.458515>,  <46.121731, 30.552515, 44.567875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.187374, 30.349215, 44.458515>,  <46.296780, 30.010380, 44.276245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.187374, 30.349215, 44.458515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591436, 0.225489, -0.774182,
		-0.758548, -0.481248, 0.439324,
		-0.273511, 0.847086, 0.455672,
		46.105320, 30.603340, 44.595219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.784901, 30.127010, 43.874966>,  <46.296780, 30.010380, 44.276245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.784901, 30.127010, 43.874966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.812775, 30.442865, 44.118809>,  <45.829498, 30.632378, 44.265114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.812775, 30.442865, 44.118809>,  <45.784901, 30.127010, 43.874966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.812775, 30.442865, 44.118809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690881, 0.479016, -0.541504,
		-0.719602, -0.383431, 0.578924,
		0.069684, 0.789635, 0.609607,
		45.833679, 30.679756, 44.301689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.091877, 30.259083, 44.043167>,  <45.784901, 30.127010, 43.874966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.091877, 30.259083, 44.043167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.339622, 30.572775, 44.057949>,  <45.488270, 30.760990, 44.066818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.339622, 30.572775, 44.057949>,  <45.091877, 30.259083, 44.043167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.339622, 30.572775, 44.057949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589842, 0.495877, -0.637332,
		-0.518143, 0.372942, 0.769702,
		0.619366, 0.784232, 0.036959,
		45.525433, 30.808044, 44.069038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.613297, 30.886536, 44.297184>,  <45.091877, 30.259083, 44.043167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.613297, 30.886536, 44.297184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.940460, 30.969275, 44.082432>,  <45.136757, 31.018917, 43.953579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.940460, 30.969275, 44.082432>,  <44.613297, 30.886536, 44.297184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.940460, 30.969275, 44.082432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575346, 0.290247, -0.764678,
		-0.002343, 0.934329, 0.356404,
		0.817907, 0.206847, -0.536883,
		45.185833, 31.031328, 43.921368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.696499, 31.641798, 44.142475>,  <44.613297, 30.886536, 44.297184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.696499, 31.641798, 44.142475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.868492, 31.411287, 43.864475>,  <44.971687, 31.272982, 43.697678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.868492, 31.411287, 43.864475>,  <44.696499, 31.641798, 44.142475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.868492, 31.411287, 43.864475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661947, 0.322254, -0.676741,
		0.613956, 0.751037, -0.242901,
		0.429981, -0.576277, -0.694997,
		44.997486, 31.238403, 43.655975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.416378, 32.019173, 43.569710>,  <44.696499, 31.641798, 44.142475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.416378, 32.019173, 43.569710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.809395, 31.946842, 43.552166>,  <45.045204, 31.903444, 43.541641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.809395, 31.946842, 43.552166>,  <44.416378, 32.019173, 43.569710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.809395, 31.946842, 43.552166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002164, 0.246808, -0.969062,
		0.186052, 0.952045, 0.242890,
		0.982537, -0.180822, -0.043860,
		45.104156, 31.892595, 43.539009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.800682, 32.639236, 43.354103>,  <44.416378, 32.019173, 43.569710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.800682, 32.639236, 43.354103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.012840, 32.310741, 43.269955>,  <45.140133, 32.113644, 43.219467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.012840, 32.310741, 43.269955>,  <44.800682, 32.639236, 43.354103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.012840, 32.310741, 43.269955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099298, 0.306626, -0.946636,
		0.841917, 0.481199, 0.244179,
		0.530392, -0.821236, -0.210371,
		45.171959, 32.064369, 43.206844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.424450, 32.846256, 43.012329>,  <44.800682, 32.639236, 43.354103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.424450, 32.846256, 43.012329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.315807, 32.471241, 42.925373>,  <45.250622, 32.246231, 42.873199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.315807, 32.471241, 42.925373>,  <45.424450, 32.846256, 43.012329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.315807, 32.471241, 42.925373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242238, 0.285205, -0.927350,
		0.931424, -0.199215, -0.304571,
		-0.271608, -0.937535, -0.217389,
		45.234325, 32.189980, 42.860157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.786350, 32.569302, 42.405773>,  <45.424450, 32.846256, 43.012329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.786350, 32.569302, 42.405773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.428970, 32.392239, 42.436264>,  <45.214542, 32.286003, 42.454559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.428970, 32.392239, 42.436264>,  <45.786350, 32.569302, 42.405773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.428970, 32.392239, 42.436264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215336, 0.273170, -0.937555,
		0.394190, -0.854069, -0.339382,
		-0.893446, -0.442656, 0.076231,
		45.160938, 32.259441, 42.459133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.632786, 32.289841, 41.737930>,  <45.786350, 32.569302, 42.405773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.632786, 32.289841, 41.737930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273918, 32.263866, 41.912689>,  <45.058598, 32.248283, 42.017544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273918, 32.263866, 41.912689>,  <45.632786, 32.289841, 41.737930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.273918, 32.263866, 41.912689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440783, 0.195061, -0.876163,
		-0.028328, -0.978639, -0.203624,
		-0.897166, -0.064934, 0.436894,
		45.004768, 32.244385, 42.043758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.265125, 31.986122, 41.273979>,  <45.632786, 32.289841, 41.737930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.265125, 31.986122, 41.273979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.985989, 32.167282, 41.495934>,  <44.818508, 32.275978, 41.629105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.985989, 32.167282, 41.495934>,  <45.265125, 31.986122, 41.273979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.985989, 32.167282, 41.495934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541585, 0.173325, -0.822584,
		-0.468723, -0.874552, 0.124329,
		-0.697843, 0.452899, 0.554886,
		44.776634, 32.303150, 41.662399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.636250, 31.752983, 41.070393>,  <45.265125, 31.986122, 41.273979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.636250, 31.752983, 41.070393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.529495, 32.091145, 41.255459>,  <44.465443, 32.294041, 41.366501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.529495, 32.091145, 41.255459>,  <44.636250, 31.752983, 41.070393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.529495, 32.091145, 41.255459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632463, 0.208590, -0.745977,
		-0.727160, -0.491712, 0.479017,
		-0.266887, 0.845405, 0.462668,
		44.449429, 32.344765, 41.394260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.940685, 31.839607, 40.969128>,  <44.636250, 31.752983, 41.070393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.940685, 31.839607, 40.969128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.042416, 32.200768, 41.107742>,  <44.103455, 32.417465, 41.190910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.042416, 32.200768, 41.107742>,  <43.940685, 31.839607, 40.969128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.042416, 32.200768, 41.107742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675569, 0.422263, -0.604401,
		-0.692044, -0.080396, 0.717364,
		0.254325, 0.902901, 0.346538,
		44.118713, 32.471638, 41.211704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.303062, 32.139484, 41.193611>,  <43.940685, 31.839607, 40.969128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.303062, 32.139484, 41.193611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.577934, 32.406170, 41.078182>,  <43.742859, 32.566181, 41.008926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.577934, 32.406170, 41.078182>,  <43.303062, 32.139484, 41.193611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.577934, 32.406170, 41.078182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635231, 0.358687, -0.683977,
		-0.352513, 0.653324, 0.670002,
		0.687179, 0.666717, -0.288570,
		43.784088, 32.606186, 40.991611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.023155, 32.881588, 41.218288>,  <43.303062, 32.139484, 41.193611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.023155, 32.881588, 41.218288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.305698, 32.811253, 40.944023>,  <43.475224, 32.769051, 40.779465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.305698, 32.811253, 40.944023>,  <43.023155, 32.881588, 41.218288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.305698, 32.811253, 40.944023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603362, 0.356954, -0.713119,
		0.370144, 0.917422, 0.146045,
		0.706362, -0.175839, -0.685662,
		43.517609, 32.758499, 40.738323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.834694, 33.351601, 40.637733>,  <43.023155, 32.881588, 41.218288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.834694, 33.351601, 40.637733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.116043, 33.123550, 40.467922>,  <43.284851, 32.986721, 40.366035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.116043, 33.123550, 40.467922>,  <42.834694, 33.351601, 40.637733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.116043, 33.123550, 40.467922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276661, 0.330563, -0.902323,
		0.654772, 0.752118, 0.074777,
		0.703372, -0.570128, -0.424525,
		43.327053, 32.952511, 40.340565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.172058, 33.802765, 40.112465>,  <42.834694, 33.351601, 40.637733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.172058, 33.802765, 40.112465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269512, 33.421864, 40.038868>,  <43.327984, 33.193321, 39.994709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.269512, 33.421864, 40.038868>,  <43.172058, 33.802765, 40.112465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269512, 33.421864, 40.038868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354038, 0.089294, -0.930959,
		0.902938, 0.291956, -0.315379,
		0.243637, -0.952254, -0.183991,
		43.342602, 33.136189, 39.983669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.525921, 33.828869, 39.405987>,  <43.172058, 33.802765, 40.112465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.525921, 33.828869, 39.405987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.423359, 33.445576, 39.456661>,  <43.361820, 33.215599, 39.487064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.423359, 33.445576, 39.456661>,  <43.525921, 33.828869, 39.405987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.423359, 33.445576, 39.456661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331571, -0.035914, -0.942746,
		0.907919, -0.283729, -0.308514,
		-0.256404, -0.958232, 0.126683,
		43.346439, 33.158108, 39.494667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.366653, 33.665215, 38.723957>,  <43.525921, 33.828869, 39.405987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.366653, 33.665215, 38.723957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.263344, 33.338535, 38.930374>,  <43.201359, 33.142529, 39.054226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.263344, 33.338535, 38.930374>,  <43.366653, 33.665215, 38.723957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.263344, 33.338535, 38.930374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344683, -0.421109, -0.838964,
		0.902489, -0.394558, -0.172737,
		-0.258279, -0.816695, 0.516044,
		43.185860, 33.093525, 39.085186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.812950, 33.138531, 38.491302>,  <43.366653, 33.665215, 38.723957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.812950, 33.138531, 38.491302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.474678, 32.969517, 38.621716>,  <43.271717, 32.868111, 38.699963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.474678, 32.969517, 38.621716>,  <43.812950, 33.138531, 38.491302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.474678, 32.969517, 38.621716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109332, -0.460781, -0.880754,
		0.522375, -0.780479, 0.343476,
		-0.845678, -0.422531, 0.326032,
		43.220974, 32.842758, 38.719524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.538593, 33.027512, 38.313519>,  <43.812950, 33.138531, 38.491302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.538593, 33.027512, 38.313519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.550201, 32.665771, 38.143200>,  <44.557167, 32.448727, 38.041008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.550201, 32.665771, 38.143200>,  <44.538593, 33.027512, 38.313519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.550201, 32.665771, 38.143200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489988, 0.384157, -0.782518,
		0.871246, -0.185931, 0.454268,
		0.029016, -0.904352, -0.425799,
		44.558907, 32.394466, 38.015461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.298393, 32.844624, 38.170502>,  <44.538593, 33.027512, 38.313519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.298393, 32.844624, 38.170502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.035198, 32.688854, 37.912693>,  <44.877281, 32.595394, 37.758007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.035198, 32.688854, 37.912693>,  <45.298393, 32.844624, 38.170502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.035198, 32.688854, 37.912693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543213, 0.347296, -0.764399,
		0.521515, -0.853074, -0.016975,
		-0.657984, -0.389424, -0.644520,
		44.837803, 32.572029, 37.719337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.733086, 32.382057, 37.761368>,  <45.298393, 32.844624, 38.170502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.733086, 32.382057, 37.761368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.411686, 32.565128, 37.609093>,  <45.218845, 32.674973, 37.517727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.411686, 32.565128, 37.609093>,  <45.733086, 32.382057, 37.761368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.411686, 32.565128, 37.609093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586802, 0.501168, -0.635999,
		-0.100296, -0.734410, -0.671254,
		-0.803495, 0.457682, -0.380688,
		45.170639, 32.702435, 37.494884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.849537, 33.062557, 37.459354>,  <45.733086, 32.382057, 37.761368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.849537, 33.062557, 37.459354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.165680, 32.942623, 37.245651>,  <46.355366, 32.870663, 37.117432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.165680, 32.942623, 37.245651>,  <45.849537, 33.062557, 37.459354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.165680, 32.942623, 37.245651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280263, 0.598497, -0.750503,
		0.544780, 0.742899, 0.388994,
		0.790359, -0.299838, -0.534256,
		46.402786, 32.852673, 37.085373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.349213, 33.649792, 37.548370>,  <45.849537, 33.062557, 37.459354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.349213, 33.649792, 37.548370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.525517, 33.940121, 37.759621>,  <46.631298, 34.114319, 37.886372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.525517, 33.940121, 37.759621>,  <46.349213, 33.649792, 37.548370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.525517, 33.940121, 37.759621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871397, 0.487173, 0.057701,
		-0.215406, -0.485636, 0.847206,
		0.440758, 0.725824, 0.528121,
		46.657745, 34.157867, 37.918056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.754993, 34.047501, 37.465759>,  <46.349213, 33.649792, 37.548370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.754993, 34.047501, 37.465759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.948956, 34.192616, 37.784069>,  <46.065334, 34.279682, 37.975056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.948956, 34.192616, 37.784069>,  <45.754993, 34.047501, 37.465759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.948956, 34.192616, 37.784069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692442, 0.715065, 0.095953,
		-0.534219, -0.597554, 0.597946,
		0.484907, 0.362783, 0.795772,
		46.094429, 34.301449, 38.022800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.269257, 34.132210, 37.894100>,  <45.754993, 34.047501, 37.465759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.269257, 34.132210, 37.894100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.577778, 34.362694, 38.002224>,  <45.762890, 34.500984, 38.067097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.577778, 34.362694, 38.002224>,  <45.269257, 34.132210, 37.894100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.577778, 34.362694, 38.002224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635277, 0.722928, 0.271659,
		-0.038879, -0.381251, 0.923654,
		0.771305, 0.576214, 0.270306,
		45.809170, 34.535557, 38.083317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.511002, 34.041706, 37.791241>,  <45.269257, 34.132210, 37.894100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.511002, 34.041706, 37.791241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.251629, 34.257076, 37.575970>,  <44.096004, 34.386299, 37.446808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.251629, 34.257076, 37.575970>,  <44.511002, 34.041706, 37.791241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.251629, 34.257076, 37.575970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580096, -0.108334, -0.807312,
		-0.492980, -0.835681, -0.242091,
		-0.648428, 0.538424, -0.538182,
		44.057102, 34.418602, 37.414516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.243423, 33.572582, 37.206627>,  <44.511002, 34.041706, 37.791241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.243423, 33.572582, 37.206627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.230145, 33.958462, 37.102119>,  <44.222176, 34.189987, 37.039413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.230145, 33.958462, 37.102119>,  <44.243423, 33.572582, 37.206627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.230145, 33.958462, 37.102119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734708, -0.153667, -0.660750,
		-0.677571, -0.213893, -0.703667,
		-0.033200, 0.964695, -0.261269,
		44.220184, 34.247871, 37.023739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.338287, 33.755711, 36.471333>,  <44.243423, 33.572582, 37.206627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.338287, 33.755711, 36.471333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.441738, 34.081528, 36.679035>,  <44.503811, 34.277020, 36.803658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.441738, 34.081528, 36.679035>,  <44.338287, 33.755711, 36.471333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.441738, 34.081528, 36.679035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747519, 0.171699, -0.641665,
		-0.611821, 0.554108, -0.564481,
		0.258631, 0.814545, 0.519256,
		44.519329, 34.325890, 36.834812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.968060, 34.238152, 36.602913>,  <44.338287, 33.755711, 36.471333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.968060, 34.238152, 36.602913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.961754, 34.550964, 36.353695>,  <44.957970, 34.738651, 36.204166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.961754, 34.550964, 36.353695>,  <44.968060, 34.238152, 36.602913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.961754, 34.550964, 36.353695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999795, 0.020221, 0.000089,
		0.012668, -0.622913, -0.782189,
		-0.015761, 0.782030, -0.623041,
		44.957024, 34.785572, 36.166782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.358845, 34.066998, 36.005890>,  <44.968060, 34.238152, 36.602913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.358845, 34.066998, 36.005890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.366528, 34.462986, 36.061867>,  <45.371140, 34.700581, 36.095451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.366528, 34.462986, 36.061867>,  <45.358845, 34.066998, 36.005890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.366528, 34.462986, 36.061867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996831, -0.008159, -0.079123,
		-0.077188, 0.141015, -0.986994,
		0.019211, 0.989974, 0.139938,
		45.372292, 34.759979, 36.103848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.775909, 34.367493, 35.458523>,  <45.358845, 34.066998, 36.005890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.775909, 34.367493, 35.458523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.766464, 34.592415, 35.789162>,  <45.760796, 34.727367, 35.987545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.766464, 34.592415, 35.789162>,  <45.775909, 34.367493, 35.458523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.766464, 34.592415, 35.789162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978626, 0.181960, -0.095825,
		-0.204290, 0.806664, -0.554580,
		-0.023613, 0.562302, 0.826595,
		45.759380, 34.761105, 36.037140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.141472, 35.035332, 35.320602>,  <45.775909, 34.367493, 35.458523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.141472, 35.035332, 35.320602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.162243, 34.973522, 35.715252>,  <46.174706, 34.936436, 35.952042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.162243, 34.973522, 35.715252>,  <46.141472, 35.035332, 35.320602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.162243, 34.973522, 35.715252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984634, 0.172869, -0.024747,
		-0.166733, 0.972748, 0.161122,
		0.051925, -0.154520, 0.986624,
		46.177822, 34.927166, 36.011238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.402100, 35.573948, 35.688465>,  <46.141472, 35.035332, 35.320602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.402100, 35.573948, 35.688465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.502518, 35.225239, 35.856743>,  <46.562767, 35.016014, 35.957710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.502518, 35.225239, 35.856743>,  <46.402100, 35.573948, 35.688465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.502518, 35.225239, 35.856743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939544, 0.114888, -0.322580,
		0.232884, 0.476244, 0.847913,
		0.251042, -0.871776, 0.420696,
		46.577831, 34.963707, 35.982952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.015270, 35.636791, 36.217018>,  <46.402100, 35.573948, 35.688465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.015270, 35.636791, 36.217018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.974503, 35.321220, 35.974628>,  <46.950043, 35.131878, 35.829197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.974503, 35.321220, 35.974628>,  <47.015270, 35.636791, 36.217018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.974503, 35.321220, 35.974628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886952, 0.203775, -0.414477,
		0.450475, -0.579711, 0.678975,
		-0.101919, -0.788930, -0.605972,
		46.943928, 35.084541, 35.792835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.554031, 35.229847, 36.190540>,  <47.015270, 35.636791, 36.217018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.554031, 35.229847, 36.190540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.381584, 35.175091, 35.833801>,  <47.278114, 35.142239, 35.619759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.381584, 35.175091, 35.833801>,  <47.554031, 35.229847, 36.190540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.381584, 35.175091, 35.833801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796307, 0.407080, -0.447416,
		0.424302, -0.903077, -0.066494,
		-0.431119, -0.136890, -0.891851,
		47.252247, 35.134026, 35.566246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.018002, 34.903625, 35.679237>,  <47.554031, 35.229847, 36.190540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.018002, 34.903625, 35.679237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.759666, 35.157192, 35.509045>,  <47.604664, 35.309334, 35.406929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.759666, 35.157192, 35.509045>,  <48.018002, 34.903625, 35.679237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.759666, 35.157192, 35.509045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748062, 0.414016, -0.518646,
		-0.152622, -0.653252, -0.741599,
		-0.645840, 0.633919, -0.425485,
		47.565914, 35.347366, 35.381401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.855274, 34.804897, 34.869923>,  <48.018002, 34.903625, 35.679237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.855274, 34.804897, 34.869923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.817253, 35.187653, 34.979702>,  <47.794441, 35.417305, 35.045570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.817253, 35.187653, 34.979702>,  <47.855274, 34.804897, 34.869923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.817253, 35.187653, 34.979702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767414, 0.246044, -0.592063,
		-0.634067, 0.154334, -0.757721,
		-0.095057, 0.956892, 0.274446,
		47.788734, 35.474720, 35.062035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.310390, 29.782375, 30.196800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.934155, 29.916500, 30.175449>,  <36.708412, 29.996975, 30.162640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.934155, 29.916500, 30.175449>,  <37.310390, 29.782375, 30.196800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934155, 29.916500, 30.175449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110368, 0.450608, 0.885873,
		0.321096, 0.827356, -0.460847,
		-0.940594, 0.335313, -0.053375,
		36.651978, 30.017094, 30.159437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313351, 30.564802, 30.412325>,  <37.310390, 29.782375, 30.196800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313351, 30.564802, 30.412325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.949268, 30.402769, 30.446833>,  <36.730820, 30.305550, 30.467537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.949268, 30.402769, 30.446833>,  <37.313351, 30.564802, 30.412325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949268, 30.402769, 30.446833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087897, 0.392481, 0.915550,
		-0.404732, 0.825752, -0.392843,
		-0.910201, -0.405082, 0.086268,
		36.676208, 30.281244, 30.472713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849220, 31.139063, 30.771936>,  <37.313351, 30.564802, 30.412325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849220, 31.139063, 30.771936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.658382, 30.791637, 30.825567>,  <36.543880, 30.583181, 30.857746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.658382, 30.791637, 30.825567>,  <36.849220, 31.139063, 30.771936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658382, 30.791637, 30.825567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272014, 0.291006, 0.917237,
		-0.835695, 0.401140, -0.375100,
		-0.477097, -0.868563, 0.134077,
		36.515255, 30.531069, 30.865789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303883, 31.345182, 31.154625>,  <36.849220, 31.139063, 30.771936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303883, 31.345182, 31.154625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.345119, 30.953100, 31.222237>,  <36.369862, 30.717852, 31.262804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.345119, 30.953100, 31.222237>,  <36.303883, 31.345182, 31.154625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345119, 30.953100, 31.222237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192182, 0.147101, 0.970272,
		-0.975929, -0.132515, -0.173212,
		0.103096, -0.980205, 0.169027,
		36.376049, 30.659039, 31.272945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752247, 31.153370, 31.539331>,  <36.303883, 31.345182, 31.154625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752247, 31.153370, 31.539331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.001480, 30.854107, 31.630566>,  <36.151020, 30.674549, 31.685307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.001480, 30.854107, 31.630566>,  <35.752247, 31.153370, 31.539331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001480, 30.854107, 31.630566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210432, 0.120511, 0.970152,
		-0.753313, -0.652486, -0.082347,
		0.623087, -0.748157, 0.228086,
		36.188408, 30.629660, 31.698992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388325, 30.846540, 32.003998>,  <35.752247, 31.153370, 31.539331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388325, 30.846540, 32.003998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.770058, 30.745937, 32.068481>,  <35.999100, 30.685575, 32.107170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.770058, 30.745937, 32.068481>,  <35.388325, 30.846540, 32.003998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.770058, 30.745937, 32.068481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113535, 0.193798, 0.974450,
		-0.276322, -0.948255, 0.156394,
		0.954335, -0.251506, 0.161211,
		36.056358, 30.670486, 32.116844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383358, 30.576719, 32.743092>,  <35.388325, 30.846540, 32.003998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383358, 30.576719, 32.743092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.779827, 30.585087, 32.690716>,  <36.017708, 30.590107, 32.659290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.779827, 30.585087, 32.690716>,  <35.383358, 30.576719, 32.743092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779827, 30.585087, 32.690716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129055, 0.074692, 0.988821,
		0.030458, -0.996987, 0.071334,
		0.991170, 0.020911, -0.130941,
		36.077179, 30.591362, 32.651432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702560, 30.121685, 33.230965>,  <35.383358, 30.576719, 32.743092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702560, 30.121685, 33.230965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.982868, 30.392344, 33.140564>,  <36.151051, 30.554739, 33.086323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.982868, 30.392344, 33.140564>,  <35.702560, 30.121685, 33.230965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982868, 30.392344, 33.140564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176048, 0.142970, 0.973944,
		0.691329, -0.722292, -0.018935,
		0.700765, 0.676649, -0.225997,
		36.193096, 30.595339, 33.072765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278656, 30.032042, 33.654285>,  <35.702560, 30.121685, 33.230965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278656, 30.032042, 33.654285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.287735, 30.419846, 33.556690>,  <36.293182, 30.652529, 33.498131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.287735, 30.419846, 33.556690>,  <36.278656, 30.032042, 33.654285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287735, 30.419846, 33.556690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308784, 0.225322, 0.924058,
		0.950861, -0.096317, -0.294255,
		0.022700, 0.969512, -0.243991,
		36.294544, 30.710699, 33.483494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928783, 30.329863, 33.967999>,  <36.278656, 30.032042, 33.654285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928783, 30.329863, 33.967999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.706326, 30.647396, 33.869587>,  <36.572849, 30.837917, 33.810539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.706326, 30.647396, 33.869587>,  <36.928783, 30.329863, 33.967999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706326, 30.647396, 33.869587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278876, 0.457120, 0.844553,
		0.782900, 0.401081, -0.475606,
		-0.556144, 0.793835, -0.246028,
		36.539482, 30.885548, 33.795780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382778, 30.909815, 34.219353>,  <36.928783, 30.329863, 33.967999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382778, 30.909815, 34.219353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.012924, 31.058809, 34.187588>,  <36.791012, 31.148205, 34.168530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.012924, 31.058809, 34.187588>,  <37.382778, 30.909815, 34.219353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012924, 31.058809, 34.187588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088572, 0.413108, 0.906364,
		0.370413, 0.831022, -0.414966,
		-0.924634, 0.372484, -0.079415,
		36.735535, 31.170555, 34.163765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409077, 31.694479, 34.183678>,  <37.382778, 30.909815, 34.219353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409077, 31.694479, 34.183678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.058411, 31.579971, 34.338341>,  <36.848011, 31.511267, 34.431141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.058411, 31.579971, 34.338341>,  <37.409077, 31.694479, 34.183678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.058411, 31.579971, 34.338341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105162, 0.670244, 0.734652,
		-0.469465, 0.684707, -0.557476,
		-0.876666, -0.286268, 0.386661,
		36.795410, 31.494091, 34.454338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184437, 32.304104, 34.553303>,  <37.409077, 31.694479, 34.183678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184437, 32.304104, 34.553303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.925430, 32.029259, 34.685120>,  <36.770027, 31.864351, 34.764210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.925430, 32.029259, 34.685120>,  <37.184437, 32.304104, 34.553303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925430, 32.029259, 34.685120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037811, 0.402940, 0.914445,
		-0.761113, 0.604579, -0.234930,
		-0.647517, -0.687113, 0.329543,
		36.731174, 31.823126, 34.783981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674332, 32.686924, 35.020664>,  <37.184437, 32.304104, 34.553303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674332, 32.686924, 35.020664> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.686378, 32.298668, 35.116119>,  <36.693607, 32.065712, 35.173393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.686378, 32.298668, 35.116119>,  <36.674332, 32.686924, 35.020664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686378, 32.298668, 35.116119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059384, 0.240058, 0.968940,
		-0.997781, -0.015008, 0.064870,
		0.030115, -0.970642, 0.238634,
		36.695412, 32.007477, 35.187710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333241, 32.747749, 35.573151>,  <36.674332, 32.686924, 35.020664>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333241, 32.747749, 35.573151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.484303, 32.378765, 35.605255>,  <36.574940, 32.157375, 35.624516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.484303, 32.378765, 35.605255>,  <36.333241, 32.747749, 35.573151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484303, 32.378765, 35.605255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013329, 0.092083, 0.995662,
		-0.925849, -0.374951, 0.047071,
		0.377659, -0.922460, 0.080257,
		36.597599, 32.102028, 35.629333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967052, 32.305603, 36.064587>,  <36.333241, 32.747749, 35.573151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967052, 32.305603, 36.064587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.339745, 32.161198, 36.048870>,  <36.563362, 32.074554, 36.039440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.339745, 32.161198, 36.048870>,  <35.967052, 32.305603, 36.064587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339745, 32.161198, 36.048870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023939, -0.046896, 0.998613,
		-0.362356, -0.931381, -0.035052,
		0.931732, -0.361014, -0.039289,
		36.619263, 32.052895, 36.037083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999432, 31.707136, 36.568344>,  <35.967052, 32.305603, 36.064587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999432, 31.707136, 36.568344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.374657, 31.830490, 36.505177>,  <36.599792, 31.904503, 36.467274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.374657, 31.830490, 36.505177>,  <35.999432, 31.707136, 36.568344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374657, 31.830490, 36.505177> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171235, -0.016409, 0.985093,
		0.301195, -0.951121, -0.068198,
		0.938062, 0.308383, -0.157923,
		36.656075, 31.923004, 36.457798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488430, 31.333088, 37.064945>,  <35.999432, 31.707136, 36.568344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488430, 31.333088, 37.064945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.718468, 31.643311, 36.960812>,  <36.856491, 31.829445, 36.898331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.718468, 31.643311, 36.960812>,  <36.488430, 31.333088, 37.064945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718468, 31.643311, 36.960812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373779, 0.033971, 0.926896,
		0.727706, -0.630361, -0.270351,
		0.575095, 0.775558, -0.260336,
		36.890995, 31.875978, 36.882710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218227, 31.237314, 37.409130>,  <36.488430, 31.333088, 37.064945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218227, 31.237314, 37.409130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.211651, 31.621428, 37.297714>,  <37.207706, 31.851896, 37.230865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.211651, 31.621428, 37.297714>,  <37.218227, 31.237314, 37.409130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211651, 31.621428, 37.297714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385769, 0.263103, 0.884285,
		0.922449, -0.092917, -0.374773,
		-0.016439, 0.960283, -0.278544,
		37.206718, 31.909512, 37.214149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926266, 31.676012, 37.656021>,  <37.218227, 31.237314, 37.409130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926266, 31.676012, 37.656021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.616798, 31.926178, 37.615437>,  <37.431118, 32.076279, 37.591087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.616798, 31.926178, 37.615437>,  <37.926266, 31.676012, 37.656021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616798, 31.926178, 37.615437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184229, 0.375270, 0.908423,
		0.606218, 0.684124, -0.405554,
		-0.773666, 0.625417, -0.101460,
		37.384697, 32.113804, 37.584999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124935, 32.230511, 38.016499>,  <37.926266, 31.676012, 37.656021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124935, 32.230511, 38.016499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.732338, 32.304092, 37.995193>,  <37.496780, 32.348240, 37.982410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.732338, 32.304092, 37.995193>,  <38.124935, 32.230511, 38.016499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732338, 32.304092, 37.995193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033448, 0.438522, 0.898098,
		0.188568, 0.879693, -0.436558,
		-0.981490, 0.183954, -0.053267,
		37.437889, 32.359280, 37.979214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588169, 31.818241, 38.269196>,  <38.124935, 32.230511, 38.016499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588169, 31.818241, 38.269196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.953468, 31.656992, 38.292747>,  <39.172649, 31.560242, 38.306877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.953468, 31.656992, 38.292747>,  <38.588169, 31.818241, 38.269196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953468, 31.656992, 38.292747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098192, 0.077536, -0.992142,
		0.395390, 0.911855, 0.110393,
		0.913250, -0.403123, 0.058880,
		39.227444, 31.536055, 38.310413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993904, 32.145092, 37.786762>,  <38.588169, 31.818241, 38.269196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993904, 32.145092, 37.786762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.258625, 31.848082, 37.828064>,  <39.417458, 31.669874, 37.852844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.258625, 31.848082, 37.828064>,  <38.993904, 32.145092, 37.786762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.258625, 31.848082, 37.828064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222732, 0.063235, -0.972827,
		0.715823, 0.666821, 0.207235,
		0.661806, -0.742530, 0.103257,
		39.457169, 31.625322, 37.859039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492153, 32.287609, 37.260937>,  <38.993904, 32.145092, 37.786762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492153, 32.287609, 37.260937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.558865, 31.895212, 37.300625>,  <39.598892, 31.659775, 37.324440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.558865, 31.895212, 37.300625>,  <39.492153, 32.287609, 37.260937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558865, 31.895212, 37.300625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094311, -0.084299, -0.991967,
		0.981473, 0.174798, 0.078459,
		0.166780, -0.980989, 0.099222,
		39.608898, 31.600916, 37.330391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030422, 32.166931, 36.800301>,  <39.492153, 32.287609, 37.260937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030422, 32.166931, 36.800301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.887146, 31.796959, 36.851223>,  <39.801182, 31.574976, 36.881775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.887146, 31.796959, 36.851223>,  <40.030422, 32.166931, 36.800301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887146, 31.796959, 36.851223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201316, -0.209655, -0.956827,
		0.911686, -0.317098, 0.261299,
		-0.358191, -0.924929, 0.127302,
		39.779690, 31.519480, 36.889412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512653, 31.720896, 36.571110>,  <40.030422, 32.166931, 36.800301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512653, 31.720896, 36.571110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.181595, 31.497057, 36.553936>,  <39.982960, 31.362753, 36.543633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.181595, 31.497057, 36.553936>,  <40.512653, 31.720896, 36.571110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.181595, 31.497057, 36.553936> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254160, -0.305501, -0.917645,
		0.500397, -0.770401, 0.395075,
		-0.827651, -0.559599, -0.042933,
		39.933300, 31.329178, 36.541058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.655277, 31.109896, 36.337139>,  <40.512653, 31.720896, 36.571110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.655277, 31.109896, 36.337139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.265079, 31.083853, 36.253078>,  <40.030960, 31.068228, 36.202641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.265079, 31.083853, 36.253078>,  <40.655277, 31.109896, 36.337139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265079, 31.083853, 36.253078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219086, -0.200231, -0.954939,
		0.020095, -0.977583, 0.209589,
		-0.975498, -0.065107, -0.210151,
		39.972431, 31.064322, 36.190033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594910, 30.517347, 35.936356>,  <40.655277, 31.109896, 36.337139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594910, 30.517347, 35.936356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.250027, 30.705881, 35.862125>,  <40.043098, 30.819002, 35.817589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.250027, 30.705881, 35.862125>,  <40.594910, 30.517347, 35.936356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250027, 30.705881, 35.862125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004606, -0.359039, -0.933311,
		-0.506533, -0.805563, 0.307396,
		-0.862208, 0.471337, -0.185576,
		39.991364, 30.847282, 35.806454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179256, 29.986277, 35.583439>,  <40.594910, 30.517347, 35.936356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179256, 29.986277, 35.583439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.028507, 30.348080, 35.503605>,  <39.938057, 30.565161, 35.455704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.028507, 30.348080, 35.503605>,  <40.179256, 29.986277, 35.583439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028507, 30.348080, 35.503605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078454, -0.245872, -0.966122,
		-0.922938, -0.348442, 0.163624,
		-0.376868, 0.904508, -0.199588,
		39.915447, 30.619432, 35.443729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498070, 29.874439, 35.310741>,  <40.179256, 29.986277, 35.583439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498070, 29.874439, 35.310741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.614384, 30.244198, 35.212002>,  <39.684174, 30.466053, 35.152760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.614384, 30.244198, 35.212002>,  <39.498070, 29.874439, 35.310741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614384, 30.244198, 35.212002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069425, -0.277703, -0.958155,
		-0.954266, 0.261480, -0.144928,
		0.290785, 0.924397, -0.246849,
		39.701618, 30.521517, 35.137947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990135, 30.068888, 34.856915>,  <39.498070, 29.874439, 35.310741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990135, 30.068888, 34.856915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.328297, 30.272602, 34.792515>,  <39.531193, 30.394831, 34.753876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.328297, 30.272602, 34.792515>,  <38.990135, 30.068888, 34.856915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328297, 30.272602, 34.792515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036094, -0.246261, -0.968531,
		-0.532905, 0.824612, -0.189808,
		0.845405, 0.509284, -0.160998,
		39.581917, 30.425386, 34.744217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808586, 30.441385, 34.365997>,  <38.990135, 30.068888, 34.856915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808586, 30.441385, 34.365997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.207153, 30.470236, 34.348370>,  <39.446293, 30.487545, 34.337791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.207153, 30.470236, 34.348370>,  <38.808586, 30.441385, 34.365997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207153, 30.470236, 34.348370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030662, -0.177467, -0.983649,
		-0.078768, 0.981480, -0.174621,
		0.996421, 0.072125, -0.044073,
		39.506081, 30.491873, 34.335148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980415, 30.803049, 33.643291>,  <38.808586, 30.441385, 34.365997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980415, 30.803049, 33.643291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.305798, 30.609808, 33.772846>,  <39.501026, 30.493862, 33.850578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.305798, 30.609808, 33.772846>,  <38.980415, 30.803049, 33.643291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305798, 30.609808, 33.772846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209241, -0.276508, -0.937956,
		0.542687, 0.830755, -0.123842,
		0.813455, -0.483104, 0.323886,
		39.549835, 30.464876, 33.870010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474361, 31.038977, 33.310207>,  <38.980415, 30.803049, 33.643291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474361, 31.038977, 33.310207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.614613, 30.684990, 33.432774>,  <39.698765, 30.472597, 33.506313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.614613, 30.684990, 33.432774>,  <39.474361, 31.038977, 33.310207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614613, 30.684990, 33.432774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107512, -0.286986, -0.951882,
		0.930322, 0.366702, -0.005482,
		0.350630, -0.884968, 0.306414,
		39.719803, 30.419500, 33.524696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926247, 30.818504, 32.849800>,  <39.474361, 31.038977, 33.310207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926247, 30.818504, 32.849800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.846657, 30.464727, 33.018639>,  <39.798904, 30.252460, 33.119942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.846657, 30.464727, 33.018639>,  <39.926247, 30.818504, 32.849800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846657, 30.464727, 33.018639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057755, -0.440547, -0.895870,
		0.978302, -0.153873, 0.138737,
		-0.198971, -0.884444, 0.422101,
		39.786964, 30.199394, 33.145267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427063, 30.300886, 32.619736>,  <39.926247, 30.818504, 32.849800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427063, 30.300886, 32.619736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.093941, 30.101965, 32.717003>,  <39.894066, 29.982613, 32.775364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.093941, 30.101965, 32.717003>,  <40.427063, 30.300886, 32.619736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.093941, 30.101965, 32.717003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015406, -0.459918, -0.887828,
		0.553354, -0.735641, 0.390682,
		-0.832804, -0.497301, 0.243164,
		39.844101, 29.952774, 32.789951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.411407, 29.622229, 32.265232>,  <40.427063, 30.300886, 32.619736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.411407, 29.622229, 32.265232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.027733, 29.675182, 32.365181>,  <39.797527, 29.706955, 32.425152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.027733, 29.675182, 32.365181>,  <40.411407, 29.622229, 32.265232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027733, 29.675182, 32.365181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282027, -0.512217, -0.811230,
		0.020598, -0.848592, 0.528647,
		-0.959185, 0.132383, 0.249876,
		39.739979, 29.714897, 32.440144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104076, 28.960966, 32.107845>,  <40.411407, 29.622229, 32.265232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104076, 28.960966, 32.107845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.798450, 29.218111, 32.129501>,  <39.615074, 29.372398, 32.142494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.798450, 29.218111, 32.129501>,  <40.104076, 28.960966, 32.107845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798450, 29.218111, 32.129501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486071, -0.518470, -0.703508,
		-0.424192, -0.563840, 0.708623,
		-0.764065, 0.642863, 0.054135,
		39.569229, 29.410969, 32.145741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461437, 28.526768, 32.174458>,  <40.104076, 28.960966, 32.107845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461437, 28.526768, 32.174458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.334663, 28.880072, 32.036240>,  <39.258598, 29.092054, 31.953308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.334663, 28.880072, 32.036240>,  <39.461437, 28.526768, 32.174458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334663, 28.880072, 32.036240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575987, -0.468696, -0.669749,
		-0.753520, -0.013236, 0.657292,
		-0.316935, 0.883260, -0.345548,
		39.239582, 29.145050, 31.932575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761982, 28.400297, 31.895956>,  <39.461437, 28.526768, 32.174458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761982, 28.400297, 31.895956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.851109, 28.753674, 31.731089>,  <38.904583, 28.965700, 31.632168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.851109, 28.753674, 31.731089>,  <38.761982, 28.400297, 31.895956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.851109, 28.753674, 31.731089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438284, -0.286877, -0.851826,
		-0.870782, 0.370447, 0.323278,
		0.222815, 0.883443, -0.412168,
		38.917953, 29.018707, 31.607439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.236671, 28.494514, 31.418793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.518284, 28.751072, 31.296839>,  <38.687252, 28.905006, 31.223665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.518284, 28.751072, 31.296839>,  <38.236671, 28.494514, 31.418793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518284, 28.751072, 31.296839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333864, -0.079992, -0.939221,
		-0.626798, 0.763031, 0.157821,
		0.704031, 0.641393, -0.304887,
		38.729492, 28.943489, 31.205372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857639, 28.811321, 30.979002>,  <38.236671, 28.494514, 31.418793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857639, 28.811321, 30.979002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.229809, 28.922142, 30.883039>,  <38.453110, 28.988634, 30.825462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.229809, 28.922142, 30.883039>,  <37.857639, 28.811321, 30.979002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229809, 28.922142, 30.883039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223508, -0.089817, -0.970555,
		-0.290441, 0.956648, -0.021644,
		0.930424, 0.277051, -0.239905,
		38.508934, 29.005257, 30.811068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979134, 29.541609, 30.633497>,  <37.857639, 28.811321, 30.979002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979134, 29.541609, 30.633497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.263779, 29.293056, 30.502352>,  <38.434566, 29.143925, 30.423664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.263779, 29.293056, 30.502352>,  <37.979134, 29.541609, 30.633497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263779, 29.293056, 30.502352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327470, 0.119519, -0.937272,
		0.621588, 0.774340, -0.118432,
		0.711612, -0.621379, -0.327865,
		38.477261, 29.106642, 30.403992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151684, 29.860342, 29.984846>,  <37.979134, 29.541609, 30.633497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151684, 29.860342, 29.984846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.325577, 29.500250, 29.975111>,  <38.429913, 29.284195, 29.969271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.325577, 29.500250, 29.975111>,  <38.151684, 29.860342, 29.984846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325577, 29.500250, 29.975111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060860, 0.056330, -0.996556,
		0.898500, 0.431755, 0.079276,
		0.434734, -0.900230, -0.024336,
		38.455997, 29.230181, 29.967810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773815, 29.903467, 29.592564>,  <38.151684, 29.860342, 29.984846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773815, 29.903467, 29.592564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.675346, 29.516129, 29.576046>,  <38.616264, 29.283726, 29.566135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.675346, 29.516129, 29.576046>,  <38.773815, 29.903467, 29.592564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675346, 29.516129, 29.576046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025817, 0.036038, -0.999017,
		0.968883, -0.246992, 0.016129,
		-0.246168, -0.968347, -0.041293,
		38.601498, 29.225624, 29.563658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238388, 29.622526, 29.102737>,  <38.773815, 29.903467, 29.592564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238388, 29.622526, 29.102737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.954140, 29.346127, 29.155699>,  <38.783588, 29.180286, 29.187475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.954140, 29.346127, 29.155699>,  <39.238388, 29.622526, 29.102737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954140, 29.346127, 29.155699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087072, -0.100366, -0.991133,
		0.698162, -0.715853, 0.011156,
		-0.710625, -0.691000, 0.132403,
		38.740952, 29.138826, 29.195419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363575, 29.068720, 28.764055>,  <39.238388, 29.622526, 29.102737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363575, 29.068720, 28.764055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.972054, 29.002676, 28.812515>,  <38.737141, 28.963051, 28.841591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.972054, 29.002676, 28.812515>,  <39.363575, 29.068720, 28.764055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972054, 29.002676, 28.812515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109966, -0.075310, -0.991078,
		0.172760, -0.983396, 0.055558,
		-0.978806, -0.165109, 0.121151,
		38.678413, 28.953144, 28.848860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139668, 28.527002, 28.334682>,  <39.363575, 29.068720, 28.764055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139668, 28.527002, 28.334682> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.801083, 28.730799, 28.396549>,  <38.597931, 28.853077, 28.433670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.801083, 28.730799, 28.396549>,  <39.139668, 28.527002, 28.334682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.801083, 28.730799, 28.396549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222983, -0.075420, -0.971900,
		-0.483510, -0.857164, 0.177448,
		-0.846461, 0.509492, 0.154667,
		38.547146, 28.883646, 28.442949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692009, 28.126289, 27.994719>,  <39.139668, 28.527002, 28.334682>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692009, 28.126289, 27.994719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.547123, 28.497519, 28.029312>,  <38.460190, 28.720257, 28.050068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.547123, 28.497519, 28.029312>,  <38.692009, 28.126289, 27.994719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547123, 28.497519, 28.029312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090440, 0.057353, -0.994249,
		-0.927697, -0.367954, 0.063161,
		-0.362215, 0.928074, 0.086484,
		38.438457, 28.775940, 28.055258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336113, 28.267546, 27.253971>,  <38.692009, 28.126289, 27.994719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336113, 28.267546, 27.253971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.346813, 28.636175, 27.408884>,  <38.353233, 28.857353, 27.501831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.346813, 28.636175, 27.408884>,  <38.336113, 28.267546, 27.253971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346813, 28.636175, 27.408884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203542, 0.384324, -0.900481,
		-0.978701, -0.054740, 0.197859,
		0.026749, 0.921574, 0.387280,
		38.354839, 28.912647, 27.525068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.690281, 28.626883, 27.083651>,  <38.336113, 28.267546, 27.253971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.690281, 28.626883, 27.083651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.975002, 28.902416, 27.138557>,  <38.145836, 29.067738, 27.171501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.975002, 28.902416, 27.138557>,  <37.690281, 28.626883, 27.083651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975002, 28.902416, 27.138557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081193, 0.274816, -0.958063,
		-0.697671, 0.670806, 0.251543,
		0.711803, 0.688836, 0.137267,
		38.188541, 29.109068, 27.179737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448578, 29.294504, 26.706539>,  <37.690281, 28.626883, 27.083651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448578, 29.294504, 26.706539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.836407, 29.372969, 26.765118>,  <38.069103, 29.420048, 26.800264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.836407, 29.372969, 26.765118>,  <37.448578, 29.294504, 26.706539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836407, 29.372969, 26.765118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062359, 0.380585, -0.922641,
		-0.236724, 0.903701, 0.356773,
		0.969574, 0.196163, 0.146448,
		38.127277, 29.431818, 26.809052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571342, 29.936430, 26.351988>,  <37.448578, 29.294504, 26.706539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571342, 29.936430, 26.351988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.934719, 29.774611, 26.394075>,  <38.152744, 29.677519, 26.419329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.934719, 29.774611, 26.394075>,  <37.571342, 29.936430, 26.351988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934719, 29.774611, 26.394075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253297, 0.332520, -0.908444,
		0.332520, 0.851923, 0.404546,
		0.908444, -0.404546, 0.105219,
		38.207253, 29.653246, 26.425642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170429, 30.479101, 26.198166>,  <37.571342, 29.936430, 26.351988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170429, 30.479101, 26.198166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.316002, 30.111431, 26.137943>,  <38.403347, 29.890829, 26.101810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.316002, 30.111431, 26.137943>,  <38.170429, 30.479101, 26.198166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316002, 30.111431, 26.137943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443004, 0.313004, -0.840105,
		0.819329, 0.239046, 0.521111,
		0.363934, -0.919176, -0.150555,
		38.425182, 29.835678, 26.092777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815552, 30.585001, 25.955244>,  <38.170429, 30.479101, 26.198166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815552, 30.585001, 25.955244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.745239, 30.208483, 25.839960>,  <38.703053, 29.982573, 25.770790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.745239, 30.208483, 25.839960>,  <38.815552, 30.585001, 25.955244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745239, 30.208483, 25.839960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248803, 0.240785, -0.938147,
		0.952470, -0.236613, 0.191873,
		-0.175778, -0.941295, -0.288210,
		38.692505, 29.926094, 25.753496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262653, 30.491463, 25.440140>,  <38.815552, 30.585001, 25.955244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262653, 30.491463, 25.440140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.989506, 30.204296, 25.386051>,  <38.825619, 30.031996, 25.353598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.989506, 30.204296, 25.386051>,  <39.262653, 30.491463, 25.440140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989506, 30.204296, 25.386051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075863, 0.114411, -0.990533,
		0.726590, -0.686664, -0.023665,
		-0.682870, -0.717916, -0.135222,
		38.784645, 29.988922, 25.345484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592739, 30.108644, 24.898647>,  <39.262653, 30.491463, 25.440140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592739, 30.108644, 24.898647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.211597, 29.987282, 24.897816>,  <38.982910, 29.914463, 24.897318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.211597, 29.987282, 24.897816>,  <39.592739, 30.108644, 24.898647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211597, 29.987282, 24.897816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019014, -0.052878, -0.998420,
		0.302819, -0.951392, 0.056154,
		-0.952858, -0.303408, -0.002077,
		38.925739, 29.896259, 24.897192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639271, 29.493099, 24.494066>,  <39.592739, 30.108644, 24.898647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639271, 29.493099, 24.494066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.262711, 29.628012, 24.494854>,  <39.036774, 29.708960, 24.495327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.262711, 29.628012, 24.494854>,  <39.639271, 29.493099, 24.494066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262711, 29.628012, 24.494854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021236, 0.065102, -0.997653,
		-0.336620, -0.939149, -0.068449,
		-0.941401, 0.337284, 0.001971,
		38.980289, 29.729197, 24.495445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220673, 29.114252, 24.062719>,  <39.639271, 29.493099, 24.494066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220673, 29.114252, 24.062719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.026264, 29.462183, 24.096617>,  <38.909618, 29.670942, 24.116955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.026264, 29.462183, 24.096617>,  <39.220673, 29.114252, 24.062719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026264, 29.462183, 24.096617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111705, 0.157998, -0.981101,
		-0.866777, -0.467373, -0.173955,
		-0.486025, 0.869827, 0.084741,
		38.880455, 29.723131, 24.122040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756454, 29.108204, 23.434517>,  <39.220673, 29.114252, 24.062719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756454, 29.108204, 23.434517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.829777, 29.484392, 23.549004>,  <38.873768, 29.710104, 23.617695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.829777, 29.484392, 23.549004>,  <38.756454, 29.108204, 23.434517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829777, 29.484392, 23.549004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014301, 0.288567, -0.957353,
		-0.982953, 0.179577, 0.039446,
		0.183301, 0.940468, 0.286216,
		38.884766, 29.766533, 23.634869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289146, 29.485415, 23.074276>,  <38.756454, 29.108204, 23.434517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289146, 29.485415, 23.074276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.601357, 29.703445, 23.196703>,  <38.788681, 29.834265, 23.270159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.601357, 29.703445, 23.196703>,  <38.289146, 29.485415, 23.074276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601357, 29.703445, 23.196703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181263, 0.271232, -0.945292,
		-0.598272, 0.793300, 0.112900,
		0.780522, 0.545077, 0.306066,
		38.835514, 29.866968, 23.288523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162621, 30.239395, 23.070793>,  <38.289146, 29.485415, 23.074276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162621, 30.239395, 23.070793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.446381, 30.130108, 22.810915>,  <38.616634, 30.064535, 22.654987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.446381, 30.130108, 22.810915>,  <38.162621, 30.239395, 23.070793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.446381, 30.130108, 22.810915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038514, 0.935456, -0.351339,
		0.703755, 0.224216, 0.674133,
		0.709398, -0.273220, -0.649697,
		38.659199, 30.048141, 22.616007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783501, 30.910231, 22.939957>,  <38.162621, 30.239395, 23.070793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783501, 30.910231, 22.939957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.927704, 31.274897, 23.018850>,  <38.014225, 31.493696, 23.066187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.927704, 31.274897, 23.018850>,  <37.783501, 30.910231, 22.939957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927704, 31.274897, 23.018850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562536, -0.043833, -0.825610,
		-0.744033, 0.408593, -0.528646,
		0.360510, 0.911664, 0.197235,
		38.035858, 31.548395, 23.078020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808041, 31.214500, 22.264719>,  <37.783501, 30.910231, 22.939957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808041, 31.214500, 22.264719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.094658, 31.363630, 22.500536>,  <38.266628, 31.453108, 22.642027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.094658, 31.363630, 22.500536>,  <37.808041, 31.214500, 22.264719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094658, 31.363630, 22.500536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574352, 0.164254, -0.801960,
		-0.395827, 0.913248, -0.096437,
		0.716548, 0.372826, 0.589542,
		38.309624, 31.475477, 22.677399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093128, 31.074688, 22.232420>,  <37.808041, 31.214500, 22.264719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093128, 31.074688, 22.232420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.696712, 31.128126, 22.232462>,  <36.458862, 31.160189, 22.232487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.696712, 31.128126, 22.232462>,  <37.093128, 31.074688, 22.232420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696712, 31.128126, 22.232462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032369, -0.240878, 0.970015,
		0.129616, 0.961317, 0.243043,
		-0.991036, 0.133596, 0.000105,
		36.399403, 31.168205, 22.232494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897701, 31.416227, 22.889709>,  <37.093128, 31.074688, 22.232420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897701, 31.416227, 22.889709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.555923, 31.260189, 22.752451>,  <36.350857, 31.166567, 22.670095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.555923, 31.260189, 22.752451>,  <36.897701, 31.416227, 22.889709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555923, 31.260189, 22.752451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201526, -0.359914, 0.910961,
		-0.478863, 0.847519, 0.228913,
		-0.854446, -0.390093, -0.343146,
		36.299591, 31.143162, 22.649508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423645, 31.732693, 23.257147>,  <36.897701, 31.416227, 22.889709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423645, 31.732693, 23.257147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.197914, 31.428761, 23.128027>,  <36.062477, 31.246401, 23.050554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.197914, 31.428761, 23.128027>,  <36.423645, 31.732693, 23.257147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197914, 31.428761, 23.128027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320061, -0.159063, 0.933949,
		-0.760986, 0.630365, -0.153428,
		-0.564324, -0.759828, -0.322799,
		36.028618, 31.200811, 23.031187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782192, 31.757866, 23.633400>,  <36.423645, 31.732693, 23.257147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782192, 31.757866, 23.633400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.840984, 31.379948, 23.516260>,  <35.876259, 31.153196, 23.445976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.840984, 31.379948, 23.516260>,  <35.782192, 31.757866, 23.633400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840984, 31.379948, 23.516260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309959, -0.325148, 0.893422,
		-0.939320, -0.040544, -0.340638,
		0.146981, -0.944794, -0.292852,
		35.885078, 31.096510, 23.428404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172684, 31.351416, 23.901041>,  <35.782192, 31.757866, 23.633400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172684, 31.351416, 23.901041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.426769, 31.052923, 23.821405>,  <35.579220, 30.873827, 23.773624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.426769, 31.052923, 23.821405>,  <35.172684, 31.351416, 23.901041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.426769, 31.052923, 23.821405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231936, -0.430190, 0.872434,
		-0.736686, -0.508008, -0.446342,
		0.635216, -0.746233, -0.199089,
		35.617332, 30.829054, 23.761679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849583, 30.759796, 24.106667>,  <35.172684, 31.351416, 23.901041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849583, 30.759796, 24.106667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.240086, 30.673183, 24.108936>,  <35.474388, 30.621216, 24.110298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.240086, 30.673183, 24.108936>,  <34.849583, 30.759796, 24.106667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240086, 30.673183, 24.108936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087240, -0.369074, 0.925297,
		-0.198262, -0.903824, -0.379202,
		0.976259, -0.216533, 0.005676,
		35.532963, 30.608223, 24.110640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873840, 30.065344, 24.299305>,  <34.849583, 30.759796, 24.106667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873840, 30.065344, 24.299305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.227478, 30.232573, 24.382822>,  <35.439659, 30.332911, 24.432932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.227478, 30.232573, 24.382822>,  <34.873840, 30.065344, 24.299305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227478, 30.232573, 24.382822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024377, -0.487447, 0.872812,
		0.466676, -0.766557, -0.441139,
		0.884093, 0.418074, 0.208794,
		35.492706, 30.357994, 24.445459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354107, 29.628380, 24.734688>,  <34.873840, 30.065344, 24.299305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354107, 29.628380, 24.734688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.541065, 29.975328, 24.803049>,  <35.653240, 30.183498, 24.844067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.541065, 29.975328, 24.803049>,  <35.354107, 29.628380, 24.734688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541065, 29.975328, 24.803049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072448, -0.230249, 0.970431,
		0.881075, -0.441194, -0.170456,
		0.467396, 0.867372, 0.170903,
		35.681282, 30.235540, 24.854321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721420, 29.489973, 25.294693>,  <35.354107, 29.628380, 24.734688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721420, 29.489973, 25.294693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.807941, 29.880503, 25.295179>,  <35.859856, 30.114820, 25.295471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.807941, 29.880503, 25.295179>,  <35.721420, 29.489973, 25.294693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807941, 29.880503, 25.295179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056591, -0.013782, 0.998302,
		0.974684, -0.215869, -0.058232,
		0.216305, 0.976325, 0.001217,
		35.872833, 30.173401, 25.295544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370010, 29.555408, 25.626959>,  <35.721420, 29.489973, 25.294693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370010, 29.555408, 25.626959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.199036, 29.914038, 25.673351>,  <36.096451, 30.129215, 25.701187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.199036, 29.914038, 25.673351>,  <36.370010, 29.555408, 25.626959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199036, 29.914038, 25.673351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276037, 0.007269, 0.961119,
		0.860872, 0.442833, -0.250595,
		-0.427437, 0.896575, 0.115981,
		36.070805, 30.183010, 25.708145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830124, 30.058390, 25.929646>,  <36.370010, 29.555408, 25.626959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830124, 30.058390, 25.929646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.468224, 30.211113, 26.005177>,  <36.251083, 30.302748, 26.050495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.468224, 30.211113, 26.005177>,  <36.830124, 30.058390, 25.929646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468224, 30.211113, 26.005177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231976, 0.069876, 0.970209,
		0.357240, 0.921596, -0.151790,
		-0.904747, 0.381809, 0.188825,
		36.196800, 30.325655, 26.061825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848404, 30.809242, 26.242619>,  <36.830124, 30.058390, 25.929646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848404, 30.809242, 26.242619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.507706, 30.630278, 26.351688>,  <36.303288, 30.522900, 26.417131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.507706, 30.630278, 26.351688>,  <36.848404, 30.809242, 26.242619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507706, 30.630278, 26.351688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236346, 0.136388, 0.962049,
		-0.467620, 0.883868, -0.010424,
		-0.851746, -0.447409, 0.272677,
		36.252182, 30.496056, 26.433491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740646, 31.118275, 26.844009>,  <36.848404, 30.809242, 26.242619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740646, 31.118275, 26.844009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.459660, 30.833889, 26.857098>,  <36.291069, 30.663258, 26.864950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.459660, 30.833889, 26.857098>,  <36.740646, 31.118275, 26.844009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459660, 30.833889, 26.857098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101433, 0.145517, 0.984142,
		-0.704450, 0.688009, -0.174336,
		-0.702467, -0.710963, 0.032723,
		36.248920, 30.620600, 26.866915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282124, 31.359205, 27.412357>,  <36.740646, 31.118275, 26.844009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282124, 31.359205, 27.412357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.215263, 30.966427, 27.376932>,  <36.175148, 30.730761, 27.355677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.215263, 30.966427, 27.376932>,  <36.282124, 31.359205, 27.412357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215263, 30.966427, 27.376932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153809, -0.062757, 0.986106,
		-0.973861, 0.178447, -0.140543,
		-0.167148, -0.981946, -0.088563,
		36.165119, 30.671843, 27.350363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712166, 31.113041, 27.851282>,  <36.282124, 31.359205, 27.412357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712166, 31.113041, 27.851282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.913189, 30.771263, 27.798578>,  <36.033802, 30.566196, 27.766956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.913189, 30.771263, 27.798578>,  <35.712166, 31.113041, 27.851282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913189, 30.771263, 27.798578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089215, -0.202847, 0.975138,
		-0.859927, -0.478310, -0.178172,
		0.502560, -0.854443, -0.131761,
		36.063957, 30.514931, 27.759050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337692, 30.591402, 28.249462>,  <35.712166, 31.113041, 27.851282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337692, 30.591402, 28.249462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.704136, 30.442883, 28.188953>,  <35.924004, 30.353771, 28.152649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.704136, 30.442883, 28.188953>,  <35.337692, 30.591402, 28.249462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704136, 30.442883, 28.188953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065956, -0.232589, 0.970336,
		-0.395468, -0.898910, -0.188588,
		0.916108, -0.371298, -0.151270,
		35.978970, 30.331493, 28.143572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302090, 29.950518, 28.490711>,  <35.337692, 30.591402, 28.249462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302090, 29.950518, 28.490711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.691963, 30.038990, 28.503841>,  <35.925888, 30.092073, 28.511719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.691963, 30.038990, 28.503841>,  <35.302090, 29.950518, 28.490711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691963, 30.038990, 28.503841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035357, -0.297403, 0.954097,
		0.220789, -0.928779, -0.297693,
		0.974680, 0.221180, 0.032824,
		35.984367, 30.105343, 28.513689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661892, 29.390949, 28.941910>,  <35.302090, 29.950518, 28.490711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661892, 29.390949, 28.941910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.918785, 29.697186, 28.956909>,  <36.072922, 29.880928, 28.965908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.918785, 29.697186, 28.956909>,  <35.661892, 29.390949, 28.941910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918785, 29.697186, 28.956909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173772, -0.193069, 0.965675,
		0.746551, -0.613674, -0.257034,
		0.642235, 0.765590, 0.037497,
		36.111454, 29.926863, 28.968159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251743, 29.098173, 29.347874>,  <35.661892, 29.390949, 28.941910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251743, 29.098173, 29.347874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.323978, 29.491234, 29.364779>,  <36.367317, 29.727070, 29.374922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.323978, 29.491234, 29.364779>,  <36.251743, 29.098173, 29.347874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323978, 29.491234, 29.364779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146368, -0.069337, 0.986797,
		0.972608, -0.172014, -0.156350,
		0.180584, 0.982651, 0.042261,
		36.378155, 29.786030, 29.377457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881340, 29.195595, 29.736786>,  <36.251743, 29.098173, 29.347874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881340, 29.195595, 29.736786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.667896, 29.533838, 29.731016>,  <36.539829, 29.736784, 29.727554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.667896, 29.533838, 29.731016>,  <36.881340, 29.195595, 29.736786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667896, 29.533838, 29.731016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226416, 0.159266, 0.960922,
		0.814859, 0.509493, -0.276445,
		-0.533611, 0.845607, -0.014422,
		36.507812, 29.787521, 29.726690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.238873, 29.318741, 33.992962> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.070354, 29.648851, 33.842533>,  <39.969242, 29.846918, 33.752274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.070354, 29.648851, 33.842533>,  <40.238873, 29.318741, 33.992962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070354, 29.648851, 33.842533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146554, 0.471170, 0.869782,
		0.895004, 0.311320, -0.319449,
		-0.421296, 0.825275, -0.376074,
		39.943966, 29.896435, 33.729710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664101, 29.858698, 34.193542>,  <40.238873, 29.318741, 33.992962>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664101, 29.858698, 34.193542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.303001, 30.015989, 34.123775>,  <40.086342, 30.110365, 34.081913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.303001, 30.015989, 34.123775>,  <40.664101, 29.858698, 34.193542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303001, 30.015989, 34.123775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066507, 0.528166, 0.846532,
		0.425005, 0.752602, -0.502952,
		-0.902744, 0.393230, -0.174420,
		40.032177, 30.133959, 34.071449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.797005, 30.589399, 34.247772>,  <40.664101, 29.858698, 34.193542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.797005, 30.589399, 34.247772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.398186, 30.565937, 34.267624>,  <40.158894, 30.551861, 34.279537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.398186, 30.565937, 34.267624>,  <40.797005, 30.589399, 34.247772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398186, 30.565937, 34.267624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000217, 0.648109, 0.761548,
		-0.076835, 0.759286, -0.646206,
		-0.997044, -0.058653, 0.049632,
		40.099072, 30.548342, 34.282513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.561668, 31.200062, 34.536358>,  <40.797005, 30.589399, 34.247772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.561668, 31.200062, 34.536358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.234413, 30.974760, 34.582642>,  <40.038059, 30.839579, 34.610413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.234413, 30.974760, 34.582642>,  <40.561668, 31.200062, 34.536358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234413, 30.974760, 34.582642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254952, 0.535701, 0.804999,
		-0.515408, 0.629101, -0.581882,
		-0.818141, -0.563255, 0.115714,
		39.988972, 30.805784, 34.617355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083767, 31.685707, 34.733715>,  <40.561668, 31.200062, 34.536358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083767, 31.685707, 34.733715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.947910, 31.325184, 34.841259>,  <39.866398, 31.108870, 34.905785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.947910, 31.325184, 34.841259>,  <40.083767, 31.685707, 34.733715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947910, 31.325184, 34.841259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253249, 0.362929, 0.896743,
		-0.905819, 0.236483, -0.351521,
		-0.339642, -0.901309, 0.268859,
		39.846016, 31.054790, 34.921917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431347, 31.775852, 35.004086>,  <40.083767, 31.685707, 34.733715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431347, 31.775852, 35.004086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.590248, 31.446012, 35.165195>,  <39.685589, 31.248108, 35.261860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.590248, 31.446012, 35.165195>,  <39.431347, 31.775852, 35.004086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590248, 31.446012, 35.165195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491504, 0.179461, 0.852184,
		-0.774992, -0.536497, -0.334003,
		0.397254, -0.824600, 0.402771,
		39.709423, 31.198633, 35.286026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922039, 31.563261, 35.519257>,  <39.431347, 31.775852, 35.004086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922039, 31.563261, 35.519257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.237919, 31.337467, 35.615364>,  <39.427448, 31.201990, 35.673027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.237919, 31.337467, 35.615364>,  <38.922039, 31.563261, 35.519257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237919, 31.337467, 35.615364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227817, 0.093811, 0.969174,
		-0.569626, -0.820094, -0.054518,
		0.789699, -0.564487, 0.240268,
		39.474831, 31.168121, 35.687443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657494, 30.975332, 35.989281>,  <38.922039, 31.563261, 35.519257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657494, 30.975332, 35.989281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.050781, 31.010460, 36.053230>,  <39.286755, 31.031536, 36.091602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.050781, 31.010460, 36.053230>,  <38.657494, 30.975332, 35.989281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.050781, 31.010460, 36.053230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157845, -0.029641, 0.987019,
		0.091416, -0.995695, -0.015283,
		0.983223, 0.087817, 0.159876,
		39.345749, 31.036804, 36.101192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767883, 30.779739, 36.631359>,  <38.657494, 30.975332, 35.989281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767883, 30.779739, 36.631359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.137466, 30.924564, 36.582020>,  <39.359215, 31.011459, 36.552414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.137466, 30.924564, 36.582020>,  <38.767883, 30.779739, 36.631359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137466, 30.924564, 36.582020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116451, 0.040912, 0.992353,
		0.364339, -0.931256, -0.004361,
		0.923957, 0.362061, -0.123352,
		39.414654, 31.033182, 36.545013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324165, 30.343651, 37.096790>,  <38.767883, 30.779739, 36.631359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324165, 30.343651, 37.096790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.448383, 30.715168, 37.015888>,  <39.522915, 30.938078, 36.967346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.448383, 30.715168, 37.015888>,  <39.324165, 30.343651, 37.096790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448383, 30.715168, 37.015888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263590, 0.120289, 0.957105,
		0.913280, -0.350539, -0.207465,
		0.310547, 0.928791, -0.202256,
		39.541546, 30.993805, 36.955212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.049355, 30.379948, 37.341026>,  <39.324165, 30.343651, 37.096790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.049355, 30.379948, 37.341026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.874828, 30.739252, 37.362015>,  <39.770111, 30.954834, 37.374607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.874828, 30.739252, 37.362015>,  <40.049355, 30.379948, 37.341026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874828, 30.739252, 37.362015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340681, 0.110949, 0.933610,
		0.832804, 0.425227, -0.354429,
		-0.436320, 0.898261, 0.052468,
		39.743931, 31.008730, 37.377754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276917, 30.635872, 38.068741>,  <40.049355, 30.379948, 37.341026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276917, 30.635872, 38.068741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.030880, 30.940489, 37.987041>,  <39.883259, 31.123259, 37.938023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.030880, 30.940489, 37.987041>,  <40.276917, 30.635872, 38.068741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030880, 30.940489, 37.987041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049018, 0.295477, 0.954091,
		0.786929, 0.576844, -0.219076,
		-0.615094, 0.761541, -0.204244,
		39.846352, 31.168951, 37.925770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445923, 31.201481, 38.411522>,  <40.276917, 30.635872, 38.068741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445923, 31.201481, 38.411522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.052578, 31.256952, 38.364601>,  <39.816570, 31.290236, 38.336449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.052578, 31.256952, 38.364601>,  <40.445923, 31.201481, 38.411522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052578, 31.256952, 38.364601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050845, 0.409824, 0.910747,
		0.174372, 0.901562, -0.395956,
		-0.983366, 0.138676, -0.117301,
		39.757568, 31.298555, 38.329411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300743, 31.950268, 38.581257>,  <40.445923, 31.201481, 38.411522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300743, 31.950268, 38.581257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.939075, 31.782589, 38.614136>,  <39.722076, 31.681982, 38.633865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.939075, 31.782589, 38.614136>,  <40.300743, 31.950268, 38.581257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939075, 31.782589, 38.614136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179882, 0.548158, 0.816802,
		-0.387459, 0.723739, -0.571032,
		-0.904167, -0.419195, 0.082201,
		39.667824, 31.656830, 38.638798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.037006, 31.881346, 38.657562>,  <40.300743, 31.950268, 38.581257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.037006, 31.881346, 38.657562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.431683, 31.943848, 38.639591>,  <41.668488, 31.981348, 38.628807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.431683, 31.943848, 38.639591>,  <41.037006, 31.881346, 38.657562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431683, 31.943848, 38.639591> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108587, 0.427677, -0.897386,
		-0.121005, 0.890325, 0.438953,
		0.986695, 0.156253, -0.044926,
		41.727692, 31.990723, 38.626114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075859, 32.513996, 38.362614>,  <41.037006, 31.881346, 38.657562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075859, 32.513996, 38.362614> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.425404, 32.326992, 38.309254>,  <41.635132, 32.214790, 38.277237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.425404, 32.326992, 38.309254>,  <41.075859, 32.513996, 38.362614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.425404, 32.326992, 38.309254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013819, 0.250401, -0.968044,
		0.485973, 0.847783, 0.212356,
		0.873865, -0.467508, -0.133404,
		41.687565, 32.186741, 38.269234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493866, 33.039295, 38.087650>,  <41.075859, 32.513996, 38.362614>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493866, 33.039295, 38.087650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.661682, 32.690132, 37.988033>,  <41.762371, 32.480633, 37.928265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.661682, 32.690132, 37.988033>,  <41.493866, 33.039295, 38.087650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.661682, 32.690132, 37.988033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250111, 0.374893, -0.892693,
		0.872600, 0.312233, 0.375606,
		0.419540, -0.872907, -0.249039,
		41.787544, 32.428261, 37.913322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039646, 33.281620, 37.797901>,  <41.493866, 33.039295, 38.087650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039646, 33.281620, 37.797901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.006184, 32.897625, 37.691002>,  <41.986107, 32.667229, 37.626862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.006184, 32.897625, 37.691002>,  <42.039646, 33.281620, 37.797901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.006184, 32.897625, 37.691002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209397, 0.245264, -0.946572,
		0.974246, -0.135144, 0.180502,
		-0.083653, -0.959990, -0.267246,
		41.981087, 32.609627, 37.610828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.628036, 33.156696, 37.455124>,  <42.039646, 33.281620, 37.797901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.628036, 33.156696, 37.455124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.341019, 32.901859, 37.342522>,  <42.168808, 32.748955, 37.274960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.341019, 32.901859, 37.342522>,  <42.628036, 33.156696, 37.455124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.341019, 32.901859, 37.342522> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295652, 0.087355, -0.951293,
		0.630655, -0.765819, 0.125678,
		-0.717540, -0.637095, -0.281507,
		42.125755, 32.710732, 37.258068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.995728, 32.819298, 36.934879>,  <42.628036, 33.156696, 37.455124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.995728, 32.819298, 36.934879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.606693, 32.743511, 36.880951>,  <42.373272, 32.698040, 36.848595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.606693, 32.743511, 36.880951>,  <42.995728, 32.819298, 36.934879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.606693, 32.743511, 36.880951> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114565, 0.114127, -0.986838,
		0.202362, -0.975231, -0.089292,
		-0.972586, -0.189469, -0.134822,
		42.314919, 32.686672, 36.840504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.990917, 32.364292, 36.355755>,  <42.995728, 32.819298, 36.934879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.990917, 32.364292, 36.355755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.628674, 32.531105, 36.386646>,  <42.411327, 32.631191, 36.405182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.628674, 32.531105, 36.386646>,  <42.990917, 32.364292, 36.355755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.628674, 32.531105, 36.386646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039572, 0.098216, -0.994378,
		-0.422273, -0.903569, -0.072442,
		-0.905604, 0.417033, 0.077230,
		42.356991, 32.656216, 36.409817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.625595, 32.034306, 35.890892>,  <42.990917, 32.364292, 36.355755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.625595, 32.034306, 35.890892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.409370, 32.358845, 35.979893>,  <42.279636, 32.553570, 36.033291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.409370, 32.358845, 35.979893>,  <42.625595, 32.034306, 35.890892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.409370, 32.358845, 35.979893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015429, 0.254864, -0.966854,
		-0.841163, -0.526077, -0.125251,
		-0.540561, 0.811349, 0.222499,
		42.247204, 32.602249, 36.046642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.009644, 31.964966, 35.619934>,  <42.625595, 32.034306, 35.890892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.009644, 31.964966, 35.619934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.040573, 32.360443, 35.671329>,  <42.059132, 32.597729, 35.702168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.040573, 32.360443, 35.671329>,  <42.009644, 31.964966, 35.619934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.040573, 32.360443, 35.671329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313647, 0.146456, -0.938177,
		-0.946387, 0.032238, 0.321424,
		0.077320, 0.988692, 0.128492,
		42.063770, 32.657051, 35.709877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325974, 32.225166, 35.365486>,  <42.009644, 31.964966, 35.619934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.325974, 32.225166, 35.365486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.601822, 32.514824, 35.362953>,  <41.767330, 32.688618, 35.361431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.601822, 32.514824, 35.362953>,  <41.325974, 32.225166, 35.365486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.601822, 32.514824, 35.362953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195306, 0.177555, -0.964536,
		-0.697337, 0.666402, 0.263875,
		0.689621, 0.724143, -0.006336,
		41.808708, 32.732067, 35.361053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046318, 32.940147, 35.104225>,  <41.325974, 32.225166, 35.365486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046318, 32.940147, 35.104225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.439556, 32.982788, 35.044678>,  <41.675499, 33.008373, 35.008949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.439556, 32.982788, 35.044678>,  <41.046318, 32.940147, 35.104225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439556, 32.982788, 35.044678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167711, 0.198016, -0.965744,
		-0.073469, 0.974385, 0.212546,
		0.983095, 0.106599, -0.148868,
		41.734486, 33.014767, 35.000019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.046425, 33.361195, 34.557983>,  <41.046318, 32.940147, 35.104225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.046425, 33.361195, 34.557983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.425743, 33.234943, 34.544655>,  <41.653336, 33.159195, 34.536659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.425743, 33.234943, 34.544655>,  <41.046425, 33.361195, 34.557983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.425743, 33.234943, 34.544655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022647, 0.037420, -0.999043,
		0.316569, 0.948146, 0.028337,
		0.948299, -0.315624, -0.033319,
		41.710232, 33.140255, 34.534660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.331657, 33.829731, 34.058605>,  <41.046425, 33.361195, 34.557983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.331657, 33.829731, 34.058605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.554771, 33.497780, 34.064098>,  <41.688641, 33.298611, 34.067394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.554771, 33.497780, 34.064098>,  <41.331657, 33.829731, 34.058605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.554771, 33.497780, 34.064098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050492, -0.050445, -0.997450,
		0.828450, 0.555666, -0.070040,
		0.557782, -0.829874, 0.013735,
		41.722107, 33.248817, 34.068218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.855240, 33.984581, 33.643768>,  <41.331657, 33.829731, 34.058605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.855240, 33.984581, 33.643768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.841640, 33.584866, 33.650352>,  <41.833481, 33.345036, 33.654305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.841640, 33.584866, 33.650352>,  <41.855240, 33.984581, 33.643768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.841640, 33.584866, 33.650352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030442, -0.015429, -0.999417,
		0.998958, -0.034481, -0.029895,
		-0.034000, -0.999286, 0.016463,
		41.831440, 33.285080, 33.655293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.691074, 34.623981, 33.200737>,  <41.855240, 33.984581, 33.643768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.691074, 34.623981, 33.200737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.419334, 34.899345, 33.099087>,  <41.256290, 35.064564, 33.038097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.419334, 34.899345, 33.099087>,  <41.691074, 34.623981, 33.200737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419334, 34.899345, 33.099087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186653, 0.172817, 0.967106,
		0.709683, 0.704434, 0.011091,
		-0.679346, 0.688409, -0.254130,
		41.215530, 35.105869, 33.022846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945885, 35.151154, 33.590469>,  <41.691074, 34.623981, 33.200737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945885, 35.151154, 33.590469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.568493, 35.260124, 33.514965>,  <41.342056, 35.325504, 33.469662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.568493, 35.260124, 33.514965>,  <41.945885, 35.151154, 33.590469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568493, 35.260124, 33.514965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078919, 0.368496, 0.926273,
		0.321895, 0.888818, -0.326170,
		-0.943481, 0.272422, -0.188761,
		41.285450, 35.341850, 33.458336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834381, 35.854488, 33.923386>,  <41.945885, 35.151154, 33.590469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834381, 35.854488, 33.923386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.481117, 35.669395, 33.892643>,  <41.269157, 35.558342, 33.874199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.481117, 35.669395, 33.892643>,  <41.834381, 35.854488, 33.923386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.481117, 35.669395, 33.892643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289731, 0.409281, 0.865185,
		-0.368891, 0.786366, -0.495528,
		-0.883162, -0.462728, -0.076855,
		41.216167, 35.530579, 33.869587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.357571, 36.396038, 34.137466>,  <41.834381, 35.854488, 33.923386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.357571, 36.396038, 34.137466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.154938, 36.053566, 34.178116>,  <41.033360, 35.848083, 34.202507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.154938, 36.053566, 34.178116>,  <41.357571, 36.396038, 34.137466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154938, 36.053566, 34.178116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358669, 0.316454, 0.878188,
		-0.784050, 0.408421, -0.467395,
		-0.506579, -0.856183, 0.101627,
		41.002964, 35.796711, 34.208603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681011, 36.592842, 34.347416>,  <41.357571, 36.396038, 34.137466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681011, 36.592842, 34.347416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.672333, 36.205612, 34.447304>,  <40.667126, 35.973274, 34.507236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.672333, 36.205612, 34.447304>,  <40.681011, 36.592842, 34.347416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672333, 36.205612, 34.447304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736693, 0.184340, 0.650616,
		-0.675879, -0.169847, -0.717175,
		-0.021699, -0.968076, 0.249717,
		40.665825, 35.915188, 34.522221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000587, 36.335789, 34.324421>,  <40.681011, 36.592842, 34.347416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000587, 36.335789, 34.324421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.199673, 36.082283, 34.561275>,  <40.319122, 35.930180, 34.703388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.199673, 36.082283, 34.561275>,  <40.000587, 36.335789, 34.324421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199673, 36.082283, 34.561275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688851, 0.126000, 0.713869,
		-0.527036, -0.763192, -0.373860,
		0.497713, -0.633768, 0.592132,
		40.348988, 35.892151, 34.738914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493168, 36.007061, 34.709854>,  <40.000587, 36.335789, 34.324421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493168, 36.007061, 34.709854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.810425, 35.924519, 34.939060>,  <40.000778, 35.874992, 35.076584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.810425, 35.924519, 34.939060>,  <39.493168, 36.007061, 34.709854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810425, 35.924519, 34.939060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524874, 0.245645, 0.814964,
		-0.308933, -0.947140, 0.086518,
		0.793138, -0.206358, 0.573017,
		40.048367, 35.862610, 35.110966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089642, 35.708820, 35.231937>,  <39.493168, 36.007061, 34.709854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089642, 35.708820, 35.231937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.457798, 35.791897, 35.364449>,  <39.678692, 35.841743, 35.443954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.457798, 35.791897, 35.364449>,  <39.089642, 35.708820, 35.231937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457798, 35.791897, 35.364449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332558, -0.029768, 0.942613,
		0.205633, -0.977741, 0.041671,
		0.920391, 0.207691, 0.331277,
		39.733917, 35.854202, 35.463833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297417, 35.176277, 35.737881>,  <39.089642, 35.708820, 35.231937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297417, 35.176277, 35.737881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.523628, 35.498833, 35.807060>,  <39.659355, 35.692368, 35.848568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.523628, 35.498833, 35.807060>,  <39.297417, 35.176277, 35.737881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523628, 35.498833, 35.807060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348214, 0.043373, 0.936411,
		0.747609, -0.589794, 0.305325,
		0.565533, 0.806388, 0.172949,
		39.693287, 35.740749, 35.858944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699421, 35.031250, 36.365082>,  <39.297417, 35.176277, 35.737881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699421, 35.031250, 36.365082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.695896, 35.426865, 36.306129>,  <39.693783, 35.664234, 36.270756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.695896, 35.426865, 36.306129>,  <39.699421, 35.031250, 36.365082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695896, 35.426865, 36.306129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349312, 0.135060, 0.927221,
		0.936965, 0.059655, 0.344293,
		-0.008813, 0.989040, -0.147385,
		39.693253, 35.723576, 36.261913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944080, 35.289169, 36.964016>,  <39.699421, 35.031250, 36.365082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944080, 35.289169, 36.964016> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.761978, 35.601227, 36.792377>,  <39.652718, 35.788460, 36.689396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.761978, 35.601227, 36.792377>,  <39.944080, 35.289169, 36.964016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.761978, 35.601227, 36.792377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344432, 0.290096, 0.892867,
		0.821039, 0.554279, 0.136637,
		-0.455259, 0.780141, -0.429092,
		39.625401, 35.835270, 36.663651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207214, 35.880604, 37.260864>,  <39.944080, 35.289169, 36.964016>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207214, 35.880604, 37.260864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.852974, 35.983768, 37.106358>,  <39.640430, 36.045666, 37.013653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.852974, 35.983768, 37.106358>,  <40.207214, 35.880604, 37.260864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852974, 35.983768, 37.106358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227740, 0.483677, 0.845098,
		0.404784, 0.836385, -0.369608,
		-0.885598, 0.257908, -0.386263,
		39.587296, 36.061142, 36.990479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.842655, 34.973320, 29.269476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467819, 34.948563, 29.406902>,  <41.242920, 34.933708, 29.489359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467819, 34.948563, 29.406902>,  <41.842655, 34.973320, 29.269476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467819, 34.948563, 29.406902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286935, 0.424005, 0.859004,
		-0.198839, 0.903542, -0.379571,
		-0.937087, -0.061891, 0.343566,
		41.186691, 34.929996, 29.509972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725185, 35.622856, 29.616514>,  <41.842655, 34.973320, 29.269476>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725185, 35.622856, 29.616514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443844, 35.377010, 29.759365>,  <41.275040, 35.229504, 29.845076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443844, 35.377010, 29.759365>,  <41.725185, 35.622856, 29.616514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.443844, 35.377010, 29.759365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131458, 0.381271, 0.915069,
		-0.698575, 0.690568, -0.187374,
		-0.703358, -0.614612, 0.357127,
		41.232838, 35.192627, 29.866503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.420185, 36.073048, 30.063648>,  <41.725185, 35.622856, 29.616514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.420185, 36.073048, 30.063648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300476, 35.700466, 30.146429>,  <41.228649, 35.476917, 30.196098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.300476, 35.700466, 30.146429>,  <41.420185, 36.073048, 30.063648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300476, 35.700466, 30.146429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002618, 0.217693, 0.976014,
		-0.954163, 0.291556, -0.067589,
		-0.299276, -0.931453, 0.206951,
		41.210693, 35.421032, 30.208515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.887466, 36.203438, 30.559099>,  <41.420185, 36.073048, 30.063648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.887466, 36.203438, 30.559099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004436, 35.822792, 30.596891>,  <41.074619, 35.594406, 30.619566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.004436, 35.822792, 30.596891>,  <40.887466, 36.203438, 30.559099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.004436, 35.822792, 30.596891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022889, 0.091804, 0.995514,
		-0.956015, -0.293274, 0.005064,
		0.292424, -0.951610, 0.094478,
		41.092163, 35.537308, 30.625235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477627, 35.940178, 31.108210>,  <40.887466, 36.203438, 30.559099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477627, 35.940178, 31.108210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770603, 35.669674, 31.076708>,  <40.946388, 35.507370, 31.057806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770603, 35.669674, 31.076708>,  <40.477627, 35.940178, 31.108210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770603, 35.669674, 31.076708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018277, -0.135164, 0.990655,
		-0.680586, -0.724156, -0.111359,
		0.732440, -0.676260, -0.078755,
		40.990334, 35.466797, 31.053082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265533, 35.344002, 31.455906>,  <40.477627, 35.940178, 31.108210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265533, 35.344002, 31.455906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665325, 35.331638, 31.452036>,  <40.905201, 35.324219, 31.449713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665325, 35.331638, 31.452036>,  <40.265533, 35.344002, 31.455906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665325, 35.331638, 31.452036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005643, -0.127996, 0.991759,
		-0.031894, -0.991293, -0.127755,
		0.999475, -0.030910, -0.009676,
		40.965168, 35.322365, 31.449133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448009, 34.658657, 31.663649>,  <40.265533, 35.344002, 31.455906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448009, 34.658657, 31.663649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768806, 34.883930, 31.743284>,  <40.961285, 35.019093, 31.791065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768806, 34.883930, 31.743284>,  <40.448009, 34.658657, 31.663649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768806, 34.883930, 31.743284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125355, -0.167193, 0.977923,
		0.584036, -0.809241, -0.063489,
		0.801990, 0.563183, 0.199089,
		41.009403, 35.052887, 31.803011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821804, 34.294949, 32.146755>,  <40.448009, 34.658657, 31.663649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821804, 34.294949, 32.146755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978355, 34.661385, 32.181610>,  <41.072289, 34.881248, 32.202522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.978355, 34.661385, 32.181610>,  <40.821804, 34.294949, 32.146755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978355, 34.661385, 32.181610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045456, -0.075328, 0.996122,
		0.919106, -0.393824, 0.012160,
		0.391380, 0.916094, 0.087136,
		41.095768, 34.936214, 32.207752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260887, 34.253265, 32.712421>,  <40.821804, 34.294949, 32.146755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260887, 34.253265, 32.712421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213264, 34.645573, 32.650562>,  <41.184689, 34.880959, 32.613449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213264, 34.645573, 32.650562>,  <41.260887, 34.253265, 32.712421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213264, 34.645573, 32.650562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088413, 0.144663, 0.985523,
		0.988943, 0.131009, 0.069489,
		-0.119060, 0.980770, -0.154646,
		41.177547, 34.939804, 32.604168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952629, 33.874565, 32.918255>,  <41.260887, 34.253265, 32.712421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952629, 33.874565, 32.918255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869221, 33.510586, 33.061646>,  <41.819176, 33.292198, 33.147682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869221, 33.510586, 33.061646>,  <41.952629, 33.874565, 32.918255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869221, 33.510586, 33.061646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173967, -0.326182, -0.929161,
		0.962422, -0.256109, -0.090288,
		-0.208516, -0.909952, 0.358479,
		41.806667, 33.237598, 33.169189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302921, 33.472988, 32.537624>,  <41.952629, 33.874565, 32.918255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302921, 33.472988, 32.537624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043968, 33.214714, 32.699604>,  <41.888596, 33.059750, 32.796791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043968, 33.214714, 32.699604>,  <42.302921, 33.472988, 32.537624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043968, 33.214714, 32.699604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196164, -0.372255, -0.907164,
		0.736484, -0.666723, 0.114333,
		-0.647388, -0.645684, 0.404947,
		41.849751, 33.021008, 32.821087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.450539, 32.754604, 32.401489>,  <42.302921, 33.472988, 32.537624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.450539, 32.754604, 32.401489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054039, 32.758205, 32.454166>,  <41.816139, 32.760365, 32.485771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054039, 32.758205, 32.454166>,  <42.450539, 32.754604, 32.401489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.054039, 32.758205, 32.454166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110561, -0.601650, -0.791071,
		0.072110, -0.798709, 0.597380,
		-0.991250, 0.009003, 0.131691,
		41.756664, 32.760906, 32.493675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193726, 31.978464, 32.327908>,  <42.450539, 32.754604, 32.401489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.193726, 31.978464, 32.327908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915222, 32.250340, 32.235603>,  <41.748119, 32.413464, 32.180222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915222, 32.250340, 32.235603>,  <42.193726, 31.978464, 32.327908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915222, 32.250340, 32.235603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153284, -0.454866, -0.877269,
		-0.701238, -0.575429, 0.420888,
		-0.696254, 0.679689, -0.230765,
		41.706345, 32.454247, 32.166374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.798065, 31.657938, 31.838846>,  <42.193726, 31.978464, 32.327908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.798065, 31.657938, 31.838846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644749, 32.027229, 31.827969>,  <41.552757, 32.248802, 31.821442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644749, 32.027229, 31.827969>,  <41.798065, 31.657938, 31.838846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.644749, 32.027229, 31.827969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327371, -0.163324, -0.930674,
		-0.863665, -0.347815, 0.364839,
		-0.383290, 0.923228, -0.027193,
		41.529762, 32.304199, 31.819811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.076580, 31.623751, 31.583366>,  <41.798065, 31.657938, 31.838846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.076580, 31.623751, 31.583366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176285, 31.997936, 31.483145>,  <41.236107, 32.222446, 31.423012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176285, 31.997936, 31.483145>,  <41.076580, 31.623751, 31.583366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.176285, 31.997936, 31.483145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371004, -0.146745, -0.916963,
		-0.894554, 0.321517, 0.310483,
		0.249258, 0.935464, -0.250555,
		41.251060, 32.278576, 31.407978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448227, 31.924326, 31.034843>,  <41.076580, 31.623751, 31.583366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448227, 31.924326, 31.034843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786308, 32.132637, 30.986797>,  <40.989155, 32.257626, 30.957970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786308, 32.132637, 30.986797>,  <40.448227, 31.924326, 31.034843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786308, 32.132637, 30.986797> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037809, -0.165921, -0.985414,
		-0.533112, 0.837413, -0.120546,
		0.845199, 0.520779, -0.120117,
		41.039867, 32.288872, 30.950762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318489, 32.444386, 30.548645>,  <40.448227, 31.924326, 31.034843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318489, 32.444386, 30.548645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710564, 32.365208, 30.551394>,  <40.945808, 32.317699, 30.553043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.710564, 32.365208, 30.551394>,  <40.318489, 32.444386, 30.548645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710564, 32.365208, 30.551394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035590, -0.210150, -0.977021,
		0.194840, 0.957421, -0.213032,
		0.980189, -0.197945, 0.006871,
		41.004620, 32.305824, 30.553455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537640, 32.771076, 29.912535>,  <40.318489, 32.444386, 30.548645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537640, 32.771076, 29.912535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844753, 32.532005, 30.004873>,  <41.029022, 32.388561, 30.060276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844753, 32.532005, 30.004873>,  <40.537640, 32.771076, 29.912535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844753, 32.532005, 30.004873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182124, -0.141844, -0.972991,
		0.614280, 0.789088, -0.000054,
		0.767783, -0.597679, 0.230844,
		41.075089, 32.352703, 30.074127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086857, 33.008678, 29.619398>,  <40.537640, 32.771076, 29.912535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086857, 33.008678, 29.619398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202793, 32.630455, 29.678593>,  <41.272354, 32.403519, 29.714109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.202793, 32.630455, 29.678593>,  <41.086857, 33.008678, 29.619398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202793, 32.630455, 29.678593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198332, -0.091927, -0.975814,
		0.936298, 0.312186, 0.160891,
		0.289845, -0.945563, 0.147987,
		41.289745, 32.346786, 29.722988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629501, 32.906471, 29.174564>,  <41.086857, 33.008678, 29.619398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629501, 32.906471, 29.174564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508858, 32.533722, 29.255215>,  <41.436474, 32.310074, 29.303606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508858, 32.533722, 29.255215>,  <41.629501, 32.906471, 29.174564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.508858, 32.533722, 29.255215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093265, -0.239297, -0.966457,
		0.948860, -0.272685, 0.159084,
		-0.301607, -0.931869, 0.201627,
		41.418377, 32.254162, 29.315702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130787, 32.497696, 28.896856>,  <41.629501, 32.906471, 29.174564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130787, 32.497696, 28.896856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.803787, 32.267982, 28.914251>,  <41.607586, 32.130154, 28.924688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.803787, 32.267982, 28.914251>,  <42.130787, 32.497696, 28.896856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.803787, 32.267982, 28.914251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143123, -0.275713, -0.950525,
		0.557860, -0.770832, 0.307589,
		-0.817502, -0.574283, 0.043485,
		41.558537, 32.095699, 28.927298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.281715, 31.812338, 28.643562>,  <42.130787, 32.497696, 28.896856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.281715, 31.812338, 28.643562> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.886795, 31.847281, 28.590494>,  <41.649841, 31.868246, 28.558653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.886795, 31.847281, 28.590494>,  <42.281715, 31.812338, 28.643562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.886795, 31.847281, 28.590494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101492, -0.295577, -0.949912,
		-0.122194, -0.951317, 0.282958,
		-0.987303, 0.087356, -0.132668,
		41.590603, 31.873487, 28.550694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161003, 31.248882, 28.156624>,  <42.281715, 31.812338, 28.643562>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161003, 31.248882, 28.156624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807411, 31.435884, 28.154825>,  <41.595257, 31.548086, 28.153746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807411, 31.435884, 28.154825>,  <42.161003, 31.248882, 28.156624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.807411, 31.435884, 28.154825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105361, -0.208567, -0.972316,
		-0.455503, -0.859032, 0.233625,
		-0.883977, 0.467508, -0.004494,
		41.542217, 31.576138, 28.153477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.439438, 33.436199, 28.656780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.821175, 33.338287, 28.725273>,  <35.050217, 33.279541, 28.766369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.821175, 33.338287, 28.725273>,  <34.439438, 33.436199, 28.656780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821175, 33.338287, 28.725273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199753, -0.096691, 0.975064,
		-0.222119, -0.964745, -0.141172,
		0.954339, -0.244779, 0.171234,
		35.107475, 33.264854, 28.776644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415718, 32.870628, 28.952145>,  <34.439438, 33.436199, 28.656780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415718, 32.870628, 28.952145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.784008, 32.994801, 29.046717>,  <35.004982, 33.069305, 29.103460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.784008, 32.994801, 29.046717>,  <34.415718, 32.870628, 28.952145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784008, 32.994801, 29.046717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199193, -0.147099, 0.968857,
		0.335544, -0.939145, -0.073601,
		0.920724, 0.310433, 0.236429,
		35.060226, 33.087929, 29.117645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733776, 32.360195, 29.419622>,  <34.415718, 32.870628, 28.952145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733776, 32.360195, 29.419622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.927605, 32.703678, 29.486328>,  <35.043903, 32.909767, 29.526352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.927605, 32.703678, 29.486328>,  <34.733776, 32.360195, 29.419622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927605, 32.703678, 29.486328> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056832, -0.159337, 0.985587,
		0.872904, -0.487064, -0.028408,
		0.484570, 0.858709, 0.166766,
		35.072975, 32.961292, 29.536358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158443, 32.191944, 29.966311>,  <34.733776, 32.360195, 29.419622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158443, 32.191944, 29.966311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.226425, 32.586037, 29.957998>,  <35.267216, 32.822491, 29.953011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.226425, 32.586037, 29.957998>,  <35.158443, 32.191944, 29.966311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226425, 32.586037, 29.957998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261967, -0.024841, 0.964757,
		0.949993, -0.169413, -0.262320,
		0.169959, 0.985232, -0.020782,
		35.277412, 32.881607, 29.951763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822289, 32.375916, 30.285414>,  <35.158443, 32.191944, 29.966311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822289, 32.375916, 30.285414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.549675, 32.665340, 30.329185>,  <35.386108, 32.838993, 30.355448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.549675, 32.665340, 30.329185>,  <35.822289, 32.375916, 30.285414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549675, 32.665340, 30.329185> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028083, -0.123564, 0.991939,
		0.731247, 0.679113, 0.063893,
		-0.681534, 0.723558, 0.109428,
		35.345215, 32.882408, 30.362015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989254, 32.632851, 30.902121>,  <35.822289, 32.375916, 30.285414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989254, 32.632851, 30.902121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.634647, 32.806862, 30.839067>,  <35.421883, 32.911266, 30.801235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.634647, 32.806862, 30.839067>,  <35.989254, 32.632851, 30.902121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634647, 32.806862, 30.839067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109842, 0.133081, 0.984999,
		0.449477, 0.890530, -0.070194,
		-0.886513, 0.435024, -0.157635,
		35.368694, 32.937370, 30.791777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066345, 33.275425, 31.230066>,  <35.989254, 32.632851, 30.902121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066345, 33.275425, 31.230066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.673962, 33.211575, 31.185810>,  <35.438534, 33.173264, 31.159256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.673962, 33.211575, 31.185810>,  <36.066345, 33.275425, 31.230066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673962, 33.211575, 31.185810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157762, 0.322598, 0.933296,
		-0.113288, 0.932979, -0.341638,
		-0.980957, -0.159629, -0.110642,
		35.379673, 33.163685, 31.152618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703583, 33.940926, 31.508049>,  <36.066345, 33.275425, 31.230066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703583, 33.940926, 31.508049> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.429218, 33.649891, 31.512819>,  <35.264599, 33.475269, 31.515680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.429218, 33.649891, 31.512819>,  <35.703583, 33.940926, 31.508049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429218, 33.649891, 31.512819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143690, 0.151486, 0.977960,
		-0.713360, 0.669078, -0.208453,
		-0.685909, -0.727590, 0.011924,
		35.223446, 33.431614, 31.516397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152088, 34.189011, 31.807407>,  <35.703583, 33.940926, 31.508049>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152088, 34.189011, 31.807407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.155930, 33.794441, 31.872988>,  <35.158234, 33.557701, 31.912336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.155930, 33.794441, 31.872988>,  <35.152088, 34.189011, 31.807407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155930, 33.794441, 31.872988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122256, 0.161571, 0.979259,
		-0.992452, -0.029450, -0.119044,
		0.009605, -0.986422, 0.163952,
		35.158810, 33.498516, 31.922173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612114, 34.085514, 32.299267>,  <35.152088, 34.189011, 31.807407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612114, 34.085514, 32.299267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.800945, 33.732895, 32.300900>,  <34.914246, 33.521324, 32.301880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.800945, 33.732895, 32.300900>,  <34.612114, 34.085514, 32.299267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800945, 33.732895, 32.300900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031143, 0.021305, 0.999288,
		-0.881007, -0.471614, 0.037511,
		0.472077, -0.881548, 0.004082,
		34.942570, 33.468430, 32.302124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187588, 33.633755, 32.683941>,  <34.612114, 34.085514, 32.299267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187588, 33.633755, 32.683941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.547810, 33.460575, 32.699688>,  <34.763943, 33.356667, 32.709137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.547810, 33.460575, 32.699688>,  <34.187588, 33.633755, 32.683941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547810, 33.460575, 32.699688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122224, -0.165240, 0.978651,
		-0.417203, -0.886143, -0.201725,
		0.900557, -0.432952, 0.039369,
		34.817978, 33.330688, 32.711498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200001, 33.016060, 33.075123>,  <34.187588, 33.633755, 32.683941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200001, 33.016060, 33.075123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.590473, 33.100609, 33.094658>,  <34.824757, 33.151337, 33.106377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.590473, 33.100609, 33.094658>,  <34.200001, 33.016060, 33.075123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590473, 33.100609, 33.094658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011021, -0.176503, 0.984238,
		0.216658, -0.961337, -0.169970,
		0.976185, 0.211370, 0.048835,
		34.883327, 33.164021, 33.109310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473690, 32.525047, 33.505085>,  <34.200001, 33.016060, 33.075123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473690, 32.525047, 33.505085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.748013, 32.816113, 33.510551>,  <34.912605, 32.990749, 33.513832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.748013, 32.816113, 33.510551>,  <34.473690, 32.525047, 33.505085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748013, 32.816113, 33.510551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141024, -0.151289, 0.978378,
		0.713994, -0.669047, -0.206372,
		0.685803, 0.727659, 0.013667,
		34.953754, 33.034409, 33.514652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126358, 32.218414, 33.825691>,  <34.473690, 32.525047, 33.505085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126358, 32.218414, 33.825691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.159451, 32.614861, 33.867336>,  <35.179306, 32.852730, 33.892323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.159451, 32.614861, 33.867336>,  <35.126358, 32.218414, 33.825691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159451, 32.614861, 33.867336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020403, -0.106137, 0.994142,
		0.996363, -0.080124, -0.029002,
		0.082733, 0.991118, 0.104116,
		35.184269, 32.912197, 33.898571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937996, 31.956831, 33.502350>,  <35.126358, 32.218414, 33.825691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937996, 31.956831, 33.502350> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.116131, 31.611597, 33.597641>,  <36.223011, 31.404457, 33.654816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.116131, 31.611597, 33.597641>,  <35.937996, 31.956831, 33.502350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116131, 31.611597, 33.597641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078292, -0.227517, -0.970622,
		0.891931, 0.450910, -0.033750,
		0.445342, -0.863085, 0.238232,
		36.249733, 31.352671, 33.669109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546616, 31.938314, 33.090607>,  <35.937996, 31.956831, 33.502350>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546616, 31.938314, 33.090607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.435963, 31.569445, 33.198734>,  <36.369572, 31.348124, 33.263611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.435963, 31.569445, 33.198734>,  <36.546616, 31.938314, 33.090607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435963, 31.569445, 33.198734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044384, -0.293252, -0.955004,
		0.959951, -0.252184, 0.122052,
		-0.276629, -0.922175, 0.270315,
		36.352974, 31.292791, 33.279827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036167, 31.470522, 32.727974>,  <36.546616, 31.938314, 33.090607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036167, 31.470522, 32.727974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.773563, 31.189695, 32.838322>,  <36.616001, 31.021200, 32.904530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.773563, 31.189695, 32.838322>,  <37.036167, 31.470522, 32.727974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773563, 31.189695, 32.838322> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083568, -0.431158, -0.898399,
		0.749677, -0.566750, 0.341728,
		-0.656506, -0.702067, 0.275867,
		36.576611, 30.979074, 32.921082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323608, 30.790794, 32.555283>,  <37.036167, 31.470522, 32.727974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323608, 30.790794, 32.555283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.930561, 30.718746, 32.573261>,  <36.694733, 30.675518, 32.584049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.930561, 30.718746, 32.573261>,  <37.323608, 30.790794, 32.555283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930561, 30.718746, 32.573261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054504, -0.511338, -0.857650,
		0.177461, -0.840292, 0.512267,
		-0.982618, -0.180120, 0.044944,
		36.635777, 30.664711, 32.586742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227352, 30.111189, 32.424576>,  <37.323608, 30.790794, 32.555283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227352, 30.111189, 32.424576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.886757, 30.291632, 32.317638>,  <36.682400, 30.399899, 32.253475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.886757, 30.291632, 32.317638>,  <37.227352, 30.111189, 32.424576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886757, 30.291632, 32.317638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065710, -0.414017, -0.907894,
		-0.520244, -0.790626, 0.322887,
		-0.851486, 0.451110, -0.267341,
		36.631310, 30.426964, 32.237434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010284, 29.666233, 31.965858>,  <37.227352, 30.111189, 32.424576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010284, 29.666233, 31.965858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.776745, 29.981777, 31.889109>,  <36.636620, 30.171104, 31.843058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.776745, 29.981777, 31.889109>,  <37.010284, 29.666233, 31.965858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776745, 29.981777, 31.889109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106418, -0.308665, -0.945199,
		-0.804856, -0.531435, 0.264163,
		-0.583850, 0.788861, -0.191877,
		36.601589, 30.218435, 31.831545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482376, 29.346746, 31.579323>,  <37.010284, 29.666233, 31.965858>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482376, 29.346746, 31.579323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.473312, 29.739046, 31.501745>,  <36.467873, 29.974426, 31.455198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.473312, 29.739046, 31.501745>,  <36.482376, 29.346746, 31.579323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473312, 29.739046, 31.501745> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006766, -0.193838, -0.981010,
		-0.999720, -0.023545, -0.002243,
		-0.022663, 0.980751, -0.193943,
		36.466515, 30.033272, 31.443562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897293, 29.393419, 31.056217>,  <36.482376, 29.346746, 31.579323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897293, 29.393419, 31.056217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.140396, 29.708511, 31.015987>,  <36.286259, 29.897566, 30.991850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.140396, 29.708511, 31.015987>,  <35.897293, 29.393419, 31.056217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140396, 29.708511, 31.015987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152650, -0.008402, -0.988244,
		-0.779314, 0.615965, 0.115140,
		0.607756, 0.787729, -0.100575,
		36.322723, 29.944830, 30.985815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469688, 29.896257, 30.681030>,  <35.897293, 29.393419, 31.056217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469688, 29.896257, 30.681030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.854900, 29.987009, 30.622936>,  <36.086029, 30.041460, 30.588079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.854900, 29.987009, 30.622936>,  <35.469688, 29.896257, 30.681030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854900, 29.987009, 30.622936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187980, 0.179815, -0.965572,
		-0.192951, 0.957180, 0.215816,
		0.963034, 0.226877, -0.145235,
		36.143810, 30.055073, 30.579365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.394180, 30.248112, 30.048626>,  <35.469688, 29.896257, 30.681030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.394180, 30.248112, 30.048626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.792194, 30.252201, 30.088219>,  <36.031002, 30.254654, 30.111975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.792194, 30.252201, 30.088219>,  <35.394180, 30.248112, 30.048626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792194, 30.252201, 30.088219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091826, 0.288871, -0.952954,
		-0.038335, 0.957313, 0.286499,
		0.995037, 0.010223, 0.098980,
		36.090706, 30.255268, 30.117912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769489, 30.847637, 29.713955>,  <35.394180, 30.248112, 30.048626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769489, 30.847637, 29.713955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.008293, 30.527184, 29.730726>,  <36.151577, 30.334911, 29.740789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.008293, 30.527184, 29.730726>,  <35.769489, 30.847637, 29.713955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008293, 30.527184, 29.730726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248435, 0.134932, -0.959204,
		0.762796, 0.583073, 0.279586,
		0.597012, -0.801136, 0.041930,
		36.187397, 30.286842, 29.743305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467319, 31.058792, 29.414753>,  <35.769489, 30.847637, 29.713955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467319, 31.058792, 29.414753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.437092, 30.660469, 29.394123>,  <36.418953, 30.421476, 29.381744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.437092, 30.660469, 29.394123>,  <36.467319, 31.058792, 29.414753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437092, 30.660469, 29.394123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333368, 0.023516, -0.942503,
		0.939763, -0.088422, 0.330192,
		-0.075573, -0.995805, -0.051576,
		36.414421, 30.361727, 29.378651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032200, 30.822062, 29.022768>,  <36.467319, 31.058792, 29.414753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032200, 30.822062, 29.022768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.733227, 30.558529, 28.988621>,  <36.553844, 30.400410, 28.968132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.733227, 30.558529, 28.988621>,  <37.032200, 30.822062, 29.022768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733227, 30.558529, 28.988621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146610, -0.038245, -0.988455,
		0.647961, -0.751317, 0.125177,
		-0.747430, -0.658832, -0.085370,
		36.508999, 30.360880, 28.963011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251362, 30.298538, 28.521219>,  <37.032200, 30.822062, 29.022768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251362, 30.298538, 28.521219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.856743, 30.233149, 28.521221>,  <36.619972, 30.193914, 28.521221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.856743, 30.233149, 28.521221>,  <37.251362, 30.298538, 28.521219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856743, 30.233149, 28.521221> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021029, -0.126932, -0.991688,
		0.162118, -0.978348, 0.128662,
		-0.986548, -0.163476, 0.000004,
		36.560780, 30.184107, 28.521223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437542, 29.487988, 28.615683>,  <37.251362, 30.298538, 28.521219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437542, 29.487988, 28.615683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.780636, 29.289171, 28.563154>,  <37.986492, 29.169882, 28.531637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.780636, 29.289171, 28.563154>,  <37.437542, 29.487988, 28.615683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780636, 29.289171, 28.563154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004689, -0.262992, 0.964787,
		-0.514077, -0.826912, -0.227907,
		0.857731, -0.497043, -0.131321,
		38.037956, 29.140059, 28.523758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380741, 28.827414, 28.852819>,  <37.437542, 29.487988, 28.615683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380741, 28.827414, 28.852819> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.778675, 28.867327, 28.860231>,  <38.017437, 28.891275, 28.864679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.778675, 28.867327, 28.860231>,  <37.380741, 28.827414, 28.852819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778675, 28.867327, 28.860231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001320, -0.169862, 0.985467,
		0.101483, -0.980403, -0.168854,
		0.994836, 0.099786, 0.018532,
		38.077126, 28.897263, 28.865791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652317, 28.317951, 29.361851>,  <37.380741, 28.827414, 28.852819>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652317, 28.317951, 29.361851> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.962910, 28.564669, 29.310253>,  <38.149265, 28.712700, 29.279295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.962910, 28.564669, 29.310253>,  <37.652317, 28.317951, 29.361851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962910, 28.564669, 29.310253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337202, -0.233785, 0.911942,
		0.532323, -0.751605, -0.389515,
		0.776484, 0.616793, -0.128994,
		38.195854, 28.749706, 29.271555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251633, 28.002357, 29.564957>,  <37.652317, 28.317951, 29.361851>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251633, 28.002357, 29.564957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.343262, 28.391672, 29.571148>,  <38.398239, 28.625261, 29.574863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.343262, 28.391672, 29.571148>,  <38.251633, 28.002357, 29.564957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343262, 28.391672, 29.571148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356462, -0.098675, 0.929084,
		0.905792, -0.207312, -0.369544,
		0.229075, 0.973286, 0.015480,
		38.411983, 28.683659, 29.575792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870575, 27.992460, 30.006411>,  <38.251633, 28.002357, 29.564957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870575, 27.992460, 30.006411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.763031, 28.377094, 29.984243>,  <38.698505, 28.607874, 29.970943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.763031, 28.377094, 29.984243>,  <38.870575, 27.992460, 30.006411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763031, 28.377094, 29.984243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316656, 0.142582, 0.937763,
		0.909639, 0.234580, -0.342825,
		-0.268861, 0.961583, -0.055417,
		38.682373, 28.665569, 29.967619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481602, 28.396553, 30.151812>,  <38.870575, 27.992460, 30.006411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481602, 28.396553, 30.151812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.156631, 28.612555, 30.239780>,  <38.961651, 28.742155, 30.292561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.156631, 28.612555, 30.239780>,  <39.481602, 28.396553, 30.151812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156631, 28.612555, 30.239780> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357877, 0.164046, 0.919246,
		0.460321, 0.825520, -0.326530,
		-0.812421, 0.540006, 0.219921,
		38.912907, 28.774557, 30.305758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695076, 29.018763, 30.342155>,  <39.481602, 28.396553, 30.151812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695076, 29.018763, 30.342155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.327251, 29.031473, 30.498819>,  <39.106556, 29.039099, 30.592817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.327251, 29.031473, 30.498819>,  <39.695076, 29.018763, 30.342155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327251, 29.031473, 30.498819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348124, 0.528176, 0.774493,
		-0.182256, 0.848540, -0.496752,
		-0.919561, 0.031775, 0.391661,
		39.051384, 29.041006, 30.616318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611198, 29.750378, 30.657387>,  <39.695076, 29.018763, 30.342155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611198, 29.750378, 30.657387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.339191, 29.522434, 30.841925>,  <39.175987, 29.385668, 30.952648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.339191, 29.522434, 30.841925>,  <39.611198, 29.750378, 30.657387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339191, 29.522434, 30.841925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178131, 0.481966, 0.857892,
		-0.711228, 0.665561, -0.226236,
		-0.680018, -0.569857, 0.461345,
		39.135185, 29.351477, 30.980328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330563, 30.131445, 31.119617>,  <39.611198, 29.750378, 30.657387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330563, 30.131445, 31.119617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.193638, 29.783978, 31.262857>,  <39.111481, 29.575497, 31.348801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.193638, 29.783978, 31.262857>,  <39.330563, 30.131445, 31.119617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.193638, 29.783978, 31.262857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117514, 0.338550, 0.933581,
		-0.932208, 0.361660, -0.013809,
		-0.342314, -0.868669, 0.358099,
		39.090942, 29.523376, 31.370287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819000, 30.329908, 31.593948>,  <39.330563, 30.131445, 31.119617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819000, 30.329908, 31.593948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.942680, 29.961191, 31.687496>,  <39.016888, 29.739962, 31.743626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.942680, 29.961191, 31.687496>,  <38.819000, 30.329908, 31.593948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942680, 29.961191, 31.687496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153416, 0.291050, 0.944327,
		-0.938542, -0.256103, 0.231410,
		0.309197, -0.921793, 0.233872,
		39.035439, 29.684654, 31.757658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576904, 30.252584, 32.243717>,  <38.819000, 30.329908, 31.593948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576904, 30.252584, 32.243717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.894093, 30.013378, 32.197109>,  <39.084404, 29.869854, 32.169144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.894093, 30.013378, 32.197109>,  <38.576904, 30.252584, 32.243717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894093, 30.013378, 32.197109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342875, 0.279929, 0.896703,
		-0.503625, -0.751010, 0.427020,
		0.792968, -0.598017, -0.116523,
		39.131985, 29.833973, 32.162151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444263, 29.721325, 32.725422>,  <38.576904, 30.252584, 32.243717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444263, 29.721325, 32.725422> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.835468, 29.733173, 32.642845>,  <39.070190, 29.740282, 32.593300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.835468, 29.733173, 32.642845>,  <38.444263, 29.721325, 32.725422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835468, 29.733173, 32.642845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192126, 0.257084, 0.947099,
		0.081128, -0.965935, 0.245739,
		0.978011, 0.029623, -0.206438,
		39.128872, 29.742060, 32.580914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750153, 29.456062, 33.320843>,  <38.444263, 29.721325, 32.725422>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750153, 29.456062, 33.320843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.088398, 29.593678, 33.157589>,  <39.291348, 29.676247, 33.059639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.088398, 29.593678, 33.157589>,  <38.750153, 29.456062, 33.320843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088398, 29.593678, 33.157589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412641, 0.063703, 0.908663,
		0.338613, -0.936792, -0.088095,
		0.845617, 0.344037, -0.408130,
		39.342083, 29.696888, 33.035149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316628, 29.087725, 33.628685>,  <38.750153, 29.456062, 33.320843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316628, 29.087725, 33.628685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.452274, 29.433107, 33.479317>,  <39.533661, 29.640337, 33.389694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.452274, 29.433107, 33.479317>,  <39.316628, 29.087725, 33.628685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452274, 29.433107, 33.479317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487368, 0.178273, 0.854805,
		0.804657, -0.471873, -0.360365,
		0.339116, 0.863455, -0.373425,
		39.554008, 29.692144, 33.367290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.567898, 30.777395, 27.932238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.447716, 31.149633, 27.848600>,  <41.375607, 31.372976, 27.798418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.447716, 31.149633, 27.848600>,  <41.567898, 30.777395, 27.932238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.447716, 31.149633, 27.848600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224937, -0.282176, -0.932620,
		-0.926891, -0.233181, 0.294107,
		-0.300459, 0.930593, -0.209095,
		41.357578, 31.428812, 27.785872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124126, 30.702394, 27.421192>,  <41.567898, 30.777395, 27.932238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124126, 30.702394, 27.421192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.191578, 31.091967, 27.360498>,  <41.232048, 31.325710, 27.324081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.191578, 31.091967, 27.360498>,  <41.124126, 30.702394, 27.421192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191578, 31.091967, 27.360498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236691, -0.109425, -0.965403,
		-0.956839, 0.198710, 0.212069,
		0.168630, 0.973930, -0.151735,
		41.242168, 31.384146, 27.314978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544689, 30.883152, 27.128307>,  <41.124126, 30.702394, 27.421192>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544689, 30.883152, 27.128307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.813622, 31.164860, 27.037113>,  <40.974979, 31.333885, 26.982397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.813622, 31.164860, 27.037113>,  <40.544689, 30.883152, 27.128307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.813622, 31.164860, 27.037113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233291, -0.090705, -0.968167,
		-0.702531, 0.704113, 0.103317,
		0.672328, 0.704271, -0.227987,
		41.015320, 31.376141, 26.968718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225327, 31.418283, 26.683950>,  <40.544689, 30.883152, 27.128307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225327, 31.418283, 26.683950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.616943, 31.460432, 26.614244>,  <40.851913, 31.485722, 26.572422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.616943, 31.460432, 26.614244>,  <40.225327, 31.418283, 26.683950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616943, 31.460432, 26.614244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182975, 0.079548, -0.979894,
		-0.089389, 0.991246, 0.097161,
		0.979045, 0.105370, -0.174263,
		40.910656, 31.492043, 26.561966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335560, 31.767906, 25.969625>,  <40.225327, 31.418283, 26.683950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335560, 31.767906, 25.969625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.706310, 31.628822, 26.026186>,  <40.928761, 31.545372, 26.060122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.706310, 31.628822, 26.026186>,  <40.335560, 31.767906, 25.969625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706310, 31.628822, 26.026186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094693, -0.147922, -0.984455,
		0.363221, 0.925860, -0.104180,
		0.926878, -0.347710, 0.141400,
		40.984375, 31.524509, 26.068605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739338, 31.959593, 25.449207>,  <40.335560, 31.767906, 25.969625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.739338, 31.959593, 25.449207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.953590, 31.642452, 25.565475>,  <41.082142, 31.452168, 25.635237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.953590, 31.642452, 25.565475>,  <40.739338, 31.959593, 25.449207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953590, 31.642452, 25.565475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188865, -0.223015, -0.956344,
		0.823063, 0.567142, 0.030289,
		0.535628, -0.792852, 0.290669,
		41.114281, 31.404596, 25.652676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.336731, 31.953741, 25.001829>,  <40.739338, 31.959593, 25.449207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.336731, 31.953741, 25.001829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.331554, 31.586712, 25.160770>,  <41.328449, 31.366493, 25.256136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.331554, 31.586712, 25.160770>,  <41.336731, 31.953741, 25.001829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.331554, 31.586712, 25.160770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235637, -0.388994, -0.890595,
		0.971755, 0.082102, 0.221250,
		-0.012946, -0.917575, 0.397353,
		41.327671, 31.311440, 25.279976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952785, 31.720732, 24.872389>,  <41.336731, 31.953741, 25.001829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952785, 31.720732, 24.872389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.709442, 31.407770, 24.925665>,  <41.563435, 31.219994, 24.957630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.709442, 31.407770, 24.925665>,  <41.952785, 31.720732, 24.872389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.709442, 31.407770, 24.925665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224870, -0.330866, -0.916494,
		0.761139, -0.527606, 0.377225,
		-0.608359, -0.782406, 0.133193,
		41.526936, 31.173048, 24.965622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.264797, 31.271637, 24.430405>,  <41.952785, 31.720732, 24.872389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.264797, 31.271637, 24.430405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.913433, 31.100069, 24.514715>,  <41.702614, 30.997128, 24.565302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.913433, 31.100069, 24.514715>,  <42.264797, 31.271637, 24.430405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913433, 31.100069, 24.514715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014587, -0.464893, -0.885247,
		0.477689, -0.774533, 0.414623,
		-0.878408, -0.428921, 0.210776,
		41.649910, 30.971394, 24.577948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354053, 30.568268, 24.326061>,  <42.264797, 31.271637, 24.430405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354053, 30.568268, 24.326061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.964195, 30.641258, 24.274269>,  <41.730282, 30.685053, 24.243193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.964195, 30.641258, 24.274269>,  <42.354053, 30.568268, 24.326061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.964195, 30.641258, 24.274269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049044, -0.390391, -0.919342,
		-0.218305, -0.902384, 0.371544,
		-0.974647, 0.182475, -0.129481,
		41.671803, 30.696001, 24.235424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041229, 29.971144, 24.014811>,  <42.354053, 30.568268, 24.326061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041229, 29.971144, 24.014811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.786346, 30.268345, 23.932922>,  <41.633415, 30.446665, 23.883789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.786346, 30.268345, 23.932922>,  <42.041229, 29.971144, 24.014811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.786346, 30.268345, 23.932922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058406, -0.218315, -0.974129,
		-0.768473, -0.632683, 0.095717,
		-0.637211, 0.743002, -0.204721,
		41.595184, 30.491245, 23.871506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.589069, 29.726740, 23.478655>,  <42.041229, 29.971144, 24.014811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.589069, 29.726740, 23.478655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.547623, 30.124489, 23.469790>,  <41.522755, 30.363138, 23.464470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.547623, 30.124489, 23.469790>,  <41.589069, 29.726740, 23.478655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.547623, 30.124489, 23.469790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047634, -0.017295, -0.998715,
		-0.993476, -0.104542, -0.045574,
		-0.103619, 0.994370, -0.022162,
		41.516537, 30.422800, 23.463140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054096, 29.843721, 23.039474>,  <41.589069, 29.726740, 23.478655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054096, 29.843721, 23.039474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.333038, 30.129177, 23.066040>,  <41.500404, 30.300449, 23.081980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.333038, 30.129177, 23.066040>,  <41.054096, 29.843721, 23.039474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.333038, 30.129177, 23.066040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157200, -0.061885, -0.985626,
		-0.699270, 0.697776, -0.155340,
		0.697359, 0.713638, 0.066416,
		41.542248, 30.343269, 23.085964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499054, 30.357580, 23.104975>,  <41.054096, 29.843721, 23.039474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499054, 30.357580, 23.104975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.542297, 30.045851, 23.351864>,  <40.568241, 29.858812, 23.499998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.542297, 30.045851, 23.351864>,  <40.499054, 30.357580, 23.104975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542297, 30.045851, 23.351864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152304, -0.600549, -0.784949,
		0.982403, 0.178864, 0.053771,
		0.108107, -0.779326, 0.617223,
		40.574730, 29.812054, 23.537031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941879, 30.304209, 23.551304>,  <40.499054, 30.357580, 23.104975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941879, 30.304209, 23.551304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.614426, 30.074497, 23.553946>,  <39.417953, 29.936670, 23.555531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.614426, 30.074497, 23.553946>,  <39.941879, 30.304209, 23.551304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614426, 30.074497, 23.553946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496058, -0.712832, -0.495779,
		0.289421, -0.402586, 0.868424,
		-0.818634, -0.574278, 0.006603,
		39.368835, 29.902214, 23.555925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757511, 30.857504, 23.748989>,  <39.941879, 30.304209, 23.551304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757511, 30.857504, 23.748989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.490791, 30.596952, 23.604164>,  <39.330761, 30.440622, 23.517269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.490791, 30.596952, 23.604164>,  <39.757511, 30.857504, 23.748989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490791, 30.596952, 23.604164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285345, -0.225654, 0.931482,
		-0.688448, 0.724421, -0.035402,
		-0.666796, -0.651379, -0.362060,
		39.290752, 30.401539, 23.495546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012867, 31.006567, 23.957722>,  <39.757511, 30.857504, 23.748989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012867, 31.006567, 23.957722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.974579, 30.620594, 23.859949>,  <38.951607, 30.389011, 23.801287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.974579, 30.620594, 23.859949>,  <39.012867, 31.006567, 23.957722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974579, 30.620594, 23.859949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416499, -0.184202, 0.890280,
		-0.904083, 0.187025, -0.384260,
		-0.095723, -0.964931, -0.244430,
		38.945862, 30.331116, 23.786621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270596, 30.836176, 24.210524>,  <39.012867, 31.006567, 23.957722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270596, 30.836176, 24.210524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.454601, 30.482798, 24.174961>,  <38.565006, 30.270771, 24.153624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.454601, 30.482798, 24.174961>,  <38.270596, 30.836176, 24.210524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454601, 30.482798, 24.174961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367587, -0.280633, 0.886637,
		-0.808248, -0.375187, -0.453840,
		0.460017, -0.883448, -0.088907,
		38.592606, 30.217764, 24.148289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819935, 30.336357, 24.527075>,  <38.270596, 30.836176, 24.210524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819935, 30.336357, 24.527075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.164974, 30.134926, 24.507740>,  <38.371998, 30.014067, 24.496140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.164974, 30.134926, 24.507740>,  <37.819935, 30.336357, 24.527075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164974, 30.134926, 24.507740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237107, -0.486841, 0.840694,
		-0.446886, -0.713719, -0.539350,
		0.862597, -0.503578, -0.048335,
		38.423752, 29.983852, 24.493240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627113, 29.655977, 24.734116>,  <37.819935, 30.336357, 24.527075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627113, 29.655977, 24.734116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.019741, 29.713205, 24.784805>,  <38.255318, 29.747543, 24.815220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.019741, 29.713205, 24.784805>,  <37.627113, 29.655977, 24.734116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.019741, 29.713205, 24.784805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065766, -0.369717, 0.926814,
		0.179454, -0.918063, -0.353492,
		0.981566, 0.143072, 0.126725,
		38.314209, 29.756126, 24.822823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872730, 29.103012, 25.084541>,  <37.627113, 29.655977, 24.734116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872730, 29.103012, 25.084541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.161327, 29.369539, 25.159878>,  <38.334484, 29.529455, 25.205080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.161327, 29.369539, 25.159878>,  <37.872730, 29.103012, 25.084541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161327, 29.369539, 25.159878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119558, -0.387795, 0.913959,
		0.682023, -0.636896, -0.359454,
		0.721492, 0.666317, 0.188339,
		38.377773, 29.569435, 25.216379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300007, 28.726070, 25.546303>,  <37.872730, 29.103012, 25.084541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300007, 28.726070, 25.546303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.427719, 29.098408, 25.617395>,  <38.504345, 29.321810, 25.660051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.427719, 29.098408, 25.617395>,  <38.300007, 28.726070, 25.546303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427719, 29.098408, 25.617395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057409, -0.206203, 0.976824,
		0.945920, -0.301677, -0.119275,
		0.319280, 0.930845, 0.177732,
		38.523502, 29.377661, 25.670715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000866, 28.717852, 25.972700>,  <38.300007, 28.726070, 25.546303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000866, 28.717852, 25.972700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.802631, 29.062679, 26.015095>,  <38.683693, 29.269575, 26.040531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.802631, 29.062679, 26.015095>,  <39.000866, 28.717852, 25.972700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802631, 29.062679, 26.015095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086359, -0.072512, 0.993622,
		0.864256, 0.501575, -0.038512,
		-0.495583, 0.862070, 0.105984,
		38.653957, 29.321301, 26.046890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340736, 29.056190, 26.575317>,  <39.000866, 28.717852, 25.972700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340736, 29.056190, 26.575317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.985512, 29.231323, 26.519247>,  <38.772377, 29.336403, 26.485605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.985512, 29.231323, 26.519247>,  <39.340736, 29.056190, 26.575317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985512, 29.231323, 26.519247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167544, -0.024294, 0.985565,
		0.428106, 0.898729, 0.094931,
		-0.888062, 0.437832, -0.140176,
		38.719093, 29.362673, 26.477194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380539, 29.708725, 26.977015>,  <39.340736, 29.056190, 26.575317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380539, 29.708725, 26.977015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.998348, 29.604921, 26.920853>,  <38.769032, 29.542639, 26.887156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.998348, 29.604921, 26.920853>,  <39.380539, 29.708725, 26.977015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998348, 29.604921, 26.920853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131061, -0.053054, 0.989954,
		-0.264351, 0.964282, 0.016681,
		-0.955480, -0.259509, -0.140405,
		38.711704, 29.527069, 26.878731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015568, 30.059559, 27.442513>,  <39.380539, 29.708725, 26.977015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015568, 30.059559, 27.442513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.768600, 29.756607, 27.357504>,  <38.620419, 29.574835, 27.306498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.768600, 29.756607, 27.357504>,  <39.015568, 30.059559, 27.442513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768600, 29.756607, 27.357504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220843, -0.092410, 0.970922,
		-0.754997, 0.646401, -0.110206,
		-0.617421, -0.757381, -0.212523,
		38.583374, 29.529392, 27.293747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536377, 30.091276, 27.970552>,  <39.015568, 30.059559, 27.442513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536377, 30.091276, 27.970552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.470787, 29.718786, 27.840366>,  <38.431435, 29.495293, 27.762255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.470787, 29.718786, 27.840366>,  <38.536377, 30.091276, 27.970552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470787, 29.718786, 27.840366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272274, -0.274391, 0.922267,
		-0.948145, 0.239845, -0.208555,
		-0.163976, -0.931227, -0.325466,
		38.421593, 29.439419, 27.742727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838284, 29.922480, 28.212019>,  <38.536377, 30.091276, 27.970552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838284, 29.922480, 28.212019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.040852, 29.582939, 28.151375>,  <38.162392, 29.379215, 28.114988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.040852, 29.582939, 28.151375>,  <37.838284, 29.922480, 28.212019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040852, 29.582939, 28.151375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057068, -0.208435, 0.976370,
		-0.860395, -0.485804, -0.153999,
		0.506423, -0.848852, -0.151613,
		38.192780, 29.328283, 28.105890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162754, 29.846691, 27.960833>,  <37.838284, 29.922480, 28.212019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162754, 29.846691, 27.960833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.796188, 29.997108, 28.015642>,  <36.576248, 30.087358, 28.048529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.796188, 29.997108, 28.015642>,  <37.162754, 29.846691, 27.960833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796188, 29.997108, 28.015642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143224, 0.011573, -0.989623,
		-0.373728, -0.926529, 0.043253,
		-0.916414, 0.376044, 0.137026,
		36.521263, 30.109922, 28.056749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672115, 29.406729, 27.666359>,  <37.162754, 29.846691, 27.960833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672115, 29.406729, 27.666359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.491806, 29.763403, 27.682882>,  <36.383621, 29.977407, 27.692797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.491806, 29.763403, 27.682882>,  <36.672115, 29.406729, 27.666359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491806, 29.763403, 27.682882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254255, -0.083896, -0.963492,
		-0.855664, -0.444817, 0.264533,
		-0.450771, 0.891683, 0.041310,
		36.356575, 30.030909, 27.695276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027298, 29.349449, 27.354923>,  <36.672115, 29.406729, 27.666359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027298, 29.349449, 27.354923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.103649, 29.741793, 27.339558>,  <36.149460, 29.977200, 27.330338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.103649, 29.741793, 27.339558>,  <36.027298, 29.349449, 27.354923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103649, 29.741793, 27.339558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461868, 0.055214, -0.885229,
		-0.866165, 0.186717, 0.463567,
		0.190883, 0.980861, -0.038414,
		36.160915, 30.036051, 27.328033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405857, 29.676920, 27.175764>,  <36.027298, 29.349449, 27.354923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405857, 29.676920, 27.175764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.641014, 29.977940, 27.057070>,  <35.782108, 30.158552, 26.985853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.641014, 29.977940, 27.057070>,  <35.405857, 29.676920, 27.175764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641014, 29.977940, 27.057070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558040, 0.111719, -0.822259,
		-0.585639, 0.648991, 0.485631,
		0.587893, 0.752549, -0.296735,
		35.817383, 30.203705, 26.968050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042889, 29.968100, 26.619329>,  <35.405857, 29.676920, 27.175764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042889, 29.968100, 26.619329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.399616, 30.144764, 26.580137>,  <35.613651, 30.250763, 26.556622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.399616, 30.144764, 26.580137>,  <35.042889, 29.968100, 26.619329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399616, 30.144764, 26.580137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214636, 0.222417, -0.951032,
		-0.398242, 0.869175, 0.293151,
		0.891816, 0.441661, -0.097980,
		35.667160, 30.277262, 26.550743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984863, 30.638838, 26.291414>,  <35.042889, 29.968100, 26.619329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984863, 30.638838, 26.291414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.373440, 30.570511, 26.225533>,  <35.606586, 30.529514, 26.186003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.373440, 30.570511, 26.225533>,  <34.984863, 30.638838, 26.291414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373440, 30.570511, 26.225533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081429, 0.411990, -0.907542,
		0.222879, 0.895034, 0.386314,
		0.971439, -0.170815, -0.164706,
		35.664871, 30.519266, 26.176121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322166, 31.234398, 25.847221>,  <34.984863, 30.638838, 26.291414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322166, 31.234398, 25.847221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.567314, 30.920742, 25.808216>,  <35.714405, 30.732548, 25.784813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.567314, 30.920742, 25.808216>,  <35.322166, 31.234398, 25.847221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567314, 30.920742, 25.808216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045326, 0.158090, -0.986384,
		0.788880, 0.600108, 0.132431,
		0.612873, -0.784141, -0.097513,
		35.751175, 30.685499, 25.778963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784107, 31.826721, 26.145515>,  <35.322166, 31.234398, 25.847221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784107, 31.826721, 26.145515> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.769718, 32.225883, 26.124020>,  <35.761086, 32.465382, 26.111122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.769718, 32.225883, 26.124020>,  <35.784107, 31.826721, 26.145515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769718, 32.225883, 26.124020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145642, 0.058437, 0.987610,
		0.988683, 0.027704, -0.147440,
		-0.035977, 0.997907, -0.053741,
		35.758926, 32.525257, 26.107897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369999, 32.131672, 26.557531>,  <35.784107, 31.826721, 26.145515>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369999, 32.131672, 26.557531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.093739, 32.417259, 26.511497>,  <35.927982, 32.588612, 26.483877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.093739, 32.417259, 26.511497>,  <36.369999, 32.131672, 26.557531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093739, 32.417259, 26.511497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022477, 0.180249, 0.983364,
		0.722839, 0.676575, -0.140537,
		-0.690651, 0.713973, -0.115084,
		35.886543, 32.631451, 26.476973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681480, 32.723934, 26.818174>,  <36.369999, 32.131672, 26.557531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681480, 32.723934, 26.818174> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.283291, 32.755928, 26.838680>,  <36.044376, 32.775124, 26.850985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.283291, 32.755928, 26.838680>,  <36.681480, 32.723934, 26.818174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283291, 32.755928, 26.838680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061842, 0.135929, 0.988786,
		0.072122, 0.987484, -0.140261,
		-0.995477, 0.079987, 0.051265,
		35.984650, 32.779922, 26.854059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633133, 33.406994, 27.131468>,  <36.681480, 32.723934, 26.818174>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633133, 33.406994, 27.131468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.287716, 33.217339, 27.200157>,  <36.080467, 33.103546, 27.241371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.287716, 33.217339, 27.200157>,  <36.633133, 33.406994, 27.131468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287716, 33.217339, 27.200157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022905, 0.303306, 0.952618,
		-0.503760, 0.826557, -0.251057,
		-0.863540, -0.474140, 0.171725,
		36.028652, 33.075096, 27.251675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278313, 33.815586, 27.690357>,  <36.633133, 33.406994, 27.131468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278313, 33.815586, 27.690357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.090504, 33.462418, 27.689569>,  <35.977818, 33.250519, 27.689096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.090504, 33.462418, 27.689569>,  <36.278313, 33.815586, 27.690357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090504, 33.462418, 27.689569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002135, -0.003364, 0.999992,
		-0.882919, 0.469513, 0.003464,
		-0.469521, -0.882919, -0.001968,
		35.949646, 33.197540, 27.688980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646450, 34.006981, 28.068056>,  <36.278313, 33.815586, 27.690357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646450, 34.006981, 28.068056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.637836, 33.608772, 28.104864>,  <35.632668, 33.369846, 28.126949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.637836, 33.608772, 28.104864>,  <35.646450, 34.006981, 28.068056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637836, 33.608772, 28.104864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353524, 0.093676, 0.930723,
		-0.935178, -0.012488, -0.353959,
		-0.021534, -0.995525, 0.092018,
		35.631374, 33.310116, 28.132469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920689, 33.805119, 28.224232>,  <35.646450, 34.006981, 28.068056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920689, 33.805119, 28.224232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.153732, 33.499645, 28.335485>,  <35.293560, 33.316360, 28.402237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.153732, 33.499645, 28.335485>,  <34.920689, 33.805119, 28.224232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153732, 33.499645, 28.335485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342481, 0.079668, 0.936141,
		-0.737071, -0.640660, -0.215131,
		0.582609, -0.763680, 0.278134,
		35.328514, 33.270542, 28.418926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<41.286160, 34.273266, 23.148670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.328793, 33.876198, 23.171436>,  <41.354374, 33.637955, 23.185097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.328793, 33.876198, 23.171436>,  <41.286160, 34.273266, 23.148670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.328793, 33.876198, 23.171436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608148, -0.019798, 0.793577,
		-0.786636, -0.119195, -0.605803,
		0.106584, -0.992674, 0.056915,
		41.360767, 33.578396, 23.188511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642075, 33.918915, 23.211212>,  <41.286160, 34.273266, 23.148670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642075, 33.918915, 23.211212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.914562, 33.673470, 23.370926>,  <41.078053, 33.526203, 23.466755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.914562, 33.673470, 23.370926>,  <40.642075, 33.918915, 23.211212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.914562, 33.673470, 23.370926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519559, -0.020974, 0.854177,
		-0.515757, -0.789330, -0.333095,
		0.681214, -0.613611, 0.399286,
		41.118927, 33.489388, 23.490711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263462, 33.536709, 23.725283>,  <40.642075, 33.918915, 23.211212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263462, 33.536709, 23.725283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.649189, 33.487335, 23.818968>,  <40.880627, 33.457710, 23.875179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.649189, 33.487335, 23.818968>,  <40.263462, 33.536709, 23.725283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649189, 33.487335, 23.818968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252184, -0.158953, 0.954535,
		-0.080589, -0.979540, -0.184408,
		0.964318, -0.123430, 0.234214,
		40.938484, 33.450306, 23.889233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.232216, 32.888680, 24.078753>,  <40.263462, 33.536709, 23.725283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.232216, 32.888680, 24.078753> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.535995, 33.132687, 24.169191>,  <40.718262, 33.279091, 24.223455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.535995, 33.132687, 24.169191>,  <40.232216, 32.888680, 24.078753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535995, 33.132687, 24.169191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245423, -0.053223, 0.967954,
		0.602501, -0.790600, 0.109292,
		0.759448, 0.610016, 0.226098,
		40.763828, 33.315693, 24.237020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.490040, 32.666862, 24.671122>,  <40.232216, 32.888680, 24.078753>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.490040, 32.666862, 24.671122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.665527, 33.025532, 24.647446>,  <40.770821, 33.240734, 24.633240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.665527, 33.025532, 24.647446>,  <40.490040, 32.666862, 24.671122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665527, 33.025532, 24.647446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068307, 0.098953, 0.992745,
		0.896025, -0.431492, 0.104662,
		0.438718, 0.896673, -0.059191,
		40.797142, 33.294533, 24.629688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053268, 32.651474, 25.249138>,  <40.490040, 32.666862, 24.671122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053268, 32.651474, 25.249138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.935375, 33.024345, 25.165071>,  <40.864639, 33.248070, 25.114632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.935375, 33.024345, 25.165071>,  <41.053268, 32.651474, 25.249138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935375, 33.024345, 25.165071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130885, 0.178483, 0.975199,
		0.946574, 0.314929, 0.069404,
		-0.294731, 0.932182, -0.210167,
		40.846954, 33.304001, 25.102022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493801, 33.090893, 25.640553>,  <41.053268, 32.651474, 25.249138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493801, 33.090893, 25.640553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.175236, 33.322208, 25.569778>,  <40.984097, 33.460999, 25.527313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.175236, 33.322208, 25.569778>,  <41.493801, 33.090893, 25.640553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175236, 33.322208, 25.569778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032300, 0.251483, 0.967322,
		0.603884, 0.776107, -0.181607,
		-0.796417, 0.578285, -0.176935,
		40.936310, 33.495693, 25.516697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.562302, 33.767532, 25.922884>,  <41.493801, 33.090893, 25.640553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.562302, 33.767532, 25.922884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.165249, 33.789120, 25.879503>,  <40.927017, 33.802071, 25.853476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.165249, 33.789120, 25.879503>,  <41.562302, 33.767532, 25.922884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165249, 33.789120, 25.879503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082834, 0.350859, 0.932758,
		0.088388, 0.934872, -0.343805,
		-0.992636, 0.053966, -0.108451,
		40.867458, 33.805309, 25.846968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332661, 34.463104, 26.110178>,  <41.562302, 33.767532, 25.922884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332661, 34.463104, 26.110178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.008644, 34.229084, 26.125921>,  <40.814236, 34.088673, 26.135366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.008644, 34.229084, 26.125921>,  <41.332661, 34.463104, 26.110178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008644, 34.229084, 26.125921> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142148, 0.261045, 0.954803,
		-0.568886, 0.767833, -0.294621,
		-0.810039, -0.585054, 0.039359,
		40.765633, 34.053566, 26.137730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837868, 34.960934, 26.372375>,  <41.332661, 34.463104, 26.110178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837868, 34.960934, 26.372375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.649422, 34.609978, 26.408682>,  <40.536354, 34.399403, 26.430466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.649422, 34.609978, 26.408682>,  <40.837868, 34.960934, 26.372375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.649422, 34.609978, 26.408682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402258, 0.305281, 0.863130,
		-0.785012, 0.370118, -0.496758,
		-0.471111, -0.877392, 0.090766,
		40.508087, 34.346760, 26.435911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129917, 35.097351, 26.626709>,  <40.837868, 34.960934, 26.372375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129917, 35.097351, 26.626709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.227634, 34.727180, 26.742580>,  <40.286263, 34.505077, 26.812103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.227634, 34.727180, 26.742580>,  <40.129917, 35.097351, 26.626709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227634, 34.727180, 26.742580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281446, 0.218205, 0.934438,
		-0.927961, -0.309801, -0.207152,
		0.244288, -0.925424, 0.289678,
		40.300922, 34.449554, 26.829483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565243, 34.856441, 27.115513>,  <40.129917, 35.097351, 26.626709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565243, 34.856441, 27.115513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.905994, 34.656254, 27.177275>,  <40.110443, 34.536140, 27.214333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.905994, 34.656254, 27.177275>,  <39.565243, 34.856441, 27.115513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905994, 34.656254, 27.177275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080376, 0.166395, 0.982778,
		-0.517539, -0.849616, 0.101522,
		0.851876, -0.500466, 0.154405,
		40.161556, 34.506115, 27.223597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004181, 34.382206, 27.321827>,  <39.565243, 34.856441, 27.115513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004181, 34.382206, 27.321827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.612774, 34.415222, 27.397398>,  <38.377930, 34.435032, 27.442741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.612774, 34.415222, 27.397398>,  <39.004181, 34.382206, 27.321827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612774, 34.415222, 27.397398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179204, 0.112593, -0.977348,
		-0.101940, -0.990207, -0.095383,
		-0.978516, 0.082538, 0.188927,
		38.319218, 34.439983, 27.454077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594891, 33.887112, 26.877300>,  <39.004181, 34.382206, 27.321827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594891, 33.887112, 26.877300> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.355366, 34.184357, 26.996767>,  <38.211651, 34.362705, 27.068447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.355366, 34.184357, 26.996767>,  <38.594891, 33.887112, 26.877300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355366, 34.184357, 26.996767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302733, 0.135234, -0.943432,
		-0.741471, -0.655353, 0.143987,
		-0.598810, 0.743117, 0.298669,
		38.175724, 34.407291, 27.086369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064941, 33.750187, 26.497805>,  <38.594891, 33.887112, 26.877300>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064941, 33.750187, 26.497805> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.021404, 34.125008, 26.630527>,  <37.995281, 34.349899, 26.710161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.021404, 34.125008, 26.630527>,  <38.064941, 33.750187, 26.497805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.021404, 34.125008, 26.630527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401434, 0.263928, -0.877036,
		-0.909398, -0.228654, 0.347437,
		-0.108840, 0.937048, 0.331805,
		37.988750, 34.406120, 26.730068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.380650, 33.854347, 26.366352>,  <38.064941, 33.750187, 26.497805>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.380650, 33.854347, 26.366352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.564903, 34.208302, 26.394039>,  <37.675457, 34.420673, 26.410652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.564903, 34.208302, 26.394039>,  <37.380650, 33.854347, 26.366352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564903, 34.208302, 26.394039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488060, 0.317655, -0.812953,
		-0.741360, 0.340690, 0.578200,
		0.460633, 0.884887, 0.069220,
		37.703094, 34.473766, 26.414804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900326, 34.377735, 26.039478>,  <37.380650, 33.854347, 26.366352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900326, 34.377735, 26.039478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.254620, 34.562973, 26.052216>,  <37.467197, 34.674114, 26.059858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.254620, 34.562973, 26.052216>,  <36.900326, 34.377735, 26.039478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254620, 34.562973, 26.052216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252334, 0.537938, -0.804332,
		-0.389612, 0.704391, 0.593326,
		0.885737, 0.463094, 0.031845,
		37.520340, 34.701900, 26.061769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750431, 35.142174, 25.918913>,  <36.900326, 34.377735, 26.039478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750431, 35.142174, 25.918913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.138836, 35.073647, 25.852230>,  <37.371880, 35.032532, 25.812222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.138836, 35.073647, 25.852230>,  <36.750431, 35.142174, 25.918913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138836, 35.073647, 25.852230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045032, 0.553808, -0.831425,
		0.234759, 0.814830, 0.530039,
		0.971010, -0.171316, -0.166705,
		37.430138, 35.022251, 25.802219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066833, 35.786613, 25.827833>,  <36.750431, 35.142174, 25.918913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066833, 35.786613, 25.827833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.327957, 35.527863, 25.670160>,  <37.484631, 35.372612, 25.575556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.327957, 35.527863, 25.670160>,  <37.066833, 35.786613, 25.827833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.327957, 35.527863, 25.670160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064564, 0.470952, -0.879793,
		0.754763, 0.599790, 0.265678,
		0.652813, -0.646882, -0.394182,
		37.523800, 35.333797, 25.551905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595047, 36.165569, 25.419458>,  <37.066833, 35.786613, 25.827833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595047, 36.165569, 25.419458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.624371, 35.800980, 25.257547>,  <37.641964, 35.582226, 25.160400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.624371, 35.800980, 25.257547>,  <37.595047, 36.165569, 25.419458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624371, 35.800980, 25.257547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023045, 0.404214, -0.914374,
		0.997043, 0.076356, 0.008626,
		0.073305, -0.911472, -0.404778,
		37.646362, 35.527538, 25.136114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094360, 36.142155, 24.864204>,  <37.595047, 36.165569, 25.419458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094360, 36.142155, 24.864204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.883720, 35.815933, 24.768238>,  <37.757336, 35.620201, 24.710659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.883720, 35.815933, 24.768238>,  <38.094360, 36.142155, 24.864204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883720, 35.815933, 24.768238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035596, 0.303124, -0.952286,
		0.849366, -0.492936, -0.188656,
		-0.526602, -0.815555, -0.239917,
		37.725739, 35.571266, 24.696262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325539, 35.796856, 24.257452>,  <38.094360, 36.142155, 24.864204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325539, 35.796856, 24.257452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.961666, 35.632404, 24.280983>,  <37.743343, 35.533733, 24.295101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.961666, 35.632404, 24.280983>,  <38.325539, 35.796856, 24.257452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961666, 35.632404, 24.280983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077530, 0.028952, -0.996570,
		0.408013, -0.911118, -0.058211,
		-0.909678, -0.411127, 0.058826,
		37.688763, 35.509068, 24.298632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323269, 35.201290, 23.786041>,  <38.325539, 35.796856, 24.257452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323269, 35.201290, 23.786041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.945992, 35.323608, 23.838003>,  <37.719627, 35.396999, 23.869181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.945992, 35.323608, 23.838003>,  <38.323269, 35.201290, 23.786041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945992, 35.323608, 23.838003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130716, 0.017921, -0.991258,
		-0.305456, -0.951927, 0.023070,
		-0.943191, 0.305801, 0.129906,
		37.663033, 35.415348, 23.876974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892853, 34.777935, 23.396051>,  <38.323269, 35.201290, 23.786041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892853, 34.777935, 23.396051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.650089, 35.092186, 23.444128>,  <37.504433, 35.280739, 23.472973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.650089, 35.092186, 23.444128>,  <37.892853, 34.777935, 23.396051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650089, 35.092186, 23.444128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290131, -0.078215, -0.953785,
		-0.739922, -0.613733, 0.275406,
		-0.606910, 0.785630, 0.120190,
		37.468018, 35.327873, 23.480185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349434, 34.617111, 22.948938>,  <37.892853, 34.777935, 23.396051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349434, 34.617111, 22.948938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.320198, 35.013031, 22.997843>,  <37.302654, 35.250584, 23.027185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.320198, 35.013031, 22.997843>,  <37.349434, 34.617111, 22.948938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320198, 35.013031, 22.997843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044955, 0.119192, -0.991853,
		-0.996311, -0.077993, 0.035784,
		-0.073092, 0.989803, 0.122259,
		37.298271, 35.309971, 23.034521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107273, 33.919464, 23.023983>,  <37.349434, 34.617111, 22.948938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107273, 33.919464, 23.023983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.713150, 33.852398, 23.011000>,  <36.476677, 33.812157, 23.003210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.713150, 33.852398, 23.011000>,  <37.107273, 33.919464, 23.023983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713150, 33.852398, 23.011000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021230, -0.308829, 0.950880,
		-0.169454, 0.936223, 0.307852,
		-0.985309, -0.167666, -0.032456,
		36.417557, 33.802097, 23.001263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906582, 34.166836, 23.648539>,  <37.107273, 33.919464, 23.023983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906582, 34.166836, 23.648539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.601681, 33.937187, 23.528969>,  <36.418739, 33.799397, 23.457228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.601681, 33.937187, 23.528969>,  <36.906582, 34.166836, 23.648539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601681, 33.937187, 23.528969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104775, -0.346285, 0.932260,
		-0.638744, 0.741937, 0.203802,
		-0.762252, -0.574122, -0.298924,
		36.373005, 33.764950, 23.439291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310120, 34.314503, 24.095825>,  <36.906582, 34.166836, 23.648539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310120, 34.314503, 24.095825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.240608, 33.948872, 23.949259>,  <36.198902, 33.729492, 23.861319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.240608, 33.948872, 23.949259>,  <36.310120, 34.314503, 24.095825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240608, 33.948872, 23.949259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275250, -0.312164, 0.909280,
		-0.945536, 0.258869, -0.197354,
		-0.173778, -0.914079, -0.366416,
		36.188477, 33.674648, 23.839334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587826, 34.234787, 24.395084>,  <36.310120, 34.314503, 24.095825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.587826, 34.234787, 24.395084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.755356, 33.878723, 24.323317>,  <35.855873, 33.665085, 24.280256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.755356, 33.878723, 24.323317>,  <35.587826, 34.234787, 24.395084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755356, 33.878723, 24.323317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321403, -0.330112, 0.887539,
		-0.849283, -0.314061, -0.424362,
		0.418829, -0.890164, -0.179419,
		35.881004, 33.611675, 24.269491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018684, 33.807102, 24.439856>,  <35.587826, 34.234787, 24.395084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018684, 33.807102, 24.439856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.360699, 33.610416, 24.505739>,  <35.565907, 33.492405, 24.545269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.360699, 33.610416, 24.505739>,  <35.018684, 33.807102, 24.439856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360699, 33.610416, 24.505739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388718, -0.397522, 0.831189,
		-0.343225, -0.774726, -0.531033,
		0.855041, -0.491707, 0.164711,
		35.617210, 33.462902, 24.555151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854111, 33.204933, 24.700882>,  <35.018684, 33.807102, 24.439856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854111, 33.204933, 24.700882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.233829, 33.161747, 24.818981>,  <35.461662, 33.135838, 24.889841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.233829, 33.161747, 24.818981>,  <34.854111, 33.204933, 24.700882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233829, 33.161747, 24.818981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312198, -0.433933, 0.845124,
		0.036876, -0.894453, -0.445639,
		0.949301, -0.107963, 0.295248,
		35.518620, 33.129356, 24.907555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863964, 32.568432, 25.016502>,  <34.854111, 33.204933, 24.700882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863964, 32.568432, 25.016502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.210304, 32.702145, 25.165394>,  <35.418110, 32.782372, 25.254730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.210304, 32.702145, 25.165394>,  <34.863964, 32.568432, 25.016502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210304, 32.702145, 25.165394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297527, -0.254103, 0.920277,
		0.402214, -0.907574, -0.120559,
		0.865853, 0.334278, 0.372231,
		35.470058, 32.802429, 25.277063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178188, 32.007656, 25.467541>,  <34.863964, 32.568432, 25.016502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178188, 32.007656, 25.467541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.360195, 32.343334, 25.586681>,  <35.469398, 32.544739, 25.658167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.360195, 32.343334, 25.586681>,  <35.178188, 32.007656, 25.467541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360195, 32.343334, 25.586681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145755, -0.259786, 0.954603,
		0.878473, -0.477775, 0.004109,
		0.455018, 0.839191, 0.297853,
		35.496700, 32.595093, 25.676037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761681, 31.443134, 25.319773>,  <35.178188, 32.007656, 25.467541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761681, 31.443134, 25.319773> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.824234, 31.048117, 25.326685>,  <35.861767, 30.811106, 25.330832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.824234, 31.048117, 25.326685>,  <35.761681, 31.443134, 25.319773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824234, 31.048117, 25.326685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088585, -0.031448, -0.995572,
		0.983715, 0.154165, -0.092399,
		0.156388, -0.987545, 0.017279,
		35.871151, 30.751854, 25.331869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468739, 31.252123, 25.002327>,  <35.761681, 31.443134, 25.319773>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468739, 31.252123, 25.002327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.201324, 30.956429, 24.969858>,  <36.040874, 30.779011, 24.950377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.201324, 30.956429, 24.969858>,  <36.468739, 31.252123, 25.002327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201324, 30.956429, 24.969858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077017, 0.039743, -0.996237,
		0.739683, -0.672271, 0.030365,
		-0.668534, -0.739238, -0.081173,
		36.000763, 30.734657, 24.945507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746517, 30.698559, 24.683765>,  <36.468739, 31.252123, 25.002327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746517, 30.698559, 24.683765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.358143, 30.648710, 24.602036>,  <36.125118, 30.618801, 24.552998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.358143, 30.648710, 24.602036>,  <36.746517, 30.698559, 24.683765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358143, 30.648710, 24.602036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213341, -0.063738, -0.974896,
		0.108470, -0.990155, 0.088473,
		-0.970938, -0.124622, -0.204327,
		36.066860, 30.611324, 24.540737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793423, 30.265823, 24.111305>,  <36.746517, 30.698559, 24.683765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793423, 30.265823, 24.111305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.412140, 30.386419, 24.102348>,  <36.183369, 30.458776, 24.096973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.412140, 30.386419, 24.102348>,  <36.793423, 30.265823, 24.111305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412140, 30.386419, 24.102348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023222, -0.000838, -0.999730,
		-0.301429, -0.953469, -0.006203,
		-0.953206, 0.301492, -0.022394,
		36.126179, 30.476866, 24.095631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473618, 29.839767, 23.586168>,  <36.793423, 30.265823, 24.111305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473618, 29.839767, 23.586168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.240257, 30.161652, 23.630142>,  <36.100243, 30.354782, 23.656527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.240257, 30.161652, 23.630142>,  <36.473618, 29.839767, 23.586168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.240257, 30.161652, 23.630142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157444, 0.020738, -0.987310,
		-0.796779, -0.593305, 0.114598,
		-0.583400, 0.804711, 0.109936,
		36.065239, 30.403065, 23.663122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942245, 29.851227, 23.045826>,  <36.473618, 29.839767, 23.586168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942245, 29.851227, 23.045826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.910084, 30.233786, 23.158136>,  <35.890785, 30.463322, 23.225523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.910084, 30.233786, 23.158136>,  <35.942245, 29.851227, 23.045826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910084, 30.233786, 23.158136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116797, 0.270708, -0.955550,
		-0.989896, -0.109624, 0.089938,
		-0.080405, 0.956399, 0.280777,
		35.885963, 30.520706, 23.242369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435898, 30.076113, 22.619726>,  <35.942245, 29.851227, 23.045826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435898, 30.076113, 22.619726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.635426, 30.396345, 22.752542>,  <35.755142, 30.588484, 22.832232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.635426, 30.396345, 22.752542>,  <35.435898, 30.076113, 22.619726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635426, 30.396345, 22.752542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165494, 0.464036, -0.870220,
		-0.850760, 0.379131, 0.363961,
		0.498818, 0.800581, 0.332039,
		35.785072, 30.636520, 22.852154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252697, 30.560024, 22.105762>,  <35.435898, 30.076113, 22.619726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252697, 30.560024, 22.105762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.562767, 30.742355, 22.280725>,  <35.748810, 30.851753, 22.385704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.562767, 30.742355, 22.280725>,  <35.252697, 30.560024, 22.105762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562767, 30.742355, 22.280725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248703, 0.416282, -0.874561,
		-0.580733, 0.786722, 0.209325,
		0.775174, 0.455827, 0.437409,
		35.795319, 30.879103, 22.411947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087246, 31.291372, 22.059856>,  <35.252697, 30.560024, 22.105762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087246, 31.291372, 22.059856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.483456, 31.238214, 22.073687>,  <35.721184, 31.206320, 22.081985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.483456, 31.238214, 22.073687>,  <35.087246, 31.291372, 22.059856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483456, 31.238214, 22.073687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121486, 0.730695, -0.671808,
		0.064015, 0.669645, 0.739918,
		0.990527, -0.132895, 0.034578,
		35.780613, 31.198345, 22.084061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.257004, 32.108685, 38.396606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.604744, 32.306263, 38.402805>,  <36.813389, 32.424809, 38.406525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.604744, 32.306263, 38.402805>,  <36.257004, 32.108685, 38.396606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604744, 32.306263, 38.402805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010254, 0.049385, -0.998727,
		-0.494081, 0.868090, 0.047998,
		0.869355, 0.493945, 0.015499,
		36.865551, 32.454445, 38.407455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217777, 32.665668, 37.830574>,  <36.257004, 32.108685, 38.396606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217777, 32.665668, 37.830574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.605961, 32.574070, 37.860981>,  <36.838871, 32.519112, 37.879223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.605961, 32.574070, 37.860981>,  <36.217777, 32.665668, 37.830574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605961, 32.574070, 37.860981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070823, -0.030812, -0.997013,
		0.230651, 0.972940, -0.013684,
		0.970456, -0.228993, 0.076013,
		36.897099, 32.505371, 37.883785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593002, 33.068230, 37.344242>,  <36.217777, 32.665668, 37.830574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593002, 33.068230, 37.344242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.880547, 32.799831, 37.416916>,  <37.053074, 32.638794, 37.460518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.880547, 32.799831, 37.416916>,  <36.593002, 33.068230, 37.344242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880547, 32.799831, 37.416916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151421, -0.103936, -0.982990,
		0.678463, 0.734143, 0.026887,
		0.718860, -0.670993, 0.181681,
		37.096203, 32.598534, 37.471420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047916, 33.099586, 36.808090>,  <36.593002, 33.068230, 37.344242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047916, 33.099586, 36.808090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.131058, 32.730900, 36.939075>,  <37.180943, 32.509686, 37.017666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.131058, 32.730900, 36.939075>,  <37.047916, 33.099586, 36.808090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131058, 32.730900, 36.939075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016372, -0.338003, -0.941003,
		0.978023, 0.190229, -0.085346,
		0.207854, -0.921719, 0.327460,
		37.193413, 32.454384, 37.037312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576008, 32.877571, 36.413433>,  <37.047916, 33.099586, 36.808090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576008, 32.877571, 36.413433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.368568, 32.570538, 36.564095>,  <37.244102, 32.386318, 36.654491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.368568, 32.570538, 36.564095>,  <37.576008, 32.877571, 36.413433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368568, 32.570538, 36.564095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019559, -0.451053, -0.892283,
		0.854791, -0.455373, 0.248931,
		-0.518603, -0.767585, 0.376650,
		37.212986, 32.340263, 36.677090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874825, 32.334362, 36.114346>,  <37.576008, 32.877571, 36.413433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874825, 32.334362, 36.114346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.523239, 32.194931, 36.244526>,  <37.312286, 32.111275, 36.322636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.523239, 32.194931, 36.244526>,  <37.874825, 32.334362, 36.114346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523239, 32.194931, 36.244526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157560, -0.431860, -0.888072,
		0.450109, -0.831861, 0.324668,
		-0.878963, -0.348574, 0.325453,
		37.259552, 32.090359, 36.342163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848286, 31.628563, 35.926083>,  <37.874825, 32.334362, 36.114346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848286, 31.628563, 35.926083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.474148, 31.764372, 35.965794>,  <37.249664, 31.845858, 35.989620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.474148, 31.764372, 35.965794>,  <37.848286, 31.628563, 35.926083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474148, 31.764372, 35.965794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230454, -0.371948, -0.899192,
		-0.268370, -0.863932, 0.426144,
		-0.935344, 0.339523, 0.099277,
		37.193546, 31.866230, 35.995575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378525, 31.028082, 35.641949>,  <37.848286, 31.628563, 35.926083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378525, 31.028082, 35.641949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.129276, 31.340929, 35.640915>,  <36.979725, 31.528637, 35.640293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.129276, 31.340929, 35.640915>,  <37.378525, 31.028082, 35.641949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129276, 31.340929, 35.640915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339343, -0.273336, -0.900074,
		-0.704673, -0.559979, 0.435729,
		-0.623122, 0.782120, -0.002587,
		36.942341, 31.575565, 35.640141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716881, 30.761240, 35.490314>,  <37.378525, 31.028082, 35.641949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716881, 30.761240, 35.490314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.721401, 31.150099, 35.396675>,  <36.724113, 31.383415, 35.340492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.721401, 31.150099, 35.396675>,  <36.716881, 30.761240, 35.490314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721401, 31.150099, 35.396675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359754, -0.214481, -0.908061,
		-0.932979, 0.094475, 0.347311,
		0.011298, 0.972148, -0.234095,
		36.724789, 31.441744, 35.326447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978565, 30.846508, 35.306198>,  <36.716881, 30.761240, 35.490314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978565, 30.846508, 35.306198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.216545, 31.125051, 35.145641>,  <36.359333, 31.292177, 35.049305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.216545, 31.125051, 35.145641>,  <35.978565, 30.846508, 35.306198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216545, 31.125051, 35.145641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259303, -0.306403, -0.915903,
		-0.760787, 0.648999, -0.001725,
		0.594949, 0.696360, -0.401395,
		36.395031, 31.333960, 35.025223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557182, 31.166063, 34.778000>,  <35.978565, 30.846508, 35.306198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557182, 31.166063, 34.778000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.931347, 31.273403, 34.685917>,  <36.155846, 31.337807, 34.630665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.931347, 31.273403, 34.685917>,  <35.557182, 31.166063, 34.778000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931347, 31.273403, 34.685917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136665, -0.326085, -0.935410,
		-0.326085, 0.906453, -0.268349,
		0.935410, 0.268349, -0.230212,
		36.211971, 31.353909, 34.616852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539272, 31.579607, 34.058422>,  <35.557182, 31.166063, 34.778000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539272, 31.579607, 34.058422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.917900, 31.457771, 34.100815>,  <36.145077, 31.384670, 34.126251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.917900, 31.457771, 34.100815>,  <35.539272, 31.579607, 34.058422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917900, 31.457771, 34.100815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067953, -0.132873, -0.988801,
		0.315262, 0.943170, -0.105075,
		0.946569, -0.304591, 0.105981,
		36.201870, 31.366394, 34.132610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635166, 32.303280, 34.361382>,  <35.539272, 31.579607, 34.058422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635166, 32.303280, 34.361382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.438690, 32.651588, 34.352619>,  <35.320805, 32.860573, 34.347363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.438690, 32.651588, 34.352619>,  <35.635166, 32.303280, 34.361382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438690, 32.651588, 34.352619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017915, 0.035246, 0.999218,
		0.870866, 0.490418, -0.032913,
		-0.491194, 0.870774, -0.021908,
		35.291332, 32.912819, 34.346046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016544, 32.800861, 34.738647>,  <35.635166, 32.303280, 34.361382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016544, 32.800861, 34.738647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.666172, 32.993759, 34.744110>,  <35.455948, 33.109497, 34.747387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.666172, 32.993759, 34.744110>,  <36.016544, 32.800861, 34.738647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666172, 32.993759, 34.744110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148471, 0.242532, 0.958715,
		0.459021, 0.841796, -0.284041,
		-0.875932, 0.482242, 0.013655,
		35.403393, 33.138432, 34.748207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148823, 33.431442, 35.036854>,  <36.016544, 32.800861, 34.738647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148823, 33.431442, 35.036854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.754963, 33.392220, 35.094604>,  <35.518646, 33.368687, 35.129253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.754963, 33.392220, 35.094604>,  <36.148823, 33.431442, 35.036854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754963, 33.392220, 35.094604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090670, 0.419421, 0.903252,
		-0.149123, 0.902480, -0.404094,
		-0.984653, -0.098057, 0.144373,
		35.459568, 33.362804, 35.137917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924973, 34.078796, 35.384869>,  <36.148823, 33.431442, 35.036854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924973, 34.078796, 35.384869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.623928, 33.824108, 35.452000>,  <35.443302, 33.671295, 35.492279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.623928, 33.824108, 35.452000>,  <35.924973, 34.078796, 35.384869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623928, 33.824108, 35.452000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134525, 0.398179, 0.907390,
		-0.644578, 0.660334, -0.385328,
		-0.752610, -0.636720, 0.167826,
		35.398144, 33.633091, 35.502346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360203, 34.493725, 35.819500>,  <35.924973, 34.078796, 35.384869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360203, 34.493725, 35.819500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.259930, 34.112240, 35.885933>,  <35.199764, 33.883347, 35.925793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.259930, 34.112240, 35.885933>,  <35.360203, 34.493725, 35.819500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259930, 34.112240, 35.885933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092518, 0.194381, 0.976553,
		-0.963638, 0.229438, -0.136964,
		-0.250682, -0.953716, 0.166086,
		35.184727, 33.826126, 35.935760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653301, 34.531517, 36.205612>,  <35.360203, 34.493725, 35.819500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653301, 34.531517, 36.205612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.867508, 34.198635, 36.263111>,  <34.996033, 33.998905, 36.297611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.867508, 34.198635, 36.263111>,  <34.653301, 34.531517, 36.205612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867508, 34.198635, 36.263111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020904, 0.157095, 0.987362,
		-0.844265, -0.531755, 0.066731,
		0.535517, -0.832201, 0.143746,
		35.028164, 33.948975, 36.306236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214733, 34.255852, 36.669807>,  <34.653301, 34.531517, 36.205612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214733, 34.255852, 36.669807> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.592094, 34.124233, 36.686363>,  <34.818512, 34.045261, 36.696297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.592094, 34.124233, 36.686363>,  <34.214733, 34.255852, 36.669807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592094, 34.124233, 36.686363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029836, 0.208500, 0.977567,
		-0.330293, -0.921009, 0.206518,
		0.943407, -0.329045, 0.041387,
		34.875118, 34.025520, 36.698780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282494, 34.137810, 37.331253>,  <34.214733, 34.255852, 36.669807>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282494, 34.137810, 37.331253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.667103, 34.092255, 37.231251>,  <34.897869, 34.064922, 37.171249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.667103, 34.092255, 37.231251>,  <34.282494, 34.137810, 37.331253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667103, 34.092255, 37.231251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256827, 0.049596, 0.965184,
		-0.097520, -0.992255, 0.076937,
		0.961524, -0.113884, -0.250001,
		34.955559, 34.058090, 37.156250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573895, 33.663422, 37.821613>,  <34.282494, 34.137810, 37.331253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573895, 33.663422, 37.821613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.878868, 33.868134, 37.663235>,  <35.061852, 33.990959, 37.568207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.878868, 33.868134, 37.663235>,  <34.573895, 33.663422, 37.821613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878868, 33.868134, 37.663235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228961, 0.358948, 0.904839,
		0.605204, -0.780536, 0.156496,
		0.762433, 0.511781, -0.395950,
		35.107597, 34.021667, 37.544449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074253, 33.626690, 38.294407>,  <34.573895, 33.663422, 37.821613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074253, 33.626690, 38.294407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.157284, 33.963074, 38.094528>,  <35.207104, 34.164906, 37.974602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.157284, 33.963074, 38.094528>,  <35.074253, 33.626690, 38.294407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.157284, 33.963074, 38.094528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000728, 0.510694, 0.859762,
		0.978218, -0.178831, 0.105397,
		0.207578, 0.840959, -0.499700,
		35.219559, 34.215363, 37.944618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704273, 33.980564, 38.586094>,  <35.074253, 33.626690, 38.294407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704273, 33.980564, 38.586094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.508392, 34.271923, 38.394417>,  <35.390865, 34.446739, 38.279411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.508392, 34.271923, 38.394417>,  <35.704273, 33.980564, 38.586094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508392, 34.271923, 38.394417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158017, 0.614644, 0.772815,
		0.857453, 0.302727, -0.416091,
		-0.489699, 0.728402, -0.479192,
		35.361481, 34.490444, 38.250660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993340, 34.557224, 38.735523>,  <35.704273, 33.980564, 38.586094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993340, 34.557224, 38.735523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.646530, 34.715961, 38.614994>,  <35.438446, 34.811203, 38.542675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.646530, 34.715961, 38.614994>,  <35.993340, 34.557224, 38.735523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646530, 34.715961, 38.614994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132905, 0.767006, 0.627725,
		0.480222, 0.504203, -0.717751,
		-0.867020, 0.396840, -0.301322,
		35.386425, 34.835014, 38.524597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997906, 35.212082, 38.963505>,  <35.993340, 34.557224, 38.735523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997906, 35.212082, 38.963505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.607819, 35.223427, 38.875740>,  <35.373764, 35.230232, 38.823082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.607819, 35.223427, 38.875740>,  <35.997906, 35.212082, 38.963505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607819, 35.223427, 38.875740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113576, 0.786911, 0.606525,
		0.189861, 0.616415, -0.764189,
		-0.975220, 0.028362, -0.219413,
		35.315254, 35.231934, 38.809917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780491, 35.828438, 38.674194>,  <35.997906, 35.212082, 38.963505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780491, 35.828438, 38.674194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.436924, 35.701195, 38.834728>,  <35.230785, 35.624847, 38.931049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.436924, 35.701195, 38.834728>,  <35.780491, 35.828438, 38.674194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436924, 35.701195, 38.834728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015212, 0.767485, 0.640886,
		-0.511888, 0.556574, -0.654367,
		-0.858917, -0.318108, 0.401333,
		35.179249, 35.605762, 38.955128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217987, 35.307701, 38.151176>,  <35.780491, 35.828438, 38.674194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217987, 35.307701, 38.151176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.522762, 35.559132, 38.088776>,  <36.705627, 35.709991, 38.051334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.522762, 35.559132, 38.088776>,  <36.217987, 35.307701, 38.151176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522762, 35.559132, 38.088776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268768, 0.087734, -0.959201,
		-0.589249, 0.772780, 0.235790,
		0.761938, 0.628581, -0.156001,
		36.751343, 35.747707, 38.041977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013062, 35.969833, 37.830231>,  <36.217987, 35.307701, 38.151176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013062, 35.969833, 37.830231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.395477, 35.939781, 37.716854>,  <36.624928, 35.921749, 37.648827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.395477, 35.939781, 37.716854>,  <36.013062, 35.969833, 37.830231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395477, 35.939781, 37.716854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266553, 0.180200, -0.946825,
		0.122213, 0.980756, 0.152252,
		0.956041, -0.075131, -0.283446,
		36.682289, 35.917240, 37.631821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984440, 36.312672, 37.303749>,  <36.013062, 35.969833, 37.830231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984440, 36.312672, 37.303749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.346550, 36.172440, 37.207775>,  <36.563816, 36.088299, 37.150192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.346550, 36.172440, 37.207775>,  <35.984440, 36.312672, 37.303749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346550, 36.172440, 37.207775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205679, 0.132482, -0.969611,
		0.371712, 0.927115, 0.047826,
		0.905277, -0.350580, -0.239933,
		36.618134, 36.067265, 37.135796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131542, 36.643089, 36.784595>,  <35.984440, 36.312672, 37.303749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131542, 36.643089, 36.784595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.383965, 36.335564, 36.743225>,  <36.535419, 36.151051, 36.718403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.383965, 36.335564, 36.743225>,  <36.131542, 36.643089, 36.784595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383965, 36.335564, 36.743225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036627, 0.103648, -0.993939,
		0.774872, 0.631020, 0.037249,
		0.631057, -0.768811, -0.103426,
		36.573280, 36.104919, 36.712196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483589, 36.910465, 36.228146>,  <36.131542, 36.643089, 36.784595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483589, 36.910465, 36.228146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.612053, 36.533897, 36.269287>,  <36.689133, 36.307957, 36.293972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.612053, 36.533897, 36.269287>,  <36.483589, 36.910465, 36.228146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612053, 36.533897, 36.269287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157390, -0.054036, -0.986057,
		0.933855, 0.332871, 0.130816,
		0.321161, -0.941423, 0.102852,
		36.708401, 36.251469, 36.300144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222797, 36.793171, 35.880352>,  <36.483589, 36.910465, 36.228146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222797, 36.793171, 35.880352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.099094, 36.417397, 35.939445>,  <37.024872, 36.191933, 35.974899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.099094, 36.417397, 35.939445>,  <37.222797, 36.793171, 35.880352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099094, 36.417397, 35.939445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338857, -0.254007, -0.905901,
		0.888560, -0.230093, 0.396886,
		-0.309254, -0.939435, 0.147731,
		37.006317, 36.135567, 35.983765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756752, 36.350250, 35.678631>,  <37.222797, 36.793171, 35.880352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756752, 36.350250, 35.678631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.412300, 36.152225, 35.632374>,  <37.205627, 36.033413, 35.604622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.412300, 36.152225, 35.632374>,  <37.756752, 36.350250, 35.678631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412300, 36.152225, 35.632374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316490, -0.344023, -0.884015,
		0.397858, -0.797850, 0.452930,
		-0.861129, -0.495060, -0.115639,
		37.153961, 36.003708, 35.597683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047993, 35.862160, 35.362690>,  <37.756752, 36.350250, 35.678631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047993, 35.862160, 35.362690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.660461, 35.780132, 35.307091>,  <37.427944, 35.730915, 35.273731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.660461, 35.780132, 35.307091>,  <38.047993, 35.862160, 35.362690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660461, 35.780132, 35.307091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215681, -0.422137, -0.880501,
		0.121890, -0.883032, 0.453208,
		-0.968826, -0.205073, -0.138999,
		37.369812, 35.718609, 35.265392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026787, 35.099537, 35.216457>,  <38.047993, 35.862160, 35.362690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026787, 35.099537, 35.216457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.694221, 35.282211, 35.089848>,  <37.494682, 35.391815, 35.013882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.694221, 35.282211, 35.089848>,  <38.026787, 35.099537, 35.216457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694221, 35.282211, 35.089848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146655, -0.369092, -0.917749,
		-0.535949, -0.809450, 0.239894,
		-0.831415, 0.456686, -0.316525,
		37.444798, 35.419216, 34.994892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572311, 34.476082, 34.981106>,  <38.026787, 35.099537, 35.216457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572311, 34.476082, 34.981106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.418621, 34.813217, 34.830379>,  <37.326408, 35.015499, 34.739944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.418621, 34.813217, 34.830379>,  <37.572311, 34.476082, 34.981106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418621, 34.813217, 34.830379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005884, -0.410375, -0.911898,
		-0.923221, -0.348156, 0.162636,
		-0.384224, 0.842841, -0.376818,
		37.303352, 35.066071, 34.717335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915173, 34.349018, 34.640774>,  <37.572311, 34.476082, 34.981106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915173, 34.349018, 34.640774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.087048, 34.667698, 34.470768>,  <37.190174, 34.858906, 34.368767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.087048, 34.667698, 34.470768>,  <36.915173, 34.349018, 34.640774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087048, 34.667698, 34.470768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175725, -0.387902, -0.904794,
		-0.885713, 0.463467, -0.026678,
		0.429690, 0.796700, -0.425013,
		37.215954, 34.906708, 34.343266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703278, 34.322746, 34.035591>,  <36.915173, 34.349018, 34.640774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703278, 34.322746, 34.035591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.998287, 34.587585, 33.982399>,  <37.175293, 34.746490, 33.950481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.998287, 34.587585, 33.982399>,  <36.703278, 34.322746, 34.035591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998287, 34.587585, 33.982399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024475, -0.170581, -0.985040,
		-0.674881, 0.729742, -0.109602,
		0.737520, 0.662102, -0.132982,
		37.219543, 34.786217, 33.942505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553577, 34.717438, 33.423347>,  <36.703278, 34.322746, 34.035591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553577, 34.717438, 33.423347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.944401, 34.795395, 33.457703>,  <37.178894, 34.842171, 33.478317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.944401, 34.795395, 33.457703>,  <36.553577, 34.717438, 33.423347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944401, 34.795395, 33.457703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143349, -0.303503, -0.941986,
		-0.157520, 0.932685, -0.324478,
		0.977056, 0.194895, 0.085892,
		37.237518, 34.853863, 33.483471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755489, 35.170921, 32.810047>,  <36.553577, 34.717438, 33.423347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755489, 35.170921, 32.810047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.099846, 35.011536, 32.936596>,  <37.306461, 34.915905, 33.012527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.099846, 35.011536, 32.936596>,  <36.755489, 35.170921, 32.810047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099846, 35.011536, 32.936596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241083, -0.228112, -0.943316,
		0.448047, 0.888364, -0.100316,
		0.860891, -0.398466, 0.316374,
		37.358112, 34.891994, 33.031509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287415, 35.374245, 32.295444>,  <36.755489, 35.170921, 32.810047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287415, 35.374245, 32.295444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.424435, 35.055111, 32.493885>,  <37.506645, 34.863632, 32.612949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.424435, 35.055111, 32.493885>,  <37.287415, 35.374245, 32.295444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424435, 35.055111, 32.493885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354976, -0.378998, -0.854607,
		0.869857, 0.468852, 0.153385,
		0.342551, -0.797833, 0.496105,
		37.527199, 34.815762, 32.642715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937908, 35.308098, 32.090309>,  <37.287415, 35.374245, 32.295444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937908, 35.308098, 32.090309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.850903, 34.949226, 32.244068>,  <37.798698, 34.733902, 32.336323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.850903, 34.949226, 32.244068>,  <37.937908, 35.308098, 32.090309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850903, 34.949226, 32.244068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440876, -0.441669, -0.781381,
		0.870813, -0.000492, 0.491614,
		-0.217516, -0.897178, 0.384394,
		37.785648, 34.680073, 32.359386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558956, 34.899960, 32.321709>,  <37.937908, 35.308098, 32.090309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.558956, 34.899960, 32.321709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.281315, 34.630127, 32.221188>,  <38.114731, 34.468227, 32.160873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.281315, 34.630127, 32.221188>,  <38.558956, 34.899960, 32.321709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.281315, 34.630127, 32.221188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659926, -0.456803, -0.596513,
		0.287603, -0.579884, 0.762246,
		-0.694105, -0.674585, -0.251303,
		38.073082, 34.427750, 32.145798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952454, 34.359856, 31.914129>,  <38.558956, 34.899960, 32.321709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952454, 34.359856, 31.914129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.579857, 34.238071, 31.834497>,  <38.356300, 34.165001, 31.786718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.579857, 34.238071, 31.834497>,  <38.952454, 34.359856, 31.914129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579857, 34.238071, 31.834497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328351, -0.468156, -0.820375,
		0.156569, -0.829539, 0.536052,
		-0.931489, -0.304458, -0.199081,
		38.300411, 34.146732, 31.774773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065308, 33.720806, 31.748312>,  <38.952454, 34.359856, 31.914129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065308, 33.720806, 31.748312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.713692, 33.830349, 31.592216>,  <38.502720, 33.896072, 31.498560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.713692, 33.830349, 31.592216>,  <39.065308, 33.720806, 31.748312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713692, 33.830349, 31.592216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337822, -0.219768, -0.915193,
		-0.336392, -0.936326, 0.100672,
		-0.879043, 0.273854, -0.390240,
		38.449978, 33.912506, 31.475145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997578, 33.192715, 31.276127>,  <39.065308, 33.720806, 31.748312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997578, 33.192715, 31.276127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.747654, 33.485355, 31.167040>,  <38.597702, 33.660938, 31.101587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.747654, 33.485355, 31.167040>,  <38.997578, 33.192715, 31.276127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747654, 33.485355, 31.167040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254689, -0.139210, -0.956951,
		-0.738073, -0.667366, -0.099352,
		-0.624806, 0.731603, -0.272718,
		38.560211, 33.704838, 31.085224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.584747, 32.881985, 30.802912>,  <38.997578, 33.192715, 31.276127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.584747, 32.881985, 30.802912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.541687, 33.272106, 30.725773>,  <38.515850, 33.506180, 30.679489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.541687, 33.272106, 30.725773>,  <38.584747, 32.881985, 30.802912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541687, 33.272106, 30.725773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064450, -0.200412, -0.977589,
		-0.992097, -0.092810, 0.084434,
		-0.107652, 0.975306, -0.192847,
		38.509392, 33.564697, 30.667919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074780, 32.877998, 30.251652>,  <38.584747, 32.881985, 30.802912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074780, 32.877998, 30.251652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.219833, 33.248135, 30.207394>,  <38.306866, 33.470215, 30.180840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.219833, 33.248135, 30.207394>,  <38.074780, 32.877998, 30.251652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219833, 33.248135, 30.207394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263722, -0.011979, -0.964524,
		-0.893838, 0.378949, 0.239689,
		0.362634, 0.925340, -0.110644,
		38.328625, 33.525738, 30.174200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.594208, 33.254757, 29.854694>,  <38.074780, 32.877998, 30.251652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.594208, 33.254757, 29.854694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.921425, 33.480362, 29.809629>,  <38.117756, 33.615726, 29.782591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.921425, 33.480362, 29.809629>,  <37.594208, 33.254757, 29.854694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921425, 33.480362, 29.809629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231776, 0.143991, -0.962053,
		-0.526392, 0.813112, 0.248516,
		0.818041, 0.564017, -0.112664,
		38.166836, 33.649567, 29.775829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413654, 33.897995, 29.597544>,  <37.594208, 33.254757, 29.854694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413654, 33.897995, 29.597544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.801739, 33.905533, 29.500931>,  <38.034588, 33.910053, 29.442963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.801739, 33.905533, 29.500931>,  <37.413654, 33.897995, 29.597544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801739, 33.905533, 29.500931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234024, 0.330718, -0.914253,
		0.062654, 0.943542, 0.325275,
		0.970210, 0.018841, -0.241532,
		38.092800, 33.911186, 29.428471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548824, 34.633579, 29.320591>,  <37.413654, 33.897995, 29.597544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548824, 34.633579, 29.320591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.820168, 34.372292, 29.186050>,  <37.982975, 34.215519, 29.105326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.820168, 34.372292, 29.186050>,  <37.548824, 34.633579, 29.320591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820168, 34.372292, 29.186050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157212, 0.318139, -0.934919,
		0.717712, 0.687090, 0.113119,
		0.678361, -0.653219, -0.336351,
		38.023674, 34.176327, 29.085146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916317, 35.024441, 28.915503>,  <37.548824, 34.633579, 29.320591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916317, 35.024441, 28.915503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.031929, 34.659485, 28.799574>,  <38.101295, 34.440510, 28.730017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.031929, 34.659485, 28.799574>,  <37.916317, 35.024441, 28.915503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031929, 34.659485, 28.799574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050794, 0.316933, -0.947087,
		0.955971, 0.259018, 0.137948,
		0.289033, -0.912394, -0.289822,
		38.118637, 34.385765, 28.712627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612923, 35.084854, 28.523605>,  <37.916317, 35.024441, 28.915503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612923, 35.084854, 28.523605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.422352, 34.749287, 28.418358>,  <38.308010, 34.547947, 28.355209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.422352, 34.749287, 28.418358>,  <38.612923, 35.084854, 28.523605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422352, 34.749287, 28.418358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007106, 0.295581, -0.955291,
		0.879187, -0.456993, -0.134860,
		-0.476423, -0.838922, -0.263118,
		38.279427, 34.497612, 28.339422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928917, 34.922379, 27.913153>,  <38.612923, 35.084854, 28.523605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928917, 34.922379, 27.913153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.578739, 34.729053, 27.914545>,  <38.368633, 34.613060, 27.915380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.578739, 34.729053, 27.914545>,  <38.928917, 34.922379, 27.913153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578739, 34.729053, 27.914545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115063, 0.201415, -0.972724,
		0.469426, -0.851965, -0.231938,
		-0.875443, -0.483310, 0.003480,
		38.316105, 34.584061, 27.915588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459900, 34.298958, 27.902687>,  <38.928917, 34.922379, 27.913153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459900, 34.298958, 27.902687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.846333, 34.270512, 27.803387>,  <40.078194, 34.253445, 27.743807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.846333, 34.270512, 27.803387>,  <39.459900, 34.298958, 27.902687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846333, 34.270512, 27.803387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244584, -0.056454, 0.967983,
		-0.082856, -0.995869, -0.037145,
		0.966081, -0.071118, -0.248251,
		40.136158, 34.249176, 27.728912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718647, 33.799034, 28.299923>,  <39.459900, 34.298958, 27.902687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718647, 33.799034, 28.299923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.007355, 34.065151, 28.223585>,  <40.180580, 34.224823, 28.177782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.007355, 34.065151, 28.223585>,  <39.718647, 33.799034, 28.299923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007355, 34.065151, 28.223585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210861, 0.051261, 0.976171,
		0.659227, -0.744817, -0.103286,
		0.721774, 0.665297, -0.190846,
		40.223888, 34.264740, 28.166332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343884, 33.610157, 28.749437>,  <39.718647, 33.799034, 28.299923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343884, 33.610157, 28.749437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.412079, 33.991131, 28.648397>,  <40.452995, 34.219715, 28.587774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.412079, 33.991131, 28.648397>,  <40.343884, 33.610157, 28.749437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412079, 33.991131, 28.648397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228501, 0.211150, 0.950370,
		0.958500, -0.219742, -0.181634,
		0.170484, 0.952433, -0.252599,
		40.463223, 34.276859, 28.572618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.024803, 33.775810, 28.989056>,  <40.343884, 33.610157, 28.749437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.024803, 33.775810, 28.989056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.867397, 34.136921, 28.919600>,  <40.772953, 34.353588, 28.877926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.867397, 34.136921, 28.919600>,  <41.024803, 33.775810, 28.989056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867397, 34.136921, 28.919600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384302, 0.333122, 0.861012,
		0.835141, 0.272089, -0.478025,
		-0.393512, 0.902772, -0.173639,
		40.749344, 34.407753, 28.867508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572319, 34.264694, 29.079573>,  <41.024803, 33.775810, 28.989056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.572319, 34.264694, 29.079573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.229122, 34.462860, 29.133850>,  <41.023205, 34.581760, 29.166416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.229122, 34.462860, 29.133850>,  <41.572319, 34.264694, 29.079573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229122, 34.462860, 29.133850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357462, 0.386173, 0.850348,
		0.368872, 0.778099, -0.508425,
		-0.857995, 0.495412, 0.135692,
		40.971725, 34.611485, 29.174557>
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
