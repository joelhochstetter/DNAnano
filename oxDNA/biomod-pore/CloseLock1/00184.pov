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
	<24.205772, 35.010288, 34.707439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.428493, 35.085697, 35.031025>,  <24.562126, 35.130943, 35.225178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.428493, 35.085697, 35.031025>,  <24.205772, 35.010288, 34.707439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.428493, 35.085697, 35.031025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694902, -0.639263, -0.329323,
		0.455060, 0.745522, -0.486947,
		0.556805, 0.188518, 0.808968,
		24.595535, 35.142254, 35.273716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.898497, 35.177193, 34.529732>,  <24.205772, 35.010288, 34.707439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.898497, 35.177193, 34.529732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.905964, 35.009174, 34.892654>,  <24.910444, 34.908363, 35.110409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.905964, 35.009174, 34.892654>,  <24.898497, 35.177193, 34.529732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.905964, 35.009174, 34.892654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762432, -0.581072, -0.284699,
		0.646799, 0.697076, 0.309411,
		0.018666, -0.420048, 0.907310,
		24.911564, 34.883160, 35.164848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.515608, 35.289429, 34.943699>,  <24.898497, 35.177193, 34.529732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.515608, 35.289429, 34.943699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.328711, 34.938175, 34.984829>,  <25.216572, 34.727425, 35.009506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.328711, 34.938175, 34.984829>,  <25.515608, 35.289429, 34.943699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.328711, 34.938175, 34.984829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781134, -0.464490, -0.417227,
		0.414141, -0.114624, 0.902966,
		-0.467243, -0.878129, 0.102828,
		25.188538, 34.674736, 35.015678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.998613, 34.971519, 35.248562>,  <25.515608, 35.289429, 34.943699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.998613, 34.971519, 35.248562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.739115, 34.719784, 35.077419>,  <25.583416, 34.568741, 34.974735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.739115, 34.719784, 35.077419>,  <25.998613, 34.971519, 35.248562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.739115, 34.719784, 35.077419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760855, -0.547590, -0.348201,
		-0.015149, -0.551427, 0.834085,
		-0.648745, -0.629343, -0.427852,
		25.544491, 34.530979, 34.949062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.157219, 34.239384, 35.370861>,  <25.998613, 34.971519, 35.248562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.157219, 34.239384, 35.370861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.357531, 34.194256, 35.714138>,  <26.477716, 34.167179, 35.920105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.357531, 34.194256, 35.714138>,  <26.157219, 34.239384, 35.370861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.357531, 34.194256, 35.714138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001144, 0.991555, 0.129682,
		-0.865576, -0.063960, 0.496677,
		0.500777, -0.112818, 0.858193,
		26.507763, 34.160412, 35.971596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.861206, 34.588333, 35.992992>,  <26.157219, 34.239384, 35.370861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.861206, 34.588333, 35.992992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.244364, 34.550709, 36.101501>,  <26.474258, 34.528133, 36.166607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.244364, 34.550709, 36.101501>,  <25.861206, 34.588333, 35.992992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.244364, 34.550709, 36.101501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032805, 0.974482, 0.222055,
		-0.285242, -0.203806, 0.936536,
		0.957894, -0.094062, 0.271277,
		26.531733, 34.522491, 36.182884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.086535, 34.848461, 36.747494>,  <25.861206, 34.588333, 35.992992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.086535, 34.848461, 36.747494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.396505, 34.881748, 36.496876>,  <26.582487, 34.901718, 36.346504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.396505, 34.881748, 36.496876>,  <26.086535, 34.848461, 36.747494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.396505, 34.881748, 36.496876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156412, 0.935213, 0.317665,
		0.612392, -0.344167, 0.711706,
		0.774927, 0.083216, -0.626549,
		26.628983, 34.906712, 36.308910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.744438, 35.068874, 37.123623>,  <26.086535, 34.848461, 36.747494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.744438, 35.068874, 37.123623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.811205, 35.183582, 36.746284>,  <26.851265, 35.252407, 36.519882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.811205, 35.183582, 36.746284>,  <26.744438, 35.068874, 37.123623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.811205, 35.183582, 36.746284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237712, 0.916843, 0.320769,
		0.956887, -0.277787, 0.084867,
		0.166915, 0.286766, -0.943348,
		26.861279, 35.269611, 36.463280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.404184, 35.339966, 37.114227>,  <26.744438, 35.068874, 37.123623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.404184, 35.339966, 37.114227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251871, 35.493748, 36.777847>,  <27.160482, 35.586018, 36.576019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251871, 35.493748, 36.777847>,  <27.404184, 35.339966, 37.114227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.251871, 35.493748, 36.777847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327829, 0.906519, 0.265991,
		0.864599, -0.174403, -0.471224,
		-0.380784, 0.384456, -0.840950,
		27.137636, 35.609085, 36.525562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.882240, 35.729343, 36.850655>,  <27.404184, 35.339966, 37.114227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.882240, 35.729343, 36.850655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553190, 35.898293, 36.698402>,  <27.355759, 35.999664, 36.607052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.553190, 35.898293, 36.698402>,  <27.882240, 35.729343, 36.850655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.553190, 35.898293, 36.698402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384001, 0.906419, 0.175920,
		0.419318, -0.001446, -0.907838,
		-0.822627, 0.422377, -0.380633,
		27.306402, 36.025005, 36.584213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.045418, 36.162243, 36.336864>,  <27.882240, 35.729343, 36.850655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.045418, 36.162243, 36.336864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.682131, 36.291100, 36.443726>,  <27.464159, 36.368412, 36.507843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.682131, 36.291100, 36.443726>,  <28.045418, 36.162243, 36.336864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.682131, 36.291100, 36.443726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376465, 0.907711, 0.185297,
		-0.182810, 0.268865, -0.945671,
		-0.908215, 0.322137, 0.267157,
		27.409666, 36.387741, 36.523872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.032299, 36.861969, 36.171375>,  <28.045418, 36.162243, 36.336864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.032299, 36.861969, 36.171375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721312, 36.844044, 36.422306>,  <27.534719, 36.833286, 36.572865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721312, 36.844044, 36.422306>,  <28.032299, 36.861969, 36.171375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.721312, 36.844044, 36.422306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271240, 0.876033, 0.398741,
		-0.567427, 0.480164, -0.668932,
		-0.777468, -0.044815, 0.627324,
		27.488071, 36.830601, 36.610504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.783726, 37.594555, 36.220253>,  <28.032299, 36.861969, 36.171375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.783726, 37.594555, 36.220253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644960, 37.421185, 36.552948>,  <27.561701, 37.317162, 36.752567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644960, 37.421185, 36.552948>,  <27.783726, 37.594555, 36.220253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644960, 37.421185, 36.552948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274255, 0.801174, 0.531887,
		-0.896903, 0.412628, -0.159068,
		-0.346913, -0.433426, 0.831741,
		27.540886, 37.291157, 36.802471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.604259, 38.072514, 36.541695>,  <27.783726, 37.594555, 36.220253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.604259, 38.072514, 36.541695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.602791, 37.804569, 36.838684>,  <27.601910, 37.643803, 37.016880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.602791, 37.804569, 36.838684>,  <27.604259, 38.072514, 36.541695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.602791, 37.804569, 36.838684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307055, 0.705858, 0.638343,
		-0.951685, 0.230326, 0.203092,
		-0.003673, -0.669861, 0.742477,
		27.601688, 37.603611, 37.061428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.204571, 38.358250, 37.133011>,  <27.604259, 38.072514, 36.541695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.204571, 38.358250, 37.133011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.435574, 38.069145, 37.284855>,  <27.574175, 37.895683, 37.375961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.435574, 38.069145, 37.284855>,  <27.204571, 38.358250, 37.133011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.435574, 38.069145, 37.284855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381866, 0.650136, 0.656888,
		-0.721572, -0.234395, 0.651454,
		0.577505, -0.722760, 0.379613,
		27.608826, 37.852318, 37.398739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.042768, 38.395569, 37.844707>,  <27.204571, 38.358250, 37.133011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.042768, 38.395569, 37.844707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.398199, 38.216499, 37.804676>,  <27.611458, 38.109058, 37.780659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.398199, 38.216499, 37.804676>,  <27.042768, 38.395569, 37.844707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.398199, 38.216499, 37.804676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337201, 0.489530, 0.804149,
		-0.311007, -0.748295, 0.585943,
		0.888578, -0.447676, -0.100078,
		27.664772, 38.082195, 37.774654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.127977, 38.250813, 38.593208>,  <27.042768, 38.395569, 37.844707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.127977, 38.250813, 38.593208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475042, 38.201759, 38.400490>,  <27.683281, 38.172325, 38.284859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475042, 38.201759, 38.400490>,  <27.127977, 38.250813, 38.593208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.475042, 38.201759, 38.400490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471939, 0.507895, 0.720636,
		0.156324, -0.852645, 0.498558,
		0.867662, -0.122636, -0.481792,
		27.735340, 38.164970, 38.255951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.623379, 38.168194, 39.052681>,  <27.127977, 38.250813, 38.593208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.623379, 38.168194, 39.052681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.830288, 38.300030, 38.736755>,  <27.954433, 38.379131, 38.547199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.830288, 38.300030, 38.736755>,  <27.623379, 38.168194, 39.052681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.830288, 38.300030, 38.736755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459940, 0.671207, 0.581323,
		0.721725, -0.663967, 0.195605,
		0.517271, 0.329588, -0.789812,
		27.985470, 38.398907, 38.499813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343876, 38.247154, 39.224663>,  <27.623379, 38.168194, 39.052681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343876, 38.247154, 39.224663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309490, 38.489204, 38.908073>,  <28.288858, 38.634434, 38.718121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309490, 38.489204, 38.908073>,  <28.343876, 38.247154, 39.224663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.309490, 38.489204, 38.908073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682411, 0.614567, 0.395755,
		0.725896, -0.506090, -0.465777,
		-0.085964, 0.605128, -0.791473,
		28.283701, 38.670742, 38.670631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141489, 38.380257, 38.983410>,  <28.343876, 38.247154, 39.224663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141489, 38.380257, 38.983410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909147, 38.676888, 38.849148>,  <28.769743, 38.854866, 38.768589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909147, 38.676888, 38.849148>,  <29.141489, 38.380257, 38.983410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909147, 38.676888, 38.849148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735921, 0.654641, 0.172816,
		0.347892, -0.146637, -0.925996,
		-0.580854, 0.741581, -0.335658,
		28.734892, 38.899361, 38.748451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.625618, 38.704437, 38.484829>,  <29.141489, 38.380257, 38.983410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.625618, 38.704437, 38.484829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328861, 38.945442, 38.602524>,  <29.150806, 39.090046, 38.673141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.328861, 38.945442, 38.602524>,  <29.625618, 38.704437, 38.484829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.328861, 38.945442, 38.602524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661144, 0.730446, 0.171282,
		-0.111729, 0.321609, -0.940258,
		-0.741893, 0.602509, 0.294241,
		29.106293, 39.126194, 38.690796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.875219, 39.345085, 38.286083>,  <29.625618, 38.704437, 38.484829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.875219, 39.345085, 38.286083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575945, 39.465549, 38.522564>,  <29.396381, 39.537830, 38.664452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.575945, 39.465549, 38.522564>,  <29.875219, 39.345085, 38.286083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.575945, 39.465549, 38.522564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467197, 0.871824, 0.147137,
		-0.471113, 0.386294, -0.792988,
		-0.748185, 0.301163, 0.591203,
		29.351490, 39.555897, 38.699924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708994, 39.924625, 38.112518>,  <29.875219, 39.345085, 38.286083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.708994, 39.924625, 38.112518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.558088, 39.936131, 38.482780>,  <29.467545, 39.943035, 38.704937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.558088, 39.936131, 38.482780>,  <29.708994, 39.924625, 38.112518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.558088, 39.936131, 38.482780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447318, 0.880853, 0.154934,
		-0.810913, 0.472515, -0.345181,
		-0.377263, 0.028767, 0.925659,
		29.444910, 39.944759, 38.760479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.245987, 40.606316, 38.211056>,  <29.708994, 39.924625, 38.112518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.245987, 40.606316, 38.211056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.398455, 40.473301, 38.556107>,  <29.489935, 40.393490, 38.763138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.398455, 40.473301, 38.556107>,  <29.245987, 40.606316, 38.211056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398455, 40.473301, 38.556107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380611, 0.906773, 0.181379,
		-0.842523, 0.259189, 0.472203,
		0.381169, -0.332541, 0.862627,
		29.512806, 40.373539, 38.814896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217478, 41.173759, 38.649788>,  <29.245987, 40.606316, 38.211056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217478, 41.173759, 38.649788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.461845, 40.932629, 38.855072>,  <29.608465, 40.787952, 38.978241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.461845, 40.932629, 38.855072>,  <29.217478, 41.173759, 38.649788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461845, 40.932629, 38.855072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518874, 0.794480, 0.315550,
		-0.597953, 0.073514, 0.798153,
		0.610919, -0.602825, 0.513206,
		29.645121, 40.751781, 39.009033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.285120, 41.414192, 39.323734>,  <29.217478, 41.173759, 38.649788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.285120, 41.414192, 39.323734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.621311, 41.223045, 39.221569>,  <29.823027, 41.108356, 39.160271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.621311, 41.223045, 39.221569>,  <29.285120, 41.414192, 39.323734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621311, 41.223045, 39.221569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524107, 0.597373, 0.607007,
		-0.137495, -0.644039, 0.752535,
		0.840480, -0.477869, -0.255410,
		29.873455, 41.079685, 39.144947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626133, 42.056484, 39.305157>,  <29.285120, 41.414192, 39.323734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626133, 42.056484, 39.305157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770094, 41.739227, 39.108631>,  <29.856470, 41.548874, 38.990715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.770094, 41.739227, 39.108631>,  <29.626133, 42.056484, 39.305157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.770094, 41.739227, 39.108631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584499, 0.218782, -0.781342,
		0.727209, 0.568380, -0.384852,
		0.359901, -0.793145, -0.491317,
		29.878063, 41.501286, 38.961235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023214, 42.281017, 38.643482>,  <29.626133, 42.056484, 39.305157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023214, 42.281017, 38.643482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.875713, 41.910515, 38.612305>,  <29.787212, 41.688213, 38.593597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.875713, 41.910515, 38.612305>,  <30.023214, 42.281017, 38.643482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.875713, 41.910515, 38.612305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568360, 0.291028, -0.769591,
		0.735521, -0.239488, -0.633763,
		-0.368750, -0.926255, -0.077942,
		29.765089, 41.632637, 38.588921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588102, 42.580936, 38.160931>,  <30.023214, 42.281017, 38.643482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588102, 42.580936, 38.160931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649632, 42.822468, 38.473782>,  <30.686550, 42.967388, 38.661491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649632, 42.822468, 38.473782>,  <30.588102, 42.580936, 38.160931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649632, 42.822468, 38.473782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791493, -0.549142, 0.268293,
		0.591503, 0.577779, -0.562402,
		0.153825, 0.603833, 0.782128,
		30.695780, 43.003616, 38.708420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346918, 42.769157, 38.335373>,  <30.588102, 42.580936, 38.160931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346918, 42.769157, 38.335373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.135324, 42.778095, 38.674709>,  <31.008368, 42.783459, 38.878311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.135324, 42.778095, 38.674709>,  <31.346918, 42.769157, 38.335373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135324, 42.778095, 38.674709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672839, -0.598160, 0.435307,
		0.517168, 0.801065, 0.301383,
		-0.528984, 0.022345, 0.848337,
		30.976629, 42.784798, 38.929211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790066, 42.949429, 38.878075>,  <31.346918, 42.769157, 38.335373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790066, 42.949429, 38.878075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501245, 42.719707, 39.032383>,  <31.327953, 42.581875, 39.124966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501245, 42.719707, 39.032383>,  <31.790066, 42.949429, 38.878075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501245, 42.719707, 39.032383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688107, -0.653991, 0.314333,
		0.071767, 0.492415, 0.867397,
		-0.722052, -0.574303, 0.385769,
		31.284630, 42.547417, 39.148113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047638, 42.724686, 39.480164>,  <31.790066, 42.949429, 38.878075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047638, 42.724686, 39.480164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751675, 42.474625, 39.380783>,  <31.574097, 42.324589, 39.321156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751675, 42.474625, 39.380783>,  <32.047638, 42.724686, 39.480164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751675, 42.474625, 39.380783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562890, -0.777583, 0.280213,
		-0.368368, 0.067479, 0.927228,
		-0.739905, -0.625149, -0.248454,
		31.529703, 42.287079, 39.306248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838116, 42.407368, 40.200176>,  <32.047638, 42.724686, 39.480164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838116, 42.407368, 40.200176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237072, 42.388054, 40.221653>,  <32.476444, 42.376465, 40.234539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237072, 42.388054, 40.221653>,  <31.838116, 42.407368, 40.200176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237072, 42.388054, 40.221653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072122, -0.701415, 0.709095,
		0.003423, -0.711116, -0.703066,
		0.997390, -0.048280, 0.053688,
		32.536289, 42.373569, 40.237759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141506, 41.720276, 40.181431>,  <31.838116, 42.407368, 40.200176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141506, 41.720276, 40.181431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385475, 41.953186, 40.396446>,  <32.531857, 42.092934, 40.525455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385475, 41.953186, 40.396446>,  <32.141506, 41.720276, 40.181431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385475, 41.953186, 40.396446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063267, -0.640375, 0.765453,
		0.789932, -0.500875, -0.353740,
		0.609923, 0.582275, 0.537541,
		32.568451, 42.127869, 40.557709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771027, 41.983788, 39.796772>,  <32.141506, 41.720276, 40.181431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771027, 41.983788, 39.796772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039154, 41.689503, 39.835556>,  <33.200031, 41.512932, 39.858826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039154, 41.689503, 39.835556>,  <32.771027, 41.983788, 39.796772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039154, 41.689503, 39.835556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515805, -0.555866, -0.651888,
		0.533502, 0.386956, -0.752090,
		0.670314, -0.735716, 0.096962,
		33.240250, 41.468788, 39.864643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117798, 41.870216, 39.108696>,  <32.771027, 41.983788, 39.796772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117798, 41.870216, 39.108696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107307, 41.527557, 39.314785>,  <33.101013, 41.321960, 39.438438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107307, 41.527557, 39.314785>,  <33.117798, 41.870216, 39.108696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107307, 41.527557, 39.314785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409551, -0.460957, -0.787266,
		0.911910, -0.231658, -0.338753,
		-0.026226, -0.856652, 0.515227,
		33.099438, 41.270561, 39.469353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409752, 41.226162, 38.712631>,  <33.117798, 41.870216, 39.108696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409752, 41.226162, 38.712631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179985, 41.065033, 38.997665>,  <33.042126, 40.968357, 39.168686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179985, 41.065033, 38.997665>,  <33.409752, 41.226162, 38.712631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179985, 41.065033, 38.997665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396855, -0.624336, -0.672838,
		0.715926, -0.669284, 0.198768,
		-0.574418, -0.402820, 0.712587,
		33.007660, 40.944187, 39.211441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524895, 40.443817, 38.774570>,  <33.409752, 41.226162, 38.712631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524895, 40.443817, 38.774570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164925, 40.533485, 38.924175>,  <32.948944, 40.587288, 39.013939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164925, 40.533485, 38.924175>,  <33.524895, 40.443817, 38.774570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164925, 40.533485, 38.924175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372911, -0.840210, -0.393681,
		0.225999, -0.493757, 0.839719,
		-0.899923, 0.224169, 0.374014,
		32.894947, 40.600735, 39.036381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172100, 39.754070, 39.024910>,  <33.524895, 40.443817, 38.774570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172100, 39.754070, 39.024910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871830, 40.017178, 39.000137>,  <32.691669, 40.175041, 38.985271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871830, 40.017178, 39.000137>,  <33.172100, 39.754070, 39.024910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871830, 40.017178, 39.000137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620295, -0.733958, -0.276657,
		-0.227434, -0.169260, 0.958971,
		-0.750671, 0.657766, -0.061936,
		32.646629, 40.214508, 38.981556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567394, 39.393967, 39.276012>,  <33.172100, 39.754070, 39.024910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567394, 39.393967, 39.276012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428276, 39.686043, 39.040775>,  <32.344803, 39.861290, 38.899632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428276, 39.686043, 39.040775>,  <32.567394, 39.393967, 39.276012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428276, 39.686043, 39.040775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593130, -0.657141, -0.465148,
		-0.726108, 0.187037, 0.661653,
		-0.347799, 0.730194, -0.588092,
		32.323936, 39.905102, 38.864349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887491, 39.352802, 39.441879>,  <32.567394, 39.393967, 39.276012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887491, 39.352802, 39.441879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955273, 39.525009, 39.087265>,  <31.995941, 39.628334, 38.874496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955273, 39.525009, 39.087265>,  <31.887491, 39.352802, 39.441879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955273, 39.525009, 39.087265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472019, -0.754205, -0.456479,
		-0.865149, 0.495813, 0.075409,
		0.169454, 0.430517, -0.886533,
		32.006107, 39.654163, 38.821304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260445, 39.292465, 39.046936>,  <31.887491, 39.352802, 39.441879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260445, 39.292465, 39.046936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497274, 39.408665, 38.746254>,  <31.639372, 39.478386, 38.565845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.497274, 39.408665, 38.746254>,  <31.260445, 39.292465, 39.046936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497274, 39.408665, 38.746254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530454, -0.561724, -0.634889,
		-0.606685, 0.774646, -0.178485,
		0.592074, 0.290500, -0.751704,
		31.674896, 39.495815, 38.520744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842531, 39.571445, 38.444862>,  <31.260445, 39.292465, 39.046936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842531, 39.571445, 38.444862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188740, 39.404411, 38.334232>,  <31.396465, 39.304192, 38.267853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188740, 39.404411, 38.334232>,  <30.842531, 39.571445, 38.444862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188740, 39.404411, 38.334232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485007, -0.560880, -0.670956,
		0.125056, 0.714868, -0.687986,
		0.865522, -0.417585, -0.276574,
		31.448397, 39.279137, 38.251259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.705502, 39.444923, 37.689808>,  <30.842531, 39.571445, 38.444862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.705502, 39.444923, 37.689808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057348, 39.258236, 37.726582>,  <31.268456, 39.146225, 37.748646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057348, 39.258236, 37.726582>,  <30.705502, 39.444923, 37.689808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057348, 39.258236, 37.726582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194915, -0.529925, -0.825341,
		0.433920, 0.708063, -0.557100,
		0.879615, -0.466719, 0.091933,
		31.321232, 39.118221, 37.754162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980898, 39.484135, 37.050575>,  <30.705502, 39.444923, 37.689808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980898, 39.484135, 37.050575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156672, 39.181995, 37.245033>,  <31.262136, 39.000710, 37.361710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.156672, 39.181995, 37.245033>,  <30.980898, 39.484135, 37.050575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.156672, 39.181995, 37.245033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370576, -0.645445, -0.667887,
		0.818272, 0.113338, -0.563547,
		0.439436, -0.755351, 0.486149,
		31.288502, 38.955391, 37.390877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494467, 39.048298, 36.603535>,  <30.980898, 39.484135, 37.050575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494467, 39.048298, 36.603535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346952, 38.828709, 36.903568>,  <31.258444, 38.696957, 37.083588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346952, 38.828709, 36.903568>,  <31.494467, 39.048298, 36.603535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346952, 38.828709, 36.903568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296253, -0.695463, -0.654649,
		0.881040, -0.463639, 0.093842,
		-0.368784, -0.548971, 0.750086,
		31.236317, 38.664017, 37.128593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651285, 38.248959, 36.457222>,  <31.494467, 39.048298, 36.603535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651285, 38.248959, 36.457222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374962, 38.242275, 36.746361>,  <31.209167, 38.238266, 36.919846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374962, 38.242275, 36.746361>,  <31.651285, 38.248959, 36.457222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374962, 38.242275, 36.746361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461130, -0.759845, -0.458252,
		0.556907, -0.649890, 0.517201,
		-0.690806, -0.016707, 0.722847,
		31.167721, 38.237263, 36.963215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678524, 37.503220, 36.654629>,  <31.651285, 38.248959, 36.457222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678524, 37.503220, 36.654629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327501, 37.660324, 36.764633>,  <31.116888, 37.754589, 36.830635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.327501, 37.660324, 36.764633>,  <31.678524, 37.503220, 36.654629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.327501, 37.660324, 36.764633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473366, -0.800959, -0.366593,
		0.076287, -0.451887, 0.888808,
		-0.877557, 0.392765, 0.275010,
		31.064234, 37.778152, 36.847137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274300, 37.046432, 36.913593>,  <31.678524, 37.503220, 36.654629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274300, 37.046432, 36.913593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002380, 37.311161, 36.787186>,  <30.839230, 37.469997, 36.711342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002380, 37.311161, 36.787186>,  <31.274300, 37.046432, 36.913593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002380, 37.311161, 36.787186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554993, -0.745903, -0.368254,
		-0.479437, -0.074951, 0.874370,
		-0.679796, 0.661823, -0.316017,
		30.798441, 37.509708, 36.692379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.694309, 36.611168, 37.110741>,  <31.274300, 37.046432, 36.913593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.694309, 36.611168, 37.110741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526213, 36.902351, 36.894047>,  <30.425354, 37.077061, 36.764030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.526213, 36.902351, 36.894047>,  <30.694309, 36.611168, 37.110741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526213, 36.902351, 36.894047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502682, -0.683793, -0.528904,
		-0.755452, 0.050051, 0.653289,
		-0.420242, 0.727958, -0.541732,
		30.400139, 37.120739, 36.731529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958437, 36.480862, 37.183834>,  <30.694309, 36.611168, 37.110741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958437, 36.480862, 37.183834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.988604, 36.700123, 36.850643>,  <30.006704, 36.831680, 36.650730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.988604, 36.700123, 36.850643>,  <29.958437, 36.480862, 37.183834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.988604, 36.700123, 36.850643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441556, -0.730629, -0.520778,
		-0.894058, 0.407080, 0.186937,
		0.075417, 0.548149, -0.832974,
		30.011229, 36.864567, 36.600750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350220, 36.396015, 36.860928>,  <29.958437, 36.480862, 37.183834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350220, 36.396015, 36.860928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591227, 36.542782, 36.577423>,  <29.735830, 36.630840, 36.407318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591227, 36.542782, 36.577423>,  <29.350220, 36.396015, 36.860928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591227, 36.542782, 36.577423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443962, -0.583891, -0.679683,
		-0.663228, 0.724184, -0.188906,
		0.602516, 0.366918, -0.708763,
		29.771982, 36.652859, 36.364796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922766, 36.731930, 36.383217>,  <29.350220, 36.396015, 36.860928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922766, 36.731930, 36.383217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.257666, 36.633835, 36.187717>,  <29.458605, 36.574978, 36.070419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.257666, 36.633835, 36.187717>,  <28.922766, 36.731930, 36.383217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.257666, 36.633835, 36.187717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540811, -0.503511, -0.673795,
		-0.080853, 0.828455, -0.554189,
		0.837249, -0.245234, -0.488748,
		29.508841, 36.560265, 36.041092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.796749, 36.691769, 35.732365>,  <28.922766, 36.731930, 36.383217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.796749, 36.691769, 35.732365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.136683, 36.480957, 35.730316>,  <29.340643, 36.354469, 35.729088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.136683, 36.480957, 35.730316>,  <28.796749, 36.691769, 35.732365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.136683, 36.480957, 35.730316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415223, -0.663504, -0.622376,
		0.324610, 0.531043, -0.782701,
		0.849834, -0.527025, -0.005121,
		29.391632, 36.322849, 35.728779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028296, 36.589535, 34.982208>,  <28.796749, 36.691769, 35.732365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028296, 36.589535, 34.982208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178055, 36.303757, 35.218643>,  <29.267910, 36.132290, 35.360504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.178055, 36.303757, 35.218643>,  <29.028296, 36.589535, 34.982208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178055, 36.303757, 35.218643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311683, -0.697329, -0.645435,
		0.873315, 0.057417, -0.483761,
		0.374399, -0.714448, 0.591091,
		29.290375, 36.089424, 35.395969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.509567, 36.177662, 34.546570>,  <29.028296, 36.589535, 34.982208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.509567, 36.177662, 34.546570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446615, 35.921192, 34.847004>,  <29.408844, 35.767311, 35.027264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.446615, 35.921192, 34.847004>,  <29.509567, 36.177662, 34.546570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.446615, 35.921192, 34.847004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080639, -0.749677, -0.656873,
		0.984240, -0.163945, 0.066280,
		-0.157379, -0.641176, 0.751082,
		29.399401, 35.728840, 35.072330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.866783, 35.634350, 34.375832>,  <29.509567, 36.177662, 34.546570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.866783, 35.634350, 34.375832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600056, 35.515934, 34.649391>,  <29.440020, 35.444885, 34.813526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600056, 35.515934, 34.649391>,  <29.866783, 35.634350, 34.375832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600056, 35.515934, 34.649391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324928, -0.710387, -0.624317,
		0.670652, -0.638524, 0.377509,
		-0.666819, -0.296036, 0.683897,
		29.400009, 35.427124, 34.854561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946671, 34.912701, 34.576981>,  <29.866783, 35.634350, 34.375832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946671, 34.912701, 34.576981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.577604, 35.066662, 34.586224>,  <29.356165, 35.159039, 34.591770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.577604, 35.066662, 34.586224>,  <29.946671, 34.912701, 34.576981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.577604, 35.066662, 34.586224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326258, -0.747327, -0.578842,
		-0.205530, -0.541618, 0.815112,
		-0.922666, 0.384906, 0.023109,
		29.300804, 35.182133, 34.593155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495394, 34.319778, 34.934116>,  <29.946671, 34.912701, 34.576981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495394, 34.319778, 34.934116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312120, 34.561584, 34.673458>,  <29.202156, 34.706669, 34.517063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312120, 34.561584, 34.673458>,  <29.495394, 34.319778, 34.934116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312120, 34.561584, 34.673458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280624, -0.794005, -0.539265,
		-0.843397, -0.064216, 0.533440,
		-0.458183, 0.604511, -0.651641,
		29.174665, 34.742939, 34.477966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537266, 33.509350, 34.760139>,  <29.495394, 34.319778, 34.934116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537266, 33.509350, 34.760139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.886000, 33.705246, 34.757111>,  <30.095240, 33.822784, 34.755295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.886000, 33.705246, 34.757111>,  <29.537266, 33.509350, 34.760139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.886000, 33.705246, 34.757111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249443, 0.457252, 0.853639,
		0.421516, -0.742348, 0.520811,
		0.871839, 0.489735, -0.007565,
		30.147551, 33.852169, 34.754841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.955269, 33.330486, 35.398281>,  <29.537266, 33.509350, 34.760139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.955269, 33.330486, 35.398281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083366, 33.686893, 35.269581>,  <30.160225, 33.900738, 35.192360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083366, 33.686893, 35.269581>,  <29.955269, 33.330486, 35.398281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083366, 33.686893, 35.269581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198303, 0.395165, 0.896951,
		0.926347, -0.223441, 0.303242,
		0.320246, 0.891021, -0.321751,
		30.179440, 33.954201, 35.173054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479853, 33.711807, 35.838806>,  <29.955269, 33.330486, 35.398281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479853, 33.711807, 35.838806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263721, 34.004929, 35.673378>,  <30.134043, 34.180801, 35.574120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.263721, 34.004929, 35.673378>,  <30.479853, 33.711807, 35.838806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263721, 34.004929, 35.673378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262360, 0.320275, 0.910270,
		0.799507, 0.600349, 0.019205,
		-0.540329, 0.732806, -0.413570,
		30.101624, 34.224770, 35.549309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635012, 34.248943, 36.283028>,  <30.479853, 33.711807, 35.838806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635012, 34.248943, 36.283028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289820, 34.312737, 36.091267>,  <30.082705, 34.351013, 35.976212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289820, 34.312737, 36.091267>,  <30.635012, 34.248943, 36.283028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289820, 34.312737, 36.091267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465520, 0.117763, 0.877168,
		0.196350, 0.980151, -0.027385,
		-0.862982, 0.159483, -0.479403,
		30.030926, 34.360580, 35.947445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003723, 34.231842, 36.932091>,  <30.635012, 34.248943, 36.283028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003723, 34.231842, 36.932091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356613, 34.087540, 36.811073>,  <31.568348, 34.000957, 36.738464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356613, 34.087540, 36.811073>,  <31.003723, 34.231842, 36.932091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356613, 34.087540, 36.811073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322315, -0.005639, 0.946615,
		-0.343203, -0.932643, 0.111302,
		0.882227, -0.360756, -0.302541,
		31.621281, 33.979313, 36.720310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312864, 34.015873, 37.566105>,  <31.003723, 34.231842, 36.932091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312864, 34.015873, 37.566105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621704, 34.016212, 37.311905>,  <31.807009, 34.016415, 37.159386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.621704, 34.016212, 37.311905>,  <31.312864, 34.015873, 37.566105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621704, 34.016212, 37.311905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633970, 0.068333, 0.770333,
		0.044082, -0.997662, 0.052220,
		0.772100, 0.000852, -0.635501,
		31.853334, 34.016468, 37.121254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725328, 33.505310, 37.849415>,  <31.312864, 34.015873, 37.566105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725328, 33.505310, 37.849415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981298, 33.720772, 37.630196>,  <32.134880, 33.850048, 37.498665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981298, 33.720772, 37.630196>,  <31.725328, 33.505310, 37.849415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981298, 33.720772, 37.630196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591094, 0.110679, 0.798973,
		0.491025, -0.835227, -0.247567,
		0.639923, 0.538652, -0.548044,
		32.173275, 33.882366, 37.465782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328800, 33.289001, 38.056293>,  <31.725328, 33.505310, 37.849415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328800, 33.289001, 38.056293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381859, 33.654701, 37.903160>,  <32.413692, 33.874119, 37.811279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381859, 33.654701, 37.903160>,  <32.328800, 33.289001, 38.056293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381859, 33.654701, 37.903160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480791, 0.278411, 0.831461,
		0.866744, -0.294352, -0.402631,
		0.132646, 0.914245, -0.382833,
		32.421654, 33.928974, 37.788311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965046, 33.439880, 38.272224>,  <32.328800, 33.289001, 38.056293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965046, 33.439880, 38.272224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847366, 33.799015, 38.141171>,  <32.776760, 34.014496, 38.062538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847366, 33.799015, 38.141171>,  <32.965046, 33.439880, 38.272224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847366, 33.799015, 38.141171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466097, 0.434054, 0.770941,
		0.834387, 0.074101, -0.546176,
		-0.294198, 0.897834, -0.327631,
		32.759106, 34.068367, 38.042881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575401, 33.978859, 38.237480>,  <32.965046, 33.439880, 38.272224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575401, 33.978859, 38.237480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229855, 34.173103, 38.291027>,  <33.022526, 34.289650, 38.323154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229855, 34.173103, 38.291027>,  <33.575401, 33.978859, 38.237480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229855, 34.173103, 38.291027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264992, 0.212101, 0.940634,
		0.428385, 0.848056, -0.311909,
		-0.863866, 0.485607, 0.133867,
		32.970695, 34.318787, 38.331188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869873, 34.565327, 38.505024>,  <33.575401, 33.978859, 38.237480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869873, 34.565327, 38.505024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481209, 34.544525, 38.597260>,  <33.248009, 34.532043, 38.652599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.481209, 34.544525, 38.597260>,  <33.869873, 34.565327, 38.505024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481209, 34.544525, 38.597260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200503, 0.335332, 0.920517,
		-0.125190, 0.940664, -0.315403,
		-0.971661, -0.052000, 0.230586,
		33.189709, 34.528927, 38.666435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642998, 35.214954, 38.879002>,  <33.869873, 34.565327, 38.505024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642998, 35.214954, 38.879002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385700, 34.919838, 38.960888>,  <33.231323, 34.742767, 39.010021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385700, 34.919838, 38.960888>,  <33.642998, 35.214954, 38.879002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385700, 34.919838, 38.960888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025862, 0.246286, 0.968852,
		-0.765228, 0.628498, -0.139340,
		-0.643239, -0.737790, 0.204719,
		33.192730, 34.698502, 39.022305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190449, 35.464954, 39.420383>,  <33.642998, 35.214954, 38.879002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190449, 35.464954, 39.420383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150131, 35.067345, 39.437176>,  <33.125942, 34.828781, 39.447250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150131, 35.067345, 39.437176>,  <33.190449, 35.464954, 39.420383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150131, 35.067345, 39.437176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041878, 0.046402, 0.998045,
		-0.994026, 0.098835, -0.046305,
		-0.100790, -0.994021, 0.041985,
		33.119896, 34.769138, 39.449772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685242, 35.345585, 39.958847>,  <33.190449, 35.464954, 39.420383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685242, 35.345585, 39.958847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851879, 34.983437, 39.925980>,  <32.951862, 34.766148, 39.906258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.851879, 34.983437, 39.925980>,  <32.685242, 35.345585, 39.958847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851879, 34.983437, 39.925980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062875, -0.118865, 0.990918,
		-0.906916, -0.407644, -0.106443,
		0.416594, -0.905372, -0.082170,
		32.976856, 34.711826, 39.901329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313038, 34.930492, 40.528397>,  <32.685242, 35.345585, 39.958847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313038, 34.930492, 40.528397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635712, 34.721172, 40.418552>,  <32.829315, 34.595581, 40.352646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635712, 34.721172, 40.418552>,  <32.313038, 34.930492, 40.528397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635712, 34.721172, 40.418552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028174, -0.430096, 0.902344,
		-0.590305, -0.735647, -0.332209,
		0.806688, -0.523298, -0.274614,
		32.877720, 34.564182, 40.336166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207100, 34.245144, 40.712147>,  <32.313038, 34.930492, 40.528397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207100, 34.245144, 40.712147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605530, 34.279480, 40.703487>,  <32.844589, 34.300079, 40.698292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605530, 34.279480, 40.703487>,  <32.207100, 34.245144, 40.712147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605530, 34.279480, 40.703487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070774, -0.625233, 0.777223,
		0.053177, -0.775704, -0.628853,
		0.996074, 0.085836, -0.021652,
		32.904350, 34.305229, 40.696991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422150, 33.561302, 40.814098>,  <32.207100, 34.245144, 40.712147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422150, 33.561302, 40.814098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760075, 33.764801, 40.880405>,  <32.962830, 33.886898, 40.920189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760075, 33.764801, 40.880405>,  <32.422150, 33.561302, 40.814098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760075, 33.764801, 40.880405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315813, -0.724184, 0.613041,
		0.431926, -0.465552, -0.772465,
		0.844809, 0.508743, 0.165767,
		33.013515, 33.917423, 40.930134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975243, 33.142727, 40.753902>,  <32.422150, 33.561302, 40.814098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975243, 33.142727, 40.753902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131630, 33.428715, 40.985748>,  <33.225464, 33.600307, 41.124855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131630, 33.428715, 40.985748>,  <32.975243, 33.142727, 40.753902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131630, 33.428715, 40.985748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285172, -0.692852, 0.662294,
		0.875110, -0.093649, -0.474776,
		0.390973, 0.714973, 0.579615,
		33.248920, 33.643208, 41.159634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506989, 32.851295, 40.900211>,  <32.975243, 33.142727, 40.753902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506989, 32.851295, 40.900211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511765, 33.135406, 41.181740>,  <33.514629, 33.305874, 41.350655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511765, 33.135406, 41.181740>,  <33.506989, 32.851295, 40.900211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511765, 33.135406, 41.181740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441477, -0.635295, 0.633639,
		0.897193, 0.303157, -0.321154,
		0.011935, 0.710279, 0.703819,
		33.515347, 33.348492, 41.392887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127754, 32.706951, 41.285492>,  <33.506989, 32.851295, 40.900211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127754, 32.706951, 41.285492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927185, 32.949669, 41.532192>,  <33.806843, 33.095299, 41.680210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927185, 32.949669, 41.532192>,  <34.127754, 32.706951, 41.285492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927185, 32.949669, 41.532192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402541, -0.467372, 0.787099,
		0.765858, 0.642934, -0.009910,
		-0.501420, 0.606795, 0.616748,
		33.776760, 33.131706, 41.717216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597702, 32.933601, 41.887512>,  <34.127754, 32.706951, 41.285492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597702, 32.933601, 41.887512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233715, 33.008438, 42.035545>,  <34.015324, 33.053341, 42.124367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233715, 33.008438, 42.035545>,  <34.597702, 32.933601, 41.887512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233715, 33.008438, 42.035545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204607, -0.573688, 0.793107,
		0.360694, 0.797421, 0.483756,
		-0.909965, 0.187089, 0.370084,
		33.960724, 33.064564, 42.146572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689522, 33.101036, 42.573650>,  <34.597702, 32.933601, 41.887512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689522, 33.101036, 42.573650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311272, 32.972614, 42.552830>,  <34.084320, 32.895561, 42.540337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.311272, 32.972614, 42.552830>,  <34.689522, 33.101036, 42.573650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311272, 32.972614, 42.552830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088388, -0.407682, 0.908836,
		-0.313006, 0.854821, 0.413894,
		-0.945629, -0.321055, -0.052051,
		34.027584, 32.876297, 42.537216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280472, 33.179409, 43.286629>,  <34.689522, 33.101036, 42.573650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280472, 33.179409, 43.286629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049519, 32.907192, 43.106186>,  <33.910946, 32.743862, 42.997921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049519, 32.907192, 43.106186>,  <34.280472, 33.179409, 43.286629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049519, 32.907192, 43.106186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108039, -0.483966, 0.868392,
		-0.809296, 0.550129, 0.205906,
		-0.577379, -0.680541, -0.451107,
		33.876305, 32.703030, 42.970852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837109, 32.922279, 43.885540>,  <34.280472, 33.179409, 43.286629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837109, 32.922279, 43.885540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802856, 32.665409, 43.580833>,  <33.782307, 32.511288, 43.398010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802856, 32.665409, 43.580833>,  <33.837109, 32.922279, 43.885540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802856, 32.665409, 43.580833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150105, -0.747530, 0.647045,
		-0.984955, 0.169748, -0.032385,
		-0.085626, -0.642171, -0.761764,
		33.777168, 32.472759, 43.352303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244308, 32.466881, 43.973560>,  <33.837109, 32.922279, 43.885540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244308, 32.466881, 43.973560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492050, 32.261139, 43.736298>,  <33.640697, 32.137691, 43.593941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492050, 32.261139, 43.736298>,  <33.244308, 32.466881, 43.973560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492050, 32.261139, 43.736298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140491, -0.815922, 0.560834,
		-0.772438, -0.264022, -0.577609,
		0.619356, -0.514358, -0.593156,
		33.677856, 32.106831, 43.558350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873840, 31.815027, 43.782154>,  <33.244308, 32.466881, 43.973560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873840, 31.815027, 43.782154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264236, 31.734549, 43.748783>,  <33.498474, 31.686262, 43.728760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264236, 31.734549, 43.748783>,  <32.873840, 31.815027, 43.782154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264236, 31.734549, 43.748783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110740, -0.788215, 0.605354,
		-0.187557, -0.581581, -0.791572,
		0.975991, -0.201197, -0.083431,
		33.557034, 31.674189, 43.723755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930733, 31.095657, 43.999638>,  <32.873840, 31.815027, 43.782154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930733, 31.095657, 43.999638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299644, 31.248838, 44.020634>,  <33.520992, 31.340748, 44.033230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299644, 31.248838, 44.020634>,  <32.930733, 31.095657, 43.999638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299644, 31.248838, 44.020634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175338, -0.535497, 0.826135,
		0.344477, -0.752721, -0.561023,
		0.922275, 0.382954, 0.052486,
		33.576328, 31.363724, 44.036381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342934, 30.556904, 44.328251>,  <32.930733, 31.095657, 43.999638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342934, 30.556904, 44.328251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581020, 30.871500, 44.394165>,  <33.723873, 31.060257, 44.433716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581020, 30.871500, 44.394165>,  <33.342934, 30.556904, 44.328251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581020, 30.871500, 44.394165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407325, -0.472073, 0.781814,
		0.692681, -0.398224, -0.601341,
		0.595214, 0.786489, 0.164789,
		33.759586, 31.107447, 44.443604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016926, 30.296457, 44.406788>,  <33.342934, 30.556904, 44.328251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016926, 30.296457, 44.406788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981625, 30.638720, 44.610775>,  <33.960445, 30.844076, 44.733166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.981625, 30.638720, 44.610775>,  <34.016926, 30.296457, 44.406788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.981625, 30.638720, 44.610775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339567, -0.455457, 0.822954,
		0.936432, 0.245795, -0.250357,
		-0.088251, 0.855654, 0.509968,
		33.955151, 30.895416, 44.763767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768482, 30.362312, 44.731815>,  <34.016926, 30.296457, 44.406788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768482, 30.362312, 44.731815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536812, 30.598618, 44.956516>,  <34.397812, 30.740400, 45.091335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536812, 30.598618, 44.956516>,  <34.768482, 30.362312, 44.731815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536812, 30.598618, 44.956516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427651, -0.366478, 0.826322,
		0.694028, 0.718815, -0.040386,
		-0.579172, 0.590762, 0.561748,
		34.363060, 30.775846, 45.125042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268005, 30.612000, 45.227596>,  <34.768482, 30.362312, 44.731815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268005, 30.612000, 45.227596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912651, 30.705811, 45.385464>,  <34.699436, 30.762096, 45.480183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912651, 30.705811, 45.385464>,  <35.268005, 30.612000, 45.227596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912651, 30.705811, 45.385464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310400, -0.326558, 0.892755,
		0.338258, 0.915618, 0.217313,
		-0.888388, 0.234527, 0.394669,
		34.646133, 30.776169, 45.503864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349567, 31.158054, 45.767509>,  <35.268005, 30.612000, 45.227596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349567, 31.158054, 45.767509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027931, 30.927298, 45.824966>,  <34.834949, 30.788843, 45.859440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.027931, 30.927298, 45.824966>,  <35.349567, 31.158054, 45.767509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.027931, 30.927298, 45.824966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307691, -0.197095, 0.930849,
		-0.508690, 0.792684, 0.335986,
		-0.804090, -0.576893, 0.143642,
		34.786705, 30.754230, 45.868057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167660, 31.268661, 46.451839>,  <35.349567, 31.158054, 45.767509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167660, 31.268661, 46.451839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964821, 30.932096, 46.377140>,  <34.843117, 30.730158, 46.332321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.964821, 30.932096, 46.377140>,  <35.167660, 31.268661, 46.451839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964821, 30.932096, 46.377140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180645, -0.315622, 0.931531,
		-0.842745, 0.438643, 0.312048,
		-0.507098, -0.841413, -0.186750,
		34.812691, 30.679672, 46.321114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775578, 31.179544, 47.050362>,  <35.167660, 31.268661, 46.451839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775578, 31.179544, 47.050362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782864, 30.808208, 46.901848>,  <34.787235, 30.585407, 46.812740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782864, 30.808208, 46.901848>,  <34.775578, 31.179544, 47.050362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782864, 30.808208, 46.901848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069335, -0.369282, 0.926727,
		-0.997427, -0.042628, 0.057638,
		0.018220, -0.928339, -0.371288,
		34.788330, 30.529707, 46.790462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384678, 30.777191, 47.484097>,  <34.775578, 31.179544, 47.050362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384678, 30.777191, 47.484097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632092, 30.523384, 47.298710>,  <34.780540, 30.371099, 47.187477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632092, 30.523384, 47.298710>,  <34.384678, 30.777191, 47.484097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632092, 30.523384, 47.298710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119556, -0.506963, 0.853636,
		-0.776607, -0.583414, -0.237715,
		0.618536, -0.634520, -0.463462,
		34.817654, 30.333029, 47.159672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220051, 30.105394, 47.757187>,  <34.384678, 30.777191, 47.484097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220051, 30.105394, 47.757187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568306, 30.049118, 47.568634>,  <34.777260, 30.015352, 47.455502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568306, 30.049118, 47.568634>,  <34.220051, 30.105394, 47.757187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568306, 30.049118, 47.568634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298872, -0.609829, 0.734019,
		-0.390731, -0.779946, -0.488890,
		0.870634, -0.140689, -0.471383,
		34.829494, 30.006910, 47.427219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425438, 29.553226, 48.024601>,  <34.220051, 30.105394, 47.757187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425438, 29.553226, 48.024601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767338, 29.703112, 47.880939>,  <34.972477, 29.793043, 47.794743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767338, 29.703112, 47.880939>,  <34.425438, 29.553226, 48.024601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767338, 29.703112, 47.880939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498500, -0.399938, 0.769121,
		0.144563, -0.836444, -0.528643,
		0.854751, 0.374715, -0.359151,
		35.023762, 29.815525, 47.773193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881737, 28.930580, 47.860100>,  <34.425438, 29.553226, 48.024601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881737, 28.930580, 47.860100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110558, 29.251814, 47.926804>,  <35.247849, 29.444555, 47.966827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110558, 29.251814, 47.926804>,  <34.881737, 28.930580, 47.860100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110558, 29.251814, 47.926804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551646, -0.527166, 0.646362,
		0.606996, -0.277758, -0.744585,
		0.572052, 0.803086, 0.166763,
		35.282173, 29.492739, 47.976833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557613, 28.764620, 47.826530>,  <34.881737, 28.930580, 47.860100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557613, 28.764620, 47.826530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602940, 29.095448, 48.046753>,  <35.630135, 29.293945, 48.178886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602940, 29.095448, 48.046753>,  <35.557613, 28.764620, 47.826530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602940, 29.095448, 48.046753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679326, -0.468860, 0.564523,
		0.725035, 0.310039, -0.614979,
		0.113315, 0.827071, 0.550557,
		35.636932, 29.343569, 48.211922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243351, 28.976278, 47.767101>,  <35.557613, 28.764620, 47.826530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243351, 28.976278, 47.767101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060791, 29.053774, 48.114471>,  <35.951256, 29.100271, 48.322895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.060791, 29.053774, 48.114471>,  <36.243351, 28.976278, 47.767101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060791, 29.053774, 48.114471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608199, -0.644469, 0.463415,
		0.649456, 0.739678, 0.176303,
		-0.456400, 0.193740, 0.868426,
		35.923870, 29.111897, 48.375000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751167, 29.258282, 48.306076>,  <36.243351, 28.976278, 47.767101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751167, 29.258282, 48.306076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442825, 29.032278, 48.423748>,  <36.257820, 28.896677, 48.494350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.442825, 29.032278, 48.423748>,  <36.751167, 29.258282, 48.306076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442825, 29.032278, 48.423748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636869, -0.673966, 0.374390,
		-0.013264, 0.475958, 0.879368,
		-0.770858, -0.565008, 0.294183,
		36.211567, 28.862776, 48.512001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843658, 28.936956, 49.052380>,  <36.751167, 29.258282, 48.306076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843658, 28.936956, 49.052380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587097, 28.674181, 48.893867>,  <36.433163, 28.516516, 48.798759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587097, 28.674181, 48.893867>,  <36.843658, 28.936956, 49.052380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587097, 28.674181, 48.893867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695099, -0.716213, 0.062262,
		-0.324724, -0.235520, 0.916016,
		-0.641399, -0.656939, -0.396281,
		36.394676, 28.477098, 48.774982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935604, 28.470898, 49.436108>,  <36.843658, 28.936956, 49.052380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935604, 28.470898, 49.436108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741745, 28.263624, 49.154228>,  <36.625427, 28.139259, 48.985100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741745, 28.263624, 49.154228>,  <36.935604, 28.470898, 49.436108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741745, 28.263624, 49.154228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576148, -0.795297, 0.188564,
		-0.658156, -0.314623, 0.683991,
		-0.484649, -0.518185, -0.704698,
		36.596352, 28.108170, 48.942818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626953, 27.935568, 49.789093>,  <36.935604, 28.470898, 49.436108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626953, 27.935568, 49.789093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656677, 27.817213, 49.408161>,  <36.674511, 27.746201, 49.179604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.656677, 27.817213, 49.408161>,  <36.626953, 27.935568, 49.789093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656677, 27.817213, 49.408161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580725, -0.763501, 0.282533,
		-0.810702, -0.574035, 0.115093,
		0.074310, -0.295888, -0.952328,
		36.678970, 27.728447, 49.122463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668713, 27.253981, 49.866783>,  <36.626953, 27.935568, 49.789093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668713, 27.253981, 49.866783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845840, 27.295279, 49.510525>,  <36.952118, 27.320057, 49.296768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845840, 27.295279, 49.510525>,  <36.668713, 27.253981, 49.866783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845840, 27.295279, 49.510525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546316, -0.818724, 0.176719,
		-0.710948, -0.564829, -0.418953,
		0.442823, 0.103243, -0.890645,
		36.978687, 27.326252, 49.243332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527321, 26.662136, 49.561169>,  <36.668713, 27.253981, 49.866783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527321, 26.662136, 49.561169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840687, 26.832733, 49.380341>,  <37.028706, 26.935091, 49.271843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.840687, 26.832733, 49.380341>,  <36.527321, 26.662136, 49.561169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.840687, 26.832733, 49.380341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551142, -0.812913, 0.188187,
		-0.287231, -0.396582, -0.871906,
		0.783416, 0.426491, -0.452067,
		37.075710, 26.960680, 49.244720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703068, 26.568491, 48.725151>,  <36.527321, 26.662136, 49.561169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703068, 26.568491, 48.725151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986702, 26.318058, 48.854904>,  <37.156883, 26.167799, 48.932755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986702, 26.318058, 48.854904>,  <36.703068, 26.568491, 48.725151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986702, 26.318058, 48.854904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536619, -0.180712, 0.824247,
		-0.457428, -0.758528, -0.464107,
		0.709084, -0.626082, 0.324378,
		37.199429, 26.130234, 48.952217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490608, 25.849962, 48.833496>,  <36.703068, 26.568491, 48.725151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490608, 25.849962, 48.833496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758484, 25.971186, 49.104691>,  <36.919209, 26.043921, 49.267406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.758484, 25.971186, 49.104691>,  <36.490608, 25.849962, 48.833496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758484, 25.971186, 49.104691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522708, -0.456151, 0.720210,
		0.527532, -0.836709, -0.147069,
		0.669692, 0.303060, 0.677988,
		36.959393, 26.062103, 49.308086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720055, 25.293169, 49.212929>,  <36.490608, 25.849962, 48.833496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720055, 25.293169, 49.212929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693069, 25.623991, 49.436153>,  <36.676880, 25.822483, 49.570087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693069, 25.623991, 49.436153>,  <36.720055, 25.293169, 49.212929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693069, 25.623991, 49.436153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664668, -0.454397, 0.593077,
		0.744088, -0.330916, 0.580369,
		-0.067459, 0.827054, 0.558060,
		36.672832, 25.872107, 49.603573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610409, 25.105837, 49.921600>,  <36.720055, 25.293169, 49.212929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610409, 25.105837, 49.921600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436832, 25.462757, 49.871807>,  <36.332687, 25.676908, 49.841930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436832, 25.462757, 49.871807>,  <36.610409, 25.105837, 49.921600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436832, 25.462757, 49.871807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606870, -0.187377, 0.772398,
		0.665884, 0.410723, 0.622820,
		-0.433944, 0.892298, -0.124484,
		36.306648, 25.730446, 49.834461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623180, 25.774263, 50.299637>,  <36.610409, 25.105837, 49.921600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623180, 25.774263, 50.299637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000328, 25.652542, 50.245373>,  <37.226616, 25.579510, 50.212814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000328, 25.652542, 50.245373>,  <36.623180, 25.774263, 50.299637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000328, 25.652542, 50.245373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021367, 0.351119, -0.936087,
		0.332488, 0.885502, 0.324556,
		0.942865, -0.304303, -0.135663,
		37.283188, 25.561251, 50.204674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072380, 26.343231, 50.131897>,  <36.623180, 25.774263, 50.299637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072380, 26.343231, 50.131897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122337, 25.981821, 49.967922>,  <37.152309, 25.764975, 49.869537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.122337, 25.981821, 49.967922>,  <37.072380, 26.343231, 50.131897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122337, 25.981821, 49.967922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157225, 0.389927, -0.907324,
		0.979634, 0.177769, -0.093358,
		0.124891, -0.903524, -0.409935,
		37.159805, 25.710764, 49.844940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680061, 26.649452, 50.166702>,  <37.072380, 26.343231, 50.131897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680061, 26.649452, 50.166702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638668, 26.267166, 50.276901>,  <37.613831, 26.037794, 50.343021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638668, 26.267166, 50.276901>,  <37.680061, 26.649452, 50.166702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638668, 26.267166, 50.276901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266351, -0.240243, -0.933456,
		0.958305, -0.169976, -0.229694,
		-0.103483, -0.955715, 0.275499,
		37.607624, 25.980452, 50.359550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186344, 26.284859, 49.858562>,  <37.680061, 26.649452, 50.166702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186344, 26.284859, 49.858562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826130, 26.115221, 49.896900>,  <37.610001, 26.013439, 49.919903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826130, 26.115221, 49.896900>,  <38.186344, 26.284859, 49.858562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826130, 26.115221, 49.896900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073618, -0.068521, -0.994930,
		0.428511, -0.903022, 0.030484,
		-0.900533, -0.424094, 0.095840,
		37.555969, 25.987993, 49.925652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268444, 25.627432, 49.723503>,  <38.186344, 26.284859, 49.858562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268444, 25.627432, 49.723503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896618, 25.747835, 49.638363>,  <37.673523, 25.820078, 49.587276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.896618, 25.747835, 49.638363>,  <38.268444, 25.627432, 49.723503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896618, 25.747835, 49.638363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146558, -0.228061, -0.962554,
		-0.338282, -0.925949, 0.167882,
		-0.929562, 0.301010, -0.212854,
		37.617748, 25.838139, 49.574509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096199, 25.234821, 49.170864>,  <38.268444, 25.627432, 49.723503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096199, 25.234821, 49.170864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775505, 25.472082, 49.141506>,  <37.583088, 25.614439, 49.123890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775505, 25.472082, 49.141506>,  <38.096199, 25.234821, 49.170864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775505, 25.472082, 49.141506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022643, -0.152860, -0.987988,
		-0.597247, -0.790446, 0.135984,
		-0.801738, 0.593152, -0.073398,
		37.534985, 25.650028, 49.119488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498768, 24.912056, 48.706669>,  <38.096199, 25.234821, 49.170864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498768, 24.912056, 48.706669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487965, 25.311903, 48.704174>,  <37.481483, 25.551811, 48.702679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487965, 25.311903, 48.704174>,  <37.498768, 24.912056, 48.706669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487965, 25.311903, 48.704174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108060, -0.009120, -0.994103,
		-0.993778, -0.026175, 0.108265,
		-0.027008, 0.999616, -0.006235,
		37.479862, 25.611788, 48.702305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995441, 25.108036, 48.230896>,  <37.498768, 24.912056, 48.706669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995441, 25.108036, 48.230896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224319, 25.433012, 48.275684>,  <37.361645, 25.627998, 48.302559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224319, 25.433012, 48.275684>,  <36.995441, 25.108036, 48.230896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224319, 25.433012, 48.275684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037557, 0.110435, -0.993174,
		-0.819259, 0.572491, 0.032677,
		0.572192, 0.812440, 0.111975,
		37.395977, 25.676744, 48.309277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817890, 25.496756, 47.753380>,  <36.995441, 25.108036, 48.230896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817890, 25.496756, 47.753380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179905, 25.645798, 47.835423>,  <37.397114, 25.735224, 47.884647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.179905, 25.645798, 47.835423>,  <36.817890, 25.496756, 47.753380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.179905, 25.645798, 47.835423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146524, 0.179585, -0.972769,
		-0.399295, 0.910447, 0.107936,
		0.905038, 0.372606, 0.205110,
		37.451416, 25.757580, 47.896954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755939, 26.046146, 47.389168>,  <36.817890, 25.496756, 47.753380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755939, 26.046146, 47.389168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145657, 26.003256, 47.468422>,  <37.379486, 25.977522, 47.515976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145657, 26.003256, 47.468422>,  <36.755939, 26.046146, 47.389168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145657, 26.003256, 47.468422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223767, 0.358398, -0.906355,
		0.026173, 0.927390, 0.373178,
		0.974291, -0.107227, 0.198139,
		37.437943, 25.971088, 47.527863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022484, 26.596741, 47.150780>,  <36.755939, 26.046146, 47.389168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022484, 26.596741, 47.150780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316536, 26.325775, 47.161312>,  <37.492966, 26.163195, 47.167633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316536, 26.325775, 47.161312>,  <37.022484, 26.596741, 47.150780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316536, 26.325775, 47.161312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249262, 0.233965, -0.939749,
		0.630440, 0.697401, 0.340848,
		0.735129, -0.677416, 0.026335,
		37.537075, 26.122551, 47.169212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709881, 26.783577, 46.902447>,  <37.022484, 26.596741, 47.150780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709881, 26.783577, 46.902447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738876, 26.386812, 46.860771>,  <37.756275, 26.148754, 46.835766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738876, 26.386812, 46.860771>,  <37.709881, 26.783577, 46.902447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738876, 26.386812, 46.860771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329965, 0.122429, -0.936020,
		0.941206, 0.033478, 0.336172,
		0.072493, -0.991913, -0.104185,
		37.760624, 26.089239, 46.829517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380009, 26.635754, 46.635189>,  <37.709881, 26.783577, 46.902447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380009, 26.635754, 46.635189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150883, 26.322445, 46.538548>,  <38.013409, 26.134460, 46.480564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150883, 26.322445, 46.538548>,  <38.380009, 26.635754, 46.635189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150883, 26.322445, 46.538548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271934, 0.096466, -0.957469,
		0.773263, -0.614152, 0.157740,
		-0.572814, -0.783270, -0.241603,
		37.979038, 26.087463, 46.466068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727074, 26.365435, 46.066639>,  <38.380009, 26.635754, 46.635189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727074, 26.365435, 46.066639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375217, 26.175663, 46.053082>,  <38.164104, 26.061800, 46.044949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375217, 26.175663, 46.053082>,  <38.727074, 26.365435, 46.066639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375217, 26.175663, 46.053082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111753, -0.136890, -0.984262,
		0.462325, -0.869584, 0.173433,
		-0.879640, -0.474431, -0.033891,
		38.111324, 26.033333, 46.042915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887180, 25.917965, 45.584835>,  <38.727074, 26.365435, 46.066639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887180, 25.917965, 45.584835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487522, 25.928101, 45.597942>,  <38.247726, 25.934183, 45.605804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487522, 25.928101, 45.597942>,  <38.887180, 25.917965, 45.584835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487522, 25.928101, 45.597942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033138, -0.014461, -0.999346,
		-0.024863, -0.999574, 0.015289,
		-0.999141, 0.025353, 0.032764,
		38.187778, 25.935703, 45.607773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596813, 25.572376, 44.969318>,  <38.887180, 25.917965, 45.584835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596813, 25.572376, 44.969318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258507, 25.765862, 45.059383>,  <38.055523, 25.881952, 45.113422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258507, 25.765862, 45.059383>,  <38.596813, 25.572376, 44.969318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258507, 25.765862, 45.059383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104267, 0.264030, -0.958862,
		-0.523265, -0.834451, -0.172872,
		-0.845767, 0.483714, 0.225163,
		38.004776, 25.910976, 45.126934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084770, 25.419634, 44.499031>,  <38.596813, 25.572376, 44.969318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084770, 25.419634, 44.499031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959785, 25.766644, 44.653831>,  <37.884796, 25.974850, 44.746712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959785, 25.766644, 44.653831>,  <38.084770, 25.419634, 44.499031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959785, 25.766644, 44.653831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169984, 0.349759, -0.921289,
		-0.934598, -0.353650, 0.038179,
		-0.312461, 0.867525, 0.386999,
		37.866047, 26.026901, 44.769932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404575, 25.569609, 44.102139>,  <38.084770, 25.419634, 44.499031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404575, 25.569609, 44.102139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526939, 25.911346, 44.270195>,  <37.600357, 26.116388, 44.371029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526939, 25.911346, 44.270195>,  <37.404575, 25.569609, 44.102139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526939, 25.911346, 44.270195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202213, 0.489531, -0.848215,
		-0.930339, 0.174516, 0.322510,
		0.305906, 0.854344, 0.420140,
		37.618710, 26.167650, 44.396236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868904, 26.180534, 44.074585>,  <37.404575, 25.569609, 44.102139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868904, 26.180534, 44.074585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227455, 26.354490, 44.108952>,  <37.442585, 26.458864, 44.129570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227455, 26.354490, 44.108952>,  <36.868904, 26.180534, 44.074585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227455, 26.354490, 44.108952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265956, 0.682641, -0.680638,
		-0.354653, 0.587257, 0.727565,
		0.896375, 0.434891, 0.085916,
		37.496368, 26.484957, 44.134727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694817, 26.848900, 43.966042>,  <36.868904, 26.180534, 44.074585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694817, 26.848900, 43.966042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092472, 26.827629, 43.928379>,  <37.331066, 26.814867, 43.905781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.092472, 26.827629, 43.928379>,  <36.694817, 26.848900, 43.966042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092472, 26.827629, 43.928379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040537, 0.623988, -0.780382,
		0.100254, 0.779622, 0.618174,
		0.994136, -0.053178, -0.094161,
		37.390713, 26.811676, 43.900131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847927, 27.445549, 43.982895>,  <36.694817, 26.848900, 43.966042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847927, 27.445549, 43.982895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124065, 27.242260, 43.776932>,  <37.289749, 27.120287, 43.653355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124065, 27.242260, 43.776932>,  <36.847927, 27.445549, 43.982895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124065, 27.242260, 43.776932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173494, 0.574647, -0.799800,
		0.702366, 0.641475, 0.308534,
		0.690350, -0.508224, -0.514904,
		37.331169, 27.089792, 43.622459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184544, 27.940992, 43.574539>,  <36.847927, 27.445549, 43.982895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184544, 27.940992, 43.574539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262005, 27.604921, 43.371918>,  <37.308479, 27.403278, 43.250343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262005, 27.604921, 43.371918>,  <37.184544, 27.940992, 43.574539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262005, 27.604921, 43.371918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331191, 0.430037, -0.839869,
		0.923478, 0.330408, -0.194983,
		0.193650, -0.840178, -0.506558,
		37.320099, 27.352867, 43.219952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606819, 28.126188, 43.039577>,  <37.184544, 27.940992, 43.574539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606819, 28.126188, 43.039577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482899, 27.764286, 42.922653>,  <37.408546, 27.547146, 42.852497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482899, 27.764286, 42.922653>,  <37.606819, 28.126188, 43.039577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482899, 27.764286, 42.922653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333609, 0.391325, -0.857654,
		0.890354, -0.168182, -0.423066,
		-0.309798, -0.904754, -0.292311,
		37.389957, 27.492859, 42.834961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956581, 27.955963, 42.434235>,  <37.606819, 28.126188, 43.039577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956581, 27.955963, 42.434235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608200, 27.760958, 42.458809>,  <37.399170, 27.643955, 42.473553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608200, 27.760958, 42.458809>,  <37.956581, 27.955963, 42.434235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608200, 27.760958, 42.458809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302728, 0.433895, -0.848581,
		0.387033, -0.757675, -0.525485,
		-0.870954, -0.487508, 0.061438,
		37.346916, 27.614704, 42.477238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718182, 27.870493, 41.787182>,  <37.956581, 27.955963, 42.434235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718182, 27.870493, 41.787182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365292, 27.815590, 41.967335>,  <37.153557, 27.782648, 42.075428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365292, 27.815590, 41.967335>,  <37.718182, 27.870493, 41.787182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365292, 27.815590, 41.967335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454894, 0.495290, -0.740108,
		-0.121485, -0.857816, -0.499394,
		-0.882221, -0.137259, 0.450385,
		37.100624, 27.774412, 42.102451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367119, 27.654373, 41.272392>,  <37.718182, 27.870493, 41.787182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367119, 27.654373, 41.272392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107910, 27.765379, 41.556095>,  <36.952385, 27.831984, 41.726318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107910, 27.765379, 41.556095>,  <37.367119, 27.654373, 41.272392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107910, 27.765379, 41.556095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515278, 0.526015, -0.676607,
		-0.560851, -0.803924, -0.197872,
		-0.648024, 0.277517, 0.709259,
		36.913502, 27.848635, 41.768871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738850, 27.275150, 41.087521>,  <37.367119, 27.654373, 41.272392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738850, 27.275150, 41.087521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635124, 27.594864, 41.304371>,  <36.572891, 27.786692, 41.434483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.635124, 27.594864, 41.304371>,  <36.738850, 27.275150, 41.087521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635124, 27.594864, 41.304371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532186, 0.350163, -0.770820,
		-0.805938, -0.488395, 0.334567,
		-0.259312, 0.799285, 0.542127,
		36.557331, 27.834650, 41.467010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105511, 27.434107, 40.774139>,  <36.738850, 27.275150, 41.087521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105511, 27.434107, 40.774139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204609, 27.767500, 40.971695>,  <36.264069, 27.967537, 41.090229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204609, 27.767500, 40.971695>,  <36.105511, 27.434107, 40.774139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204609, 27.767500, 40.971695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623017, 0.527456, -0.577615,
		-0.741938, -0.164602, 0.649949,
		0.247743, 0.833484, 0.493890,
		36.278931, 28.017546, 41.119862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533821, 27.858496, 40.738197>,  <36.105511, 27.434107, 40.774139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533821, 27.858496, 40.738197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805767, 28.132109, 40.843945>,  <35.968933, 28.296276, 40.907391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805767, 28.132109, 40.843945>,  <35.533821, 27.858496, 40.738197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805767, 28.132109, 40.843945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587399, 0.723768, -0.362108,
		-0.439031, 0.090897, 0.893862,
		0.679864, 0.684030, 0.264364,
		36.009727, 28.337318, 40.923252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.216042, 28.366690, 40.933910>,  <35.533821, 27.858496, 40.738197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.216042, 28.366690, 40.933910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549477, 28.582542, 40.886715>,  <35.749538, 28.712053, 40.858398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.549477, 28.582542, 40.886715>,  <35.216042, 28.366690, 40.933910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549477, 28.582542, 40.886715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531232, 0.724636, -0.438970,
		-0.151382, 0.428603, 0.890721,
		0.833592, 0.539631, -0.117991,
		35.799553, 28.744432, 40.851318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034721, 29.088070, 41.135754>,  <35.216042, 28.366690, 40.933910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034721, 29.088070, 41.135754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368862, 29.095474, 40.915989>,  <35.569347, 29.099916, 40.784130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.368862, 29.095474, 40.915989>,  <35.034721, 29.088070, 41.135754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368862, 29.095474, 40.915989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296157, 0.857149, -0.421411,
		0.463122, 0.514736, 0.721501,
		0.835349, 0.018513, -0.549408,
		35.619469, 29.101028, 40.751167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.211040, 29.757811, 41.076225>,  <35.034721, 29.088070, 41.135754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.211040, 29.757811, 41.076225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385994, 29.596592, 40.754665>,  <35.490967, 29.499861, 40.561729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385994, 29.596592, 40.754665>,  <35.211040, 29.757811, 41.076225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385994, 29.596592, 40.754665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450948, 0.675119, -0.583832,
		0.778039, 0.617872, 0.113529,
		0.437379, -0.403049, -0.803898,
		35.517208, 29.475677, 40.513496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469498, 30.394405, 40.671700>,  <35.211040, 29.757811, 41.076225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469498, 30.394405, 40.671700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430267, 30.076448, 40.432190>,  <35.406731, 29.885674, 40.288486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430267, 30.076448, 40.432190>,  <35.469498, 30.394405, 40.671700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430267, 30.076448, 40.432190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487051, 0.563028, -0.667669,
		0.867850, 0.226151, -0.442371,
		-0.098073, -0.794894, -0.598770,
		35.400845, 29.837980, 40.252560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603573, 30.732706, 40.036667>,  <35.469498, 30.394405, 40.671700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603573, 30.732706, 40.036667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475586, 30.370169, 39.926281>,  <35.398792, 30.152645, 39.860050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475586, 30.370169, 39.926281>,  <35.603573, 30.732706, 40.036667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475586, 30.370169, 39.926281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572744, 0.417074, -0.705701,
		0.754708, -0.067744, -0.652554,
		-0.319970, -0.906345, -0.275969,
		35.379593, 30.098265, 39.843491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624577, 30.691320, 39.338612>,  <35.603573, 30.732706, 40.036667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624577, 30.691320, 39.338612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342846, 30.430819, 39.451603>,  <35.173809, 30.274517, 39.519398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.342846, 30.430819, 39.451603>,  <35.624577, 30.691320, 39.338612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342846, 30.430819, 39.451603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602047, 0.337176, -0.723776,
		0.376122, -0.679834, -0.629569,
		-0.704324, -0.651258, 0.282473,
		35.131546, 30.235443, 39.536346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453819, 30.335779, 38.698872>,  <35.624577, 30.691320, 39.338612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453819, 30.335779, 38.698872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140373, 30.243624, 38.929649>,  <34.952305, 30.188332, 39.068115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140373, 30.243624, 38.929649>,  <35.453819, 30.335779, 38.698872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140373, 30.243624, 38.929649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609257, 0.103456, -0.786195,
		0.121451, -0.967581, -0.221443,
		-0.783617, -0.230400, 0.576940,
		34.905289, 30.174507, 39.102734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010704, 29.731977, 38.305592>,  <35.453819, 30.335779, 38.698872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010704, 29.731977, 38.305592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799381, 29.950624, 38.565468>,  <34.672588, 30.081814, 38.721394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799381, 29.950624, 38.565468>,  <35.010704, 29.731977, 38.305592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799381, 29.950624, 38.565468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729627, 0.099044, -0.676635,
		-0.434211, -0.831503, 0.346503,
		-0.528305, 0.546620, 0.649692,
		34.640888, 30.114611, 38.760376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324459, 29.496904, 38.083996>,  <35.010704, 29.731977, 38.305592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324459, 29.496904, 38.083996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287582, 29.836950, 38.291382>,  <34.265457, 30.040977, 38.415813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287582, 29.836950, 38.291382>,  <34.324459, 29.496904, 38.083996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287582, 29.836950, 38.291382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748083, 0.284507, -0.599522,
		-0.657170, -0.443121, 0.609730,
		-0.092189, 0.850117, 0.518461,
		34.259926, 30.091986, 38.446918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674622, 29.609377, 38.095314>,  <34.324459, 29.496904, 38.083996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674622, 29.609377, 38.095314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801434, 29.974318, 38.198936>,  <33.877522, 30.193281, 38.261108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801434, 29.974318, 38.198936>,  <33.674622, 29.609377, 38.095314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801434, 29.974318, 38.198936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707654, 0.409410, -0.575856,
		-0.631443, -0.000760, 0.775422,
		0.317028, 0.912350, 0.259056,
		33.896542, 30.248022, 38.276653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067940, 29.996386, 38.147343>,  <33.674622, 29.609377, 38.095314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067940, 29.996386, 38.147343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358852, 30.265856, 38.094837>,  <33.533398, 30.427538, 38.063335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.358852, 30.265856, 38.094837>,  <33.067940, 29.996386, 38.147343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358852, 30.265856, 38.094837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615676, 0.555837, -0.558559,
		-0.303328, 0.487042, 0.819013,
		0.727279, 0.673674, -0.131260,
		33.577038, 30.467958, 38.055458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708294, 30.589264, 38.165588>,  <33.067940, 29.996386, 38.147343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708294, 30.589264, 38.165588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053730, 30.711014, 38.004807>,  <33.260994, 30.784063, 37.908337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053730, 30.711014, 38.004807>,  <32.708294, 30.589264, 38.165588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053730, 30.711014, 38.004807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500963, 0.608062, -0.615870,
		0.056957, 0.733224, 0.677598,
		0.863593, 0.304374, -0.401951,
		33.312809, 30.802326, 37.884220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830814, 31.432814, 38.237850>,  <32.708294, 30.589264, 38.165588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830814, 31.432814, 38.237850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078239, 31.316103, 37.946030>,  <33.226692, 31.246077, 37.770935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078239, 31.316103, 37.946030>,  <32.830814, 31.432814, 38.237850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078239, 31.316103, 37.946030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401848, 0.680409, -0.612831,
		0.675205, 0.672243, 0.303624,
		0.618560, -0.291776, -0.729555,
		33.263809, 31.228571, 37.727161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025856, 32.074223, 38.054379>,  <32.830814, 31.432814, 38.237850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025856, 32.074223, 38.054379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101898, 31.819561, 37.755440>,  <33.147526, 31.666765, 37.576077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.101898, 31.819561, 37.755440>,  <33.025856, 32.074223, 38.054379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101898, 31.819561, 37.755440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321885, 0.678736, -0.660082,
		0.927496, 0.366048, -0.075895,
		0.190109, -0.636652, -0.747350,
		33.158932, 31.628565, 37.531235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421741, 32.406208, 37.678410>,  <33.025856, 32.074223, 38.054379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421741, 32.406208, 37.678410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243362, 32.136612, 37.442825>,  <33.136337, 31.974854, 37.301476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243362, 32.136612, 37.442825>,  <33.421741, 32.406208, 37.678410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243362, 32.136612, 37.442825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337369, 0.736047, -0.586870,
		0.829045, -0.063016, -0.555620,
		-0.445945, -0.673991, -0.588956,
		33.109577, 31.934414, 37.266140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511299, 32.670692, 37.040222>,  <33.421741, 32.406208, 37.678410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511299, 32.670692, 37.040222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233932, 32.388069, 36.983723>,  <33.067513, 32.218494, 36.949821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233932, 32.388069, 36.983723>,  <33.511299, 32.670692, 37.040222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233932, 32.388069, 36.983723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327659, 0.483793, -0.811532,
		0.641732, -0.516444, -0.566979,
		-0.693411, -0.706562, -0.141249,
		33.025909, 32.176102, 36.941349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691185, 32.329987, 36.317448>,  <33.511299, 32.670692, 37.040222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691185, 32.329987, 36.317448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317352, 32.310501, 36.458405>,  <33.093052, 32.298809, 36.542976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317352, 32.310501, 36.458405>,  <33.691185, 32.329987, 36.317448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317352, 32.310501, 36.458405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329664, 0.490853, -0.806464,
		-0.133685, -0.869880, -0.474803,
		-0.934586, -0.048714, 0.352388,
		33.036976, 32.295887, 36.564121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360210, 32.477585, 36.705894>,  <33.691185, 32.329987, 36.317448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360210, 32.477585, 36.705894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684299, 32.704773, 36.647991>,  <34.878754, 32.841087, 36.613251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684299, 32.704773, 36.647991>,  <34.360210, 32.477585, 36.705894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684299, 32.704773, 36.647991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470988, -0.483890, 0.737577,
		0.348878, -0.665777, -0.659565,
		0.810219, 0.567971, -0.144755,
		34.927364, 32.875164, 36.604565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877113, 32.034241, 36.497227>,  <34.360210, 32.477585, 36.705894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877113, 32.034241, 36.497227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057713, 32.342926, 36.676384>,  <35.166073, 32.528137, 36.783878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057713, 32.342926, 36.676384>,  <34.877113, 32.034241, 36.497227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057713, 32.342926, 36.676384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599748, -0.634138, 0.488028,
		0.660642, 0.048276, -0.749147,
		0.451502, 0.771711, 0.447892,
		35.193165, 32.574440, 36.810753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626579, 31.840076, 36.543457>,  <34.877113, 32.034241, 36.497227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626579, 31.840076, 36.543457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613892, 32.163094, 36.779037>,  <35.606277, 32.356903, 36.920387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613892, 32.163094, 36.779037>,  <35.626579, 31.840076, 36.543457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613892, 32.163094, 36.779037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798831, -0.333668, 0.500534,
		0.600718, 0.486354, -0.634505,
		-0.031723, 0.807543, 0.588955,
		35.604374, 32.405357, 36.955723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297195, 32.110191, 36.578705>,  <35.626579, 31.840076, 36.543457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297195, 32.110191, 36.578705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109226, 32.224373, 36.912815>,  <35.996445, 32.292881, 37.113281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109226, 32.224373, 36.912815>,  <36.297195, 32.110191, 36.578705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109226, 32.224373, 36.912815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752944, -0.364248, 0.548086,
		0.460701, 0.886476, -0.043762,
		-0.469925, 0.285454, 0.835277,
		35.968250, 32.310009, 37.163399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797741, 32.256111, 36.827709>,  <36.297195, 32.110191, 36.578705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797741, 32.256111, 36.827709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549637, 32.259525, 37.141449>,  <36.400776, 32.261574, 37.329693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549637, 32.259525, 37.141449>,  <36.797741, 32.256111, 36.827709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549637, 32.259525, 37.141449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742035, -0.317783, 0.590252,
		0.254294, 0.948125, 0.190771,
		-0.620257, 0.008539, 0.784352,
		36.363560, 32.262089, 37.376755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082874, 32.588615, 37.404583>,  <36.797741, 32.256111, 36.827709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082874, 32.588615, 37.404583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821205, 32.336521, 37.571846>,  <36.664204, 32.185265, 37.672203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821205, 32.336521, 37.571846>,  <37.082874, 32.588615, 37.404583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821205, 32.336521, 37.571846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654585, -0.194786, 0.730463,
		-0.378913, 0.751571, 0.539968,
		-0.654173, -0.630237, 0.418160,
		36.624954, 32.147449, 37.697292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094639, 32.708904, 38.033020>,  <37.082874, 32.588615, 37.404583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094639, 32.708904, 38.033020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922695, 32.348015, 38.046932>,  <36.819530, 32.131481, 38.055279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922695, 32.348015, 38.046932>,  <37.094639, 32.708904, 38.033020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922695, 32.348015, 38.046932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528146, -0.220018, 0.820155,
		-0.732313, 0.370919, 0.571083,
		-0.429860, -0.902226, 0.034777,
		36.793736, 32.077347, 38.057365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123230, 32.529846, 38.799065>,  <37.094639, 32.708904, 38.033020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123230, 32.529846, 38.799065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.059113, 32.183475, 38.609547>,  <37.020641, 31.975655, 38.495834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.059113, 32.183475, 38.609547>,  <37.123230, 32.529846, 38.799065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059113, 32.183475, 38.609547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638847, -0.456921, 0.618949,
		-0.752450, -0.203472, 0.626433,
		-0.160291, -0.865923, -0.473798,
		37.011024, 31.923698, 38.467407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114868, 32.040886, 39.301655>,  <37.123230, 32.529846, 38.799065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114868, 32.040886, 39.301655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175148, 31.820312, 38.973457>,  <37.211315, 31.687969, 38.776539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.175148, 31.820312, 38.973457>,  <37.114868, 32.040886, 39.301655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175148, 31.820312, 38.973457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572745, -0.627786, 0.527113,
		-0.805762, -0.549371, 0.221223,
		0.150700, -0.551432, -0.820495,
		37.220360, 31.654882, 38.727310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873554, 31.364300, 39.460159>,  <37.114868, 32.040886, 39.301655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873554, 31.364300, 39.460159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129166, 31.328850, 39.154533>,  <37.282532, 31.307581, 38.971157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.129166, 31.328850, 39.154533>,  <36.873554, 31.364300, 39.460159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.129166, 31.328850, 39.154533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522474, -0.679001, 0.515731,
		-0.564506, -0.728768, -0.387596,
		0.639026, -0.088624, -0.764063,
		37.320873, 31.302263, 38.925316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023724, 30.637629, 39.425892>,  <36.873554, 31.364300, 39.460159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023724, 30.637629, 39.425892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320202, 30.823832, 39.232426>,  <37.498089, 30.935553, 39.116344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.320202, 30.823832, 39.232426>,  <37.023724, 30.637629, 39.425892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320202, 30.823832, 39.232426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639122, -0.709718, 0.296350,
		-0.205316, -0.528777, -0.823554,
		0.741194, 0.465506, -0.483669,
		37.542561, 30.963484, 39.087326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301655, 30.091120, 38.900322>,  <37.023724, 30.637629, 39.425892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.301655, 30.091120, 38.900322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593262, 30.352085, 38.983158>,  <37.768227, 30.508663, 39.032860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.593262, 30.352085, 38.983158>,  <37.301655, 30.091120, 38.900322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.593262, 30.352085, 38.983158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589441, -0.752172, 0.294613,
		0.347978, -0.092710, -0.932907,
		0.729021, 0.652412, 0.207092,
		37.811970, 30.547810, 39.045284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883263, 29.795746, 38.623524>,  <37.301655, 30.091120, 38.900322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883263, 29.795746, 38.623524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040619, 30.059784, 38.879501>,  <38.135033, 30.218206, 39.033089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040619, 30.059784, 38.879501>,  <37.883263, 29.795746, 38.623524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040619, 30.059784, 38.879501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593779, -0.713835, 0.371304,
		0.701907, 0.233917, -0.672762,
		0.393387, 0.660093, 0.639941,
		38.158634, 30.257812, 39.071484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629040, 29.692434, 38.678978>,  <37.883263, 29.795746, 38.623524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629040, 29.692434, 38.678978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567982, 29.897242, 39.017097>,  <38.531345, 30.020126, 39.219971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567982, 29.897242, 39.017097>,  <38.629040, 29.692434, 38.678978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567982, 29.897242, 39.017097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618313, -0.617768, 0.485851,
		0.770966, 0.596825, -0.222288,
		-0.152646, 0.512018, 0.845303,
		38.522186, 30.050848, 39.270687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291168, 29.792608, 38.892494>,  <38.629040, 29.692434, 38.678978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291168, 29.792608, 38.892494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055302, 29.858913, 39.208675>,  <38.913784, 29.898697, 39.398384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055302, 29.858913, 39.208675>,  <39.291168, 29.792608, 38.892494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055302, 29.858913, 39.208675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626226, -0.524230, 0.577083,
		0.510039, 0.835288, 0.205315,
		-0.589662, 0.165761, 0.790457,
		38.878403, 29.908642, 39.445812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653343, 29.677225, 39.457825>,  <39.291168, 29.792608, 38.892494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653343, 29.677225, 39.457825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304508, 29.631126, 39.648060>,  <39.095207, 29.603468, 39.762203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.304508, 29.631126, 39.648060>,  <39.653343, 29.677225, 39.457825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.304508, 29.631126, 39.648060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427354, -0.652836, 0.625439,
		0.238403, 0.748681, 0.618579,
		-0.872085, -0.115246, 0.475590,
		39.042881, 29.596552, 39.790737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702938, 29.877296, 40.148651>,  <39.653343, 29.677225, 39.457825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702938, 29.877296, 40.148651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404358, 29.611738, 40.130554>,  <39.225208, 29.452402, 40.119698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.404358, 29.611738, 40.130554>,  <39.702938, 29.877296, 40.148651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404358, 29.611738, 40.130554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450089, -0.553796, 0.700521,
		-0.490129, 0.502543, 0.712197,
		-0.746454, -0.663898, -0.045242,
		39.180420, 29.412569, 40.116982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651100, 29.584698, 40.872189>,  <39.702938, 29.877296, 40.148651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651100, 29.584698, 40.872189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392479, 29.362846, 40.662674>,  <39.237305, 29.229734, 40.536964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392479, 29.362846, 40.662674>,  <39.651100, 29.584698, 40.872189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392479, 29.362846, 40.662674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059868, -0.721375, 0.689952,
		-0.760515, 0.414733, 0.499613,
		-0.646554, -0.554630, -0.523787,
		39.198513, 29.196457, 40.505539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162601, 29.402607, 41.304424>,  <39.651100, 29.584698, 40.872189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162601, 29.402607, 41.304424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188908, 29.133450, 41.009701>,  <39.204693, 28.971956, 40.832867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188908, 29.133450, 41.009701>,  <39.162601, 29.402607, 41.304424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188908, 29.133450, 41.009701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189308, -0.716586, 0.671317,
		-0.979713, -0.183634, 0.080257,
		0.065766, -0.672891, -0.736812,
		39.208637, 28.931581, 40.788658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725376, 28.818247, 41.601505>,  <39.162601, 29.402607, 41.304424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725376, 28.818247, 41.601505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963661, 28.694307, 41.305096>,  <39.106632, 28.619944, 41.127251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.963661, 28.694307, 41.305096>,  <38.725376, 28.818247, 41.601505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963661, 28.694307, 41.305096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292913, -0.775249, 0.559634,
		-0.747879, -0.550440, -0.371071,
		0.595717, -0.309847, -0.741024,
		39.142376, 28.601353, 41.082790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609383, 28.131218, 41.464539>,  <38.725376, 28.818247, 41.601505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609383, 28.131218, 41.464539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979942, 28.173531, 41.319988>,  <39.202278, 28.198917, 41.233257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979942, 28.173531, 41.319988>,  <38.609383, 28.131218, 41.464539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979942, 28.173531, 41.319988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288513, -0.816109, 0.500726,
		-0.241953, -0.568134, -0.786564,
		0.926401, 0.105782, -0.361374,
		39.257862, 28.205265, 41.211575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834167, 27.518337, 41.126396>,  <38.609383, 28.131218, 41.464539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834167, 27.518337, 41.126396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137630, 27.727242, 41.282181>,  <39.319710, 27.852585, 41.375652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137630, 27.727242, 41.282181>,  <38.834167, 27.518337, 41.126396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137630, 27.727242, 41.282181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293426, -0.807652, 0.511468,
		0.581667, -0.273753, -0.765978,
		0.758660, 0.522262, 0.389458,
		39.365227, 27.883921, 41.399017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566425, 27.114174, 41.046890>,  <38.834167, 27.518337, 41.126396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566425, 27.114174, 41.046890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568516, 27.361858, 41.360973>,  <39.569771, 27.510469, 41.549423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568516, 27.361858, 41.360973>,  <39.566425, 27.114174, 41.046890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568516, 27.361858, 41.360973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384970, -0.725942, 0.569918,
		0.922915, 0.299304, -0.242169,
		0.005222, 0.619213, 0.785206,
		39.570084, 27.547623, 41.596535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879581, 26.711233, 41.523045>,  <39.566425, 27.114174, 41.046890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879581, 26.711233, 41.523045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792446, 27.006441, 41.778507>,  <39.740166, 27.183565, 41.931786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.792446, 27.006441, 41.778507>,  <39.879581, 26.711233, 41.523045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.792446, 27.006441, 41.778507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109522, -0.631749, 0.767397,
		0.969821, 0.237114, 0.056789,
		-0.217837, 0.738018, 0.638652,
		39.727097, 27.227846, 41.970104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354103, 26.749865, 42.021160>,  <39.879581, 26.711233, 41.523045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354103, 26.749865, 42.021160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045464, 26.934206, 42.196541>,  <39.860279, 27.044811, 42.301769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045464, 26.934206, 42.196541>,  <40.354103, 26.749865, 42.021160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045464, 26.934206, 42.196541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277135, -0.376872, 0.883835,
		0.572559, 0.803481, 0.163077,
		-0.771603, 0.460853, 0.438454,
		39.813984, 27.072462, 42.328075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632572, 27.118723, 42.528469>,  <40.354103, 26.749865, 42.021160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632572, 27.118723, 42.528469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248329, 27.058577, 42.621960>,  <40.017784, 27.022488, 42.678055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248329, 27.058577, 42.621960>,  <40.632572, 27.118723, 42.528469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248329, 27.058577, 42.621960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270348, -0.310592, 0.911287,
		-0.064433, 0.938575, 0.339008,
		-0.960604, -0.150367, 0.233729,
		39.960148, 27.013466, 42.692078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519558, 27.347094, 43.235249>,  <40.632572, 27.118723, 42.528469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519558, 27.347094, 43.235249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198620, 27.118149, 43.167553>,  <40.006058, 26.980782, 43.126934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198620, 27.118149, 43.167553>,  <40.519558, 27.347094, 43.235249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198620, 27.118149, 43.167553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107538, -0.417540, 0.902272,
		-0.587090, 0.705736, 0.396563,
		-0.802347, -0.572360, -0.169240,
		39.957916, 26.946440, 43.116779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121525, 27.515934, 43.721523>,  <40.519558, 27.347094, 43.235249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121525, 27.515934, 43.721523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.978588, 27.160273, 43.607185>,  <39.892826, 26.946877, 43.538582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.978588, 27.160273, 43.607185>,  <40.121525, 27.515934, 43.721523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978588, 27.160273, 43.607185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166025, -0.361657, 0.917409,
		-0.919097, 0.280375, 0.276858,
		-0.357347, -0.889154, -0.285849,
		39.871384, 26.893526, 43.521431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756443, 27.313309, 44.324852>,  <40.121525, 27.515934, 43.721523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756443, 27.313309, 44.324852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783222, 26.973328, 44.115818>,  <39.799290, 26.769339, 43.990398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783222, 26.973328, 44.115818>,  <39.756443, 27.313309, 44.324852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783222, 26.973328, 44.115818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248922, -0.492970, 0.833678,
		-0.966207, -0.185897, 0.178568,
		0.066950, -0.849955, -0.522585,
		39.803307, 26.718342, 43.959042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391415, 26.858810, 44.729630>,  <39.756443, 27.313309, 44.324852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391415, 26.858810, 44.729630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639603, 26.646561, 44.498646>,  <39.788513, 26.519211, 44.360054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.639603, 26.646561, 44.498646>,  <39.391415, 26.858810, 44.729630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639603, 26.646561, 44.498646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363660, -0.457709, 0.811328,
		-0.694820, -0.713400, -0.091025,
		0.620465, -0.530625, -0.577461,
		39.825741, 26.487373, 44.325409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369305, 26.147089, 44.919537>,  <39.391415, 26.858810, 44.729630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369305, 26.147089, 44.919537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719681, 26.205929, 44.735756>,  <39.929905, 26.241232, 44.625488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719681, 26.205929, 44.735756>,  <39.369305, 26.147089, 44.919537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719681, 26.205929, 44.735756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476574, -0.116031, 0.871444,
		0.074881, -0.982292, -0.171741,
		0.875939, 0.147101, -0.459447,
		39.982464, 26.250059, 44.597923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862072, 25.577644, 44.995625>,  <39.369305, 26.147089, 44.919537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862072, 25.577644, 44.995625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095146, 25.892330, 44.914074>,  <40.234989, 26.081141, 44.865143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095146, 25.892330, 44.914074>,  <39.862072, 25.577644, 44.995625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095146, 25.892330, 44.914074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657627, -0.309032, 0.687041,
		0.477501, -0.534399, -0.697432,
		0.582683, 0.786713, -0.203872,
		40.269951, 26.128344, 44.852913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459652, 25.319382, 45.276665>,  <39.862072, 25.577644, 44.995625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459652, 25.319382, 45.276665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.554592, 25.701838, 45.208000>,  <40.611557, 25.931311, 45.166801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.554592, 25.701838, 45.208000>,  <40.459652, 25.319382, 45.276665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.554592, 25.701838, 45.208000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530629, 0.020408, 0.847358,
		0.813695, -0.292205, -0.502511,
		0.237347, 0.956138, -0.171658,
		40.625797, 25.988680, 45.156502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170734, 25.346180, 45.374096>,  <40.459652, 25.319382, 45.276665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170734, 25.346180, 45.374096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031647, 25.716131, 45.435665>,  <40.948193, 25.938103, 45.472607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031647, 25.716131, 45.435665>,  <41.170734, 25.346180, 45.374096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031647, 25.716131, 45.435665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494600, 0.041475, 0.868131,
		0.796531, 0.377996, -0.471866,
		-0.347721, 0.924878, 0.153921,
		40.927330, 25.993595, 45.481842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.683186, 25.749262, 45.672318>,  <41.170734, 25.346180, 45.374096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.683186, 25.749262, 45.672318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338196, 25.930588, 45.762341>,  <41.131203, 26.039383, 45.816353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.338196, 25.930588, 45.762341>,  <41.683186, 25.749262, 45.672318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338196, 25.930588, 45.762341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307434, 0.116020, 0.944470,
		0.402032, 0.883767, -0.239428,
		-0.862470, 0.453315, 0.225056,
		41.079456, 26.066582, 45.829857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.913467, 26.317186, 45.994530>,  <41.683186, 25.749262, 45.672318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.913467, 26.317186, 45.994530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.533760, 26.304575, 46.119682>,  <41.305935, 26.297009, 46.194775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.533760, 26.304575, 46.119682>,  <41.913467, 26.317186, 45.994530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533760, 26.304575, 46.119682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307415, 0.116497, 0.944418,
		-0.066224, 0.992690, -0.100895,
		-0.949268, -0.031526, 0.312882,
		41.248978, 26.295116, 46.213547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693249, 26.979227, 46.251213>,  <41.913467, 26.317186, 45.994530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693249, 26.979227, 46.251213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473145, 26.707190, 46.444992>,  <41.341084, 26.543968, 46.561260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.473145, 26.707190, 46.444992>,  <41.693249, 26.979227, 46.251213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.473145, 26.707190, 46.444992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264996, 0.407951, 0.873700,
		-0.791827, 0.609139, -0.044258,
		-0.550260, -0.680092, 0.484447,
		41.308067, 26.503162, 46.590324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246990, 27.217997, 46.774399>,  <41.693249, 26.979227, 46.251213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246990, 27.217997, 46.774399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.309181, 26.846050, 46.907772>,  <41.346497, 26.622883, 46.987797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.309181, 26.846050, 46.907772>,  <41.246990, 27.217997, 46.774399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.309181, 26.846050, 46.907772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319649, 0.366730, 0.873690,
		-0.934694, -0.029256, 0.354248,
		0.155474, -0.929867, 0.333429,
		41.355824, 26.567091, 47.007801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733986, 26.849268, 47.247669>,  <41.246990, 27.217997, 46.774399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733986, 26.849268, 47.247669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708885, 27.102488, 47.556293>,  <41.693825, 27.254419, 47.741470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708885, 27.102488, 47.556293>,  <41.733986, 26.849268, 47.247669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708885, 27.102488, 47.556293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872014, 0.341250, -0.350914,
		-0.485441, -0.694836, 0.530613,
		-0.062756, 0.633050, 0.771563,
		41.690060, 27.292402, 47.787762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983845, 26.936026, 47.483871>,  <41.733986, 26.849268, 47.247669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983845, 26.936026, 47.483871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192783, 27.261385, 47.586269>,  <41.318146, 27.456600, 47.647709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.192783, 27.261385, 47.586269>,  <40.983845, 26.936026, 47.483871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.192783, 27.261385, 47.586269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705283, 0.580837, -0.406453,
		-0.479298, 0.031764, 0.877077,
		0.522349, 0.813400, 0.255992,
		41.349487, 27.505405, 47.663067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462212, 27.452948, 47.733372>,  <40.983845, 26.936026, 47.483871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462212, 27.452948, 47.733372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780674, 27.677437, 47.642895>,  <40.971752, 27.812130, 47.588608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.780674, 27.677437, 47.642895>,  <40.462212, 27.452948, 47.733372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.780674, 27.677437, 47.642895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598164, 0.673571, -0.434167,
		-0.091306, 0.480966, 0.871972,
		0.796155, 0.561224, -0.226196,
		41.019520, 27.845804, 47.575035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170353, 28.128349, 47.641975>,  <40.462212, 27.452948, 47.733372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170353, 28.128349, 47.641975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528221, 28.173138, 47.468990>,  <40.742943, 28.200010, 47.365200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528221, 28.173138, 47.468990>,  <40.170353, 28.128349, 47.641975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528221, 28.173138, 47.468990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391170, 0.663914, -0.637341,
		0.215757, 0.739378, 0.637784,
		0.894670, 0.111971, -0.432467,
		40.796623, 28.206730, 47.339249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259178, 28.913246, 47.640476>,  <40.170353, 28.128349, 47.641975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259178, 28.913246, 47.640476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503426, 28.729750, 47.382267>,  <40.649975, 28.619652, 47.227341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.503426, 28.729750, 47.382267>,  <40.259178, 28.913246, 47.640476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.503426, 28.729750, 47.382267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388150, 0.537141, -0.748879,
		0.690278, 0.707840, 0.149928,
		0.610619, -0.458740, -0.645525,
		40.686611, 28.592127, 47.188610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623741, 29.498295, 47.274769>,  <40.259178, 28.913246, 47.640476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623741, 29.498295, 47.274769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578968, 29.159155, 47.067451>,  <40.552105, 28.955671, 46.943062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578968, 29.159155, 47.067451>,  <40.623741, 29.498295, 47.274769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578968, 29.159155, 47.067451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286241, 0.526972, -0.800229,
		0.951597, 0.058780, -0.301676,
		-0.111937, -0.847848, -0.518290,
		40.545387, 28.904800, 46.911964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809437, 29.786894, 46.634399>,  <40.623741, 29.498295, 47.274769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809437, 29.786894, 46.634399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672215, 29.417797, 46.564129>,  <40.589882, 29.196339, 46.521969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.672215, 29.417797, 46.564129>,  <40.809437, 29.786894, 46.634399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672215, 29.417797, 46.564129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539350, 0.346626, -0.767432,
		0.769034, -0.168524, -0.616593,
		-0.343057, -0.922741, -0.175674,
		40.569298, 29.140974, 46.511425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927872, 29.582150, 45.939526>,  <40.809437, 29.786894, 46.634399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.927872, 29.582150, 45.939526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608559, 29.362843, 46.039246>,  <40.416969, 29.231258, 46.099075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608559, 29.362843, 46.039246>,  <40.927872, 29.582150, 45.939526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608559, 29.362843, 46.039246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457456, 0.282706, -0.843096,
		0.391767, -0.787069, -0.476488,
		-0.798281, -0.548270, 0.249294,
		40.369076, 29.198362, 46.114033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818623, 29.138412, 45.387466>,  <40.927872, 29.582150, 45.939526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818623, 29.138412, 45.387466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470249, 29.141653, 45.584000>,  <40.261223, 29.143597, 45.701920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470249, 29.141653, 45.584000>,  <40.818623, 29.138412, 45.387466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470249, 29.141653, 45.584000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485533, 0.139792, -0.862969,
		-0.075675, -0.990148, -0.117816,
		-0.870936, 0.008102, 0.491328,
		40.208969, 29.144083, 45.731400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278961, 28.841537, 44.825409>,  <40.818623, 29.138412, 45.387466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278961, 28.841537, 44.825409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084354, 29.031837, 45.118519>,  <39.967590, 29.146017, 45.294384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084354, 29.031837, 45.118519>,  <40.278961, 28.841537, 44.825409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084354, 29.031837, 45.118519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590610, 0.438964, -0.677119,
		-0.643802, -0.762216, 0.067419,
		-0.486517, 0.475749, 0.732779,
		39.938400, 29.174562, 45.338352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711864, 28.710342, 44.753582>,  <40.278961, 28.841537, 44.825409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711864, 28.710342, 44.753582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648979, 29.035702, 44.977604>,  <39.611248, 29.230917, 45.112019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.648979, 29.035702, 44.977604>,  <39.711864, 28.710342, 44.753582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.648979, 29.035702, 44.977604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650154, 0.341631, -0.678666,
		-0.743361, -0.470817, 0.475128,
		-0.157209, 0.813400, 0.560059,
		39.601818, 29.279722, 45.145622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949631, 28.813513, 44.813618>,  <39.711864, 28.710342, 44.753582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949631, 28.813513, 44.813618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107685, 29.169064, 44.906372>,  <39.202518, 29.382393, 44.962025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107685, 29.169064, 44.906372>,  <38.949631, 28.813513, 44.813618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107685, 29.169064, 44.906372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642247, 0.447789, -0.622097,
		-0.656802, 0.096884, 0.747814,
		0.395134, 0.888875, 0.231885,
		39.226227, 29.435726, 44.975937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356033, 29.251608, 44.855347>,  <38.949631, 28.813513, 44.813618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356033, 29.251608, 44.855347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668941, 29.492176, 44.790424>,  <38.856686, 29.636517, 44.751472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.668941, 29.492176, 44.790424>,  <38.356033, 29.251608, 44.855347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668941, 29.492176, 44.790424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507719, 0.464603, -0.725511,
		-0.360929, 0.649953, 0.668799,
		0.782274, 0.601420, -0.162304,
		38.903622, 29.672602, 44.741734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009106, 29.971592, 44.820236>,  <38.356033, 29.251608, 44.855347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009106, 29.971592, 44.820236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371170, 29.972006, 44.650211>,  <38.588409, 29.972254, 44.548195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.371170, 29.972006, 44.650211>,  <38.009106, 29.971592, 44.820236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371170, 29.972006, 44.650211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381595, 0.442511, -0.811523,
		0.187254, 0.896762, 0.400940,
		0.905163, 0.001036, -0.425062,
		38.642719, 29.972317, 44.522694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140167, 30.720953, 44.646198>,  <38.009106, 29.971592, 44.820236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140167, 30.720953, 44.646198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369919, 30.481386, 44.422989>,  <38.507771, 30.337646, 44.289062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369919, 30.481386, 44.422989>,  <38.140167, 30.720953, 44.646198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369919, 30.481386, 44.422989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312852, 0.469331, -0.825743,
		0.756450, 0.648866, 0.082200,
		0.574375, -0.598917, -0.558025,
		38.542233, 30.301710, 44.255581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247047, 31.195047, 44.171947>,  <38.140167, 30.720953, 44.646198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.247047, 31.195047, 44.171947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388210, 30.848852, 44.029739>,  <38.472908, 30.641136, 43.944416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388210, 30.848852, 44.029739>,  <38.247047, 31.195047, 44.171947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388210, 30.848852, 44.029739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012679, 0.375504, -0.926734,
		0.935573, 0.331556, 0.121544,
		0.352904, -0.865487, -0.355516,
		38.494083, 30.589207, 43.923084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880878, 31.310940, 43.750313>,  <38.247047, 31.195047, 44.171947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880878, 31.310940, 43.750313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706673, 30.973783, 43.623905>,  <38.602150, 30.771490, 43.548061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706673, 30.973783, 43.623905>,  <38.880878, 31.310940, 43.750313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706673, 30.973783, 43.623905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008078, 0.354704, -0.934943,
		0.900147, -0.404625, -0.161286,
		-0.435510, -0.842890, -0.316018,
		38.576019, 30.720917, 43.529099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229336, 31.044586, 43.200901>,  <38.880878, 31.310940, 43.750313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229336, 31.044586, 43.200901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879917, 30.854408, 43.159187>,  <38.670265, 30.740301, 43.134159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.879917, 30.854408, 43.159187>,  <39.229336, 31.044586, 43.200901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879917, 30.854408, 43.159187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005393, 0.204776, -0.978794,
		0.486718, -0.855581, -0.176317,
		-0.873542, -0.475446, -0.104283,
		38.617855, 30.711775, 43.127903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310432, 30.747101, 42.586975>,  <39.229336, 31.044586, 43.200901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310432, 30.747101, 42.586975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912361, 30.737669, 42.625038>,  <38.673519, 30.732010, 42.647877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.912361, 30.737669, 42.625038>,  <39.310432, 30.747101, 42.586975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912361, 30.737669, 42.625038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097510, 0.338564, -0.935877,
		-0.010151, -0.940648, -0.339232,
		-0.995183, -0.023579, 0.095159,
		38.613808, 30.730595, 42.653587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122459, 30.429375, 41.957199>,  <39.310432, 30.747101, 42.586975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122459, 30.429375, 41.957199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813168, 30.626553, 42.116760>,  <38.627594, 30.744860, 42.212498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.813168, 30.626553, 42.116760>,  <39.122459, 30.429375, 41.957199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813168, 30.626553, 42.116760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025249, 0.604620, -0.796114,
		-0.633624, -0.625650, -0.455064,
		-0.773229, 0.492947, 0.398898,
		38.581200, 30.774437, 42.236431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705059, 30.505228, 41.488846>,  <39.122459, 30.429375, 41.957199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705059, 30.505228, 41.488846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543232, 30.776596, 41.734146>,  <38.446136, 30.939417, 41.881325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543232, 30.776596, 41.734146>,  <38.705059, 30.505228, 41.488846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543232, 30.776596, 41.734146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142192, 0.615754, -0.775002,
		-0.903387, -0.400737, -0.152647,
		-0.404565, 0.678421, 0.613246,
		38.421864, 30.980122, 41.918121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.135929, 30.680906, 41.171402>,  <38.705059, 30.505228, 41.488846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.135929, 30.680906, 41.171402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222187, 30.977694, 41.425323>,  <38.273941, 31.155766, 41.577679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.222187, 30.977694, 41.425323>,  <38.135929, 30.680906, 41.171402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222187, 30.977694, 41.425323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132660, 0.666337, -0.733754,
		-0.967419, 0.074016, 0.242122,
		0.215644, 0.741968, 0.634808,
		38.286880, 31.200283, 41.615765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678699, 31.114584, 41.057682>,  <38.135929, 30.680906, 41.171402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678699, 31.114584, 41.057682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985561, 31.318640, 41.213234>,  <38.169678, 31.441074, 41.306564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985561, 31.318640, 41.213234>,  <37.678699, 31.114584, 41.057682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985561, 31.318640, 41.213234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060162, 0.660793, -0.748153,
		-0.638634, 0.550553, 0.537622,
		0.767155, 0.510140, 0.388883,
		38.215710, 31.471682, 41.329899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434277, 31.815866, 40.994881>,  <37.678699, 31.114584, 41.057682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434277, 31.815866, 40.994881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825581, 31.851246, 41.069916>,  <38.060364, 31.872473, 41.114937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825581, 31.851246, 41.069916>,  <37.434277, 31.815866, 40.994881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825581, 31.851246, 41.069916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064552, 0.729716, -0.680697,
		-0.197092, 0.678006, 0.708141,
		0.978258, 0.088448, 0.187588,
		38.119057, 31.877781, 41.126194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518650, 32.519627, 40.877506>,  <37.434277, 31.815866, 40.994881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518650, 32.519627, 40.877506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.890160, 32.371758, 40.866810>,  <38.113068, 32.283035, 40.860394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.890160, 32.371758, 40.866810>,  <37.518650, 32.519627, 40.877506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890160, 32.371758, 40.866810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256700, 0.693614, -0.673056,
		0.267358, 0.618255, 0.739108,
		0.928776, -0.369676, -0.026737,
		38.168793, 32.260857, 40.858788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974140, 33.136482, 41.006134>,  <37.518650, 32.519627, 40.877506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974140, 33.136482, 41.006134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159977, 32.843197, 40.807518>,  <38.271481, 32.667225, 40.688351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.159977, 32.843197, 40.807518>,  <37.974140, 33.136482, 41.006134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159977, 32.843197, 40.807518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371123, 0.670327, -0.642597,
		0.804003, 0.114271, 0.583542,
		0.464594, -0.733215, -0.496536,
		38.299355, 32.623234, 40.658558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655163, 33.383461, 40.950005>,  <37.974140, 33.136482, 41.006134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655163, 33.383461, 40.950005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600777, 33.112774, 40.660576>,  <38.568146, 32.950359, 40.486919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.600777, 33.112774, 40.660576>,  <38.655163, 33.383461, 40.950005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600777, 33.112774, 40.660576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500449, 0.583413, -0.639672,
		0.855024, -0.449084, 0.259343,
		-0.135962, -0.676722, -0.723576,
		38.559990, 32.909756, 40.443504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287479, 33.390621, 40.548439>,  <38.655163, 33.383461, 40.950005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287479, 33.390621, 40.548439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083584, 33.214878, 40.252567>,  <38.961246, 33.109432, 40.075043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083584, 33.214878, 40.252567>,  <39.287479, 33.390621, 40.548439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083584, 33.214878, 40.252567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423199, 0.620506, -0.660208,
		0.749044, -0.649568, -0.130361,
		-0.509740, -0.439357, -0.739683,
		38.930660, 33.083073, 40.030663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717793, 33.463474, 39.950378>,  <39.287479, 33.390621, 40.548439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717793, 33.463474, 39.950378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347416, 33.422062, 39.805096>,  <39.125191, 33.397213, 39.717926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.347416, 33.422062, 39.805096>,  <39.717793, 33.463474, 39.950378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347416, 33.422062, 39.805096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202913, 0.674729, -0.709625,
		0.318535, -0.730768, -0.603749,
		-0.925938, -0.103532, -0.363207,
		39.069633, 33.391003, 39.696133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765877, 33.290062, 39.172134>,  <39.717793, 33.463474, 39.950378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765877, 33.290062, 39.172134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407372, 33.453873, 39.240253>,  <39.192268, 33.552158, 39.281124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.407372, 33.453873, 39.240253>,  <39.765877, 33.290062, 39.172134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407372, 33.453873, 39.240253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202708, 0.719743, -0.663987,
		-0.394489, -0.560587, -0.728094,
		-0.896264, 0.409526, 0.170295,
		39.138493, 33.576729, 39.291344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436161, 33.370365, 38.587490>,  <39.765877, 33.290062, 39.172134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436161, 33.370365, 38.587490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247654, 33.639328, 38.815796>,  <39.134548, 33.800705, 38.952778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247654, 33.639328, 38.815796>,  <39.436161, 33.370365, 38.587490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247654, 33.639328, 38.815796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027140, 0.635772, -0.771400,
		-0.881573, -0.379026, -0.281369,
		-0.471267, 0.672409, 0.570766,
		39.106274, 33.841049, 38.987026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253357, 33.782742, 38.050514>,  <39.436161, 33.370365, 38.587490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253357, 33.782742, 38.050514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139107, 34.005676, 38.362358>,  <39.070557, 34.139439, 38.549465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139107, 34.005676, 38.362358>,  <39.253357, 33.782742, 38.050514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139107, 34.005676, 38.362358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193347, 0.763261, -0.616481,
		-0.938636, -0.326816, -0.110244,
		-0.285621, 0.557336, 0.779613,
		39.053421, 34.172878, 38.596241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512280, 34.051132, 37.860706>,  <39.253357, 33.782742, 38.050514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512280, 34.051132, 37.860706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719891, 34.262089, 38.129768>,  <38.844456, 34.388664, 38.291206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.719891, 34.262089, 38.129768>,  <38.512280, 34.051132, 37.860706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.719891, 34.262089, 38.129768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015729, 0.792716, -0.609389,
		-0.854615, 0.305708, 0.419734,
		0.519024, 0.527394, 0.672658,
		38.875599, 34.420307, 38.331566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282967, 34.750793, 37.831467>,  <38.512280, 34.051132, 37.860706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282967, 34.750793, 37.831467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640266, 34.800545, 38.004269>,  <38.854649, 34.830395, 38.107952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.640266, 34.800545, 38.004269>,  <38.282967, 34.750793, 37.831467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640266, 34.800545, 38.004269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168744, 0.797935, -0.578640,
		-0.416686, 0.589770, 0.691769,
		0.893251, 0.124380, 0.432009,
		38.908241, 34.837860, 38.133873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349491, 35.476616, 37.953659>,  <38.282967, 34.750793, 37.831467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349491, 35.476616, 37.953659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726852, 35.347748, 37.985138>,  <38.953270, 35.270428, 38.004025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726852, 35.347748, 37.985138>,  <38.349491, 35.476616, 37.953659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726852, 35.347748, 37.985138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308264, 0.764354, -0.566336,
		0.122305, 0.558543, 0.820409,
		0.943406, -0.322168, 0.078695,
		39.009872, 35.251099, 38.008747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750439, 36.061676, 38.154892>,  <38.349491, 35.476616, 37.953659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750439, 36.061676, 38.154892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993324, 35.789684, 37.990494>,  <39.139057, 35.626488, 37.891853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993324, 35.789684, 37.990494>,  <38.750439, 36.061676, 38.154892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993324, 35.789684, 37.990494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188447, 0.625773, -0.756898,
		0.771868, 0.382147, 0.508118,
		0.607213, -0.679979, -0.411000,
		39.175488, 35.585690, 37.867195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389004, 36.395962, 37.981422>,  <38.750439, 36.061676, 38.154892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389004, 36.395962, 37.981422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393581, 36.065136, 37.756626>,  <39.396328, 35.866642, 37.621746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.393581, 36.065136, 37.756626>,  <39.389004, 36.395962, 37.981422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393581, 36.065136, 37.756626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316106, 0.536203, -0.782665,
		0.948655, -0.168690, 0.267577,
		0.011448, -0.827061, -0.561995,
		39.397015, 35.817017, 37.588028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041702, 36.505398, 37.635334>,  <39.389004, 36.395962, 37.981422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041702, 36.505398, 37.635334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875645, 36.228783, 37.398884>,  <39.776009, 36.062813, 37.257015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875645, 36.228783, 37.398884>,  <40.041702, 36.505398, 37.635334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875645, 36.228783, 37.398884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395987, 0.447626, -0.801764,
		0.819052, -0.566928, 0.088009,
		-0.415147, -0.691537, -0.591125,
		39.751099, 36.021320, 37.221546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521519, 36.221523, 37.158005>,  <40.041702, 36.505398, 37.635334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521519, 36.221523, 37.158005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160526, 36.175346, 36.992020>,  <39.943932, 36.147640, 36.892429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.160526, 36.175346, 36.992020>,  <40.521519, 36.221523, 37.158005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.160526, 36.175346, 36.992020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271833, 0.594650, -0.756637,
		0.334107, -0.795653, -0.505280,
		-0.902485, -0.115446, -0.414962,
		39.889782, 36.140713, 36.867531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313908, 36.416874, 37.036980>,  <40.521519, 36.221523, 37.158005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313908, 36.416874, 37.036980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220013, 36.230949, 36.695488>,  <41.163677, 36.119396, 36.490593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220013, 36.230949, 36.695488>,  <41.313908, 36.416874, 37.036980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.220013, 36.230949, 36.695488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908788, -0.416622, -0.023047,
		-0.344969, -0.781267, 0.520210,
		-0.234736, -0.464810, -0.853728,
		41.149593, 36.091507, 36.439369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373188, 35.561272, 37.075813>,  <41.313908, 36.416874, 37.036980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373188, 35.561272, 37.075813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.426216, 35.751278, 36.727840>,  <41.458035, 35.865284, 36.519058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.426216, 35.751278, 36.727840>,  <41.373188, 35.561272, 37.075813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426216, 35.751278, 36.727840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952160, -0.304853, -0.021360,
		-0.275348, -0.825483, -0.492707,
		0.132571, 0.475018, -0.869933,
		41.465988, 35.893784, 36.466862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811192, 35.127541, 36.581524>,  <41.373188, 35.561272, 37.075813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811192, 35.127541, 36.581524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827404, 35.491020, 36.415333>,  <41.837132, 35.709110, 36.315620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827404, 35.491020, 36.415333>,  <41.811192, 35.127541, 36.581524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827404, 35.491020, 36.415333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852233, -0.248503, -0.460374,
		-0.521589, -0.335422, -0.784498,
		0.040531, 0.908701, -0.415475,
		41.839561, 35.763630, 36.290691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927299, 35.078857, 35.900406>,  <41.811192, 35.127541, 36.581524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927299, 35.078857, 35.900406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.062302, 35.445480, 35.986214>,  <42.143303, 35.665455, 36.037697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.062302, 35.445480, 35.986214>,  <41.927299, 35.078857, 35.900406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.062302, 35.445480, 35.986214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868781, -0.215567, -0.445815,
		-0.362370, 0.336835, -0.869040,
		0.337502, 0.916555, 0.214521,
		42.163551, 35.720448, 36.050571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.039154, 35.399857, 35.279243>,  <41.927299, 35.078857, 35.900406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.039154, 35.399857, 35.279243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267620, 35.593796, 35.544178>,  <42.404701, 35.710159, 35.703140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.267620, 35.593796, 35.544178>,  <42.039154, 35.399857, 35.279243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.267620, 35.593796, 35.544178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807341, -0.186123, -0.559964,
		-0.148219, 0.854566, -0.497743,
		0.571168, 0.484845, 0.662339,
		42.438969, 35.739250, 35.742878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465191, 34.804886, 35.350288>,  <42.039154, 35.399857, 35.279243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465191, 34.804886, 35.350288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.823036, 34.682720, 35.480762>,  <43.037743, 34.609421, 35.559048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.823036, 34.682720, 35.480762>,  <42.465191, 34.804886, 35.350288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.823036, 34.682720, 35.480762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396632, 0.878945, -0.264839,
		-0.205810, 0.366301, 0.907450,
		0.894609, -0.305417, 0.326182,
		43.091419, 34.591095, 35.578617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767941, 35.238930, 36.014595>,  <42.465191, 34.804886, 35.350288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767941, 35.238930, 36.014595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015358, 35.102421, 35.731487>,  <43.163811, 35.020515, 35.561623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015358, 35.102421, 35.731487>,  <42.767941, 35.238930, 36.014595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.015358, 35.102421, 35.731487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336118, 0.929103, -0.154249,
		0.710229, -0.142483, 0.689400,
		0.618546, -0.341272, -0.707767,
		43.200920, 35.000038, 35.519157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.251583, 35.096989, 36.617371>,  <42.767941, 35.238930, 36.014595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.251583, 35.096989, 36.617371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.626629, 34.975574, 36.549545>,  <43.851654, 34.902725, 36.508850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.626629, 34.975574, 36.549545>,  <43.251583, 35.096989, 36.617371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.626629, 34.975574, 36.549545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193502, -0.860749, 0.470816,
		-0.288862, -0.408631, -0.865783,
		0.937611, -0.303531, -0.169567,
		43.907913, 34.884514, 36.498676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.279667, 34.367088, 36.378193>,  <43.251583, 35.096989, 36.617371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.279667, 34.367088, 36.378193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.632580, 34.470753, 36.535374>,  <43.844330, 34.532951, 36.629681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.632580, 34.470753, 36.535374>,  <43.279667, 34.367088, 36.378193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.632580, 34.470753, 36.535374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094604, -0.915387, 0.391301,
		0.461108, -0.308065, -0.832151,
		0.882286, 0.259157, 0.392949,
		43.897266, 34.548500, 36.653259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.636913, 33.776028, 36.321846>,  <43.279667, 34.367088, 36.378193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.636913, 33.776028, 36.321846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.843353, 33.991226, 36.588440>,  <43.967216, 34.120346, 36.748394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.843353, 33.991226, 36.588440>,  <43.636913, 33.776028, 36.321846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.843353, 33.991226, 36.588440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065100, -0.800510, 0.595773,
		0.854048, -0.264093, -0.448170,
		0.516104, 0.537995, 0.666482,
		43.998184, 34.152626, 36.788383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.114822, 33.330536, 36.581753>,  <43.636913, 33.776028, 36.321846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.114822, 33.330536, 36.581753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.143436, 33.614162, 36.862354>,  <44.160606, 33.784340, 37.030716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.143436, 33.614162, 36.862354>,  <44.114822, 33.330536, 36.581753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.143436, 33.614162, 36.862354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042028, -0.704823, 0.708138,
		0.996552, -0.021174, -0.080220,
		0.071535, 0.709068, 0.701503,
		44.164898, 33.826881, 37.072803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.761906, 33.294281, 36.931480>,  <44.114822, 33.330536, 36.581753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.761906, 33.294281, 36.931480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.481453, 33.448563, 37.171364>,  <44.313183, 33.541130, 37.315292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.481453, 33.448563, 37.171364>,  <44.761906, 33.294281, 36.931480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.481453, 33.448563, 37.171364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122299, -0.763551, 0.634060,
		0.702469, 0.517901, 0.488176,
		-0.701128, 0.385704, 0.599710,
		44.271114, 33.564274, 37.351276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.087421, 33.202934, 37.665825>,  <44.761906, 33.294281, 36.931480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.087421, 33.202934, 37.665825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.705963, 33.293877, 37.744694>,  <44.477089, 33.348442, 37.792015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.705963, 33.293877, 37.744694>,  <45.087421, 33.202934, 37.665825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.705963, 33.293877, 37.744694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010365, -0.679609, 0.733502,
		0.300766, 0.697454, 0.650460,
		-0.953642, 0.227354, 0.197174,
		44.419872, 33.362083, 37.803844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.082558, 33.065292, 38.342953>,  <45.087421, 33.202934, 37.665825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.082558, 33.065292, 38.342953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.696716, 33.086937, 38.239719>,  <44.465210, 33.099922, 38.177780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.696716, 33.086937, 38.239719>,  <45.082558, 33.065292, 38.342953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.696716, 33.086937, 38.239719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228067, -0.662464, 0.713532,
		-0.132361, 0.747137, 0.651357,
		-0.964607, 0.054109, -0.258082,
		44.407333, 33.103168, 38.162296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.718342, 33.100910, 38.977886>,  <45.082558, 33.065292, 38.342953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.718342, 33.100910, 38.977886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.482422, 32.959682, 38.687378>,  <44.340870, 32.874947, 38.513073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.482422, 32.959682, 38.687378>,  <44.718342, 33.100910, 38.977886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.482422, 32.959682, 38.687378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202113, -0.806197, 0.556054,
		-0.781845, 0.474753, 0.404139,
		-0.589804, -0.353066, -0.726275,
		44.305481, 32.853764, 38.469494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.251228, 32.886795, 39.378242>,  <44.718342, 33.100910, 38.977886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.251228, 32.886795, 39.378242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.227238, 32.710472, 39.020004>,  <44.212845, 32.604679, 38.805061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.227238, 32.710472, 39.020004>,  <44.251228, 32.886795, 39.378242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.227238, 32.710472, 39.020004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019980, -0.896499, 0.442595,
		-0.998000, 0.044439, 0.044959,
		-0.059975, -0.440811, -0.895594,
		44.209244, 32.578228, 38.751328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.778255, 32.326042, 39.458191>,  <44.251228, 32.886795, 39.378242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.778255, 32.326042, 39.458191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.949078, 32.231026, 39.109203>,  <44.051571, 32.174015, 38.899811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.949078, 32.231026, 39.109203>,  <43.778255, 32.326042, 39.458191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.949078, 32.231026, 39.109203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052225, -0.956786, 0.286064,
		-0.902718, -0.167729, -0.396192,
		0.427052, -0.237544, -0.872468,
		44.077194, 32.159763, 38.847462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.336586, 31.786961, 39.167286>,  <43.778255, 32.326042, 39.458191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.336586, 31.786961, 39.167286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688499, 31.749561, 38.980854>,  <43.899647, 31.727121, 38.868996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688499, 31.749561, 38.980854>,  <43.336586, 31.786961, 39.167286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688499, 31.749561, 38.980854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030904, -0.989642, 0.140190,
		-0.474360, -0.108934, -0.873565,
		0.879788, -0.093497, -0.466080,
		43.952435, 31.721512, 38.841030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.318115, 31.078207, 38.786530>,  <43.336586, 31.786961, 39.167286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.318115, 31.078207, 38.786530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.702698, 31.183262, 38.819061>,  <43.933449, 31.246294, 38.838581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.702698, 31.183262, 38.819061>,  <43.318115, 31.078207, 38.786530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.702698, 31.183262, 38.819061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223473, -0.918827, 0.325295,
		0.160164, -0.294583, -0.942109,
		0.961461, 0.262637, 0.081331,
		43.991135, 31.262053, 38.843460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637814, 30.480799, 38.530304>,  <43.318115, 31.078207, 38.786530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637814, 30.480799, 38.530304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.936199, 30.671200, 38.716618>,  <44.115231, 30.785440, 38.828407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.936199, 30.671200, 38.716618>,  <43.637814, 30.480799, 38.530304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.936199, 30.671200, 38.716618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342867, -0.874076, 0.344141,
		0.570943, -0.097016, -0.815238,
		0.745967, 0.476003, 0.465784,
		44.159988, 30.814001, 38.856354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.255566, 30.147097, 38.392502>,  <43.637814, 30.480799, 38.530304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.255566, 30.147097, 38.392502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.355583, 30.349398, 38.722759>,  <44.415592, 30.470779, 38.920914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.355583, 30.349398, 38.722759>,  <44.255566, 30.147097, 38.392502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.355583, 30.349398, 38.722759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408970, -0.828098, 0.383402,
		0.877623, 0.241798, -0.413897,
		0.250041, 0.505755, 0.825646,
		44.430595, 30.501123, 38.970451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.925316, 30.025394, 38.510700>,  <44.255566, 30.147097, 38.392502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.925316, 30.025394, 38.510700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.717972, 30.118652, 38.839806>,  <44.593563, 30.174606, 39.037270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.717972, 30.118652, 38.839806>,  <44.925316, 30.025394, 38.510700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.717972, 30.118652, 38.839806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290474, -0.856913, 0.425823,
		0.804317, 0.459723, 0.376469,
		-0.518362, 0.233143, 0.822767,
		44.562462, 30.188595, 39.086636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.373314, 29.778605, 39.040413>,  <44.925316, 30.025394, 38.510700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.373314, 29.778605, 39.040413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.007694, 29.796877, 39.201618>,  <44.788322, 29.807840, 39.298340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.007694, 29.796877, 39.201618>,  <45.373314, 29.778605, 39.040413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.007694, 29.796877, 39.201618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135528, -0.902121, 0.409645,
		0.382279, 0.429057, 0.818396,
		-0.914054, 0.045683, 0.403012,
		44.733479, 29.810581, 39.322521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.582729, 29.548529, 39.609314>,  <45.373314, 29.778605, 39.040413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.582729, 29.548529, 39.609314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.182919, 29.551346, 39.621239>,  <44.943031, 29.553036, 39.628395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.182919, 29.551346, 39.621239>,  <45.582729, 29.548529, 39.609314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.182919, 29.551346, 39.621239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001501, -0.960758, 0.277383,
		0.030595, 0.277298, 0.960297,
		-0.999531, 0.007045, 0.029811,
		44.883060, 29.553459, 39.630180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.402969, 29.301682, 40.181805>,  <45.582729, 29.548529, 39.609314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.402969, 29.301682, 40.181805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.060146, 29.218079, 39.993439>,  <44.854450, 29.167917, 39.880421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.060146, 29.218079, 39.993439>,  <45.402969, 29.301682, 40.181805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.060146, 29.218079, 39.993439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066585, -0.951287, 0.301032,
		-0.510894, 0.226647, 0.829227,
		-0.857061, -0.209009, -0.470916,
		44.803028, 29.155376, 39.852165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.110916, 28.746292, 40.573925>,  <45.402969, 29.301682, 40.181805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.110916, 28.746292, 40.573925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.866409, 28.747345, 40.257359>,  <44.719704, 28.747976, 40.067417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.866409, 28.747345, 40.257359>,  <45.110916, 28.746292, 40.573925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.866409, 28.747345, 40.257359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163770, -0.978771, 0.123236,
		-0.774294, 0.204941, 0.598722,
		-0.611268, 0.002632, -0.791419,
		44.683029, 28.748135, 40.019932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.417889, 28.668257, 40.770809>,  <45.110916, 28.746292, 40.573925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.417889, 28.668257, 40.770809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.465790, 28.535112, 40.396671>,  <44.494530, 28.455225, 40.172188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.465790, 28.535112, 40.396671>,  <44.417889, 28.668257, 40.770809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.465790, 28.535112, 40.396671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255910, -0.920633, 0.294864,
		-0.959255, 0.204052, -0.195430,
		0.119752, -0.332862, -0.935341,
		44.501717, 28.435253, 40.116070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.884911, 28.243866, 40.678154>,  <44.417889, 28.668257, 40.770809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.884911, 28.243866, 40.678154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.138199, 28.127634, 40.391212>,  <44.290173, 28.057894, 40.219048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.138199, 28.127634, 40.391212>,  <43.884911, 28.243866, 40.678154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.138199, 28.127634, 40.391212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244804, -0.954458, 0.170534,
		-0.734235, 0.067624, -0.675519,
		0.633222, -0.290582, -0.717351,
		44.328167, 28.040459, 40.176006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.462933, 27.676447, 40.265873>,  <43.884911, 28.243866, 40.678154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.462933, 27.676447, 40.265873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.847466, 27.617165, 40.173035>,  <44.078186, 27.581594, 40.117332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.847466, 27.617165, 40.173035>,  <43.462933, 27.676447, 40.265873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.847466, 27.617165, 40.173035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099876, -0.973084, 0.207685,
		-0.256630, -0.176474, -0.950262,
		0.961335, -0.148207, -0.232097,
		44.135864, 27.572702, 40.103405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.146828, 26.949753, 39.989681>,  <43.462933, 27.676447, 40.265873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.146828, 26.949753, 39.989681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088108, 26.597155, 39.810165>,  <43.052876, 26.385595, 39.702454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088108, 26.597155, 39.810165>,  <43.146828, 26.949753, 39.989681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.088108, 26.597155, 39.810165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984959, 0.088461, 0.148427,
		-0.091137, 0.463833, -0.881223,
		-0.146799, -0.881495, -0.448794,
		43.044067, 26.332706, 39.675526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639652, 26.930494, 39.485306>,  <43.146828, 26.949753, 39.989681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639652, 26.930494, 39.485306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.643242, 26.557419, 39.629536>,  <42.645397, 26.333574, 39.716072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.643242, 26.557419, 39.629536>,  <42.639652, 26.930494, 39.485306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.643242, 26.557419, 39.629536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996767, 0.020450, 0.077707,
		-0.079850, -0.360107, -0.929488,
		0.008975, -0.932687, 0.360575,
		42.645935, 26.277613, 39.737709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940254, 27.105980, 39.414490>,  <42.639652, 26.930494, 39.485306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940254, 27.105980, 39.414490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894894, 27.358574, 39.107670>,  <41.867680, 27.510130, 38.923576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.894894, 27.358574, 39.107670>,  <41.940254, 27.105980, 39.414490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894894, 27.358574, 39.107670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737310, 0.464002, 0.490995,
		0.665969, 0.621233, 0.412983,
		-0.113398, 0.631484, -0.767052,
		41.860874, 27.548019, 38.877556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327347, 27.309795, 39.848751>,  <41.940254, 27.105980, 39.414490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327347, 27.309795, 39.848751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103695, 27.521320, 39.593334>,  <40.969505, 27.648235, 39.440086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.103695, 27.521320, 39.593334>,  <41.327347, 27.309795, 39.848751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103695, 27.521320, 39.593334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267489, -0.613932, -0.742656,
		-0.784745, -0.586042, 0.201815,
		-0.559128, 0.528812, -0.638540,
		40.935955, 27.679964, 39.401772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077518, 26.912025, 39.382320>,  <41.327347, 27.309795, 39.848751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077518, 26.912025, 39.382320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047848, 27.253067, 39.175415>,  <41.030045, 27.457693, 39.051273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047848, 27.253067, 39.175415>,  <41.077518, 26.912025, 39.382320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047848, 27.253067, 39.175415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042403, -0.515526, -0.855825,
		-0.996343, -0.085418, 0.002088,
		-0.074179, 0.852606, -0.517262,
		41.025593, 27.508848, 39.020237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604858, 26.815792, 38.925770>,  <41.077518, 26.912025, 39.382320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604858, 26.815792, 38.925770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832039, 27.099869, 38.759369>,  <40.968349, 27.270315, 38.659531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.832039, 27.099869, 38.759369>,  <40.604858, 26.815792, 38.925770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.832039, 27.099869, 38.759369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072471, -0.460314, -0.884793,
		-0.819862, 0.532671, -0.209970,
		0.567956, 0.710192, -0.415998,
		41.002426, 27.312925, 38.634571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372402, 27.040323, 38.131367>,  <40.604858, 26.815792, 38.925770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372402, 27.040323, 38.131367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758949, 26.991137, 38.221714>,  <40.990875, 26.961624, 38.275925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758949, 26.991137, 38.221714>,  <40.372402, 27.040323, 38.131367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758949, 26.991137, 38.221714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021465, -0.913785, -0.405630,
		0.256277, 0.387138, -0.885690,
		0.966365, -0.122965, 0.225872,
		41.048859, 26.954247, 38.289474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401989, 27.807987, 37.744476>,  <40.372402, 27.040323, 38.131367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401989, 27.807987, 37.744476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187557, 27.922783, 37.426922>,  <40.058899, 27.991661, 37.236389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.187557, 27.922783, 37.426922>,  <40.401989, 27.807987, 37.744476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187557, 27.922783, 37.426922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730152, 0.629622, -0.265433,
		0.423673, -0.721952, -0.547072,
		-0.536078, 0.286989, -0.793888,
		40.026733, 28.008879, 37.188755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728577, 27.682566, 37.133572>,  <40.401989, 27.807987, 37.744476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728577, 27.682566, 37.133572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491203, 27.994165, 37.052578>,  <40.348782, 28.181126, 37.003983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491203, 27.994165, 37.052578>,  <40.728577, 27.682566, 37.133572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491203, 27.994165, 37.052578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800379, 0.544545, -0.250727,
		-0.085053, -0.310855, -0.946644,
		-0.593430, 0.778999, -0.202487,
		40.313175, 28.227865, 36.991833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985786, 28.033735, 36.469452>,  <40.728577, 27.682566, 37.133572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985786, 28.033735, 36.469452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748928, 28.287785, 36.667835>,  <40.606812, 28.440214, 36.786865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748928, 28.287785, 36.667835>,  <40.985786, 28.033735, 36.469452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748928, 28.287785, 36.667835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564551, 0.766147, -0.307086,
		-0.575018, 0.098157, -0.812231,
		-0.592146, 0.635125, 0.495963,
		40.571285, 28.478323, 36.816624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790295, 28.635441, 36.007599>,  <40.985786, 28.033735, 36.469452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790295, 28.635441, 36.007599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798130, 28.717607, 36.398991>,  <40.802834, 28.766907, 36.633827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798130, 28.717607, 36.398991>,  <40.790295, 28.635441, 36.007599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798130, 28.717607, 36.398991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654531, 0.737164, -0.167861,
		-0.755781, 0.643733, -0.120010,
		0.019591, 0.205416, 0.978479,
		40.804008, 28.779232, 36.692535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.042385, 29.252823, 36.001171>,  <40.790295, 28.635441, 36.007599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.042385, 29.252823, 36.001171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054642, 29.178278, 36.393974>,  <41.061996, 29.133551, 36.629654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.054642, 29.178278, 36.393974>,  <41.042385, 29.252823, 36.001171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054642, 29.178278, 36.393974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651367, 0.748923, 0.121804,
		-0.758144, 0.635912, 0.144338,
		0.030641, -0.186362, 0.982003,
		41.063835, 29.122370, 36.688576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935326, 29.881376, 36.285091>,  <41.042385, 29.252823, 36.001171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935326, 29.881376, 36.285091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156273, 29.618052, 36.489647>,  <41.288841, 29.460056, 36.612381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156273, 29.618052, 36.489647>,  <40.935326, 29.881376, 36.285091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156273, 29.618052, 36.489647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759953, 0.649790, 0.015626,
		-0.342580, 0.379997, 0.859210,
		0.552368, -0.658312, 0.511385,
		41.321983, 29.420557, 36.643063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260151, 30.239450, 36.821106>,  <40.935326, 29.881376, 36.285091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260151, 30.239450, 36.821106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480381, 29.911356, 36.759029>,  <41.612518, 29.714500, 36.721783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480381, 29.911356, 36.759029>,  <41.260151, 30.239450, 36.821106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480381, 29.911356, 36.759029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833562, 0.550246, 0.049022,
		0.045181, -0.156348, 0.986668,
		0.550574, -0.820235, -0.155187,
		41.645554, 29.665285, 36.712475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.959679, 30.266045, 37.202602>,  <41.260151, 30.239450, 36.821106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.959679, 30.266045, 37.202602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060112, 29.951828, 36.976368>,  <42.120373, 29.763298, 36.840626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060112, 29.951828, 36.976368>,  <41.959679, 30.266045, 37.202602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060112, 29.951828, 36.976368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937106, 0.343629, -0.061255,
		0.242470, -0.514633, 0.822412,
		0.251081, -0.785540, -0.565585,
		42.135437, 29.716166, 36.806694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.646595, 30.232874, 37.321983>,  <41.959679, 30.266045, 37.202602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.646595, 30.232874, 37.321983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623112, 29.978207, 37.014423>,  <42.609020, 29.825407, 36.829887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623112, 29.978207, 37.014423>,  <42.646595, 30.232874, 37.321983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623112, 29.978207, 37.014423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927955, 0.249158, -0.277164,
		0.368039, -0.729778, 0.576169,
		-0.058711, -0.636666, -0.768901,
		42.605499, 29.787207, 36.783752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.211754, 29.838058, 37.317047>,  <42.646595, 30.232874, 37.321983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.211754, 29.838058, 37.317047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088036, 29.833586, 36.936687>,  <43.013805, 29.830902, 36.708469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.088036, 29.833586, 36.936687>,  <43.211754, 29.838058, 37.317047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.088036, 29.833586, 36.936687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847804, 0.449712, -0.281047,
		0.430774, -0.893103, -0.129614,
		-0.309293, -0.011181, -0.950901,
		42.995247, 29.830233, 36.651417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.762054, 29.655476, 36.881744>,  <43.211754, 29.838058, 37.317047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.762054, 29.655476, 36.881744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.523445, 29.800251, 36.595203>,  <43.380280, 29.887115, 36.423279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.523445, 29.800251, 36.595203>,  <43.762054, 29.655476, 36.881744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.523445, 29.800251, 36.595203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796941, 0.372850, -0.475255,
		0.095078, -0.854391, -0.510858,
		-0.596528, 0.361938, -0.716349,
		43.344486, 29.908833, 36.380299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.030445, 29.448505, 36.272026>,  <43.762054, 29.655476, 36.881744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.030445, 29.448505, 36.272026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.810001, 29.772438, 36.191582>,  <43.677734, 29.966799, 36.143314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.810001, 29.772438, 36.191582>,  <44.030445, 29.448505, 36.272026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.810001, 29.772438, 36.191582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722800, 0.342880, -0.599995,
		-0.416938, -0.476029, -0.774312,
		-0.551111, 0.809833, -0.201115,
		43.644669, 30.015388, 36.131248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.246197, 29.703167, 35.547493>,  <44.030445, 29.448505, 36.272026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.246197, 29.703167, 35.547493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.028732, 30.007139, 35.690010>,  <43.898254, 30.189524, 35.775520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.028732, 30.007139, 35.690010>,  <44.246197, 29.703167, 35.547493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.028732, 30.007139, 35.690010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575867, 0.646558, -0.500341,
		-0.610586, -0.066838, -0.789124,
		-0.543656, 0.759932, 0.356289,
		43.865635, 30.235119, 35.796898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020588, 30.140877, 34.903252>,  <44.246197, 29.703167, 35.547493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.020588, 30.140877, 34.903252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.023888, 30.357327, 35.239613>,  <44.025867, 30.487196, 35.441429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.023888, 30.357327, 35.239613>,  <44.020588, 30.140877, 34.903252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.023888, 30.357327, 35.239613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653124, 0.633864, -0.414301,
		-0.757206, 0.552631, -0.348193,
		0.008248, 0.541125, 0.840902,
		44.026363, 30.519665, 35.491882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.987522, 30.863388, 34.775150>,  <44.020588, 30.140877, 34.903252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.987522, 30.863388, 34.775150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.103142, 30.914688, 35.154625>,  <44.172512, 30.945469, 35.382309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.103142, 30.914688, 35.154625>,  <43.987522, 30.863388, 34.775150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.103142, 30.914688, 35.154625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479624, 0.838239, -0.259453,
		-0.828499, 0.530006, 0.180781,
		0.289050, 0.128250, 0.948684,
		44.189857, 30.953163, 35.439232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.977676, 31.556145, 34.912487>,  <43.987522, 30.863388, 34.775150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.977676, 31.556145, 34.912487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.217587, 31.426825, 35.205265>,  <44.361530, 31.349234, 35.380932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.217587, 31.426825, 35.205265>,  <43.977676, 31.556145, 34.912487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.217587, 31.426825, 35.205265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500733, 0.865143, -0.028180,
		-0.624131, 0.383413, 0.680776,
		0.599773, -0.323299, 0.731950,
		44.397518, 31.329834, 35.424850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.005695, 32.121674, 35.360054>,  <43.977676, 31.556145, 34.912487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.005695, 32.121674, 35.360054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.313053, 31.887701, 35.463924>,  <44.497467, 31.747318, 35.526245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.313053, 31.887701, 35.463924>,  <44.005695, 32.121674, 35.360054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.313053, 31.887701, 35.463924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576772, 0.808760, 0.115071,
		-0.277321, 0.061352, 0.958816,
		0.768392, -0.584930, 0.259673,
		44.543571, 31.712221, 35.541824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.276905, 32.313778, 36.037773>,  <44.005695, 32.121674, 35.360054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.276905, 32.313778, 36.037773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.544750, 32.124138, 35.809090>,  <44.705456, 32.010353, 35.671879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.544750, 32.124138, 35.809090>,  <44.276905, 32.313778, 36.037773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.544750, 32.124138, 35.809090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687280, 0.687335, 0.234980,
		0.281549, -0.550268, 0.786089,
		0.669609, -0.474105, -0.571707,
		44.745632, 31.981907, 35.637577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.839256, 32.406708, 36.387215>,  <44.276905, 32.313778, 36.037773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.839256, 32.406708, 36.387215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.970779, 32.306240, 36.023060>,  <45.049694, 32.245960, 35.804565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.970779, 32.306240, 36.023060>,  <44.839256, 32.406708, 36.387215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.970779, 32.306240, 36.023060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720187, 0.690273, 0.069671,
		0.610916, -0.678557, 0.407850,
		0.328804, -0.251165, -0.910387,
		45.069420, 32.230892, 35.749943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.590473, 32.327137, 36.477692>,  <44.839256, 32.406708, 36.387215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.590473, 32.327137, 36.477692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.526623, 32.376877, 36.085964>,  <45.488312, 32.406719, 35.850929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.526623, 32.376877, 36.085964>,  <45.590473, 32.327137, 36.477692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.526623, 32.376877, 36.085964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764166, 0.643596, -0.042840,
		0.624956, -0.755197, -0.197756,
		-0.159628, 0.124345, -0.979315,
		45.478733, 32.414181, 35.792171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.301964, 32.221760, 36.130013>,  <45.590473, 32.327137, 36.477692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.301964, 32.221760, 36.130013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.052742, 32.448383, 35.914307>,  <45.903210, 32.584358, 35.784882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.052742, 32.448383, 35.914307>,  <46.301964, 32.221760, 36.130013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.052742, 32.448383, 35.914307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730543, 0.667853, -0.142404,
		0.279472, -0.482685, -0.830006,
		-0.623058, 0.566558, -0.539269,
		45.865826, 32.618351, 35.752525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.670563, 32.454876, 35.575138>,  <46.301964, 32.221760, 36.130013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.670563, 32.454876, 35.575138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.376022, 32.725513, 35.576225>,  <46.199299, 32.887897, 35.576878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.376022, 32.725513, 35.576225>,  <46.670563, 32.454876, 35.575138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.376022, 32.725513, 35.576225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660800, 0.720005, -0.211982,
		-0.145385, -0.154295, -0.977270,
		-0.736347, 0.676599, 0.002720,
		46.155117, 32.928493, 35.577042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.857994, 32.850113, 34.980022>,  <46.670563, 32.454876, 35.575138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.857994, 32.850113, 34.980022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.618553, 33.072544, 35.210659>,  <46.474888, 33.206001, 35.349041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.618553, 33.072544, 35.210659>,  <46.857994, 32.850113, 34.980022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.618553, 33.072544, 35.210659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572639, 0.800381, -0.177409,
		-0.560148, 0.223983, -0.797538,
		-0.598598, 0.556076, 0.576594,
		46.438972, 33.239368, 35.383636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.636658, 33.371128, 34.540588>,  <46.857994, 32.850113, 34.980022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.636658, 33.371128, 34.540588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.652767, 33.488754, 34.922562>,  <46.662434, 33.559330, 35.151745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.652767, 33.488754, 34.922562>,  <46.636658, 33.371128, 34.540588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.652767, 33.488754, 34.922562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717636, 0.656489, -0.232426,
		-0.695253, 0.694659, -0.184587,
		0.040278, 0.294061, 0.954938,
		46.664852, 33.576973, 35.209042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.616589, 34.024963, 34.622734>,  <46.636658, 33.371128, 34.540588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.616589, 34.024963, 34.622734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.866955, 33.963543, 34.928585>,  <47.017174, 33.926689, 35.112095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.866955, 33.963543, 34.928585>,  <46.616589, 34.024963, 34.622734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.866955, 33.963543, 34.928585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535720, 0.797165, -0.278447,
		-0.566778, 0.583909, 0.581216,
		0.625913, -0.153551, 0.764628,
		47.054729, 33.917477, 35.157974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.549805, 34.570961, 35.113064>,  <46.616589, 34.024963, 34.622734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.549805, 34.570961, 35.113064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.897209, 34.386185, 35.041183>,  <47.105652, 34.275318, 34.998055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.897209, 34.386185, 35.041183>,  <46.549805, 34.570961, 35.113064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.897209, 34.386185, 35.041183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374843, 0.849330, -0.371661,
		0.324310, 0.255434, 0.910811,
		0.868514, -0.461945, -0.179698,
		47.157764, 34.247601, 34.987274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.111019, 34.967911, 35.396854>,  <46.549805, 34.570961, 35.113064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.111019, 34.967911, 35.396854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.234245, 34.759842, 35.078228>,  <47.308182, 34.635002, 34.887051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.234245, 34.759842, 35.078228>,  <47.111019, 34.967911, 35.396854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.234245, 34.759842, 35.078228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300622, 0.847614, -0.437239,
		0.902620, -0.104769, 0.417493,
		0.308064, -0.520168, -0.796569,
		47.326664, 34.603790, 34.839256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.892223, 34.994537, 35.293438>,  <47.111019, 34.967911, 35.396854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.892223, 34.994537, 35.293438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.635487, 34.997215, 34.986717>,  <47.481445, 34.998821, 34.802685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.635487, 34.997215, 34.986717>,  <47.892223, 34.994537, 35.293438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.635487, 34.997215, 34.986717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426420, 0.834217, -0.349641,
		0.637339, -0.551396, -0.538295,
		-0.641845, 0.006700, -0.766805,
		47.442932, 34.999226, 34.756676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.794975, 33.824821, 45.475876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.408600, 33.787174, 45.572292>,  <36.176773, 33.764587, 45.630142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.408600, 33.787174, 45.572292>,  <36.794975, 33.824821, 45.475876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408600, 33.787174, 45.572292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254916, 0.506236, -0.823858,
		-0.044487, -0.857244, -0.512986,
		-0.965939, -0.094118, 0.241046,
		36.118816, 33.758938, 45.644608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410263, 33.465752, 44.908241>,  <36.794975, 33.824821, 45.475876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410263, 33.465752, 44.908241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.118973, 33.646660, 45.114204>,  <35.944199, 33.755203, 45.237782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.118973, 33.646660, 45.114204>,  <36.410263, 33.465752, 44.908241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118973, 33.646660, 45.114204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337202, 0.417636, -0.843727,
		-0.596638, -0.788056, -0.151628,
		-0.728229, 0.452270, 0.514912,
		35.900505, 33.782341, 45.268677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821262, 33.418686, 44.451763>,  <36.410263, 33.465752, 44.908241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821262, 33.418686, 44.451763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.721367, 33.701736, 44.716156>,  <35.661430, 33.871567, 44.874790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.721367, 33.701736, 44.716156>,  <35.821262, 33.418686, 44.451763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721367, 33.701736, 44.716156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325892, 0.581369, -0.745523,
		-0.911825, -0.401595, 0.085419,
		-0.249738, 0.707624, 0.660984,
		35.646446, 33.914024, 44.914452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195843, 33.520966, 44.238457>,  <35.821262, 33.418686, 44.451763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195843, 33.520966, 44.238457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.283054, 33.852318, 44.444855>,  <35.335381, 34.051128, 44.568691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.283054, 33.852318, 44.444855>,  <35.195843, 33.520966, 44.238457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283054, 33.852318, 44.444855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474348, 0.552008, -0.685770,
		-0.852911, -0.095242, 0.513295,
		0.218029, 0.828382, 0.515992,
		35.348461, 34.100834, 44.599651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581348, 33.871323, 44.270332>,  <35.195843, 33.520966, 44.238457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581348, 33.871323, 44.270332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.866257, 34.142937, 44.341415>,  <35.037201, 34.305904, 44.384064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.866257, 34.142937, 44.341415>,  <34.581348, 33.871323, 44.270332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866257, 34.142937, 44.341415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358603, 0.569686, -0.739501,
		-0.603381, 0.463004, 0.649276,
		0.712275, 0.679033, 0.177703,
		35.079941, 34.346645, 44.394726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160328, 34.416328, 44.418503>,  <34.581348, 33.871323, 44.270332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160328, 34.416328, 44.418503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.524502, 34.536102, 44.304340>,  <34.743004, 34.607967, 44.235844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.524502, 34.536102, 44.304340>,  <34.160328, 34.416328, 44.418503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524502, 34.536102, 44.304340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410281, 0.565638, -0.715348,
		-0.052761, 0.768372, 0.637825,
		0.910431, 0.299430, -0.285405,
		34.797630, 34.625931, 44.218719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124043, 35.126987, 44.395424>,  <34.160328, 34.416328, 44.418503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124043, 35.126987, 44.395424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.434299, 34.998905, 44.177856>,  <34.620453, 34.922054, 44.047314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.434299, 34.998905, 44.177856>,  <34.124043, 35.126987, 44.395424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434299, 34.998905, 44.177856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244329, 0.642252, -0.726509,
		0.581966, 0.696406, 0.419922,
		0.775641, -0.320204, -0.543921,
		34.666992, 34.902843, 44.014679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330956, 35.704121, 43.970673>,  <34.124043, 35.126987, 44.395424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330956, 35.704121, 43.970673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.485981, 35.388172, 43.780556>,  <34.578995, 35.198605, 43.666485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.485981, 35.388172, 43.780556>,  <34.330956, 35.704121, 43.970673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485981, 35.388172, 43.780556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121948, 0.467131, -0.875738,
		0.913743, 0.397362, 0.084718,
		0.387560, -0.789868, -0.475295,
		34.602249, 35.151211, 43.637966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808403, 35.938515, 43.436672>,  <34.330956, 35.704121, 43.970673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808403, 35.938515, 43.436672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.801441, 35.571682, 43.277340>,  <34.797264, 35.351582, 43.181740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.801441, 35.571682, 43.277340>,  <34.808403, 35.938515, 43.436672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801441, 35.571682, 43.277340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047826, 0.398694, -0.915836,
		0.998704, 0.003113, -0.050798,
		-0.017402, -0.917079, -0.398327,
		34.796219, 35.296558, 43.157841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239044, 35.995384, 42.924362>,  <34.808403, 35.938515, 43.436672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239044, 35.995384, 42.924362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.023468, 35.676689, 42.814999>,  <34.894123, 35.485470, 42.749382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.023468, 35.676689, 42.814999>,  <35.239044, 35.995384, 42.924362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023468, 35.676689, 42.814999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036599, 0.302120, -0.952567,
		0.841551, -0.523379, -0.133663,
		-0.538936, -0.796742, -0.273404,
		34.861786, 35.437668, 42.732979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611404, 35.502617, 42.497128>,  <35.239044, 35.995384, 42.924362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611404, 35.502617, 42.497128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.222824, 35.458771, 42.412968>,  <34.989677, 35.432461, 42.362473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.222824, 35.458771, 42.412968>,  <35.611404, 35.502617, 42.497128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222824, 35.458771, 42.412968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158643, 0.359261, -0.919654,
		0.176398, -0.926777, -0.331614,
		-0.971451, -0.109617, -0.210400,
		34.931389, 35.425884, 42.349846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529480, 35.006310, 41.892941>,  <35.611404, 35.502617, 42.497128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529480, 35.006310, 41.892941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.206638, 35.239498, 41.930305>,  <35.012932, 35.379410, 41.952724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.206638, 35.239498, 41.930305>,  <35.529480, 35.006310, 41.892941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206638, 35.239498, 41.930305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097235, 0.287310, -0.952890,
		-0.582344, -0.760000, -0.288575,
		-0.807107, 0.582969, 0.093415,
		34.964508, 35.414391, 41.958328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142536, 34.960606, 41.311615>,  <35.529480, 35.006310, 41.892941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142536, 34.960606, 41.311615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.978245, 35.297035, 41.452415>,  <34.879669, 35.498894, 41.536896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.978245, 35.297035, 41.452415>,  <35.142536, 34.960606, 41.311615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978245, 35.297035, 41.452415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071119, 0.414442, -0.907293,
		-0.908980, -0.347617, -0.230039,
		-0.410728, 0.841071, 0.351997,
		34.855026, 35.549358, 41.558014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601048, 35.160332, 40.833443>,  <35.142536, 34.960606, 41.311615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601048, 35.160332, 40.833443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.690876, 35.491222, 41.039459>,  <34.744774, 35.689754, 41.163071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.690876, 35.491222, 41.039459>,  <34.601048, 35.160332, 40.833443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690876, 35.491222, 41.039459> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086728, 0.543414, -0.834973,
		-0.970591, 0.142841, 0.193778,
		0.224570, 0.827223, 0.515044,
		34.758247, 35.739388, 41.193974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132008, 35.586506, 40.549088>,  <34.601048, 35.160332, 40.833443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132008, 35.586506, 40.549088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.407169, 35.817390, 40.725094>,  <34.572266, 35.955921, 40.830696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.407169, 35.817390, 40.725094>,  <34.132008, 35.586506, 40.549088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407169, 35.817390, 40.725094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108554, 0.681252, -0.723955,
		-0.717636, 0.450247, 0.531296,
		0.687905, 0.577211, 0.440015,
		34.613541, 35.990555, 40.857098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871414, 36.254711, 40.641853>,  <34.132008, 35.586506, 40.549088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871414, 36.254711, 40.641853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.264057, 36.321655, 40.605099>,  <34.499641, 36.361820, 40.583046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.264057, 36.321655, 40.605099>,  <33.871414, 36.254711, 40.641853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264057, 36.321655, 40.605099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190470, 0.825185, -0.531782,
		-0.013177, 0.539501, 0.841882,
		0.981605, 0.167361, -0.091885,
		34.558540, 36.371864, 40.577534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.925537, 37.041832, 40.531883>,  <33.871414, 36.254711, 40.641853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.925537, 37.041832, 40.531883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.307083, 36.944561, 40.461441>,  <34.536011, 36.886196, 40.419178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.307083, 36.944561, 40.461441>,  <33.925537, 37.041832, 40.531883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307083, 36.944561, 40.461441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088137, 0.787466, -0.610025,
		0.287020, 0.566358, 0.772566,
		0.953861, -0.243181, -0.176101,
		34.593243, 36.871605, 40.408611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231617, 37.722855, 40.634937>,  <33.925537, 37.041832, 40.531883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231617, 37.722855, 40.634937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.458511, 37.466682, 40.427826>,  <34.594646, 37.312981, 40.303558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.458511, 37.466682, 40.427826>,  <34.231617, 37.722855, 40.634937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458511, 37.466682, 40.427826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133489, 0.691894, -0.709552,
		0.812664, 0.333366, 0.477958,
		0.567237, -0.640429, -0.517776,
		34.628681, 37.274555, 40.272491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724960, 38.153835, 40.441647>,  <34.231617, 37.722855, 40.634937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724960, 38.153835, 40.441647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.739853, 37.850101, 40.181793>,  <34.748791, 37.667862, 40.025883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.739853, 37.850101, 40.181793>,  <34.724960, 38.153835, 40.441647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739853, 37.850101, 40.181793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069219, 0.650480, -0.756363,
		0.996907, -0.016805, 0.076780,
		0.037233, -0.759337, -0.649631,
		34.751022, 37.622299, 39.986904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160961, 38.346657, 39.913891>,  <34.724960, 38.153835, 40.441647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160961, 38.346657, 39.913891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.971157, 38.045265, 39.731850>,  <34.857277, 37.864429, 39.622623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.971157, 38.045265, 39.731850>,  <35.160961, 38.346657, 39.913891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971157, 38.045265, 39.731850> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005007, 0.519318, -0.854567,
		0.880237, -0.403219, -0.250193,
		-0.474507, -0.753474, -0.455104,
		34.828804, 37.819221, 39.595318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582710, 38.190521, 39.352413>,  <35.160961, 38.346657, 39.913891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582710, 38.190521, 39.352413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.207310, 38.066429, 39.291782>,  <34.982071, 37.991974, 39.255405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.207310, 38.066429, 39.291782>,  <35.582710, 38.190521, 39.352413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207310, 38.066429, 39.291782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048297, 0.552626, -0.832029,
		0.341880, -0.773540, -0.533624,
		-0.938502, -0.310226, -0.151572,
		34.925758, 37.973362, 39.246311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617714, 37.819206, 38.781914>,  <35.582710, 38.190521, 39.352413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617714, 37.819206, 38.781914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.248260, 37.965096, 38.829044>,  <35.026588, 38.052628, 38.857323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.248260, 37.965096, 38.829044>,  <35.617714, 37.819206, 38.781914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248260, 37.965096, 38.829044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067558, 0.457512, -0.886633,
		-0.377281, -0.810962, -0.447213,
		-0.923631, 0.364722, 0.117824,
		34.971172, 38.074512, 38.864391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313934, 37.616936, 38.942440>,  <35.617714, 37.819206, 38.781914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313934, 37.616936, 38.942440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.567196, 37.516808, 38.649467>,  <36.719151, 37.456730, 38.473682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.567196, 37.516808, 38.649467>,  <36.313934, 37.616936, 38.942440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567196, 37.516808, 38.649467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295422, -0.796479, 0.527586,
		-0.715435, -0.550419, -0.430340,
		0.633150, -0.250322, -0.732434,
		36.757141, 37.441711, 38.429737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338806, 36.892799, 38.975601>,  <36.313934, 37.616936, 38.942440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338806, 36.892799, 38.975601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.675884, 37.023773, 38.804653>,  <36.878132, 37.102356, 38.702084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.675884, 37.023773, 38.804653>,  <36.338806, 36.892799, 38.975601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675884, 37.023773, 38.804653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524592, -0.677923, 0.514999,
		-0.121099, -0.658185, -0.743053,
		0.842697, 0.327434, -0.427374,
		36.928692, 37.122002, 38.676441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603962, 36.324184, 38.719952>,  <36.338806, 36.892799, 38.975601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603962, 36.324184, 38.719952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.925785, 36.561684, 38.724941>,  <37.118877, 36.704182, 38.727936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.925785, 36.561684, 38.724941>,  <36.603962, 36.324184, 38.719952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925785, 36.561684, 38.724941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458961, -0.634975, 0.621419,
		0.376888, -0.494240, -0.783379,
		0.804556, 0.593746, 0.012478,
		37.167152, 36.739807, 38.728683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245831, 35.867859, 38.634335>,  <36.603962, 36.324184, 38.719952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245831, 35.867859, 38.634335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.376110, 36.210098, 38.795265>,  <37.454277, 36.415443, 38.891823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.376110, 36.210098, 38.795265>,  <37.245831, 35.867859, 38.634335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376110, 36.210098, 38.795265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493424, -0.516806, 0.699602,
		0.806505, -0.029344, -0.590498,
		0.325702, 0.855599, 0.402328,
		37.473820, 36.466778, 38.915962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926323, 35.720108, 38.765854>,  <37.245831, 35.867859, 38.634335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926323, 35.720108, 38.765854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.786469, 36.020962, 38.989300>,  <37.702557, 36.201473, 39.123367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.786469, 36.020962, 38.989300>,  <37.926323, 35.720108, 38.765854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786469, 36.020962, 38.989300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285751, -0.482227, 0.828133,
		0.892244, 0.449172, -0.046317,
		-0.349638, 0.752132, 0.558615,
		37.681576, 36.246601, 39.156883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560860, 35.876106, 39.202606>,  <37.926323, 35.720108, 38.765854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560860, 35.876106, 39.202606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.230335, 36.024624, 39.372005>,  <38.032021, 36.113735, 39.473644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.230335, 36.024624, 39.372005>,  <38.560860, 35.876106, 39.202606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230335, 36.024624, 39.372005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338555, -0.273474, 0.900329,
		0.450101, 0.887330, 0.100272,
		-0.826310, 0.371291, 0.423501,
		37.982441, 36.136013, 39.499058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851036, 36.177761, 39.813442>,  <38.560860, 35.876106, 39.202606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851036, 36.177761, 39.813442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.455017, 36.166817, 39.868656>,  <38.217403, 36.160252, 39.901783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.455017, 36.166817, 39.868656>,  <38.851036, 36.177761, 39.813442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455017, 36.166817, 39.868656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139537, -0.317731, 0.937857,
		0.018198, 0.947786, 0.318387,
		-0.990050, -0.027359, 0.138033,
		38.158001, 36.158607, 39.910065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711967, 36.516365, 40.477066>,  <38.851036, 36.177761, 39.813442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711967, 36.516365, 40.477066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.419857, 36.259602, 40.383560>,  <38.244591, 36.105545, 40.327457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.419857, 36.259602, 40.383560>,  <38.711967, 36.516365, 40.477066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419857, 36.259602, 40.383560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120941, -0.458264, 0.880550,
		-0.672358, 0.614776, 0.412294,
		-0.730280, -0.641907, -0.233765,
		38.200771, 36.067028, 40.313431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443157, 36.411125, 41.117218>,  <38.711967, 36.516365, 40.477066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443157, 36.411125, 41.117218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.266506, 36.125343, 40.900143>,  <38.160515, 35.953873, 40.769897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.266506, 36.125343, 40.900143>,  <38.443157, 36.411125, 41.117218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266506, 36.125343, 40.900143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133172, -0.545975, 0.827150,
		-0.887259, 0.437565, 0.145974,
		-0.441630, -0.714457, -0.542692,
		38.134018, 35.911007, 40.737335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689095, 36.388195, 41.313766>,  <38.443157, 36.411125, 41.117218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689095, 36.388195, 41.313766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.808964, 36.045673, 41.145512>,  <37.880886, 35.840160, 41.044559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.808964, 36.045673, 41.145512>,  <37.689095, 36.388195, 41.313766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808964, 36.045673, 41.145512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331416, -0.506876, 0.795764,
		-0.894627, -0.099067, -0.435692,
		0.299676, -0.856307, -0.420633,
		37.898865, 35.788780, 41.019321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246746, 35.969147, 41.696808>,  <37.689095, 36.388195, 41.313766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246746, 35.969147, 41.696808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.504826, 35.723873, 41.514503>,  <37.659676, 35.576710, 41.405121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.504826, 35.723873, 41.514503>,  <37.246746, 35.969147, 41.696808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504826, 35.723873, 41.514503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093621, -0.655491, 0.749377,
		-0.758256, -0.440829, -0.480330,
		0.645200, -0.613189, -0.455760,
		37.698387, 35.539917, 41.377777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894398, 35.353065, 41.606339>,  <37.246746, 35.969147, 41.696808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894398, 35.353065, 41.606339> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.289005, 35.289562, 41.622272>,  <37.525768, 35.251461, 41.631832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.289005, 35.289562, 41.622272>,  <36.894398, 35.353065, 41.606339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289005, 35.289562, 41.622272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129651, -0.609424, 0.782172,
		-0.099899, -0.776788, -0.621788,
		0.986515, -0.158753, 0.039831,
		37.584961, 35.241936, 41.634220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929764, 34.732590, 41.723831>,  <36.894398, 35.353065, 41.606339>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929764, 34.732590, 41.723831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.274715, 34.880527, 41.862118>,  <37.481686, 34.969292, 41.945091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.274715, 34.880527, 41.862118>,  <36.929764, 34.732590, 41.723831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274715, 34.880527, 41.862118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032935, -0.640439, 0.767302,
		0.505196, -0.673089, -0.540118,
		0.862376, 0.369849, 0.345716,
		37.533428, 34.991482, 41.965832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407635, 34.182747, 41.842167>,  <36.929764, 34.732590, 41.723831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407635, 34.182747, 41.842167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.563297, 34.481991, 42.057159>,  <37.656696, 34.661537, 42.186153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.563297, 34.481991, 42.057159>,  <37.407635, 34.182747, 41.842167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563297, 34.481991, 42.057159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088617, -0.611172, 0.786522,
		0.916900, -0.258450, -0.304137,
		0.389156, 0.748113, 0.537480,
		37.680042, 34.706425, 42.218403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985256, 33.885483, 42.205841>,  <37.407635, 34.182747, 41.842167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985256, 33.885483, 42.205841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.930672, 34.231003, 42.399845>,  <37.897923, 34.438313, 42.516247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.930672, 34.231003, 42.399845>,  <37.985256, 33.885483, 42.205841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930672, 34.231003, 42.399845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240412, -0.446080, 0.862099,
		0.961031, 0.234243, -0.146795,
		-0.136459, 0.863796, 0.485011,
		37.889732, 34.490143, 42.545349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631622, 34.138794, 42.506905>,  <37.985256, 33.885483, 42.205841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631622, 34.138794, 42.506905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.311169, 34.244747, 42.721573>,  <38.118896, 34.308319, 42.850376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.311169, 34.244747, 42.721573>,  <38.631622, 34.138794, 42.506905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311169, 34.244747, 42.721573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401642, -0.426851, 0.810236,
		0.443694, 0.864660, 0.235579,
		-0.801136, 0.264878, 0.536675,
		38.070827, 34.324211, 42.882576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895618, 34.201721, 43.178295>,  <38.631622, 34.138794, 42.506905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895618, 34.201721, 43.178295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.499573, 34.177864, 43.229069>,  <38.261944, 34.163548, 43.259533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.499573, 34.177864, 43.229069>,  <38.895618, 34.201721, 43.178295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499573, 34.177864, 43.229069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139957, -0.478327, 0.866958,
		0.009005, 0.876154, 0.481947,
		-0.990117, -0.059645, 0.126931,
		38.202538, 34.159969, 43.267147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740772, 34.530193, 43.849861>,  <38.895618, 34.201721, 43.178295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740772, 34.530193, 43.849861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.408463, 34.312675, 43.802376>,  <38.209076, 34.182163, 43.773884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.408463, 34.312675, 43.802376>,  <38.740772, 34.530193, 43.849861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408463, 34.312675, 43.802376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171026, -0.452357, 0.875285,
		-0.529677, 0.706865, 0.468812,
		-0.830778, -0.543797, -0.118712,
		38.159229, 34.149536, 43.766762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.347202, 34.551044, 44.499390> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.215946, 34.227955, 44.303467>,  <38.137192, 34.034103, 44.185913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.215946, 34.227955, 44.303467>,  <38.347202, 34.551044, 44.499390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215946, 34.227955, 44.303467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033365, -0.528105, 0.848524,
		-0.944038, 0.262096, 0.200243,
		-0.328144, -0.807720, -0.489806,
		38.117504, 33.985638, 44.156525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931622, 34.113808, 45.018349>,  <38.347202, 34.551044, 44.499390>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931622, 34.113808, 45.018349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.026630, 33.852497, 44.730789>,  <38.083637, 33.695709, 44.558254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.026630, 33.852497, 44.730789>,  <37.931622, 34.113808, 45.018349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026630, 33.852497, 44.730789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144536, -0.755604, 0.638883,
		-0.960568, -0.047845, -0.273897,
		0.237525, -0.653279, -0.718894,
		38.097889, 33.656513, 44.515121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389942, 33.663754, 44.953606>,  <37.931622, 34.113808, 45.018349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389942, 33.663754, 44.953606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.709240, 33.475666, 44.803036>,  <37.900818, 33.362816, 44.712692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.709240, 33.475666, 44.803036>,  <37.389942, 33.663754, 44.953606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709240, 33.475666, 44.803036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151420, -0.761541, 0.630181,
		-0.582986, -0.446041, -0.679098,
		0.798248, -0.470216, -0.376428,
		37.948715, 33.334602, 44.690105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242695, 32.962959, 44.984585>,  <37.389942, 33.663754, 44.953606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242695, 32.962959, 44.984585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.639744, 32.964619, 44.936104>,  <37.877972, 32.965614, 44.907013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.639744, 32.964619, 44.936104>,  <37.242695, 32.962959, 44.984585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639744, 32.964619, 44.936104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088551, -0.707693, 0.700948,
		-0.082867, -0.706507, -0.702837,
		0.992619, 0.004151, -0.121207,
		37.937531, 32.965862, 44.899742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450390, 32.301884, 45.215118>,  <37.242695, 32.962959, 44.984585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450390, 32.301884, 45.215118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.799816, 32.496563, 45.214184>,  <38.009472, 32.613369, 45.213623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.799816, 32.496563, 45.214184>,  <37.450390, 32.301884, 45.215118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799816, 32.496563, 45.214184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266075, -0.473545, 0.839618,
		0.407533, -0.734085, -0.543172,
		0.873568, 0.486697, -0.002337,
		38.061886, 32.642570, 45.213482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017578, 31.757559, 45.350212>,  <37.450390, 32.301884, 45.215118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017578, 31.757559, 45.350212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.141712, 32.122551, 45.456848>,  <38.216190, 32.341545, 45.520832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.141712, 32.122551, 45.456848>,  <38.017578, 31.757559, 45.350212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141712, 32.122551, 45.456848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259817, -0.351174, 0.899540,
		0.914434, -0.209889, -0.346058,
		0.310331, 0.912482, 0.266592,
		38.234810, 32.396297, 45.536827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746746, 31.705921, 45.652294>,  <38.017578, 31.757559, 45.350212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746746, 31.705921, 45.652294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.597904, 32.049950, 45.791904>,  <38.508598, 32.256367, 45.875671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.597904, 32.049950, 45.791904>,  <38.746746, 31.705921, 45.652294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597904, 32.049950, 45.791904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328216, -0.229813, 0.916220,
		0.868224, 0.455485, -0.196774,
		-0.372104, 0.860069, 0.349027,
		38.486275, 32.307972, 45.896614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246479, 31.911964, 46.074409>,  <38.746746, 31.705921, 45.652294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246479, 31.911964, 46.074409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.952709, 32.139893, 46.221878>,  <38.776447, 32.276649, 46.310360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.952709, 32.139893, 46.221878>,  <39.246479, 31.911964, 46.074409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952709, 32.139893, 46.221878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389150, -0.091485, 0.916620,
		0.556039, 0.816659, -0.154557,
		-0.734427, 0.569823, 0.368672,
		38.732380, 32.310841, 46.332481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595669, 32.401375, 46.547573>,  <39.246479, 31.911964, 46.074409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595669, 32.401375, 46.547573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.205231, 32.364082, 46.626102>,  <38.970966, 32.341705, 46.673222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.205231, 32.364082, 46.626102>,  <39.595669, 32.401375, 46.547573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205231, 32.364082, 46.626102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213186, -0.234992, 0.948330,
		-0.042282, 0.967516, 0.249251,
		-0.976096, -0.093235, 0.196325,
		38.912403, 32.336113, 46.685001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381504, 32.839451, 47.228096>,  <39.595669, 32.401375, 46.547573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381504, 32.839451, 47.228096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.102314, 32.557800, 47.175888>,  <38.934799, 32.388809, 47.144562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.102314, 32.557800, 47.175888>,  <39.381504, 32.839451, 47.228096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102314, 32.557800, 47.175888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200900, -0.367473, 0.908077,
		-0.687367, 0.607590, 0.397945,
		-0.697973, -0.704129, -0.130524,
		38.892921, 32.346561, 47.136730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117477, 32.781448, 47.861671>,  <39.381504, 32.839451, 47.228096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117477, 32.781448, 47.861671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.997398, 32.451916, 47.669346>,  <38.925350, 32.254196, 47.553951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.997398, 32.451916, 47.669346>,  <39.117477, 32.781448, 47.861671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.997398, 32.451916, 47.669346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181376, -0.544167, 0.819136,
		-0.936474, 0.158695, 0.312782,
		-0.300198, -0.823831, -0.480815,
		38.907337, 32.204765, 47.525101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658318, 32.410454, 48.365295>,  <39.117477, 32.781448, 47.861671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658318, 32.410454, 48.365295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.775959, 32.142426, 48.092674>,  <38.846542, 31.981609, 47.929104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.775959, 32.142426, 48.092674>,  <38.658318, 32.410454, 48.365295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775959, 32.142426, 48.092674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216786, -0.647736, 0.730371,
		-0.930865, -0.362553, -0.045238,
		0.294101, -0.670069, -0.681551,
		38.864189, 31.941404, 47.888210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.374508, 31.809155, 48.637627>,  <38.658318, 32.410454, 48.365295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.374508, 31.809155, 48.637627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.648003, 31.672876, 48.379501>,  <38.812099, 31.591108, 48.224625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.648003, 31.672876, 48.379501>,  <38.374508, 31.809155, 48.637627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648003, 31.672876, 48.379501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208600, -0.756164, 0.620243,
		-0.699276, -0.558697, -0.445950,
		0.683739, -0.340696, -0.645312,
		38.853123, 31.570667, 48.185909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260197, 31.113901, 48.555965>,  <38.374508, 31.809155, 48.637627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260197, 31.113901, 48.555965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.641502, 31.190754, 48.462688>,  <38.870285, 31.236866, 48.406723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.641502, 31.190754, 48.462688>,  <38.260197, 31.113901, 48.555965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641502, 31.190754, 48.462688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300777, -0.676959, 0.671759,
		-0.028798, -0.710501, -0.703107,
		0.953260, 0.192133, -0.233197,
		38.927479, 31.248394, 48.392731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544506, 30.424900, 48.337273>,  <38.260197, 31.113901, 48.555965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544506, 30.424900, 48.337273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.858154, 30.650873, 48.440037>,  <39.046345, 30.786457, 48.501694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.858154, 30.650873, 48.440037>,  <38.544506, 30.424900, 48.337273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858154, 30.650873, 48.440037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280505, -0.691887, 0.665289,
		0.553592, -0.449607, -0.700992,
		0.784125, 0.564931, 0.256906,
		39.093391, 30.820353, 48.517109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047096, 29.884241, 48.368671>,  <38.544506, 30.424900, 48.337273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047096, 29.884241, 48.368671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.255283, 30.195419, 48.509480>,  <39.380196, 30.382126, 48.593964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.255283, 30.195419, 48.509480>,  <39.047096, 29.884241, 48.368671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.255283, 30.195419, 48.509480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498210, -0.611476, 0.614723,
		0.693470, -0.144566, -0.705833,
		0.520468, 0.777945, 0.352016,
		39.411423, 30.428802, 48.615086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666721, 29.746586, 48.247894>,  <39.047096, 29.884241, 48.368671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666721, 29.746586, 48.247894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.656208, 29.992308, 48.563347>,  <39.649902, 30.139742, 48.752617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.656208, 29.992308, 48.563347>,  <39.666721, 29.746586, 48.247894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656208, 29.992308, 48.563347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552265, -0.648662, 0.523681,
		0.833254, 0.449296, -0.322212,
		-0.026281, 0.614306, 0.788630,
		39.648323, 30.176600, 48.799934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470497, 29.708586, 48.507412>,  <39.666721, 29.746586, 48.247894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470497, 29.708586, 48.507412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.210945, 29.842907, 48.780525>,  <40.055214, 29.923500, 48.944393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.210945, 29.842907, 48.780525>,  <40.470497, 29.708586, 48.507412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210945, 29.842907, 48.780525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278207, -0.730510, 0.623663,
		0.708209, 0.594636, 0.380588,
		-0.648876, 0.335801, 0.682786,
		40.016281, 29.943647, 48.985359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.862782, 29.654182, 49.127399>,  <40.470497, 29.708586, 48.507412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.862782, 29.654182, 49.127399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.483757, 29.673903, 49.253700>,  <40.256344, 29.685734, 49.329483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.483757, 29.673903, 49.253700>,  <40.862782, 29.654182, 49.127399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483757, 29.673903, 49.253700> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143928, -0.816324, 0.559375,
		0.285337, 0.575487, 0.766419,
		-0.947559, 0.049301, 0.315756,
		40.199490, 29.688692, 49.348427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877762, 29.583992, 49.919029>,  <40.862782, 29.654182, 49.127399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877762, 29.583992, 49.919029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.509258, 29.505650, 49.784611>,  <40.288158, 29.458645, 49.703960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.509258, 29.505650, 49.784611>,  <40.877762, 29.583992, 49.919029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509258, 29.505650, 49.784611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002777, -0.860640, 0.509206,
		-0.388947, 0.470043, 0.792326,
		-0.921256, -0.195854, -0.336049,
		40.232880, 29.446894, 49.683796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515137, 29.371233, 50.518955>,  <40.877762, 29.583992, 49.919029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515137, 29.371233, 50.518955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.309608, 29.204931, 50.218784>,  <40.186291, 29.105150, 50.038681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.309608, 29.204931, 50.218784>,  <40.515137, 29.371233, 50.518955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.309608, 29.204931, 50.218784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029067, -0.882660, 0.469112,
		-0.857403, 0.219228, 0.465616,
		-0.513824, -0.415753, -0.750423,
		40.155460, 29.080206, 49.993656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292969, 28.869436, 50.905281>,  <40.515137, 29.371233, 50.518955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292969, 28.869436, 50.905281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.216080, 28.755707, 50.529575>,  <40.169945, 28.687469, 50.304153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.216080, 28.755707, 50.529575>,  <40.292969, 28.869436, 50.905281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216080, 28.755707, 50.529575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014448, -0.956185, 0.292406,
		-0.981245, 0.069778, 0.179694,
		-0.192225, -0.284326, -0.939259,
		40.158413, 28.670408, 50.247799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713242, 28.402683, 50.982357>,  <40.292969, 28.869436, 50.905281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713242, 28.402683, 50.982357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.963520, 28.340214, 50.676647>,  <40.113686, 28.302732, 50.493221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.963520, 28.340214, 50.676647>,  <39.713242, 28.402683, 50.982357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963520, 28.340214, 50.676647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473616, -0.702448, 0.531277,
		-0.619832, -0.694391, -0.365554,
		0.625697, -0.156170, -0.764274,
		40.151230, 28.293362, 50.447365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244251, 28.440495, 51.600338>,  <39.713242, 28.402683, 50.982357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244251, 28.440495, 51.600338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.351936, 28.820686, 51.538227>,  <39.416550, 29.048801, 51.500961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.351936, 28.820686, 51.538227>,  <39.244251, 28.440495, 51.600338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351936, 28.820686, 51.538227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911436, -0.303534, -0.277762,
		-0.311139, -0.066747, -0.948017,
		0.269216, 0.950480, -0.155277,
		39.432701, 29.105831, 51.491646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704224, 28.803030, 51.165161>,  <39.244251, 28.440495, 51.600338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704224, 28.803030, 51.165161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.372963, 28.707407, 51.367947>,  <38.174206, 28.650032, 51.489616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.372963, 28.707407, 51.367947>,  <38.704224, 28.803030, 51.165161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372963, 28.707407, 51.367947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478341, 0.772882, -0.416945,
		-0.292148, -0.587796, -0.754417,
		-0.828154, -0.239059, 0.506963,
		38.124516, 28.635689, 51.520035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130623, 28.663282, 50.585808>,  <38.704224, 28.803030, 51.165161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130623, 28.663282, 50.585808> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.941734, 28.734381, 50.931156>,  <37.828400, 28.777040, 51.138367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.941734, 28.734381, 50.931156>,  <38.130623, 28.663282, 50.585808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941734, 28.734381, 50.931156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627634, 0.619932, -0.470915,
		-0.618936, -0.764258, -0.181186,
		-0.472223, 0.177748, 0.863372,
		37.800068, 28.787704, 51.190166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.357719, 28.745600, 50.414261>,  <38.130623, 28.663282, 50.585808>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.357719, 28.745600, 50.414261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.402878, 28.911905, 50.775234>,  <37.429974, 29.011688, 50.991817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.402878, 28.911905, 50.775234>,  <37.357719, 28.745600, 50.414261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402878, 28.911905, 50.775234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591505, 0.757893, -0.275172,
		-0.798359, -0.502730, 0.331491,
		0.112898, 0.415765, 0.902438,
		37.436749, 29.036634, 51.045967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757874, 28.884495, 50.598400>,  <37.357719, 28.745600, 50.414261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757874, 28.884495, 50.598400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.972267, 29.148968, 50.808372>,  <37.100903, 29.307652, 50.934357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.972267, 29.148968, 50.808372>,  <36.757874, 28.884495, 50.598400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972267, 29.148968, 50.808372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595001, 0.736963, -0.320717,
		-0.598907, -0.140434, 0.788409,
		0.535989, 0.661184, 0.524930,
		37.133064, 29.347322, 50.965851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293667, 29.404364, 50.934212>,  <36.757874, 28.884495, 50.598400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293667, 29.404364, 50.934212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.632385, 29.614836, 50.965378>,  <36.835617, 29.741119, 50.984077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.632385, 29.614836, 50.965378>,  <36.293667, 29.404364, 50.934212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632385, 29.614836, 50.965378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446696, 0.782985, -0.432894,
		-0.288786, 0.331769, 0.898071,
		0.846797, 0.526179, 0.077915,
		36.886425, 29.772690, 50.988750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125019, 30.103693, 51.082699>,  <36.293667, 29.404364, 50.934212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125019, 30.103693, 51.082699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.482681, 30.096386, 50.903748>,  <36.697281, 30.092001, 50.796379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.482681, 30.096386, 50.903748>,  <36.125019, 30.103693, 51.082699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482681, 30.096386, 50.903748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252008, 0.805349, -0.536568,
		0.370095, 0.592519, 0.715507,
		0.894160, -0.018268, -0.447375,
		36.750931, 30.090906, 50.769535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305878, 30.833471, 51.163914>,  <36.125019, 30.103693, 51.082699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305878, 30.833471, 51.163914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.536266, 30.655918, 50.889328>,  <36.674500, 30.549385, 50.724579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.536266, 30.655918, 50.889328>,  <36.305878, 30.833471, 51.163914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536266, 30.655918, 50.889328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107954, 0.791080, -0.602112,
		0.810312, 0.420903, 0.407718,
		0.575969, -0.443884, -0.686460,
		36.709057, 30.522753, 50.683392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750988, 31.350182, 50.911400>,  <36.305878, 30.833471, 51.163914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750988, 31.350182, 50.911400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.744816, 31.074055, 50.622063>,  <36.741112, 30.908379, 50.448460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.744816, 31.074055, 50.622063>,  <36.750988, 31.350182, 50.911400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744816, 31.074055, 50.622063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181730, 0.713317, -0.676870,
		0.983227, 0.121010, -0.136457,
		-0.015429, -0.690315, -0.723344,
		36.740189, 30.866961, 50.405060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209217, 31.573006, 50.439129>,  <36.750988, 31.350182, 50.911400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209217, 31.573006, 50.439129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.964413, 31.323854, 50.244205>,  <36.817532, 31.174364, 50.127251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.964413, 31.323854, 50.244205>,  <37.209217, 31.573006, 50.439129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964413, 31.323854, 50.244205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195040, 0.716023, -0.670276,
		0.766428, -0.315166, -0.559695,
		-0.612003, -0.622882, -0.487310,
		36.780811, 31.136992, 50.098015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203251, 31.945545, 49.831463>,  <37.209217, 31.573006, 50.439129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203251, 31.945545, 49.831463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.989838, 31.663170, 49.645130>,  <36.861790, 31.493746, 49.533333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.989838, 31.663170, 49.645130>,  <37.203251, 31.945545, 49.831463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989838, 31.663170, 49.645130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097317, 0.495870, -0.862926,
		0.840162, -0.505733, -0.195864,
		-0.533533, -0.705937, -0.465827,
		36.829777, 31.451389, 49.505383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615803, 31.676092, 49.204998>,  <37.203251, 31.945545, 49.831463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615803, 31.676092, 49.204998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.219551, 31.642996, 49.161526>,  <36.981800, 31.623138, 49.135445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.219551, 31.642996, 49.161526>,  <37.615803, 31.676092, 49.204998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219551, 31.642996, 49.161526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071653, 0.362595, -0.929188,
		0.116286, -0.928267, -0.353268,
		-0.990628, -0.082739, -0.108678,
		36.922363, 31.618174, 49.128922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.448208, 31.272982, 48.502644>,  <37.615803, 31.676092, 49.204998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.448208, 31.272982, 48.502644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.139042, 31.500010, 48.616116>,  <36.953545, 31.636227, 48.684200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.139042, 31.500010, 48.616116>,  <37.448208, 31.272982, 48.502644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139042, 31.500010, 48.616116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068915, 0.369348, -0.926732,
		-0.630760, -0.735832, -0.246359,
		-0.772911, 0.567568, 0.283680,
		36.907169, 31.670280, 48.701221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935291, 31.231266, 47.923176>,  <37.448208, 31.272982, 48.502644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935291, 31.231266, 47.923176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.791611, 31.535280, 48.139812>,  <36.705402, 31.717688, 48.269794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.791611, 31.535280, 48.139812>,  <36.935291, 31.231266, 47.923176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791611, 31.535280, 48.139812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255587, 0.478023, -0.840339,
		-0.897580, -0.440274, 0.022549,
		-0.359201, 0.760035, 0.541592,
		36.683849, 31.763290, 48.302292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179829, 31.397858, 47.591473>,  <36.935291, 31.231266, 47.923176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179829, 31.397858, 47.591473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.267639, 31.729488, 47.797165>,  <36.320324, 31.928467, 47.920582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.267639, 31.729488, 47.797165>,  <36.179829, 31.397858, 47.591473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267639, 31.729488, 47.797165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245217, 0.557061, -0.793443,
		-0.944286, 0.048083, 0.325595,
		0.219527, 0.829078, 0.514235,
		36.333496, 31.978212, 47.951435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560925, 31.807451, 47.543972>,  <36.179829, 31.397858, 47.591473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560925, 31.807451, 47.543972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.865982, 32.050953, 47.631420>,  <36.049015, 32.197056, 47.683891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.865982, 32.050953, 47.631420>,  <35.560925, 31.807451, 47.543972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865982, 32.050953, 47.631420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252257, 0.591155, -0.766095,
		-0.595605, 0.529106, 0.604402,
		0.762640, 0.608755, 0.218624,
		36.094772, 32.233578, 47.697006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293373, 32.498951, 47.485184>,  <35.560925, 31.807451, 47.543972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293373, 32.498951, 47.485184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.688087, 32.541889, 47.436634>,  <35.924915, 32.567654, 47.407505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.688087, 32.541889, 47.436634>,  <35.293373, 32.498951, 47.485184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688087, 32.541889, 47.436634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160514, 0.750048, -0.641610,
		0.022165, 0.652614, 0.757366,
		0.986785, 0.107347, -0.121378,
		35.984123, 32.574093, 47.400219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414551, 33.248425, 47.481255>,  <35.293373, 32.498951, 47.485184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414551, 33.248425, 47.481255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.750935, 33.108273, 47.316319>,  <35.952763, 33.024181, 47.217358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.750935, 33.108273, 47.316319>,  <35.414551, 33.248425, 47.481255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750935, 33.108273, 47.316319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043446, 0.803303, -0.593983,
		0.539354, 0.481600, 0.690767,
		0.840957, -0.350379, -0.412341,
		36.003223, 33.003159, 47.192616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778278, 33.818333, 47.435894>,  <35.414551, 33.248425, 47.481255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778278, 33.818333, 47.435894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.938965, 33.570919, 47.165771>,  <36.035378, 33.422470, 47.003696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.938965, 33.570919, 47.165771>,  <35.778278, 33.818333, 47.435894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938965, 33.570919, 47.165771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099039, 0.703753, -0.703507,
		0.910393, 0.349492, 0.221450,
		0.401716, -0.618536, -0.675305,
		36.059479, 33.385357, 46.963181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289944, 34.245239, 46.931713>,  <35.778278, 33.818333, 47.435894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289944, 34.245239, 46.931713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.227402, 33.903263, 46.733871>,  <36.189877, 33.698078, 46.615166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.227402, 33.903263, 46.733871>,  <36.289944, 34.245239, 46.931713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227402, 33.903263, 46.733871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166735, 0.516420, -0.839946,
		0.973526, -0.048863, -0.223293,
		-0.156355, -0.854940, -0.494601,
		36.180496, 33.646782, 46.585491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739918, 34.273003, 46.260727>,  <36.289944, 34.245239, 46.931713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739918, 34.273003, 46.260727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.425102, 34.030910, 46.212963>,  <36.236214, 33.885654, 46.184303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.425102, 34.030910, 46.212963>,  <36.739918, 34.273003, 46.260727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425102, 34.030910, 46.212963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216554, 0.452303, -0.865174,
		0.577641, -0.655069, -0.487047,
		-0.787042, -0.605232, -0.119411,
		36.188988, 33.849342, 46.177139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.410355, 27.420607, 39.946705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.013542, 27.454287, 39.984188>,  <44.775455, 27.474495, 40.006680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.013542, 27.454287, 39.984188>,  <45.410355, 27.420607, 39.946705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.013542, 27.454287, 39.984188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026584, 0.867006, -0.497588,
		-0.123147, -0.491133, -0.862336,
		-0.992032, 0.084201, 0.093713,
		44.715931, 27.479548, 40.012302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.189587, 27.569876, 39.307423>,  <45.410355, 27.420607, 39.946705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.189587, 27.569876, 39.307423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.897305, 27.695459, 39.549908>,  <44.721935, 27.770809, 39.695400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.897305, 27.695459, 39.549908>,  <45.189587, 27.569876, 39.307423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.897305, 27.695459, 39.549908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025050, 0.875052, -0.483380,
		-0.682231, -0.368395, -0.631542,
		-0.730707, 0.313957, 0.606216,
		44.678093, 27.789646, 39.731773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.642799, 27.948944, 38.929409>,  <45.189587, 27.569876, 39.307423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.642799, 27.948944, 38.929409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.602936, 28.096474, 39.299065>,  <44.579018, 28.184992, 39.520859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.602936, 28.096474, 39.299065>,  <44.642799, 27.948944, 38.929409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.602936, 28.096474, 39.299065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158097, 0.911097, -0.380667,
		-0.982382, -0.184040, -0.032487,
		-0.099657, 0.368825, 0.924141,
		44.573040, 28.207121, 39.576305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.236675, 28.571152, 38.824131>,  <44.642799, 27.948944, 38.929409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.236675, 28.571152, 38.824131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.377045, 28.631386, 39.193817>,  <44.461266, 28.667526, 39.415630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.377045, 28.631386, 39.193817>,  <44.236675, 28.571152, 38.824131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.377045, 28.631386, 39.193817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169249, 0.980929, -0.095562,
		-0.920983, -0.122889, 0.369713,
		0.350919, 0.150585, 0.924219,
		44.482319, 28.676561, 39.471085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.763691, 29.146818, 39.064922>,  <44.236675, 28.571152, 38.824131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.763691, 29.146818, 39.064922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.094891, 29.145979, 39.289211>,  <44.293610, 29.145475, 39.423786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.094891, 29.145979, 39.289211>,  <43.763691, 29.146818, 39.064922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.094891, 29.145979, 39.289211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141973, 0.966624, 0.213266,
		-0.542459, -0.256192, 0.800065,
		0.827999, -0.002100, 0.560726,
		44.343288, 29.145350, 39.457428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.560802, 29.379349, 39.794655>,  <43.763691, 29.146818, 39.064922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.560802, 29.379349, 39.794655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.944469, 29.462658, 39.718102>,  <44.174667, 29.512644, 39.672169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.944469, 29.462658, 39.718102>,  <43.560802, 29.379349, 39.794655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.944469, 29.462658, 39.718102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167759, 0.963651, 0.207929,
		0.227732, -0.167332, 0.959238,
		0.959164, 0.208273, -0.191382,
		44.232220, 29.525141, 39.660686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.655800, 30.011610, 39.895836>,  <43.560802, 29.379349, 39.794655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.655800, 30.011610, 39.895836> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.020702, 29.952969, 39.742836>,  <44.239643, 29.917784, 39.651035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.020702, 29.952969, 39.742836>,  <43.655800, 30.011610, 39.895836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.020702, 29.952969, 39.742836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046615, 0.964852, -0.258627,
		0.406969, 0.218103, 0.887022,
		0.912252, -0.146602, -0.382498,
		44.294376, 29.908989, 39.628086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.062557, 30.597544, 40.163445>,  <43.655800, 30.011610, 39.895836>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.062557, 30.597544, 40.163445> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.236492, 30.448286, 39.835621>,  <44.340855, 30.358730, 39.638927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.236492, 30.448286, 39.835621>,  <44.062557, 30.597544, 40.163445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.236492, 30.448286, 39.835621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091994, 0.923754, -0.371775,
		0.895798, 0.086267, 0.436009,
		0.434837, -0.373145, -0.819561,
		44.366943, 30.336342, 39.589752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.633160, 31.112921, 40.052116>,  <44.062557, 30.597544, 40.163445>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.633160, 31.112921, 40.052116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.592777, 30.916416, 39.706059>,  <44.568550, 30.798513, 39.498425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.592777, 30.916416, 39.706059>,  <44.633160, 31.112921, 40.052116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.592777, 30.916416, 39.706059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030249, 0.870697, -0.490889,
		0.994431, -0.023387, -0.102760,
		-0.100953, -0.491264, -0.865141,
		44.562492, 30.769037, 39.446518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.062141, 31.414370, 39.568340>,  <44.633160, 31.112921, 40.052116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.062141, 31.414370, 39.568340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.789722, 31.228697, 39.341816>,  <44.626270, 31.117292, 39.205902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.789722, 31.228697, 39.341816>,  <45.062141, 31.414370, 39.568340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.789722, 31.228697, 39.341816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018072, 0.783818, -0.620727,
		0.732015, -0.412511, -0.542207,
		-0.681049, -0.464181, -0.566312,
		44.585407, 31.089441, 39.171921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.296318, 31.434404, 38.912579>,  <45.062141, 31.414370, 39.568340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.296318, 31.434404, 38.912579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.897430, 31.406725, 38.901516>,  <44.658096, 31.390118, 38.894878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.897430, 31.406725, 38.901516>,  <45.296318, 31.434404, 38.912579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.897430, 31.406725, 38.901516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046003, 0.863621, -0.502038,
		0.058627, -0.499369, -0.864403,
		-0.997219, -0.069198, -0.027660,
		44.598263, 31.385965, 38.893219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.171665, 31.654680, 38.287682>,  <45.296318, 31.434404, 38.912579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.171665, 31.654680, 38.287682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.807350, 31.675173, 38.451557>,  <44.588760, 31.687468, 38.549885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.807350, 31.675173, 38.451557>,  <45.171665, 31.654680, 38.287682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.807350, 31.675173, 38.451557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197940, 0.816629, -0.542159,
		-0.362341, -0.574884, -0.733633,
		-0.910784, 0.051231, 0.409691,
		44.534115, 31.690542, 38.574463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.801731, 31.829052, 37.819153>,  <45.171665, 31.654680, 38.287682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.801731, 31.829052, 37.819153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.563293, 31.917246, 38.127972>,  <44.420231, 31.970163, 38.313263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.563293, 31.917246, 38.127972>,  <44.801731, 31.829052, 37.819153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.563293, 31.917246, 38.127972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311833, 0.822501, -0.475660,
		-0.739887, -0.524288, -0.421533,
		-0.596094, 0.220487, 0.772048,
		44.384464, 31.983393, 38.359585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.090199, 31.904747, 37.609463>,  <44.801731, 31.829052, 37.819153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.090199, 31.904747, 37.609463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.118301, 32.112438, 37.950161>,  <44.135162, 32.237053, 38.154579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.118301, 32.112438, 37.950161>,  <44.090199, 31.904747, 37.609463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.118301, 32.112438, 37.950161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220185, 0.840866, -0.494433,
		-0.972925, -0.152805, 0.173400,
		0.070254, 0.519226, 0.851745,
		44.139378, 32.268208, 38.205685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.480263, 32.327789, 37.655884>,  <44.090199, 31.904747, 37.609463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.480263, 32.327789, 37.655884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.746780, 32.500553, 37.899033>,  <43.906693, 32.604210, 38.044922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.746780, 32.500553, 37.899033>,  <43.480263, 32.327789, 37.655884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.746780, 32.500553, 37.899033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170399, 0.881799, -0.439767,
		-0.725956, 0.189436, 0.661137,
		0.666297, 0.431909, 0.607867,
		43.946671, 32.630127, 38.081394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.155949, 32.902821, 37.824665>,  <43.480263, 32.327789, 37.655884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.155949, 32.902821, 37.824665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.539917, 32.971798, 37.913048>,  <43.770298, 33.013184, 37.966076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.539917, 32.971798, 37.913048>,  <43.155949, 32.902821, 37.824665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539917, 32.971798, 37.913048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035527, 0.856825, -0.514382,
		-0.278022, 0.485915, 0.828608,
		0.959918, 0.172447, 0.220953,
		43.827892, 33.023533, 37.979332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.184036, 33.613220, 38.064999>,  <43.155949, 32.902821, 37.824665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.184036, 33.613220, 38.064999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.566181, 33.541187, 37.971313>,  <43.795467, 33.497967, 37.915104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.566181, 33.541187, 37.971313>,  <43.184036, 33.613220, 38.064999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.566181, 33.541187, 37.971313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081544, 0.922689, -0.376823,
		0.283962, 0.340904, 0.896186,
		0.955362, -0.180082, -0.234210,
		43.852791, 33.487164, 37.901051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.592667, 34.163372, 38.200771>,  <43.184036, 33.613220, 38.064999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.592667, 34.163372, 38.200771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.831638, 33.980633, 37.937145>,  <43.975021, 33.870991, 37.778969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.831638, 33.980633, 37.937145>,  <43.592667, 34.163372, 38.200771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.831638, 33.980633, 37.937145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243463, 0.886397, -0.393734,
		0.764069, 0.074771, 0.640786,
		0.597431, -0.456848, -0.659064,
		44.010868, 33.843578, 37.739426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.143265, 34.632774, 38.038349>,  <43.592667, 34.163372, 38.200771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.143265, 34.632774, 38.038349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.141254, 34.395374, 37.716423>,  <44.140049, 34.252934, 37.523266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.141254, 34.395374, 37.716423>,  <44.143265, 34.632774, 38.038349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.141254, 34.395374, 37.716423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292902, 0.768654, -0.568664,
		0.956129, -0.238591, 0.169975,
		-0.005026, -0.593502, -0.804816,
		44.139748, 34.217323, 37.474979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.605991, 34.931831, 37.626820>,  <44.143265, 34.632774, 38.038349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.605991, 34.931831, 37.626820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.407772, 34.689499, 37.377853>,  <44.288841, 34.544098, 37.228474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.407772, 34.689499, 37.377853>,  <44.605991, 34.931831, 37.626820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.407772, 34.689499, 37.377853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187644, 0.624995, -0.757741,
		0.848069, -0.492290, -0.196035,
		-0.495548, -0.605832, -0.622414,
		44.259106, 34.507748, 37.191128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.048443, 34.878517, 37.159744>,  <44.605991, 34.931831, 37.626820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.048443, 34.878517, 37.159744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.705719, 34.771816, 36.983238>,  <44.500084, 34.707794, 36.877335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.705719, 34.771816, 36.983238>,  <45.048443, 34.878517, 37.159744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.705719, 34.771816, 36.983238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187407, 0.636154, -0.748456,
		0.480363, -0.723984, -0.495074,
		-0.856813, -0.266751, -0.441265,
		44.448673, 34.691792, 36.850857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.180370, 34.514046, 36.468075>,  <45.048443, 34.878517, 37.159744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.180370, 34.514046, 36.468075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.826984, 34.700523, 36.449512>,  <44.614952, 34.812408, 36.438374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.826984, 34.700523, 36.449512>,  <45.180370, 34.514046, 36.468075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.826984, 34.700523, 36.449512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333607, 0.556456, -0.760963,
		-0.328932, -0.687765, -0.647134,
		-0.883465, 0.466193, -0.046407,
		44.561943, 34.840382, 36.435589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.551815, 33.918121, 36.106552>,  <45.180370, 34.514046, 36.468075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.551815, 33.918121, 36.106552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.818031, 33.725895, 35.878128>,  <45.977760, 33.610561, 35.741074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.818031, 33.725895, 35.878128>,  <45.551815, 33.918121, 36.106552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.818031, 33.725895, 35.878128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728194, -0.585885, -0.355630,
		-0.163675, 0.652532, -0.739874,
		0.665541, -0.480563, -0.571064,
		46.017693, 33.581726, 35.706810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.190693, 33.713337, 35.500748>,  <45.551815, 33.918121, 36.106552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.190693, 33.713337, 35.500748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.513283, 33.476974, 35.508957>,  <45.706837, 33.335155, 35.513882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.513283, 33.476974, 35.508957>,  <45.190693, 33.713337, 35.500748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.513283, 33.476974, 35.508957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564406, -0.779724, -0.271065,
		0.176178, 0.207024, -0.962342,
		0.806478, -0.590907, 0.020525,
		45.755226, 33.299702, 35.515114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.093578, 33.255417, 34.908337>,  <45.190693, 33.713337, 35.500748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.093578, 33.255417, 34.908337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.339088, 33.062531, 35.158375>,  <45.486397, 32.946800, 35.308395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.339088, 33.062531, 35.158375>,  <45.093578, 33.255417, 34.908337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.339088, 33.062531, 35.158375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502688, -0.849240, -0.161541,
		0.608752, -0.215076, -0.763651,
		0.613780, -0.482217, 0.625093,
		45.523224, 32.917866, 35.345901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.208248, 32.514824, 34.537754>,  <45.093578, 33.255417, 34.908337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.208248, 32.514824, 34.537754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.298889, 32.502178, 34.927143>,  <45.353275, 32.494591, 35.160778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.298889, 32.502178, 34.927143>,  <45.208248, 32.514824, 34.537754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.298889, 32.502178, 34.927143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369422, -0.927580, 0.055872,
		0.901208, -0.372284, -0.221874,
		0.226606, -0.031613, 0.973473,
		45.366871, 32.492695, 35.219185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.637768, 31.987183, 34.634392>,  <45.208248, 32.514824, 34.537754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.637768, 31.987183, 34.634392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.441284, 32.066410, 34.973682>,  <45.323395, 32.113945, 35.177258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.441284, 32.066410, 34.973682>,  <45.637768, 31.987183, 34.634392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.441284, 32.066410, 34.973682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422380, -0.905815, -0.033088,
		0.761780, -0.374526, 0.528604,
		-0.491209, 0.198066, 0.848224,
		45.293922, 32.125832, 35.228149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.736374, 31.368647, 35.160862>,  <45.637768, 31.987183, 34.634392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.736374, 31.368647, 35.160862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.410278, 31.574015, 35.268036>,  <45.214622, 31.697235, 35.332340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.410278, 31.574015, 35.268036>,  <45.736374, 31.368647, 35.160862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.410278, 31.574015, 35.268036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503013, -0.857025, 0.111739,
		0.286995, -0.043680, 0.956936,
		-0.815237, 0.513420, 0.267934,
		45.165707, 31.728041, 35.348415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.666840, 31.060362, 35.802204>,  <45.736374, 31.368647, 35.160862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.666840, 31.060362, 35.802204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.325878, 31.258961, 35.736610>,  <45.121300, 31.378120, 35.697254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.325878, 31.258961, 35.736610>,  <45.666840, 31.060362, 35.802204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.325878, 31.258961, 35.736610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515867, -0.849734, 0.108783,
		-0.085335, 0.177323, 0.980446,
		-0.852408, 0.496497, -0.163987,
		45.070156, 31.407909, 35.687416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.220112, 30.804356, 36.274570>,  <45.666840, 31.060362, 35.802204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.220112, 30.804356, 36.274570> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.961308, 30.980614, 36.025665>,  <44.806026, 31.086369, 35.876324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.961308, 30.980614, 36.025665>,  <45.220112, 30.804356, 36.274570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.961308, 30.980614, 36.025665> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616084, -0.782955, 0.086149,
		-0.449241, 0.439104, 0.778055,
		-0.647011, 0.440645, -0.622261,
		44.767204, 31.112808, 35.838985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.689167, 30.841236, 36.630531>,  <45.220112, 30.804356, 36.274570>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.689167, 30.841236, 36.630531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.547153, 30.892370, 36.260101>,  <44.461945, 30.923050, 36.037846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.547153, 30.892370, 36.260101>,  <44.689167, 30.841236, 36.630531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.547153, 30.892370, 36.260101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753989, -0.624792, 0.202817,
		-0.552675, 0.770255, 0.318209,
		-0.355036, 0.127834, -0.926071,
		44.440643, 30.930721, 35.982281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.987545, 31.151932, 36.608513>,  <44.689167, 30.841236, 36.630531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.987545, 31.151932, 36.608513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.014061, 30.943983, 36.267845>,  <44.029972, 30.819214, 36.063446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.014061, 30.943983, 36.267845>,  <43.987545, 31.151932, 36.608513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.014061, 30.943983, 36.267845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774658, -0.564790, 0.284460,
		-0.628896, 0.640895, -0.440163,
		0.066291, -0.519871, -0.851668,
		44.033947, 30.788021, 36.012344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.329567, 31.198618, 36.432060>,  <43.987545, 31.151932, 36.608513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.329567, 31.198618, 36.432060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.493973, 30.899534, 36.223446>,  <43.592617, 30.720083, 36.098278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.493973, 30.899534, 36.223446>,  <43.329567, 31.198618, 36.432060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.493973, 30.899534, 36.223446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813908, -0.558667, 0.159515,
		-0.410633, 0.358916, -0.838189,
		0.411016, -0.747710, -0.521531,
		43.617279, 30.675220, 36.066986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959377, 31.088314, 35.853897>,  <43.329567, 31.198618, 36.432060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959377, 31.088314, 35.853897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.156887, 30.752804, 35.945675>,  <43.275391, 30.551497, 36.000740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.156887, 30.752804, 35.945675>,  <42.959377, 31.088314, 35.853897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.156887, 30.752804, 35.945675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865094, -0.500612, 0.031627,
		0.088334, -0.214106, -0.972808,
		0.493771, -0.838776, 0.229443,
		43.305019, 30.501171, 36.014507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.622948, 30.550760, 35.555710>,  <42.959377, 31.088314, 35.853897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.622948, 30.550760, 35.555710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.839542, 30.338415, 35.816471>,  <42.969498, 30.211008, 35.972927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.839542, 30.338415, 35.816471>,  <42.622948, 30.550760, 35.555710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.839542, 30.338415, 35.816471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808867, -0.540360, 0.231830,
		0.229192, -0.652835, -0.721995,
		0.541485, -0.530865, 0.651903,
		43.001987, 30.179155, 36.012043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.553101, 29.839577, 35.398319>,  <42.622948, 30.550760, 35.555710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.553101, 29.839577, 35.398319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.679447, 29.816162, 35.777119>,  <42.755257, 29.802114, 36.004398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.679447, 29.816162, 35.777119>,  <42.553101, 29.839577, 35.398319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.679447, 29.816162, 35.777119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789030, -0.570514, 0.227914,
		0.526933, -0.819199, -0.226393,
		0.315868, -0.058535, 0.946996,
		42.774208, 29.798601, 36.061218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456566, 29.193310, 35.602112>,  <42.553101, 29.839577, 35.398319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.456566, 29.193310, 35.602112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.496162, 29.335850, 35.973747>,  <42.519920, 29.421373, 36.196728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.496162, 29.335850, 35.973747>,  <42.456566, 29.193310, 35.602112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.496162, 29.335850, 35.973747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808362, -0.515693, 0.283923,
		0.580303, -0.779150, 0.237011,
		0.098994, 0.356352, 0.929093,
		42.525860, 29.442755, 36.252476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375019, 28.752672, 36.023968>,  <42.456566, 29.193310, 35.602112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375019, 28.752672, 36.023968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.288082, 29.052641, 36.273888>,  <42.235920, 29.232622, 36.423840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.288082, 29.052641, 36.273888>,  <42.375019, 28.752672, 36.023968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.288082, 29.052641, 36.273888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864414, -0.445193, 0.233650,
		0.453377, -0.489307, 0.745001,
		-0.217343, 0.749921, 0.624804,
		42.222878, 29.277617, 36.461330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246872, 28.491867, 36.683220>,  <42.375019, 28.752672, 36.023968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246872, 28.491867, 36.683220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.081760, 28.855726, 36.701775>,  <41.982693, 29.074041, 36.712910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.081760, 28.855726, 36.701775>,  <42.246872, 28.491867, 36.683220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081760, 28.855726, 36.701775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871973, -0.409376, 0.268465,
		0.263200, 0.070367, 0.962172,
		-0.412781, 0.909648, 0.046390,
		41.957928, 29.128620, 36.715691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018272, 28.582432, 37.386890>,  <42.246872, 28.491867, 36.683220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018272, 28.582432, 37.386890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.796829, 28.826796, 37.160507>,  <41.663963, 28.973413, 37.024677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.796829, 28.826796, 37.160507>,  <42.018272, 28.582432, 37.386890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796829, 28.826796, 37.160507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832772, -0.403184, 0.379386,
		0.003584, 0.681347, 0.731952,
		-0.553604, 0.610909, -0.565962,
		41.630749, 29.010069, 36.990719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399998, 28.579184, 37.779884>,  <42.018272, 28.582432, 37.386890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.399998, 28.579184, 37.779884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.278046, 28.740593, 37.434814>,  <41.204872, 28.837439, 37.227772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.278046, 28.740593, 37.434814>,  <41.399998, 28.579184, 37.779884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278046, 28.740593, 37.434814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916691, -0.370008, 0.150900,
		-0.258306, 0.836818, 0.482715,
		-0.304885, 0.403522, -0.862679,
		41.186581, 28.861650, 37.176010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822262, 29.012411, 37.966179>,  <41.399998, 28.579184, 37.779884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822262, 29.012411, 37.966179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.837914, 28.901411, 37.582207>,  <40.847305, 28.834810, 37.351826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.837914, 28.901411, 37.582207>,  <40.822262, 29.012411, 37.966179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837914, 28.901411, 37.582207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814644, -0.565165, 0.130172,
		-0.578640, 0.776906, -0.248180,
		0.039131, -0.277501, -0.959928,
		40.849651, 28.818161, 37.294228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.887520, 34.844856, 41.657520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499310, 34.930225, 41.612740>,  <38.266384, 34.981445, 41.585873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499310, 34.930225, 41.612740>,  <38.887520, 34.844856, 41.657520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499310, 34.930225, 41.612740> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206757, 0.498651, -0.841783,
		-0.123831, -0.840117, -0.528080,
		-0.970524, 0.213423, -0.111952,
		38.208153, 34.994251, 41.579155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706455, 34.799980, 41.051533>,  <38.887520, 34.844856, 41.657520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706455, 34.799980, 41.051533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377731, 35.013317, 41.131706>,  <38.180496, 35.141319, 41.179810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377731, 35.013317, 41.131706>,  <38.706455, 34.799980, 41.051533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377731, 35.013317, 41.131706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015065, 0.331328, -0.943395,
		-0.569560, -0.778313, -0.264254,
		-0.821812, 0.533339, 0.200436,
		38.131187, 35.173317, 41.191837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249153, 34.665283, 40.517914>,  <38.706455, 34.799980, 41.051533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249153, 34.665283, 40.517914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118862, 35.010098, 40.673244>,  <38.040688, 35.216988, 40.766441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118862, 35.010098, 40.673244>,  <38.249153, 34.665283, 40.517914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118862, 35.010098, 40.673244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156714, 0.355816, -0.921323,
		-0.932385, -0.360957, 0.019193,
		-0.325729, 0.862035, 0.388325,
		38.021145, 35.268707, 40.789742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736568, 34.903027, 40.106110>,  <38.249153, 34.665283, 40.517914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736568, 34.903027, 40.106110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848198, 35.239956, 40.290546>,  <37.915176, 35.442112, 40.401207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848198, 35.239956, 40.290546>,  <37.736568, 34.903027, 40.106110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848198, 35.239956, 40.290546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203139, 0.521088, -0.828976,
		-0.938536, 0.137684, 0.316534,
		0.279078, 0.842324, 0.461091,
		37.931923, 35.492653, 40.428875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159702, 35.368324, 39.974136>,  <37.736568, 34.903027, 40.106110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159702, 35.368324, 39.974136> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484653, 35.580246, 40.071583>,  <37.679626, 35.707397, 40.130051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484653, 35.580246, 40.071583>,  <37.159702, 35.368324, 39.974136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484653, 35.580246, 40.071583> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213068, 0.658580, -0.721716,
		-0.542808, 0.534401, 0.647901,
		0.812380, 0.529800, 0.243619,
		37.728367, 35.739185, 40.144669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.896168, 36.044010, 40.041775>,  <37.159702, 35.368324, 39.974136>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.896168, 36.044010, 40.041775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292439, 36.082588, 40.003292>,  <37.530201, 36.105736, 39.980202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292439, 36.082588, 40.003292>,  <36.896168, 36.044010, 40.041775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292439, 36.082588, 40.003292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135104, 0.605091, -0.784609,
		-0.017462, 0.790292, 0.612481,
		0.990678, 0.096449, -0.096205,
		37.589642, 36.111523, 39.974430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016930, 36.691971, 40.119965>,  <36.896168, 36.044010, 40.041775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016930, 36.691971, 40.119965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301308, 36.514938, 39.901360>,  <37.471935, 36.408718, 39.770195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301308, 36.514938, 39.901360>,  <37.016930, 36.691971, 40.119965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301308, 36.514938, 39.901360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243972, 0.573643, -0.781928,
		0.659567, 0.689245, 0.299855,
		0.710950, -0.442577, -0.546513,
		37.514591, 36.382164, 39.737404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320873, 37.278610, 39.884865>,  <37.016930, 36.691971, 40.119965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320873, 37.278610, 39.884865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427517, 36.961273, 39.665947>,  <37.491505, 36.770870, 39.534595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427517, 36.961273, 39.665947>,  <37.320873, 37.278610, 39.884865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427517, 36.961273, 39.665947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124663, 0.534689, -0.835803,
		0.955707, 0.291063, 0.043655,
		0.266614, -0.793341, -0.547291,
		37.507500, 36.723270, 39.501759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940338, 37.525864, 39.564354>,  <37.320873, 37.278610, 39.884865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940338, 37.525864, 39.564354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801331, 37.216049, 39.352951>,  <37.717926, 37.030159, 39.226109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801331, 37.216049, 39.352951>,  <37.940338, 37.525864, 39.564354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.801331, 37.216049, 39.352951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077229, 0.585366, -0.807083,
		0.934489, -0.239656, -0.263240,
		-0.347514, -0.774540, -0.528510,
		37.697075, 36.983688, 39.194397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092724, 37.625309, 38.921143>,  <37.940338, 37.525864, 39.564354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092724, 37.625309, 38.921143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816700, 37.350739, 38.829369>,  <37.651085, 37.185997, 38.774303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816700, 37.350739, 38.829369>,  <38.092724, 37.625309, 38.921143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816700, 37.350739, 38.829369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263934, 0.533841, -0.803338,
		0.673913, -0.493794, -0.549552,
		-0.690057, -0.686426, -0.229434,
		37.609684, 37.144810, 38.760540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019096, 37.640278, 38.279884>,  <38.092724, 37.625309, 38.921143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019096, 37.640278, 38.279884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689491, 37.426739, 38.355801>,  <37.491730, 37.298615, 38.401352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689491, 37.426739, 38.355801>,  <38.019096, 37.640278, 38.279884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689491, 37.426739, 38.355801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480125, 0.480083, -0.734166,
		0.300814, -0.696083, -0.651905,
		-0.824009, -0.533843, 0.189791,
		37.442287, 37.266586, 38.412739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795460, 37.178040, 37.672768>,  <38.019096, 37.640278, 38.279884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795460, 37.178040, 37.672768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486855, 37.283234, 37.904495>,  <37.301693, 37.346348, 38.043533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486855, 37.283234, 37.904495>,  <37.795460, 37.178040, 37.672768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486855, 37.283234, 37.904495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445749, 0.426284, -0.787140,
		-0.453959, -0.865518, -0.211658,
		-0.771510, 0.262983, 0.579320,
		37.255402, 37.362129, 38.078293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654732, 36.784546, 37.013588>,  <37.795460, 37.178040, 37.672768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654732, 36.784546, 37.013588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728943, 36.485874, 37.269104>,  <37.773472, 36.306671, 37.422413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728943, 36.485874, 37.269104>,  <37.654732, 36.784546, 37.013588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728943, 36.485874, 37.269104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431686, -0.645916, -0.629634,
		0.882737, -0.158938, -0.442169,
		0.185531, -0.746680, 0.638786,
		37.784603, 36.261871, 37.460739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940502, 36.293869, 36.658951>,  <37.654732, 36.784546, 37.013588>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940502, 36.293869, 36.658951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795139, 36.115089, 36.985920>,  <37.707924, 36.007820, 37.182102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795139, 36.115089, 36.985920>,  <37.940502, 36.293869, 36.658951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795139, 36.115089, 36.985920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456347, -0.679537, -0.574436,
		0.812211, -0.581779, 0.042982,
		-0.363403, -0.446948, 0.817420,
		37.686119, 35.981007, 37.231148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649300, 36.626228, 36.377216>,  <37.940502, 36.293869, 36.658951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649300, 36.626228, 36.377216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990673, 36.417774, 36.373924>,  <39.195496, 36.292702, 36.371948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990673, 36.417774, 36.373924>,  <38.649300, 36.626228, 36.377216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990673, 36.417774, 36.373924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023636, -0.054479, 0.998235,
		-0.520668, -0.851732, -0.058812,
		0.853432, -0.521139, -0.008234,
		39.246704, 36.261433, 36.371452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666824, 35.890675, 36.530060>,  <38.649300, 36.626228, 36.377216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666824, 35.890675, 36.530060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056038, 35.935318, 36.610802>,  <39.289566, 35.962105, 36.659248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056038, 35.935318, 36.610802>,  <38.666824, 35.890675, 36.530060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056038, 35.935318, 36.610802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100320, -0.583268, 0.806061,
		0.207698, -0.804576, -0.556344,
		0.973035, 0.111605, 0.201858,
		39.347950, 35.968800, 36.671360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985790, 35.214119, 36.683186>,  <38.666824, 35.890675, 36.530060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985790, 35.214119, 36.683186> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238468, 35.472137, 36.855175>,  <39.390076, 35.626949, 36.958366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238468, 35.472137, 36.855175>,  <38.985790, 35.214119, 36.683186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238468, 35.472137, 36.855175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049249, -0.520135, 0.852663,
		0.773650, -0.559800, -0.296800,
		0.631697, 0.645045, 0.429972,
		39.427979, 35.665649, 36.984165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561214, 34.794514, 36.837437>,  <38.985790, 35.214119, 36.683186>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561214, 34.794514, 36.837437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499031, 35.110233, 37.075039>,  <39.461720, 35.299664, 37.217602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499031, 35.110233, 37.075039>,  <39.561214, 34.794514, 36.837437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499031, 35.110233, 37.075039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057707, -0.593036, 0.803105,
		0.986156, 0.159128, 0.046644,
		-0.155458, 0.789295, 0.594008,
		39.452393, 35.347023, 37.253242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967709, 34.722980, 37.351044>,  <39.561214, 34.794514, 36.837437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967709, 34.722980, 37.351044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702362, 34.976612, 37.509979>,  <39.543156, 35.128792, 37.605343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702362, 34.976612, 37.509979>,  <39.967709, 34.722980, 37.351044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702362, 34.976612, 37.509979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084155, -0.590848, 0.802382,
		0.743546, 0.498836, 0.445311,
		-0.663368, 0.634084, 0.397343,
		39.503353, 35.166836, 37.629181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168842, 34.709114, 38.082741>,  <39.967709, 34.722980, 37.351044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168842, 34.709114, 38.082741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820366, 34.902760, 38.050102>,  <39.611279, 35.018948, 38.030521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820366, 34.902760, 38.050102>,  <40.168842, 34.709114, 38.082741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820366, 34.902760, 38.050102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372616, -0.543816, 0.751945,
		0.319653, 0.685493, 0.654157,
		-0.871194, 0.484111, -0.081594,
		39.559010, 35.047993, 38.025623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042431, 34.969734, 38.705990>,  <40.168842, 34.709114, 38.082741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042431, 34.969734, 38.705990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682461, 34.938950, 38.534313>,  <39.466476, 34.920479, 38.431309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682461, 34.938950, 38.534313>,  <40.042431, 34.969734, 38.705990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682461, 34.938950, 38.534313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358639, -0.429194, 0.828958,
		-0.248002, 0.899928, 0.358644,
		-0.899929, -0.076959, -0.429190,
		39.412483, 34.915863, 38.405556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584351, 35.098888, 39.240177>,  <40.042431, 34.969734, 38.705990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584351, 35.098888, 39.240177> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374062, 34.893959, 38.968548>,  <39.247887, 34.771004, 38.805569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374062, 34.893959, 38.968548>,  <39.584351, 35.098888, 39.240177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374062, 34.893959, 38.968548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473611, -0.486840, 0.733948,
		-0.706617, 0.707471, 0.013302,
		-0.525722, -0.512320, -0.679076,
		39.216347, 34.740261, 38.764824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861912, 35.003475, 39.547699>,  <39.584351, 35.098888, 39.240177>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861912, 35.003475, 39.547699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885010, 34.725311, 39.261185>,  <38.898869, 34.558411, 39.089275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885010, 34.725311, 39.261185>,  <38.861912, 35.003475, 39.547699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885010, 34.725311, 39.261185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276305, -0.700590, 0.657897,
		-0.959333, 0.159921, -0.232604,
		0.057749, -0.695412, -0.716287,
		38.902336, 34.516689, 39.046299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283016, 34.567638, 39.670658>,  <38.861912, 35.003475, 39.547699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283016, 34.567638, 39.670658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518597, 34.337837, 39.443295>,  <38.659946, 34.199959, 39.306877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518597, 34.337837, 39.443295>,  <38.283016, 34.567638, 39.670658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518597, 34.337837, 39.443295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105614, -0.752007, 0.650639,
		-0.801236, -0.323165, -0.503572,
		0.588954, -0.574500, -0.568404,
		38.695282, 34.165485, 39.272774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901146, 33.932026, 39.607944>,  <38.283016, 34.567638, 39.670658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901146, 33.932026, 39.607944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266071, 33.834381, 39.476437>,  <38.485027, 33.775795, 39.397530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266071, 33.834381, 39.476437>,  <37.901146, 33.932026, 39.607944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266071, 33.834381, 39.476437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056156, -0.869878, 0.490060,
		-0.405624, -0.428626, -0.807310,
		0.912314, -0.244115, -0.328773,
		38.539764, 33.761147, 39.377804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857117, 33.181206, 39.299950>,  <37.901146, 33.932026, 39.607944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.857117, 33.181206, 39.299950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237602, 33.234795, 39.411118>,  <38.465893, 33.266949, 39.477818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.237602, 33.234795, 39.411118>,  <37.857117, 33.181206, 39.299950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237602, 33.234795, 39.411118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048191, -0.825231, 0.562736,
		0.304734, -0.548678, -0.778518,
		0.951217, 0.133968, 0.277917,
		38.522968, 33.274986, 39.494492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999443, 32.525738, 39.295532>,  <37.857117, 33.181206, 39.299950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999443, 32.525738, 39.295532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280521, 32.707989, 39.514118>,  <38.449169, 32.817337, 39.645267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280521, 32.707989, 39.514118>,  <37.999443, 32.525738, 39.295532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280521, 32.707989, 39.514118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067062, -0.722223, 0.688402,
		0.708319, -0.520386, -0.476951,
		0.702700, 0.455623, 0.546462,
		38.491333, 32.844677, 39.678059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472469, 32.077358, 39.480473>,  <37.999443, 32.525738, 39.295532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472469, 32.077358, 39.480473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484680, 32.347240, 39.775455>,  <38.492008, 32.509171, 39.952446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484680, 32.347240, 39.775455>,  <38.472469, 32.077358, 39.480473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484680, 32.347240, 39.775455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125031, -0.729429, 0.672533,
		0.991683, -0.112738, 0.062089,
		0.030530, 0.674702, 0.737459,
		38.493839, 32.549652, 39.996693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.809917, 31.354815, 39.288158>,  <38.472469, 32.077358, 39.480473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.809917, 31.354815, 39.288158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495739, 31.119267, 39.211937>,  <38.307232, 30.977938, 39.166203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495739, 31.119267, 39.211937>,  <38.809917, 31.354815, 39.288158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495739, 31.119267, 39.211937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366323, 0.690456, -0.623762,
		0.498885, -0.420124, -0.758030,
		-0.785443, -0.588869, -0.190557,
		38.260105, 30.942606, 39.154770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540913, 31.539091, 38.544846>,  <38.809917, 31.354815, 39.288158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540913, 31.539091, 38.544846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228832, 31.353268, 38.712406>,  <38.041584, 31.241774, 38.812943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.228832, 31.353268, 38.712406>,  <38.540913, 31.539091, 38.544846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228832, 31.353268, 38.712406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617547, 0.465358, -0.634096,
		0.099638, -0.753409, -0.649959,
		-0.780197, -0.464560, 0.418898,
		37.994774, 31.213900, 38.838078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183418, 31.317339, 37.950165>,  <38.540913, 31.539091, 38.544846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183418, 31.317339, 37.950165> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923382, 31.312654, 38.254074>,  <37.767361, 31.309845, 38.436420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923382, 31.312654, 38.254074>,  <38.183418, 31.317339, 37.950165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923382, 31.312654, 38.254074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668532, 0.484083, -0.564560,
		-0.361180, -0.874944, -0.322525,
		-0.650087, -0.011710, 0.759769,
		37.728355, 31.309141, 38.482006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493317, 31.029018, 37.647854>,  <38.183418, 31.317339, 37.950165>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493317, 31.029018, 37.647854> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400238, 31.216217, 37.988873>,  <37.344391, 31.328537, 38.193481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400238, 31.216217, 37.988873>,  <37.493317, 31.029018, 37.647854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400238, 31.216217, 37.988873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816218, 0.382669, -0.432842,
		-0.528811, -0.796582, 0.292944,
		-0.232694, 0.467998, 0.852544,
		37.330429, 31.356617, 38.244637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751682, 30.857088, 37.779697>,  <37.493317, 31.029018, 37.647854>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751682, 30.857088, 37.779697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853420, 31.184061, 37.986427>,  <36.914463, 31.380245, 38.110466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853420, 31.184061, 37.986427>,  <36.751682, 30.857088, 37.779697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853420, 31.184061, 37.986427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739440, 0.508807, -0.440844,
		-0.623325, -0.270033, 0.733858,
		0.254350, 0.817434, 0.516825,
		36.929726, 31.429291, 38.141476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146984, 30.963100, 38.108654>,  <36.751682, 30.857088, 37.779697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146984, 30.963100, 38.108654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360851, 31.299873, 38.079594>,  <36.489170, 31.501938, 38.062157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360851, 31.299873, 38.079594>,  <36.146984, 30.963100, 38.108654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360851, 31.299873, 38.079594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800413, 0.476968, -0.363098,
		-0.271054, 0.252285, 0.928914,
		0.534667, 0.841934, -0.072648,
		36.521252, 31.552454, 38.057800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691227, 31.469843, 38.289764>,  <36.146984, 30.963100, 38.108654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691227, 31.469843, 38.289764> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987751, 31.677839, 38.120022>,  <36.165665, 31.802637, 38.018177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987751, 31.677839, 38.120022>,  <35.691227, 31.469843, 38.289764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987751, 31.677839, 38.120022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666683, 0.643457, -0.376160,
		0.077453, 0.561759, 0.823667,
		0.741306, 0.519990, -0.424353,
		36.210144, 31.833836, 37.992718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472168, 32.171230, 38.321926>,  <35.691227, 31.469843, 38.289764>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472168, 32.171230, 38.321926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744450, 32.206028, 38.030975>,  <35.907818, 32.226906, 37.856403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744450, 32.206028, 38.030975>,  <35.472168, 32.171230, 38.321926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744450, 32.206028, 38.030975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608961, 0.619121, -0.495838,
		0.407198, 0.780462, 0.474413,
		0.680702, 0.086995, -0.727376,
		35.948662, 32.232128, 37.812763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473667, 32.858364, 38.185722>,  <35.472168, 32.171230, 38.321926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473667, 32.858364, 38.185722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616287, 32.666973, 37.864742>,  <35.701859, 32.552139, 37.672153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616287, 32.666973, 37.864742>,  <35.473667, 32.858364, 38.185722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616287, 32.666973, 37.864742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466534, 0.652968, -0.596640,
		0.809454, 0.587104, 0.009591,
		0.356553, -0.478478, -0.802452,
		35.723251, 32.523430, 37.624008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521439, 33.370949, 37.786110>,  <35.473667, 32.858364, 38.185722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521439, 33.370949, 37.786110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555477, 33.073532, 37.520809>,  <35.575901, 32.895081, 37.361629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555477, 33.073532, 37.520809>,  <35.521439, 33.370949, 37.786110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555477, 33.073532, 37.520809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457035, 0.562372, -0.689098,
		0.885368, 0.361771, -0.291967,
		0.085101, -0.743545, -0.663248,
		35.581009, 32.850468, 37.321835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789604, 33.685535, 37.188644>,  <35.521439, 33.370949, 37.786110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789604, 33.685535, 37.188644> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619247, 33.337730, 37.088589>,  <35.517033, 33.129047, 37.028553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619247, 33.337730, 37.088589>,  <35.789604, 33.685535, 37.188644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.619247, 33.337730, 37.088589> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411066, 0.432240, -0.802617,
		0.806004, -0.239002, -0.541512,
		-0.425891, -0.869509, -0.250142,
		35.491482, 33.076878, 37.013546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156017, 33.378063, 36.520580>,  <35.789604, 33.685535, 37.188644>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156017, 33.378063, 36.520580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773762, 33.265724, 36.556095>,  <35.544411, 33.198318, 36.577404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773762, 33.265724, 36.556095>,  <36.156017, 33.378063, 36.520580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773762, 33.265724, 36.556095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242600, 0.579524, -0.778008,
		0.167050, -0.765032, -0.621948,
		-0.955636, -0.280851, 0.088788,
		35.487072, 33.181469, 36.582733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.403976, 28.312624, 40.626793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.036037, 28.251022, 40.771107>,  <39.815273, 28.214062, 40.857697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.036037, 28.251022, 40.771107>,  <40.403976, 28.312624, 40.626793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036037, 28.251022, 40.771107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329217, 0.803168, -0.496525,
		-0.213305, -0.575504, -0.789491,
		-0.919846, -0.154003, 0.360786,
		39.760082, 28.204821, 40.879341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956406, 28.101818, 40.138893>,  <40.403976, 28.312624, 40.626793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956406, 28.101818, 40.138893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.687653, 28.227701, 40.407082>,  <39.526402, 28.303232, 40.567993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.687653, 28.227701, 40.407082>,  <39.956406, 28.101818, 40.138893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687653, 28.227701, 40.407082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417164, 0.587202, -0.693663,
		-0.612005, -0.745756, -0.263245,
		-0.671882, 0.314709, 0.670473,
		39.486088, 28.322113, 40.608223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260136, 28.041027, 39.810883>,  <39.956406, 28.101818, 40.138893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260136, 28.041027, 39.810883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.244228, 28.315109, 40.101788>,  <39.234684, 28.479559, 40.276329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.244228, 28.315109, 40.101788>,  <39.260136, 28.041027, 39.810883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244228, 28.315109, 40.101788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495737, 0.618415, -0.609761,
		-0.867562, -0.384780, 0.315088,
		-0.039769, 0.685206, 0.727263,
		39.232296, 28.520672, 40.319965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708565, 28.352732, 39.656609>,  <39.260136, 28.041027, 39.810883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708565, 28.352732, 39.656609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.841377, 28.614521, 39.928318>,  <38.921066, 28.771595, 40.091343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.841377, 28.614521, 39.928318>,  <38.708565, 28.352732, 39.656609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841377, 28.614521, 39.928318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615290, 0.696108, -0.369935,
		-0.714964, -0.295123, 0.633821,
		0.332032, 0.654474, 0.679278,
		38.940987, 28.810863, 40.132103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166660, 28.607672, 40.041748>,  <38.708565, 28.352732, 39.656609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166660, 28.607672, 40.041748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.456509, 28.878527, 40.092983>,  <38.630417, 29.041039, 40.123726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.456509, 28.878527, 40.092983>,  <38.166660, 28.607672, 40.041748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456509, 28.878527, 40.092983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571676, 0.694430, -0.436982,
		-0.384846, 0.243422, 0.890303,
		0.724624, 0.677136, 0.128090,
		38.673897, 29.081667, 40.131409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834316, 29.266932, 40.265503>,  <38.166660, 28.607672, 40.041748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834316, 29.266932, 40.265503> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.190842, 29.389288, 40.131645>,  <38.404758, 29.462702, 40.051331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.190842, 29.389288, 40.131645>,  <37.834316, 29.266932, 40.265503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190842, 29.389288, 40.131645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444791, 0.732962, -0.514711,
		0.087832, 0.607616, 0.789360,
		0.891317, 0.305892, -0.334640,
		38.458237, 29.481056, 40.031254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941540, 29.918100, 40.413227>,  <37.834316, 29.266932, 40.265503>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941540, 29.918100, 40.413227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.243156, 29.891821, 40.151814>,  <38.424126, 29.876053, 39.994965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.243156, 29.891821, 40.151814>,  <37.941540, 29.918100, 40.413227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243156, 29.891821, 40.151814> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435087, 0.695425, -0.571912,
		0.492057, 0.715589, 0.495795,
		0.754042, -0.065699, -0.653532,
		38.469368, 29.872110, 39.955753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249054, 30.667507, 40.336628>,  <37.941540, 29.918100, 40.413227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249054, 30.667507, 40.336628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.319233, 30.482164, 39.989178>,  <38.361340, 30.370958, 39.780708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.319233, 30.482164, 39.989178>,  <38.249054, 30.667507, 40.336628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319233, 30.482164, 39.989178> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357941, 0.791909, -0.494730,
		0.917113, 0.397717, -0.026916,
		0.175447, -0.463358, -0.868630,
		38.371868, 30.343157, 39.728588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634029, 31.153236, 39.957699>,  <38.249054, 30.667507, 40.336628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634029, 31.153236, 39.957699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.472931, 30.893559, 39.699600>,  <38.376270, 30.737751, 39.544743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.472931, 30.893559, 39.699600>,  <38.634029, 31.153236, 39.957699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472931, 30.893559, 39.699600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192608, 0.749271, -0.633636,
		0.894815, -0.130917, -0.426809,
		-0.402749, -0.649194, -0.645244,
		38.352108, 30.698801, 39.506027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026012, 31.783899, 39.968796>,  <38.634029, 31.153236, 39.957699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026012, 31.783899, 39.968796> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.803707, 32.042198, 40.178226>,  <38.670322, 32.197178, 40.303886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.803707, 32.042198, 40.178226>,  <39.026012, 31.783899, 39.968796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803707, 32.042198, 40.178226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119303, -0.685233, 0.718487,
		0.822733, 0.336847, 0.457869,
		-0.555767, 0.645748, 0.523577,
		38.636978, 32.235924, 40.335300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242302, 31.557825, 40.588707>,  <39.026012, 31.783899, 39.968796>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242302, 31.557825, 40.588707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.935589, 31.790794, 40.696655>,  <38.751560, 31.930576, 40.761425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.935589, 31.790794, 40.696655>,  <39.242302, 31.557825, 40.588707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935589, 31.790794, 40.696655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000142, -0.420262, 0.907403,
		0.641907, 0.695819, 0.322167,
		-0.766782, 0.582422, 0.269868,
		38.705555, 31.965521, 40.777615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429531, 31.973766, 41.255337>,  <39.242302, 31.557825, 40.588707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429531, 31.973766, 41.255337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.034588, 31.929590, 41.209858>,  <38.797623, 31.903086, 41.182571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.034588, 31.929590, 41.209858>,  <39.429531, 31.973766, 41.255337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034588, 31.929590, 41.209858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050889, -0.458492, 0.887241,
		-0.150117, 0.881810, 0.447075,
		-0.987358, -0.110438, -0.113701,
		38.738380, 31.896460, 41.175747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.131237, 32.244183, 41.848476>,  <39.429531, 31.973766, 41.255337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.131237, 32.244183, 41.848476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.860531, 31.999556, 41.684536>,  <38.698109, 31.852779, 41.586170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.860531, 31.999556, 41.684536>,  <39.131237, 32.244183, 41.848476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860531, 31.999556, 41.684536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159411, -0.421775, 0.892577,
		-0.718737, 0.669397, 0.187951,
		-0.676761, -0.611566, -0.409854,
		38.657501, 31.816086, 41.561581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471695, 32.263668, 42.333416>,  <39.131237, 32.244183, 41.848476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471695, 32.263668, 42.333416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.462761, 31.925316, 42.120251>,  <38.457401, 31.722305, 41.992352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.462761, 31.925316, 42.120251>,  <38.471695, 32.263668, 42.333416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462761, 31.925316, 42.120251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247298, -0.511806, 0.822738,
		-0.968682, 0.150162, -0.197753,
		-0.022333, -0.845876, -0.532912,
		38.456062, 31.671553, 41.960377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001770, 31.962799, 42.615780>,  <38.471695, 32.263668, 42.333416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001770, 31.962799, 42.615780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.158989, 31.650324, 42.421764>,  <38.253319, 31.462839, 42.305355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.158989, 31.650324, 42.421764>,  <38.001770, 31.962799, 42.615780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158989, 31.650324, 42.421764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325644, -0.611559, 0.721077,
		-0.859924, -0.125468, -0.494761,
		0.393047, -0.781187, -0.485036,
		38.276905, 31.415968, 42.276253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519650, 31.426603, 42.793694>,  <38.001770, 31.962799, 42.615780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519650, 31.426603, 42.793694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.811684, 31.222368, 42.612026>,  <37.986904, 31.099827, 42.503025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.811684, 31.222368, 42.612026>,  <37.519650, 31.426603, 42.793694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811684, 31.222368, 42.612026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018841, -0.649325, 0.760278,
		-0.683099, -0.563622, -0.464440,
		0.730082, -0.510595, -0.454173,
		38.030708, 31.069191, 42.475777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306580, 30.731937, 42.789234>,  <37.519650, 31.426603, 42.793694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306580, 30.731937, 42.789234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.705097, 30.731451, 42.754822>,  <37.944206, 30.731159, 42.734173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.705097, 30.731451, 42.754822>,  <37.306580, 30.731937, 42.789234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705097, 30.731451, 42.754822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049887, -0.806535, 0.589077,
		-0.070106, -0.591185, -0.803483,
		0.996291, -0.001214, -0.086035,
		38.003986, 30.731087, 42.729012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500542, 30.075573, 43.011513>,  <37.306580, 30.731937, 42.789234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500542, 30.075573, 43.011513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.849174, 30.268827, 43.044781>,  <38.058353, 30.384781, 43.064739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.849174, 30.268827, 43.044781>,  <37.500542, 30.075573, 43.011513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849174, 30.268827, 43.044781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246723, -0.578877, 0.777194,
		0.423634, -0.656872, -0.623742,
		0.871586, 0.483137, 0.083167,
		38.110649, 30.413769, 43.069729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027241, 29.589561, 43.175083>,  <37.500542, 30.075573, 43.011513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027241, 29.589561, 43.175083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.193058, 29.934244, 43.292118>,  <38.292549, 30.141054, 43.362339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.193058, 29.934244, 43.292118>,  <38.027241, 29.589561, 43.175083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.193058, 29.934244, 43.292118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358790, -0.450236, 0.817654,
		0.836314, -0.233977, -0.495816,
		0.414546, 0.861709, 0.292590,
		38.317421, 30.192757, 43.379894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742764, 29.400461, 43.297596>,  <38.027241, 29.589561, 43.175083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742764, 29.400461, 43.297596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.685341, 29.751225, 43.481083>,  <38.650887, 29.961683, 43.591175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.685341, 29.751225, 43.481083>,  <38.742764, 29.400461, 43.297596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685341, 29.751225, 43.481083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585258, -0.298553, 0.753883,
		0.798038, 0.376692, -0.470359,
		-0.143555, 0.876909, 0.458719,
		38.642273, 30.014297, 43.618698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391369, 29.590923, 43.528751>,  <38.742764, 29.400461, 43.297596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391369, 29.590923, 43.528751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.145615, 29.811888, 43.754097>,  <38.998161, 29.944466, 43.889305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.145615, 29.811888, 43.754097>,  <39.391369, 29.590923, 43.528751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145615, 29.811888, 43.754097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602359, -0.132776, 0.787105,
		0.509606, 0.822930, -0.251174,
		-0.614382, 0.552410, 0.563362,
		38.961300, 29.977612, 43.923107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801117, 30.108603, 43.967216>,  <39.391369, 29.590923, 43.528751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801117, 30.108603, 43.967216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.447498, 30.044142, 44.142715>,  <39.235329, 30.005465, 44.248016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.447498, 30.044142, 44.142715>,  <39.801117, 30.108603, 43.967216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447498, 30.044142, 44.142715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451548, -0.052012, 0.890729,
		-0.120722, 0.985558, 0.118749,
		-0.884042, -0.161152, 0.438748,
		39.182285, 29.995796, 44.274342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892796, 30.419142, 44.515366>,  <39.801117, 30.108603, 43.967216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892796, 30.419142, 44.515366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.593304, 30.162718, 44.582825>,  <39.413609, 30.008863, 44.623299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.593304, 30.162718, 44.582825>,  <39.892796, 30.419142, 44.515366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593304, 30.162718, 44.582825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390582, -0.221097, 0.893623,
		-0.535579, 0.734954, 0.415929,
		-0.748733, -0.641060, 0.168645,
		39.368683, 29.970400, 44.633419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.650173, 30.163666, 46.158760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.988117, 30.361013, 46.076004>,  <34.190884, 30.479422, 46.026352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.988117, 30.361013, 46.076004>,  <33.650173, 30.163666, 46.158760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988117, 30.361013, 46.076004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429306, 0.394457, -0.812465,
		-0.319238, 0.775235, 0.545067,
		0.844857, 0.493370, -0.206887,
		34.241573, 30.509024, 46.013939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509739, 30.942116, 46.056973>,  <33.650173, 30.163666, 46.158760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509739, 30.942116, 46.056973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.871223, 30.897198, 45.891716>,  <34.088116, 30.870247, 45.792561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.871223, 30.897198, 45.891716>,  <33.509739, 30.942116, 46.056973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871223, 30.897198, 45.891716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311625, 0.489182, -0.814611,
		0.293581, 0.864922, 0.407087,
		0.903715, -0.112296, -0.413146,
		34.142338, 30.863508, 45.767773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729858, 31.684227, 45.862202>,  <33.509739, 30.942116, 46.056973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729858, 31.684227, 45.862202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.900005, 31.403212, 45.633991>,  <34.002094, 31.234602, 45.497063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.900005, 31.403212, 45.633991>,  <33.729858, 31.684227, 45.862202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900005, 31.403212, 45.633991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357827, 0.448484, -0.819037,
		0.831279, 0.552541, -0.060617,
		0.425365, -0.702539, -0.570529,
		34.027615, 31.192450, 45.462833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032852, 32.056202, 45.267258>,  <33.729858, 31.684227, 45.862202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032852, 32.056202, 45.267258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.053715, 31.691624, 45.104015>,  <34.066231, 31.472878, 45.006069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.053715, 31.691624, 45.104015>,  <34.032852, 32.056202, 45.267258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053715, 31.691624, 45.104015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152209, 0.396630, -0.905272,
		0.986971, 0.109333, -0.118043,
		0.052157, -0.911445, -0.408104,
		34.069363, 31.418190, 44.981583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602894, 32.036766, 44.695477>,  <34.032852, 32.056202, 45.267258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602894, 32.036766, 44.695477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.345074, 31.747150, 44.597237>,  <34.190380, 31.573381, 44.538292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.345074, 31.747150, 44.597237>,  <34.602894, 32.036766, 44.695477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345074, 31.747150, 44.597237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008846, 0.328273, -0.944542,
		0.764508, -0.606636, -0.217995,
		-0.644554, -0.724038, -0.245600,
		34.151707, 31.529940, 44.523556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846020, 31.681206, 44.092690>,  <34.602894, 32.036766, 44.695477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846020, 31.681206, 44.092690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.457268, 31.588614, 44.075417>,  <34.224018, 31.533058, 44.065052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.457268, 31.588614, 44.075417>,  <34.846020, 31.681206, 44.092690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457268, 31.588614, 44.075417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046990, 0.370355, -0.927701,
		0.230735, -0.899586, -0.370818,
		-0.971882, -0.231478, -0.043182,
		34.165703, 31.519169, 44.062462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800957, 31.433260, 43.432232>,  <34.846020, 31.681206, 44.092690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800957, 31.433260, 43.432232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.444908, 31.555813, 43.567177>,  <34.231281, 31.629345, 43.648144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.444908, 31.555813, 43.567177>,  <34.800957, 31.433260, 43.432232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444908, 31.555813, 43.567177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145939, 0.509660, -0.847908,
		-0.431728, -0.803975, -0.408945,
		-0.890120, 0.306384, 0.337366,
		34.177872, 31.647728, 43.668388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570728, 31.624609, 42.770679>,  <34.800957, 31.433260, 43.432232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570728, 31.624609, 42.770679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.273315, 31.753365, 43.005131>,  <34.094868, 31.830618, 43.145802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.273315, 31.753365, 43.005131>,  <34.570728, 31.624609, 42.770679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273315, 31.753365, 43.005131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281818, 0.644042, -0.711188,
		-0.606418, -0.693972, -0.388150,
		-0.743529, 0.321890, 0.586133,
		34.050255, 31.849932, 43.180969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926601, 31.588659, 42.356838>,  <34.570728, 31.624609, 42.770679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926601, 31.588659, 42.356838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.840584, 31.854219, 42.643330>,  <33.788971, 32.013557, 42.815224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.840584, 31.854219, 42.643330>,  <33.926601, 31.588659, 42.356838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840584, 31.854219, 42.643330> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317943, 0.645844, -0.694117,
		-0.923400, -0.376988, 0.072197,
		-0.215046, 0.663902, 0.716233,
		33.776070, 32.053391, 42.858200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219555, 31.786707, 42.316383>,  <33.926601, 31.588659, 42.356838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219555, 31.786707, 42.316383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.405334, 32.082195, 42.511761>,  <33.516800, 32.259487, 42.628986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.405334, 32.082195, 42.511761>,  <33.219555, 31.786707, 42.316383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405334, 32.082195, 42.511761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304905, 0.651205, -0.694956,
		-0.831459, 0.173839, 0.527689,
		0.464445, 0.738723, 0.488446,
		33.544666, 32.303814, 42.658295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787624, 32.420296, 42.360760>,  <33.219555, 31.786707, 42.316383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787624, 32.420296, 42.360760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.167248, 32.538502, 42.404510>,  <33.395020, 32.609425, 42.430763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.167248, 32.538502, 42.404510>,  <32.787624, 32.420296, 42.360760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167248, 32.538502, 42.404510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160366, 0.751765, -0.639635,
		-0.271253, 0.589507, 0.760857,
		0.949054, 0.295519, 0.109381,
		33.451965, 32.627159, 42.437325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720856, 33.087955, 42.440414>,  <32.787624, 32.420296, 42.360760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720856, 33.087955, 42.440414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.115131, 33.093609, 42.373215>,  <33.351696, 33.097000, 42.332893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.115131, 33.093609, 42.373215>,  <32.720856, 33.087955, 42.440414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115131, 33.093609, 42.373215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117221, 0.773670, -0.622651,
		0.121179, 0.633431, 0.764252,
		0.985685, 0.014134, -0.168004,
		33.410835, 33.097851, 42.322815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921741, 33.808411, 42.469124>,  <32.720856, 33.087955, 42.440414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921741, 33.808411, 42.469124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.196770, 33.604107, 42.262680>,  <33.361786, 33.481525, 42.138813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.196770, 33.604107, 42.262680>,  <32.921741, 33.808411, 42.469124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196770, 33.604107, 42.262680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041454, 0.737232, -0.674367,
		0.724934, 0.442280, 0.528071,
		0.687570, -0.510762, -0.516110,
		33.403042, 33.450878, 42.107845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340866, 34.335438, 42.232349>,  <32.921741, 33.808411, 42.469124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340866, 34.335438, 42.232349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.414993, 34.031994, 41.982494>,  <33.459469, 33.849930, 41.832581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.414993, 34.031994, 41.982494>,  <33.340866, 34.335438, 42.232349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414993, 34.031994, 41.982494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009724, 0.634203, -0.773105,
		0.982630, 0.149347, 0.110155,
		0.185322, -0.758605, -0.624639,
		33.470589, 33.804413, 41.795101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923016, 34.541759, 42.545055>,  <33.340866, 34.335438, 42.232349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923016, 34.541759, 42.545055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.228779, 34.792770, 42.604248>,  <34.412235, 34.943375, 42.639763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.228779, 34.792770, 42.604248>,  <33.923016, 34.541759, 42.545055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228779, 34.792770, 42.604248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213288, -0.462722, 0.860463,
		0.608437, -0.626179, -0.487550,
		0.764404, 0.627525, 0.147981,
		34.458099, 34.981030, 42.648643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509060, 34.135330, 42.733440>,  <33.923016, 34.541759, 42.545055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509060, 34.135330, 42.733440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.599754, 34.498795, 42.873688>,  <34.654171, 34.716873, 42.957836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.599754, 34.498795, 42.873688>,  <34.509060, 34.135330, 42.733440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599754, 34.498795, 42.873688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272108, -0.404760, 0.872999,
		0.935174, -0.102530, -0.339025,
		0.226732, 0.908657, 0.350622,
		34.667774, 34.771393, 42.978874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214539, 34.146786, 43.033821>,  <34.509060, 34.135330, 42.733440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214539, 34.146786, 43.033821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.012089, 34.441307, 43.213463>,  <34.890621, 34.618019, 43.321247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.012089, 34.441307, 43.213463>,  <35.214539, 34.146786, 43.033821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012089, 34.441307, 43.213463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341036, -0.307430, 0.888359,
		0.792171, 0.602780, -0.095509,
		-0.506123, 0.736304, 0.449106,
		34.860252, 34.662197, 43.348194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735004, 34.541008, 43.294930>,  <35.214539, 34.146786, 43.033821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735004, 34.541008, 43.294930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.415794, 34.648239, 43.510818>,  <35.224270, 34.712578, 43.640350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.415794, 34.648239, 43.510818>,  <35.735004, 34.541008, 43.294930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415794, 34.648239, 43.510818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464038, -0.298054, 0.834165,
		0.384486, 0.916132, 0.113456,
		-0.798022, 0.268077, 0.539718,
		35.176388, 34.728661, 43.672733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000488, 34.882782, 43.807617>,  <35.735004, 34.541008, 43.294930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000488, 34.882782, 43.807617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.640511, 34.873405, 43.981766>,  <35.424522, 34.867779, 44.086254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.640511, 34.873405, 43.981766>,  <36.000488, 34.882782, 43.807617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640511, 34.873405, 43.981766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400444, -0.439417, 0.804088,
		0.172463, 0.897978, 0.404837,
		-0.899945, -0.023439, 0.435372,
		35.370525, 34.866375, 44.112377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014549, 35.258553, 44.567383>,  <36.000488, 34.882782, 43.807617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014549, 35.258553, 44.567383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.722534, 34.986095, 44.545151>,  <35.547325, 34.822620, 44.531811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.722534, 34.986095, 44.545151>,  <36.014549, 35.258553, 44.567383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722534, 34.986095, 44.545151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330442, -0.423007, 0.843726,
		-0.598203, 0.597591, 0.533890,
		-0.730042, -0.681139, -0.055575,
		35.503521, 34.781754, 44.528477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715954, 35.184696, 45.271206>,  <36.014549, 35.258553, 44.567383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.715954, 35.184696, 45.271206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.595505, 34.855930, 45.077805>,  <35.523235, 34.658669, 44.961765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.595505, 34.855930, 45.077805>,  <35.715954, 35.184696, 45.271206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595505, 34.855930, 45.077805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184845, -0.547731, 0.815980,
		-0.935497, 0.156341, 0.316864,
		-0.301127, -0.821917, -0.483502,
		35.505165, 34.609356, 44.932755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185402, 34.861176, 45.609158>,  <35.715954, 35.184696, 45.271206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185402, 34.861176, 45.609158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.348335, 34.558872, 45.404057>,  <35.446095, 34.377491, 45.280998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.348335, 34.558872, 45.404057>,  <35.185402, 34.861176, 45.609158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348335, 34.558872, 45.404057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124918, -0.510055, 0.851023,
		-0.904696, -0.410702, -0.113355,
		0.407334, -0.755757, -0.512748,
		35.470535, 34.332146, 45.250233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971264, 34.379692, 45.988934>,  <35.185402, 34.861176, 45.609158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971264, 34.379692, 45.988934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.235786, 34.192829, 45.754177>,  <35.394501, 34.080711, 45.613323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.235786, 34.192829, 45.754177>,  <34.971264, 34.379692, 45.988934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235786, 34.192829, 45.754177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231147, -0.617412, 0.751913,
		-0.713617, -0.632900, -0.300314,
		0.661303, -0.467161, -0.586889,
		35.434177, 34.052681, 45.578110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876148, 33.675743, 46.000889>,  <34.971264, 34.379692, 45.988934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876148, 33.675743, 46.000889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.261990, 33.716068, 45.903423>,  <35.493496, 33.740261, 45.844944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.261990, 33.716068, 45.903423>,  <34.876148, 33.675743, 46.000889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261990, 33.716068, 45.903423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245091, -0.683655, 0.687420,
		-0.097280, -0.722809, -0.684166,
		0.964607, 0.100811, -0.243660,
		35.551373, 33.746311, 45.830326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166969, 33.048065, 46.066322>,  <34.876148, 33.675743, 46.000889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166969, 33.048065, 46.066322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.489326, 33.283550, 46.091446>,  <35.682743, 33.424843, 46.106522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.489326, 33.283550, 46.091446>,  <35.166969, 33.048065, 46.066322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489326, 33.283550, 46.091446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362801, -0.574890, 0.733401,
		0.467873, -0.568259, -0.676888,
		0.805897, 0.588714, 0.062810,
		35.731094, 33.460163, 46.110291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747223, 32.608494, 46.027653>,  <35.166969, 33.048065, 46.066322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747223, 32.608494, 46.027653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.874516, 32.941490, 46.209068>,  <35.950890, 33.141289, 46.317917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.874516, 32.941490, 46.209068>,  <35.747223, 32.608494, 46.027653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874516, 32.941490, 46.209068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338671, -0.546669, 0.765804,
		0.885456, -0.090103, -0.455905,
		0.318230, 0.832487, 0.453536,
		35.969986, 33.191235, 46.345131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436672, 32.517990, 46.090046>,  <35.747223, 32.608494, 46.027653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436672, 32.517990, 46.090046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.324436, 32.772289, 46.377686>,  <36.257095, 32.924870, 46.550270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.324436, 32.772289, 46.377686>,  <36.436672, 32.517990, 46.090046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324436, 32.772289, 46.377686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402960, -0.601946, 0.689409,
		0.871145, 0.483207, -0.087280,
		-0.280589, 0.635745, 0.719095,
		36.240261, 32.963013, 46.593414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007530, 32.691368, 46.499104>,  <36.436672, 32.517990, 46.090046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007530, 32.691368, 46.499104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.679073, 32.745617, 46.720852>,  <36.481998, 32.778168, 46.853901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.679073, 32.745617, 46.720852>,  <37.007530, 32.691368, 46.499104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679073, 32.745617, 46.720852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413250, -0.528665, 0.741443,
		0.393637, 0.837926, 0.378062,
		-0.821142, 0.135625, 0.554375,
		36.432732, 32.786304, 46.887165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713924, 32.968655, 46.753082>,  <37.007530, 32.691368, 46.499104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713924, 32.968655, 46.753082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.018402, 32.754917, 46.606083>,  <38.201088, 32.626675, 46.517883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.018402, 32.754917, 46.606083>,  <37.713924, 32.968655, 46.753082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018402, 32.754917, 46.606083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105878, 0.456667, -0.883315,
		0.639819, 0.711286, 0.291038,
		0.761197, -0.534347, -0.367494,
		38.246761, 32.594612, 46.495834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086079, 33.468998, 46.335258>,  <37.713924, 32.968655, 46.753082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086079, 33.468998, 46.335258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.226337, 33.116440, 46.208645>,  <38.310493, 32.904907, 46.132675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.226337, 33.116440, 46.208645>,  <38.086079, 33.468998, 46.335258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226337, 33.116440, 46.208645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059245, 0.316440, -0.946761,
		0.934631, 0.350735, 0.058742,
		0.350650, -0.881391, -0.316534,
		38.331532, 32.852024, 46.113686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713097, 33.603580, 45.949104>,  <38.086079, 33.468998, 46.335258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713097, 33.603580, 45.949104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.559399, 33.256046, 45.824219>,  <38.467178, 33.047527, 45.749287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.559399, 33.256046, 45.824219>,  <38.713097, 33.603580, 45.949104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559399, 33.256046, 45.824219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033305, 0.324914, -0.945157,
		0.922628, -0.373574, -0.095911,
		-0.384249, -0.868834, -0.312217,
		38.444122, 32.995396, 45.730553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070225, 33.432465, 45.285229>,  <38.713097, 33.603580, 45.949104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070225, 33.432465, 45.285229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.783985, 33.154064, 45.261543>,  <38.612240, 32.987026, 45.247330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.783985, 33.154064, 45.261543>,  <39.070225, 33.432465, 45.285229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783985, 33.154064, 45.261543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047613, 0.035978, -0.998218,
		0.696887, -0.717142, 0.007393,
		-0.715598, -0.695997, -0.059217,
		38.569305, 32.945267, 45.243778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222172, 32.992550, 44.719547>,  <39.070225, 33.432465, 45.285229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222172, 32.992550, 44.719547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.824825, 32.985027, 44.764923>,  <38.586418, 32.980515, 44.792149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.824825, 32.985027, 44.764923>,  <39.222172, 32.992550, 44.719547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824825, 32.985027, 44.764923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114437, 0.258237, -0.959280,
		-0.011255, -0.965899, -0.258676,
		-0.993367, -0.018805, 0.113441,
		38.526814, 32.979385, 44.798954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854092, 32.623840, 44.091595>,  <39.222172, 32.992550, 44.719547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854092, 32.623840, 44.091595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.611977, 32.878223, 44.283089>,  <38.466709, 33.030853, 44.397987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.611977, 32.878223, 44.283089>,  <38.854092, 32.623840, 44.091595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.611977, 32.878223, 44.283089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232564, 0.433898, -0.870429,
		-0.761278, -0.638195, -0.114732,
		-0.605285, 0.635956, 0.478738,
		38.430389, 33.069012, 44.426712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445412, 32.865097, 43.583424>,  <38.854092, 32.623840, 44.091595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445412, 32.865097, 43.583424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.313858, 33.103855, 43.876148>,  <38.234924, 33.247108, 44.051785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.313858, 33.103855, 43.876148>,  <38.445412, 32.865097, 43.583424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313858, 33.103855, 43.876148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307232, 0.665141, -0.680585,
		-0.892998, -0.448669, -0.035369,
		-0.328883, 0.596894, 0.731815,
		38.215195, 33.282925, 44.095692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720142, 32.946590, 43.517403>,  <38.445412, 32.865097, 43.583424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720142, 32.946590, 43.517403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.875023, 33.263512, 43.706009>,  <37.967953, 33.453663, 43.819172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.875023, 33.263512, 43.706009>,  <37.720142, 32.946590, 43.517403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875023, 33.263512, 43.706009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386344, 0.603773, -0.697279,
		-0.837146, 0.087820, 0.539883,
		0.387202, 0.792305, 0.471517,
		37.991184, 33.501202, 43.847466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139843, 33.427620, 43.447956>,  <37.720142, 32.946590, 43.517403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139843, 33.427620, 43.447956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.459072, 33.638943, 43.563862>,  <37.650612, 33.765736, 43.633404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.459072, 33.638943, 43.563862>,  <37.139843, 33.427620, 43.447956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459072, 33.638943, 43.563862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236314, 0.716790, -0.656025,
		-0.554283, 0.455083, 0.696900,
		0.798076, 0.528311, 0.289761,
		37.698494, 33.797436, 43.650791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933136, 34.184059, 43.566940>,  <37.139843, 33.427620, 43.447956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933136, 34.184059, 43.566940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.326099, 34.183029, 43.492260>,  <37.561878, 34.182411, 43.447453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.326099, 34.183029, 43.492260>,  <36.933136, 34.184059, 43.566940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326099, 34.183029, 43.492260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118367, 0.764731, -0.633384,
		0.144410, 0.644344, 0.750977,
		0.982413, -0.002576, -0.186704,
		37.620823, 34.182255, 43.436249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114445, 34.899105, 43.533611>,  <36.933136, 34.184059, 43.566940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114445, 34.899105, 43.533611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.400013, 34.700470, 43.336143>,  <37.571354, 34.581287, 43.217663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.400013, 34.700470, 43.336143>,  <37.114445, 34.899105, 43.533611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400013, 34.700470, 43.336143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050891, 0.666358, -0.743894,
		0.698371, 0.556207, 0.450457,
		0.713924, -0.496589, -0.493671,
		37.614189, 34.551495, 43.188042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524307, 35.436913, 43.416054>,  <37.114445, 34.899105, 43.533611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524307, 35.436913, 43.416054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.626907, 35.154526, 43.151989>,  <37.688469, 34.985092, 42.993549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.626907, 35.154526, 43.151989>,  <37.524307, 35.436913, 43.416054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626907, 35.154526, 43.151989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030199, 0.676826, -0.735523,
		0.966072, 0.208600, 0.152288,
		0.256503, -0.705969, -0.660162,
		37.703857, 34.942734, 42.953941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123363, 35.677769, 43.010246>,  <37.524307, 35.436913, 43.416054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123363, 35.677769, 43.010246> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.989189, 35.389397, 42.767681>,  <37.908684, 35.216373, 42.622143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.989189, 35.389397, 42.767681>,  <38.123363, 35.677769, 43.010246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989189, 35.389397, 42.767681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232037, 0.560653, -0.794876,
		0.913038, -0.407344, -0.020783,
		-0.335440, -0.720930, -0.606416,
		37.888557, 35.173119, 42.585754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673145, 35.542492, 42.473614>,  <38.123363, 35.677769, 43.010246>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673145, 35.542492, 42.473614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.327923, 35.411213, 42.320034>,  <38.120789, 35.332443, 42.227886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.327923, 35.411213, 42.320034>,  <38.673145, 35.542492, 42.473614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327923, 35.411213, 42.320034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245963, 0.390856, -0.886980,
		0.441179, -0.859951, -0.256605,
		-0.863055, -0.328201, -0.383953,
		38.069008, 35.312752, 42.204849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.387419, 39.981697, 39.664276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.151581, 40.229202, 39.456619>,  <30.010078, 40.377705, 39.332024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.151581, 40.229202, 39.456619>,  <30.387419, 39.981697, 39.664276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151581, 40.229202, 39.456619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745445, -0.664309, 0.054821,
		-0.310953, 0.419317, 0.852926,
		-0.589594, 0.618762, -0.519146,
		29.974703, 40.414829, 39.300877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.768587, 39.924232, 40.047131>,  <30.387419, 39.981697, 39.664276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.768587, 39.924232, 40.047131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.693130, 40.053192, 39.676083>,  <29.647856, 40.130569, 39.453453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.693130, 40.053192, 39.676083>,  <29.768587, 39.924232, 40.047131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693130, 40.053192, 39.676083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747617, -0.659625, -0.077221,
		-0.636775, 0.678934, 0.365467,
		-0.188643, 0.322402, -0.927616,
		29.636538, 40.149914, 39.397797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051104, 39.801746, 39.993042>,  <29.768587, 39.924232, 40.047131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051104, 39.801746, 39.993042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.168715, 39.875568, 39.617920>,  <29.239281, 39.919861, 39.392845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.168715, 39.875568, 39.617920>,  <29.051104, 39.801746, 39.993042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168715, 39.875568, 39.617920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726300, -0.594676, -0.344744,
		-0.621318, 0.782495, -0.040808,
		0.294027, 0.184557, -0.937809,
		29.256924, 39.930935, 39.336578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.521765, 39.952454, 39.556751>,  <29.051104, 39.801746, 39.993042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.521765, 39.952454, 39.556751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.758556, 39.809494, 39.267799>,  <28.900631, 39.723721, 39.094429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.758556, 39.809494, 39.267799>,  <28.521765, 39.952454, 39.556751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758556, 39.809494, 39.267799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787550, -0.446957, -0.424257,
		-0.171244, 0.820060, -0.546055,
		0.591980, -0.357395, -0.722377,
		28.936150, 39.702274, 39.051086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.102896, 39.995831, 38.987591>,  <28.521765, 39.952454, 39.556751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.102896, 39.995831, 38.987591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.403141, 39.743713, 38.908279>,  <28.583288, 39.592442, 38.860695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.403141, 39.743713, 38.908279>,  <28.102896, 39.995831, 38.987591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.403141, 39.743713, 38.908279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636894, -0.610278, -0.471090,
		0.175922, 0.479886, -0.859512,
		0.750611, -0.630293, -0.198275,
		28.628325, 39.554626, 38.848797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049927, 39.890751, 38.295441>,  <28.102896, 39.995831, 38.987591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049927, 39.890751, 38.295441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.245295, 39.577740, 38.449890>,  <28.362516, 39.389935, 38.542561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.245295, 39.577740, 38.449890>,  <28.049927, 39.890751, 38.295441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.245295, 39.577740, 38.449890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638844, -0.622088, -0.452643,
		0.594411, -0.025594, -0.803754,
		0.488421, -0.782529, 0.386126,
		28.391821, 39.342979, 38.565727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305431, 39.494209, 37.722336>,  <28.049927, 39.890751, 38.295441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.305431, 39.494209, 37.722336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.288029, 39.239841, 38.030548>,  <28.277588, 39.087219, 38.215473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.288029, 39.239841, 38.030548>,  <28.305431, 39.494209, 37.722336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288029, 39.239841, 38.030548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335887, -0.717053, -0.610750,
		0.940897, -0.285381, -0.182401,
		-0.043505, -0.635919, 0.770528,
		28.274977, 39.049065, 38.261707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.606056, 38.871273, 37.492149>,  <28.305431, 39.494209, 37.722336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.606056, 38.871273, 37.492149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.405434, 38.722103, 37.804398>,  <28.285061, 38.632599, 37.991745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.405434, 38.722103, 37.804398>,  <28.606056, 38.871273, 37.492149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.405434, 38.722103, 37.804398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157714, -0.847785, -0.506346,
		0.850628, -0.377076, 0.366395,
		-0.501555, -0.372927, 0.780620,
		28.254967, 38.610226, 38.038582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889183, 38.147194, 37.601746>,  <28.606056, 38.871273, 37.492149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.889183, 38.147194, 37.601746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.532284, 38.132671, 37.781776>,  <28.318144, 38.123959, 37.889797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.532284, 38.132671, 37.781776>,  <28.889183, 38.147194, 37.601746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532284, 38.132671, 37.781776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158931, -0.907731, -0.388286,
		0.422648, -0.417980, 0.804153,
		-0.892250, -0.036304, 0.450080,
		28.264608, 38.121780, 37.916801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768610, 37.477066, 37.999382>,  <28.889183, 38.147194, 37.601746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768610, 37.477066, 37.999382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.417713, 37.649887, 37.915691>,  <28.207174, 37.753578, 37.865479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.417713, 37.649887, 37.915691>,  <28.768610, 37.477066, 37.999382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.417713, 37.649887, 37.915691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287917, -0.822292, -0.490856,
		-0.384121, -0.370361, 0.845745,
		-0.877243, 0.432052, -0.209226,
		28.154541, 37.779503, 37.852924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.350620, 36.955444, 37.984737>,  <28.768610, 37.477066, 37.999382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.350620, 36.955444, 37.984737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.128954, 37.227249, 37.792416>,  <27.995955, 37.390331, 37.677025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.128954, 37.227249, 37.792416>,  <28.350620, 36.955444, 37.984737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.128954, 37.227249, 37.792416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485134, -0.733014, -0.476798,
		-0.676423, -0.030971, 0.735862,
		-0.554164, 0.679508, -0.480802,
		27.962706, 37.431103, 37.648174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.674143, 36.749481, 37.970108>,  <28.350620, 36.955444, 37.984737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.674143, 36.749481, 37.970108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.651648, 37.022305, 37.678455>,  <27.638151, 37.185997, 37.503464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.651648, 37.022305, 37.678455>,  <27.674143, 36.749481, 37.970108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.651648, 37.022305, 37.678455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527939, -0.640157, -0.558104,
		-0.847418, 0.353553, 0.396083,
		-0.056236, 0.682055, -0.729135,
		27.634777, 37.226921, 37.459713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.005699, 36.754974, 37.814140>,  <27.674143, 36.749481, 37.970108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.005699, 36.754974, 37.814140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.166491, 36.909599, 37.482121>,  <27.262964, 37.002373, 37.282909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.166491, 36.909599, 37.482121>,  <27.005699, 36.754974, 37.814140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.166491, 36.909599, 37.482121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469783, -0.691043, -0.549330,
		-0.785950, 0.610762, -0.096184,
		0.401977, 0.386561, -0.830051,
		27.287085, 37.025566, 37.233105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.464392, 36.807846, 37.382069>,  <27.005699, 36.754974, 37.814140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.464392, 36.807846, 37.382069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.777975, 36.807606, 37.133743>,  <26.966125, 36.807461, 36.984749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.777975, 36.807606, 37.133743>,  <26.464392, 36.807846, 37.382069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.777975, 36.807606, 37.133743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431894, -0.718867, -0.544701,
		-0.445954, 0.695148, -0.563821,
		0.783960, -0.000599, -0.620812,
		27.013163, 36.807426, 36.947498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.189524, 36.775421, 36.701500>,  <26.464392, 36.807846, 37.382069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.189524, 36.775421, 36.701500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.560760, 36.635330, 36.650936>,  <26.783503, 36.551273, 36.620598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.560760, 36.635330, 36.650936>,  <26.189524, 36.775421, 36.701500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.560760, 36.635330, 36.650936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356618, -0.738477, -0.572254,
		0.107073, 0.576185, -0.810275,
		0.928094, -0.350232, -0.126407,
		26.839190, 36.530262, 36.613014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.116863, 36.486080, 36.003033>,  <26.189524, 36.775421, 36.701500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.116863, 36.486080, 36.003033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.468342, 36.377506, 36.160114>,  <26.679230, 36.312363, 36.254364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.468342, 36.377506, 36.160114>,  <26.116863, 36.486080, 36.003033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.468342, 36.377506, 36.160114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022276, -0.845040, -0.534239,
		0.476859, 0.460687, -0.748581,
		0.878697, -0.271433, 0.392703,
		26.731951, 36.296078, 36.277924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.552105, 36.205395, 35.536083>,  <26.116863, 36.486080, 36.003033>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.552105, 36.205395, 35.536083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.719316, 36.028072, 35.853256>,  <26.819643, 35.921680, 36.043560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.719316, 36.028072, 35.853256>,  <26.552105, 36.205395, 35.536083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.719316, 36.028072, 35.853256> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128681, -0.835154, -0.534751,
		0.899274, 0.325576, -0.292073,
		0.418028, -0.443304, 0.792928,
		26.844725, 35.895081, 36.091133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.091236, 35.647823, 35.286797>,  <26.552105, 36.205395, 35.536083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.091236, 35.647823, 35.286797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.997009, 35.522350, 35.654732>,  <26.940474, 35.447067, 35.875492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.997009, 35.522350, 35.654732>,  <27.091236, 35.647823, 35.286797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.997009, 35.522350, 35.654732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004995, -0.946856, -0.321618,
		0.971845, -0.071169, 0.224616,
		-0.235568, -0.313685, 0.919842,
		26.926338, 35.428246, 35.930683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.538212, 35.092384, 35.418808>,  <27.091236, 35.647823, 35.286797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.538212, 35.092384, 35.418808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.247055, 35.043747, 35.688736>,  <27.072361, 35.014565, 35.850693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.247055, 35.043747, 35.688736>,  <27.538212, 35.092384, 35.418808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.247055, 35.043747, 35.688736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043868, -0.990393, -0.131138,
		0.684286, -0.065851, 0.726234,
		-0.727893, -0.121594, 0.674823,
		27.028687, 35.007267, 35.891182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.159588, 35.258968, 35.203079>,  <27.538212, 35.092384, 35.418808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.159588, 35.258968, 35.203079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.514963, 35.128098, 35.074310>,  <28.728188, 35.049576, 34.997047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.514963, 35.128098, 35.074310>,  <28.159588, 35.258968, 35.203079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.514963, 35.128098, 35.074310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432382, 0.361200, 0.826184,
		-0.154029, -0.873207, 0.462369,
		0.888437, -0.327177, -0.321924,
		28.781494, 35.029945, 34.977734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579470, 34.945656, 35.753925>,  <28.159588, 35.258968, 35.203079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579470, 34.945656, 35.753925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.833035, 35.085293, 35.477871>,  <28.985174, 35.169075, 35.312237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.833035, 35.085293, 35.477871>,  <28.579470, 34.945656, 35.753925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.833035, 35.085293, 35.477871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463050, 0.543421, 0.700199,
		0.619467, -0.763434, 0.182836,
		0.633913, 0.349088, -0.690139,
		29.023209, 35.190018, 35.270828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.133419, 35.053123, 36.102108>,  <28.579470, 34.945656, 35.753925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.133419, 35.053123, 36.102108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.235434, 35.254669, 35.771999>,  <29.296642, 35.375595, 35.573933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.235434, 35.254669, 35.771999>,  <29.133419, 35.053123, 36.102108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235434, 35.254669, 35.771999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432846, 0.703714, 0.563411,
		0.864640, -0.500906, -0.038625,
		0.255035, 0.503866, -0.825274,
		29.311943, 35.405830, 35.524418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851105, 35.088169, 36.046986>,  <29.133419, 35.053123, 36.102108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851105, 35.088169, 36.046986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.691101, 35.400162, 35.854481>,  <29.595098, 35.587357, 35.738976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.691101, 35.400162, 35.854481>,  <29.851105, 35.088169, 36.046986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.691101, 35.400162, 35.854481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588719, 0.621117, 0.517323,
		0.702426, -0.076396, -0.707644,
		-0.400009, 0.779985, -0.481265,
		29.571098, 35.634159, 35.710102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.375086, 35.489933, 35.782597>,  <29.851105, 35.088169, 36.046986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.375086, 35.489933, 35.782597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.072416, 35.751369, 35.776024>,  <29.890816, 35.908230, 35.772079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.072416, 35.751369, 35.776024>,  <30.375086, 35.489933, 35.782597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.072416, 35.751369, 35.776024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618477, 0.723719, 0.306133,
		0.211975, 0.221481, -0.951847,
		-0.756672, 0.653588, -0.016429,
		29.845415, 35.947445, 35.771095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.658079, 36.196686, 35.456985>,  <30.375086, 35.489933, 35.782597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.658079, 36.196686, 35.456985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.318171, 36.313972, 35.632217>,  <30.114225, 36.384346, 35.737354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.318171, 36.313972, 35.632217>,  <30.658079, 36.196686, 35.456985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318171, 36.313972, 35.632217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454706, 0.828156, 0.327720,
		-0.266702, 0.477683, -0.837071,
		-0.849772, 0.293218, 0.438077,
		30.063238, 36.401939, 35.763641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597950, 36.902729, 35.409824>,  <30.658079, 36.196686, 35.456985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.597950, 36.902729, 35.409824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.323874, 36.869247, 35.699242>,  <30.159428, 36.849159, 35.872890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.323874, 36.869247, 35.699242>,  <30.597950, 36.902729, 35.409824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323874, 36.869247, 35.699242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372576, 0.813300, 0.446912,
		-0.625861, 0.575793, -0.526081,
		-0.685190, -0.083700, 0.723539,
		30.118317, 36.844139, 35.916302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230457, 37.567356, 35.474087>,  <30.597950, 36.902729, 35.409824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230457, 37.567356, 35.474087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.175514, 37.354256, 35.808109>,  <30.142548, 37.226395, 36.008522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.175514, 37.354256, 35.808109>,  <30.230457, 37.567356, 35.474087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.175514, 37.354256, 35.808109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256018, 0.795301, 0.549501,
		-0.956863, 0.289267, 0.027151,
		-0.137359, -0.532748, 0.835052,
		30.134306, 37.194431, 36.058624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012457, 38.048283, 35.928928>,  <30.230457, 37.567356, 35.474087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012457, 38.048283, 35.928928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.131313, 37.765442, 36.185589>,  <30.202627, 37.595737, 36.339584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.131313, 37.765442, 36.185589>,  <30.012457, 38.048283, 35.928928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.131313, 37.765442, 36.185589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536599, 0.679510, 0.500328,
		-0.789790, 0.195642, 0.581339,
		0.297140, -0.707100, 0.641652,
		30.220455, 37.553310, 36.378086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801210, 38.300926, 36.583122>,  <30.012457, 38.048283, 35.928928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801210, 38.300926, 36.583122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.101650, 38.044773, 36.647331>,  <30.281914, 37.891083, 36.685856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.101650, 38.044773, 36.647331>,  <29.801210, 38.300926, 36.583122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101650, 38.044773, 36.647331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427423, 0.656993, 0.621023,
		-0.503151, -0.397839, 0.767179,
		0.751098, -0.640378, 0.160521,
		30.326981, 37.852661, 36.695488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930113, 38.351822, 37.283916>,  <29.801210, 38.300926, 36.583122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930113, 38.351822, 37.283916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.268288, 38.184441, 37.151173>,  <30.471193, 38.084011, 37.071526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.268288, 38.184441, 37.151173>,  <29.930113, 38.351822, 37.283916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268288, 38.184441, 37.151173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530582, 0.587127, 0.611363,
		-0.060984, -0.692949, 0.718403,
		0.845437, -0.418455, -0.331861,
		30.521919, 38.058903, 37.051613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.339661, 38.262981, 37.906200>,  <29.930113, 38.351822, 37.283916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.339661, 38.262981, 37.906200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.603458, 38.253361, 37.605671>,  <30.761736, 38.247589, 37.425354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.603458, 38.253361, 37.605671>,  <30.339661, 38.262981, 37.906200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603458, 38.253361, 37.605671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619733, 0.583070, 0.525319,
		0.425440, -0.812066, 0.399437,
		0.659493, -0.024052, -0.751325,
		30.801306, 38.246143, 37.380272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.031681, 37.915737, 38.109455>,  <30.339661, 38.262981, 37.906200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.031681, 37.915737, 38.109455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.098383, 38.174812, 37.812080>,  <31.138403, 38.330257, 37.633656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.098383, 38.174812, 37.812080>,  <31.031681, 37.915737, 38.109455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098383, 38.174812, 37.812080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702531, 0.451003, 0.550497,
		0.691841, -0.614082, -0.379815,
		0.166753, 0.647688, -0.743434,
		31.148409, 38.369118, 37.589050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831022, 37.953568, 38.018532>,  <31.031681, 37.915737, 38.109455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831022, 37.953568, 38.018532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.669676, 38.265484, 37.827026>,  <31.572868, 38.452633, 37.712124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.669676, 38.265484, 37.827026>,  <31.831022, 37.953568, 38.018532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669676, 38.265484, 37.827026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687850, 0.603456, 0.403364,
		0.603456, -0.166617, -0.779794,
		-0.403364, 0.779794, -0.478767,
		31.548666, 38.499424, 37.683395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323109, 38.423679, 38.098331>,  <31.831022, 37.953568, 38.018532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323109, 38.423679, 38.098331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.025681, 38.650928, 37.957279>,  <31.847225, 38.787277, 37.872646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.025681, 38.650928, 37.957279>,  <32.323109, 38.423679, 38.098331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025681, 38.650928, 37.957279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385803, 0.795245, 0.467698,
		0.546136, 0.211719, -0.810500,
		-0.743567, 0.568120, -0.352630,
		31.802610, 38.821365, 37.851490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524662, 39.004059, 37.754318>,  <32.323109, 38.423679, 38.098331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524662, 39.004059, 37.754318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.151257, 39.116692, 37.843102>,  <31.927214, 39.184273, 37.896370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.151257, 39.116692, 37.843102>,  <32.524662, 39.004059, 37.754318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.151257, 39.116692, 37.843102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344390, 0.876413, 0.336594,
		-0.099744, 0.390654, -0.915118,
		-0.933513, 0.281584, 0.221955,
		31.871202, 39.201168, 37.909687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486195, 39.786510, 37.554596>,  <32.524662, 39.004059, 37.754318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486195, 39.786510, 37.554596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.231941, 39.699993, 37.851025>,  <32.079391, 39.648083, 38.028881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.231941, 39.699993, 37.851025>,  <32.486195, 39.786510, 37.554596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231941, 39.699993, 37.851025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245994, 0.853165, 0.459997,
		-0.731752, 0.474688, -0.489091,
		-0.635630, -0.216290, 0.741075,
		32.041252, 39.635105, 38.073349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149136, 40.418385, 37.755795>,  <32.486195, 39.786510, 37.554596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149136, 40.418385, 37.755795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.064548, 40.195911, 38.077274>,  <32.013798, 40.062428, 38.270164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.064548, 40.195911, 38.077274>,  <32.149136, 40.418385, 37.755795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064548, 40.195911, 38.077274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303317, 0.744356, 0.594922,
		-0.929128, 0.369585, 0.011292,
		-0.211469, -0.556184, 0.803704,
		32.001106, 40.029057, 38.318386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707441, 40.817101, 38.162861>,  <32.149136, 40.418385, 37.755795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707441, 40.817101, 38.162861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.894388, 40.546150, 38.390099>,  <32.006557, 40.383579, 38.526440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.894388, 40.546150, 38.390099>,  <31.707441, 40.817101, 38.162861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894388, 40.546150, 38.390099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250396, 0.717702, 0.649774,
		-0.847863, -0.161434, 0.505042,
		0.467365, -0.677380, 0.568090,
		32.034599, 40.342937, 38.560524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650427, 41.061234, 38.799393>,  <31.707441, 40.817101, 38.162861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650427, 41.061234, 38.799393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.960758, 40.812294, 38.840908>,  <32.146957, 40.662930, 38.865818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.960758, 40.812294, 38.840908>,  <31.650427, 41.061234, 38.799393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960758, 40.812294, 38.840908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383376, 0.595642, 0.705857,
		-0.501111, -0.507832, 0.700710,
		0.775829, -0.622348, 0.103793,
		32.193508, 40.625591, 38.872047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799021, 40.966267, 39.493340>,  <31.650427, 41.061234, 38.799393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799021, 40.966267, 39.493340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.159092, 40.872860, 39.346287>,  <32.375134, 40.816814, 39.258057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.159092, 40.872860, 39.346287>,  <31.799021, 40.966267, 39.493340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159092, 40.872860, 39.346287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431786, 0.368171, 0.823414,
		-0.056932, -0.899956, 0.432249,
		0.900178, -0.233517, -0.367627,
		32.429146, 40.802803, 39.236000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100185, 40.641453, 40.041821>,  <31.799021, 40.966267, 39.493340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100185, 40.641453, 40.041821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.387802, 40.743183, 39.783115>,  <32.560371, 40.804222, 39.627892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.387802, 40.743183, 39.783115>,  <32.100185, 40.641453, 40.041821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387802, 40.743183, 39.783115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596344, 0.252084, 0.762120,
		0.356865, -0.933687, 0.029593,
		0.719042, 0.254327, -0.646758,
		32.603516, 40.819481, 39.589088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709110, 40.214073, 40.210728>,  <32.100185, 40.641453, 40.041821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709110, 40.214073, 40.210728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.795391, 40.553017, 40.016632>,  <32.847160, 40.756382, 39.900177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.795391, 40.553017, 40.016632>,  <32.709110, 40.214073, 40.210728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795391, 40.553017, 40.016632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758535, 0.167521, 0.629731,
		0.614896, -0.503904, -0.606617,
		0.215702, 0.847359, -0.485237,
		32.860104, 40.807224, 39.871059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.698208, 30.610973, 45.197296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.558300, 30.242804, 45.127460>,  <39.474354, 30.021902, 45.085560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.558300, 30.242804, 45.127460>,  <39.698208, 30.610973, 45.197296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558300, 30.242804, 45.127460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354193, -0.302451, 0.884913,
		-0.867300, 0.247676, 0.431795,
		-0.349768, -0.920424, -0.174591,
		39.453369, 29.966677, 45.075085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552895, 30.343132, 45.935871>,  <39.698208, 30.610973, 45.197296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552895, 30.343132, 45.935871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.549793, 30.028105, 45.689400>,  <39.547932, 29.839088, 45.541515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.549793, 30.028105, 45.689400>,  <39.552895, 30.343132, 45.935871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.549793, 30.028105, 45.689400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257948, -0.596918, 0.759705,
		-0.966128, -0.153056, 0.207777,
		-0.007749, -0.787567, -0.616180,
		39.547470, 29.791834, 45.504547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128902, 29.779352, 46.218731>,  <39.552895, 30.343132, 45.935871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128902, 29.779352, 46.218731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.374306, 29.608061, 45.953335>,  <39.521549, 29.505285, 45.794098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.374306, 29.608061, 45.953335>,  <39.128902, 29.779352, 46.218731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374306, 29.608061, 45.953335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338866, -0.616146, 0.711009,
		-0.713282, -0.661049, -0.232901,
		0.613513, -0.428228, -0.663493,
		39.558361, 29.479593, 45.754288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155193, 29.152006, 46.418629>,  <39.128902, 29.779352, 46.218731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155193, 29.152006, 46.418629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.483131, 29.163290, 46.189877>,  <39.679893, 29.170061, 46.052624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.483131, 29.163290, 46.189877>,  <39.155193, 29.152006, 46.418629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483131, 29.163290, 46.189877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514646, -0.474093, 0.714405,
		-0.250971, -0.880023, -0.403204,
		0.819849, 0.028213, -0.571884,
		39.729088, 29.171753, 46.018311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434235, 28.500683, 46.569321>,  <39.155193, 29.152006, 46.418629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434235, 28.500683, 46.569321> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.740036, 28.715107, 46.426113>,  <39.923515, 28.843761, 46.340187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.740036, 28.715107, 46.426113>,  <39.434235, 28.500683, 46.569321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740036, 28.715107, 46.426113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611986, -0.429075, 0.664356,
		0.202518, -0.727003, -0.656089,
		0.764500, 0.536061, -0.358020,
		39.969387, 28.875925, 46.318707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011341, 28.002478, 46.460243>,  <39.434235, 28.500683, 46.569321>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011341, 28.002478, 46.460243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.178776, 28.365694, 46.453964>,  <40.279236, 28.583624, 46.450195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.178776, 28.365694, 46.453964>,  <40.011341, 28.002478, 46.460243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178776, 28.365694, 46.453964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800186, -0.360583, 0.479252,
		0.429520, -0.213171, -0.877537,
		0.418588, 0.908041, -0.015699,
		40.304352, 28.638105, 46.449253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636326, 27.939310, 46.057770>,  <40.011341, 28.002478, 46.460243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636326, 27.939310, 46.057770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.630852, 28.234314, 46.327850>,  <40.627567, 28.411316, 46.489899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.630852, 28.234314, 46.327850>,  <40.636326, 27.939310, 46.057770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630852, 28.234314, 46.327850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705851, -0.471159, 0.528946,
		0.708228, 0.483830, -0.514122,
		-0.013686, 0.737508, 0.675200,
		40.626747, 28.455566, 46.530411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339909, 28.054306, 46.257687>,  <40.636326, 27.939310, 46.057770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339909, 28.054306, 46.257687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.148205, 28.221577, 46.566345>,  <41.033184, 28.321939, 46.751541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.148205, 28.221577, 46.566345>,  <41.339909, 28.054306, 46.257687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148205, 28.221577, 46.566345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653181, -0.417303, 0.631833,
		0.586229, 0.806836, -0.073150,
		-0.479260, 0.418179, 0.771645,
		41.004425, 28.347031, 46.797840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.860992, 28.482431, 46.659893>,  <41.339909, 28.054306, 46.257687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.860992, 28.482431, 46.659893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.545116, 28.376619, 46.881313>,  <41.355591, 28.313133, 47.014164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.545116, 28.376619, 46.881313>,  <41.860992, 28.482431, 46.659893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545116, 28.376619, 46.881313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611938, -0.404180, 0.679831,
		0.043900, 0.875593, 0.481051,
		-0.789687, -0.264529, 0.553552,
		41.308212, 28.297260, 47.047379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.107933, 28.441042, 47.338928>,  <41.860992, 28.482431, 46.659893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.107933, 28.441042, 47.338928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.751842, 28.283701, 47.430813>,  <41.538189, 28.189297, 47.485943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.751842, 28.283701, 47.430813>,  <42.107933, 28.441042, 47.338928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.751842, 28.283701, 47.430813> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385660, -0.382505, 0.839617,
		-0.242403, 0.836040, 0.492218,
		-0.890229, -0.393354, 0.229707,
		41.484776, 28.165695, 47.499725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071304, 28.517555, 48.051556>,  <42.107933, 28.441042, 47.338928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.071304, 28.517555, 48.051556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.805984, 28.235140, 47.952328>,  <41.646793, 28.065691, 47.892792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.805984, 28.235140, 47.952328>,  <42.071304, 28.517555, 48.051556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805984, 28.235140, 47.952328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491716, -0.661079, 0.566737,
		-0.564133, 0.253938, 0.785665,
		-0.663302, -0.706039, -0.248071,
		41.606995, 28.023329, 47.877907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613552, 28.333239, 48.656052>,  <42.071304, 28.517555, 48.051556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613552, 28.333239, 48.656052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.662098, 28.020872, 48.410957>,  <41.691223, 27.833452, 48.263901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.662098, 28.020872, 48.410957>,  <41.613552, 28.333239, 48.656052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.662098, 28.020872, 48.410957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405551, -0.524413, 0.748679,
		-0.905980, -0.339354, 0.253058,
		0.121361, -0.780916, -0.612733,
		41.698505, 27.786598, 48.227139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083027, 27.845079, 48.847881>,  <41.613552, 28.333239, 48.656052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083027, 27.845079, 48.847881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.406364, 27.640463, 48.731331>,  <41.600368, 27.517693, 48.661400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.406364, 27.640463, 48.731331>,  <41.083027, 27.845079, 48.847881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406364, 27.640463, 48.731331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146369, -0.304774, 0.941111,
		-0.570222, -0.803392, -0.171489,
		0.808346, -0.511541, -0.291381,
		41.648869, 27.487001, 48.643917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630848, 28.247551, 49.357300>,  <41.083027, 27.845079, 48.847881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630848, 28.247551, 49.357300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.338791, 28.173399, 49.620369>,  <40.163559, 28.128908, 49.778210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.338791, 28.173399, 49.620369>,  <40.630848, 28.247551, 49.357300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338791, 28.173399, 49.620369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356964, 0.924195, -0.135795,
		-0.582642, -0.333914, -0.740966,
		-0.730140, -0.185378, 0.657670,
		40.119747, 28.117785, 49.817669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938564, 28.229559, 49.059868>,  <40.630848, 28.247551, 49.357300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938564, 28.229559, 49.059868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.977020, 28.383310, 49.427132>,  <40.000095, 28.475561, 49.647488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.977020, 28.383310, 49.427132>,  <39.938564, 28.229559, 49.059868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977020, 28.383310, 49.427132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205495, 0.910221, -0.359539,
		-0.973924, -0.154109, 0.166501,
		0.096144, 0.384379, 0.918155,
		40.005863, 28.498625, 49.702579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307194, 28.536751, 49.248268>,  <39.938564, 28.229559, 49.059868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307194, 28.536751, 49.248268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.603054, 28.706337, 49.457329>,  <39.780571, 28.808088, 49.582764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.603054, 28.706337, 49.457329>,  <39.307194, 28.536751, 49.248268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603054, 28.706337, 49.457329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334357, 0.905490, -0.261332,
		-0.584052, 0.018543, 0.811504,
		0.739655, 0.423964, 0.522653,
		39.824951, 28.833527, 49.614124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955116, 29.197393, 49.424484>,  <39.307194, 28.536751, 49.248268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955116, 29.197393, 49.424484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.346458, 29.265236, 49.471909>,  <39.581264, 29.305943, 49.500362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.346458, 29.265236, 49.471909>,  <38.955116, 29.197393, 49.424484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346458, 29.265236, 49.471909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131437, 0.951829, -0.277029,
		-0.159840, 0.255448, 0.953519,
		0.978353, 0.169608, 0.118565,
		39.639965, 29.316118, 49.507477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953724, 29.763700, 49.747849>,  <38.955116, 29.197393, 49.424484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953724, 29.763700, 49.747849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.338669, 29.756105, 49.639400>,  <39.569633, 29.751549, 49.574333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.338669, 29.756105, 49.639400>,  <38.953724, 29.763700, 49.747849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338669, 29.756105, 49.639400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052867, 0.965424, -0.255266,
		0.266592, 0.259991, 0.928081,
		0.962358, -0.018987, -0.271119,
		39.627377, 29.750410, 49.558064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235504, 30.491430, 49.999462>,  <38.953724, 29.763700, 49.747849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235504, 30.491430, 49.999462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.440510, 30.310673, 49.707401>,  <39.563515, 30.202219, 49.532166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.440510, 30.310673, 49.707401>,  <39.235504, 30.491430, 49.999462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440510, 30.310673, 49.707401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077740, 0.871248, -0.484648,
		0.855153, 0.191626, 0.481657,
		0.512514, -0.451892, -0.730153,
		39.594265, 30.175106, 49.488354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826416, 30.906090, 49.920269>,  <39.235504, 30.491430, 49.999462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826416, 30.906090, 49.920269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.775391, 30.723484, 49.568058>,  <39.744774, 30.613920, 49.356731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.775391, 30.723484, 49.568058>,  <39.826416, 30.906090, 49.920269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775391, 30.723484, 49.568058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269585, 0.870313, -0.412163,
		0.954489, 0.184798, -0.234093,
		-0.127567, -0.456513, -0.880524,
		39.737122, 30.586531, 49.303902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.945438, 31.341713, 49.421539>,  <39.826416, 30.906090, 49.920269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.945438, 31.341713, 49.421539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.784721, 31.073481, 49.172096>,  <39.688293, 30.912540, 49.022430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.784721, 31.073481, 49.172096>,  <39.945438, 31.341713, 49.421539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784721, 31.073481, 49.172096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253590, 0.735838, -0.627881,
		0.879919, -0.094135, -0.465705,
		-0.401789, -0.670582, -0.623606,
		39.664185, 30.872307, 48.985016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208256, 31.456869, 48.706432>,  <39.945438, 31.341713, 49.421539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208256, 31.456869, 48.706432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.851387, 31.280598, 48.666779>,  <39.637264, 31.174835, 48.642986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.851387, 31.280598, 48.666779>,  <40.208256, 31.456869, 48.706432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851387, 31.280598, 48.666779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272629, 0.700351, -0.659683,
		0.360134, -0.561526, -0.744977,
		-0.892175, -0.440677, -0.099132,
		39.583733, 31.148394, 48.637039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180420, 31.324560, 47.972454>,  <40.208256, 31.456869, 48.706432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180420, 31.324560, 47.972454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.803722, 31.302235, 48.105114>,  <39.577702, 31.288839, 48.184711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.803722, 31.302235, 48.105114>,  <40.180420, 31.324560, 47.972454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803722, 31.302235, 48.105114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280672, 0.673729, -0.683603,
		-0.185292, -0.736868, -0.650148,
		-0.941749, -0.055812, 0.331654,
		39.521198, 31.285490, 48.204609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760872, 31.136621, 47.361629>,  <40.180420, 31.324560, 47.972454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760872, 31.136621, 47.361629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.488178, 31.279070, 47.617260>,  <39.324562, 31.364538, 47.770638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.488178, 31.279070, 47.617260>,  <39.760872, 31.136621, 47.361629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488178, 31.279070, 47.617260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337536, 0.621902, -0.706617,
		-0.649083, -0.697436, -0.303769,
		-0.681734, 0.356120, 0.639076,
		39.283657, 31.385906, 47.808983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198360, 31.071447, 46.976139>,  <39.760872, 31.136621, 47.361629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198360, 31.071447, 46.976139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.081249, 31.333679, 47.254562>,  <39.010983, 31.491018, 47.421616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.081249, 31.333679, 47.254562>,  <39.198360, 31.071447, 46.976139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081249, 31.333679, 47.254562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516071, 0.504486, -0.692217,
		-0.804955, -0.561881, 0.190623,
		-0.292778, 0.655579, 0.696059,
		38.993416, 31.530354, 47.463379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450932, 31.107683, 47.000149>,  <39.198360, 31.071447, 46.976139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450932, 31.107683, 47.000149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.602730, 31.444004, 47.154568>,  <38.693810, 31.645798, 47.247219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.602730, 31.444004, 47.154568>,  <38.450932, 31.107683, 47.000149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602730, 31.444004, 47.154568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486808, 0.536295, -0.689497,
		-0.786765, 0.073733, 0.612832,
		0.379498, 0.840804, 0.386044,
		38.716579, 31.696245, 47.270382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.899231, 31.573709, 47.063717>,  <38.450932, 31.107683, 47.000149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.899231, 31.573709, 47.063717> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.236080, 31.789196, 47.053764>,  <38.438190, 31.918488, 47.047791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.236080, 31.789196, 47.053764>,  <37.899231, 31.573709, 47.063717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236080, 31.789196, 47.053764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357315, 0.522801, -0.773954,
		-0.403933, 0.660653, 0.632753,
		0.842119, 0.538718, -0.024884,
		38.488716, 31.950811, 47.046299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556610, 32.281895, 46.869518>,  <37.899231, 31.573709, 47.063717>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556610, 32.281895, 46.869518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.951130, 32.285461, 46.803619>,  <38.187840, 32.287601, 46.764080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.951130, 32.285461, 46.803619>,  <37.556610, 32.281895, 46.869518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951130, 32.285461, 46.803619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143560, 0.538466, -0.830328,
		0.081306, 0.842600, 0.532367,
		0.986296, 0.008916, -0.164744,
		38.247017, 32.288136, 46.754196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251133, 32.646194, 47.262749>,  <37.556610, 32.281895, 46.869518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251133, 32.646194, 47.262749> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.854294, 32.633881, 47.311390>,  <36.616188, 32.626492, 47.340572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.854294, 32.633881, 47.311390>,  <37.251133, 32.646194, 47.262749>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854294, 32.633881, 47.311390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114769, -0.613946, 0.780960,
		0.050618, 0.788747, 0.612630,
		-0.992102, -0.030780, 0.121600,
		36.556664, 32.624645, 47.347870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082111, 33.038040, 47.940334>,  <37.251133, 32.646194, 47.262749>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082111, 33.038040, 47.940334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.764023, 32.804104, 47.876350>,  <36.573170, 32.663742, 47.837959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.764023, 32.804104, 47.876350>,  <37.082111, 33.038040, 47.940334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764023, 32.804104, 47.876350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189944, -0.490836, 0.850295,
		-0.575800, 0.645788, 0.501410,
		-0.795221, -0.584839, -0.159960,
		36.525455, 32.628651, 47.828362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667061, 33.140137, 48.540016>,  <37.082111, 33.038040, 47.940334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667061, 33.140137, 48.540016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.607021, 32.789562, 48.357010>,  <36.570999, 32.579216, 48.247204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.607021, 32.789562, 48.357010>,  <36.667061, 33.140137, 48.540016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607021, 32.789562, 48.357010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052460, -0.469169, 0.881548,
		-0.987279, 0.108314, 0.116398,
		-0.150094, -0.876441, -0.457519,
		36.561993, 32.526630, 48.219753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233025, 32.725716, 48.999638>,  <36.667061, 33.140137, 48.540016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233025, 32.725716, 48.999638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.403305, 32.442261, 48.774567>,  <36.505474, 32.272186, 48.639523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.403305, 32.442261, 48.774567>,  <36.233025, 32.725716, 48.999638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403305, 32.442261, 48.774567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204764, -0.681153, 0.702924,
		-0.881389, -0.184021, -0.435074,
		0.425705, -0.708637, -0.562680,
		36.531017, 32.229671, 48.605762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732483, 32.201424, 48.965725>,  <36.233025, 32.725716, 48.999638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732483, 32.201424, 48.965725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.088688, 32.042015, 48.877937>,  <36.302410, 31.946369, 48.825264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.088688, 32.042015, 48.877937>,  <35.732483, 32.201424, 48.965725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088688, 32.042015, 48.877937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151397, -0.714474, 0.683085,
		-0.429032, -0.575069, -0.696583,
		0.890512, -0.398526, -0.219468,
		36.355843, 31.922457, 48.812096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636379, 31.459873, 49.025471>,  <35.732483, 32.201424, 48.965725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636379, 31.459873, 49.025471> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.033928, 31.501135, 49.041325>,  <36.272457, 31.525892, 49.050838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.033928, 31.501135, 49.041325>,  <35.636379, 31.459873, 49.025471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033928, 31.501135, 49.041325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047099, -0.719873, 0.692506,
		0.099969, -0.686398, -0.720322,
		0.993875, 0.103155, 0.039636,
		36.332092, 31.532082, 49.053215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860516, 30.793243, 48.999535>,  <35.636379, 31.459873, 49.025471>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860516, 30.793243, 48.999535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.152477, 31.014776, 49.159790>,  <36.327656, 31.147696, 49.255943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.152477, 31.014776, 49.159790>,  <35.860516, 30.793243, 48.999535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152477, 31.014776, 49.159790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178871, -0.720445, 0.670047,
		0.659732, -0.417407, -0.624920,
		0.729903, 0.553832, 0.400639,
		36.371449, 31.180925, 49.279984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383244, 30.213011, 48.667370>,  <35.860516, 30.793243, 48.999535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383244, 30.213011, 48.667370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.647110, 30.011765, 48.444042>,  <35.805431, 29.891018, 48.310047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.647110, 30.011765, 48.444042>,  <35.383244, 30.213011, 48.667370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647110, 30.011765, 48.444042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385306, 0.411425, -0.825996,
		0.645275, 0.760004, 0.077551,
		0.659667, -0.503113, -0.558316,
		35.845009, 29.860830, 48.276546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838409, 30.618265, 48.131721>,  <35.383244, 30.213011, 48.667370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838409, 30.618265, 48.131721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.729141, 30.252726, 48.011551>,  <35.663582, 30.033401, 47.939449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.729141, 30.252726, 48.011551>,  <35.838409, 30.618265, 48.131721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729141, 30.252726, 48.011551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451063, 0.397526, -0.799071,
		0.849659, -0.082770, -0.520796,
		-0.273169, -0.913850, -0.300427,
		35.647190, 29.978571, 47.921421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995518, 30.524363, 47.350693>,  <35.838409, 30.618265, 48.131721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995518, 30.524363, 47.350693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.713604, 30.268394, 47.473183>,  <35.544456, 30.114813, 47.546677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.713604, 30.268394, 47.473183>,  <35.995518, 30.524363, 47.350693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713604, 30.268394, 47.473183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485407, 0.120203, -0.865985,
		0.517353, -0.758981, -0.395341,
		-0.704788, -0.639921, 0.306227,
		35.502167, 30.076418, 47.565052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917614, 29.983505, 46.789196>,  <35.995518, 30.524363, 47.350693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917614, 29.983505, 46.789196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.578285, 30.019001, 46.997993>,  <35.374687, 30.040298, 47.123272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.578285, 30.019001, 46.997993>,  <35.917614, 29.983505, 46.789196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578285, 30.019001, 46.997993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516886, 0.074961, -0.852766,
		-0.114804, -0.993230, -0.017722,
		-0.848321, 0.088740, 0.521993,
		35.323788, 30.045624, 47.154591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487015, 29.526455, 46.404217>,  <35.917614, 29.983505, 46.789196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487015, 29.526455, 46.404217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.248798, 29.742065, 46.642471>,  <35.105869, 29.871431, 46.785423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.248798, 29.742065, 46.642471>,  <35.487015, 29.526455, 46.404217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248798, 29.742065, 46.642471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562873, 0.249024, -0.788138,
		-0.573154, -0.804636, 0.155099,
		-0.595540, 0.539025, 0.595637,
		35.070137, 29.903772, 46.821163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808605, 29.370319, 46.211510>,  <35.487015, 29.526455, 46.404217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808605, 29.370319, 46.211510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.750305, 29.716061, 46.404030>,  <34.715324, 29.923506, 46.519543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.750305, 29.716061, 46.404030>,  <34.808605, 29.370319, 46.211510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750305, 29.716061, 46.404030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609518, 0.304748, -0.731858,
		-0.779260, -0.400031, 0.482421,
		-0.145749, 0.864351, 0.481304,
		34.706581, 29.975367, 46.548420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082092, 29.515472, 46.132069>,  <34.808605, 29.370319, 46.211510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082092, 29.515472, 46.132069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.269661, 29.860075, 46.209961>,  <34.382202, 30.066837, 46.256695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.269661, 29.860075, 46.209961>,  <34.082092, 29.515472, 46.132069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269661, 29.860075, 46.209961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434990, 0.417139, -0.797984,
		-0.768698, 0.289486, 0.570352,
		0.468922, 0.861506, 0.194730,
		34.410336, 30.118526, 46.268379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<40.668755, 25.047270, 47.464516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.512371, 24.760567, 47.695484>,  <40.418541, 24.588545, 47.834064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.512371, 24.760567, 47.695484>,  <40.668755, 25.047270, 47.464516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512371, 24.760567, 47.695484> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212518, -0.680695, -0.701064,
		0.895537, -0.151377, 0.418448,
		-0.390960, -0.716756, 0.577417,
		40.395084, 24.545540, 47.868710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403172, 25.613617, 46.999657>,  <40.668755, 25.047270, 47.464516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403172, 25.613617, 46.999657> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.656101, 25.902723, 46.888103>,  <40.807858, 26.076187, 46.821171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.656101, 25.902723, 46.888103>,  <40.403172, 25.613617, 46.999657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656101, 25.902723, 46.888103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506967, 0.113848, -0.854414,
		-0.585790, 0.681653, 0.438406,
		0.632325, 0.722765, -0.278884,
		40.845798, 26.119553, 46.804440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.010479, 26.234718, 46.654564>,  <40.403172, 25.613617, 46.999657>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.010479, 26.234718, 46.654564> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.385197, 26.238190, 46.514656>,  <40.610027, 26.240273, 46.430714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.385197, 26.238190, 46.514656>,  <40.010479, 26.234718, 46.654564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385197, 26.238190, 46.514656> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342780, 0.223063, -0.912549,
		0.070100, 0.974765, 0.211940,
		0.936797, 0.008679, -0.349767,
		40.666237, 26.240793, 46.409725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975899, 26.754494, 46.057858>,  <40.010479, 26.234718, 46.654564>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975899, 26.754494, 46.057858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.314838, 26.557669, 45.977993>,  <40.518204, 26.439573, 45.930073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.314838, 26.557669, 45.977993>,  <39.975899, 26.754494, 46.057858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314838, 26.557669, 45.977993> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228723, 0.001142, -0.973491,
		0.479247, 0.870559, -0.111579,
		0.847353, -0.492063, -0.199665,
		40.569046, 26.410049, 45.918095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345520, 27.148695, 45.520859>,  <39.975899, 26.754494, 46.057858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345520, 27.148695, 45.520859> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.492725, 26.776779, 45.524059>,  <40.581047, 26.553631, 45.525978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.492725, 26.776779, 45.524059>,  <40.345520, 27.148695, 45.520859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492725, 26.776779, 45.524059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016037, -0.014952, -0.999760,
		0.929684, 0.367792, -0.020414,
		0.368009, -0.929788, 0.008002,
		40.603127, 26.497843, 45.526459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.876366, 27.273058, 45.038433>,  <40.345520, 27.148695, 45.520859>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.876366, 27.273058, 45.038433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.792023, 26.883224, 45.068691>,  <40.741417, 26.649324, 45.086845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.792023, 26.883224, 45.068691>,  <40.876366, 27.273058, 45.038433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.792023, 26.883224, 45.068691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243544, -0.022572, -0.969627,
		0.946692, -0.222878, -0.232595,
		-0.210858, -0.974585, 0.075649,
		40.728764, 26.590849, 45.091385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053600, 26.964169, 44.377880>,  <40.876366, 27.273058, 45.038433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053600, 26.964169, 44.377880> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.803024, 26.702545, 44.547485>,  <40.652679, 26.545570, 44.649250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.803024, 26.702545, 44.547485>,  <41.053600, 26.964169, 44.377880>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803024, 26.702545, 44.547485> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390547, -0.207398, -0.896916,
		0.674575, -0.727457, -0.125519,
		-0.626436, -0.654058, 0.424012,
		40.615093, 26.506329, 44.674690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081860, 26.377090, 43.945362>,  <41.053600, 26.964169, 44.377880>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081860, 26.377090, 43.945362> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.732861, 26.353075, 44.139328>,  <40.523460, 26.338665, 44.255707>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.732861, 26.353075, 44.139328>,  <41.081860, 26.377090, 43.945362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732861, 26.353075, 44.139328> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486238, 0.008782, -0.873782,
		0.048207, -0.998157, -0.036858,
		-0.872495, -0.060044, 0.484919,
		40.471111, 26.335064, 44.284805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624928, 25.937277, 43.517338>,  <41.081860, 26.377090, 43.945362>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624928, 25.937277, 43.517338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.359188, 26.067358, 43.786526>,  <40.199745, 26.145407, 43.948040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.359188, 26.067358, 43.786526>,  <40.624928, 25.937277, 43.517338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359188, 26.067358, 43.786526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668301, 0.144729, -0.729676,
		-0.334693, -0.934502, 0.121185,
		-0.664345, 0.325206, 0.672968,
		40.159885, 26.164919, 43.988415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983067, 25.586613, 43.379757>,  <40.624928, 25.937277, 43.517338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983067, 25.586613, 43.379757> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.928616, 25.941120, 43.556843>,  <39.895947, 26.153826, 43.663094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.928616, 25.941120, 43.556843>,  <39.983067, 25.586613, 43.379757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928616, 25.941120, 43.556843> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585329, 0.288584, -0.757699,
		-0.799286, -0.362276, 0.479476,
		-0.136128, 0.886270, 0.442712,
		39.887775, 26.207001, 43.689655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310871, 25.776033, 43.140594>,  <39.983067, 25.586613, 43.379757>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310871, 25.776033, 43.140594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.493137, 26.114758, 43.250343>,  <39.602497, 26.317991, 43.316193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.493137, 26.114758, 43.250343>,  <39.310871, 25.776033, 43.140594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493137, 26.114758, 43.250343> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435427, 0.480878, -0.761026,
		-0.776383, 0.227308, 0.587844,
		0.455668, 0.846810, 0.274369,
		39.629837, 26.368801, 43.332653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838337, 26.268267, 43.004963>,  <39.310871, 25.776033, 43.140594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838337, 26.268267, 43.004963> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.180511, 26.473442, 43.033577>,  <39.385818, 26.596546, 43.050747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.180511, 26.473442, 43.033577>,  <38.838337, 26.268267, 43.004963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180511, 26.473442, 43.033577> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353090, 0.678673, -0.643996,
		-0.378880, 0.525640, 0.761677,
		0.855440, 0.512938, 0.071538,
		39.437145, 26.627323, 43.055038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677502, 26.611357, 43.677380>,  <38.838337, 26.268267, 43.004963>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677502, 26.611357, 43.677380> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.310493, 26.744343, 43.764664>,  <38.090286, 26.824135, 43.817036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.310493, 26.744343, 43.764664>,  <38.677502, 26.611357, 43.677380>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310493, 26.744343, 43.764664> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136255, -0.252683, 0.957907,
		0.373607, 0.908636, 0.186544,
		-0.917525, 0.332463, 0.218210,
		38.035236, 26.844082, 43.830128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619778, 27.085312, 44.346310>,  <38.677502, 26.611357, 43.677380>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619778, 27.085312, 44.346310> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.261845, 26.915470, 44.291195>,  <38.047085, 26.813564, 44.258125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.261845, 26.915470, 44.291195>,  <38.619778, 27.085312, 44.346310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261845, 26.915470, 44.291195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069550, -0.172277, 0.982590,
		-0.440951, 0.888836, 0.124628,
		-0.894832, -0.424606, -0.137785,
		37.993397, 26.788088, 44.249859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061409, 27.382353, 44.817490>,  <38.619778, 27.085312, 44.346310>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061409, 27.382353, 44.817490> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.902973, 27.032312, 44.706268>,  <37.807911, 26.822289, 44.639534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.902973, 27.032312, 44.706268>,  <38.061409, 27.382353, 44.817490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902973, 27.032312, 44.706268> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030192, -0.315069, 0.948588,
		-0.917716, 0.367330, 0.151217,
		-0.396089, -0.875100, -0.278053,
		37.784145, 26.769783, 44.622852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564533, 27.198744, 45.260983>,  <38.061409, 27.382353, 44.817490>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564533, 27.198744, 45.260983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.648708, 26.840975, 45.103134>,  <37.699215, 26.626314, 45.008427>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.648708, 26.840975, 45.103134>,  <37.564533, 27.198744, 45.260983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648708, 26.840975, 45.103134> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123926, -0.424809, 0.896761,
		-0.969720, -0.139811, -0.200240,
		0.210441, -0.894422, -0.394620,
		37.711842, 26.572649, 44.984749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034916, 26.675905, 45.473282>,  <37.564533, 27.198744, 45.260983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034916, 26.675905, 45.473282> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.361305, 26.461473, 45.386745>,  <37.557140, 26.332815, 45.334824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.361305, 26.461473, 45.386745>,  <37.034916, 26.675905, 45.473282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361305, 26.461473, 45.386745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087692, -0.484693, 0.870277,
		-0.571397, -0.691153, -0.442507,
		0.815975, -0.536079, -0.216344,
		37.606098, 26.300650, 45.321842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878441, 25.988693, 45.622498>,  <37.034916, 26.675905, 45.473282>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878441, 25.988693, 45.622498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.278133, 25.978090, 45.634071>,  <37.517948, 25.971729, 45.641018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.278133, 25.978090, 45.634071>,  <36.878441, 25.988693, 45.622498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278133, 25.978090, 45.634071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037867, -0.457819, 0.888239,
		-0.010295, -0.888650, -0.458470,
		0.999230, -0.026505, 0.028938,
		37.577904, 25.970139, 45.642754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013073, 25.335482, 45.809849>,  <36.878441, 25.988693, 45.622498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013073, 25.335482, 45.809849> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.329060, 25.567793, 45.888489>,  <37.518650, 25.707180, 45.935673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.329060, 25.567793, 45.888489>,  <37.013073, 25.335482, 45.809849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329060, 25.567793, 45.888489> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087942, -0.424643, 0.901080,
		0.606811, -0.694533, -0.386528,
		0.789966, 0.580777, 0.196600,
		37.566048, 25.742025, 45.947468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235790, 24.992823, 46.352928>,  <37.013073, 25.335482, 45.809849>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235790, 24.992823, 46.352928> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.466892, 25.318722, 46.372498>,  <37.605553, 25.514261, 46.384239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.466892, 25.318722, 46.372498>,  <37.235790, 24.992823, 46.352928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466892, 25.318722, 46.372498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054275, -0.098161, 0.993689,
		0.814407, -0.571449, -0.100933,
		0.577751, 0.814745, 0.048928,
		37.640217, 25.563145, 46.387177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832623, 24.805862, 46.798180>,  <37.235790, 24.992823, 46.352928>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832623, 24.805862, 46.798180> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.798065, 25.204319, 46.804317>,  <37.777328, 25.443394, 46.807999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.798065, 25.204319, 46.804317>,  <37.832623, 24.805862, 46.798180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798065, 25.204319, 46.804317> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083603, -0.008100, 0.996466,
		0.992747, 0.087373, -0.082581,
		-0.086395, 0.996143, 0.015345,
		37.772148, 25.503162, 46.808922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431450, 25.117243, 47.197273>,  <37.832623, 24.805862, 46.798180>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431450, 25.117243, 47.197273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.171715, 25.421392, 47.202755>,  <38.015873, 25.603882, 47.206043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.171715, 25.421392, 47.202755>,  <38.431450, 25.117243, 47.197273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171715, 25.421392, 47.202755> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063764, 0.036484, 0.997298,
		0.757820, 0.648459, -0.072175,
		-0.649340, 0.760374, 0.013700,
		37.976913, 25.649506, 47.206863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.697468, 25.627083, 47.647533>,  <38.431450, 25.117243, 47.197273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.697468, 25.627083, 47.647533> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.325760, 25.770391, 47.611553>,  <38.102734, 25.856377, 47.589966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.325760, 25.770391, 47.611553>,  <38.697468, 25.627083, 47.647533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325760, 25.770391, 47.611553> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034128, 0.159199, 0.986656,
		0.367812, 0.919944, -0.135712,
		-0.929274, 0.358272, -0.089951,
		38.046978, 25.877872, 47.584568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599953, 26.327391, 48.078590>,  <38.697468, 25.627083, 47.647533>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599953, 26.327391, 48.078590> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.238125, 26.165197, 48.025925>,  <38.021027, 26.067883, 47.994324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.238125, 26.165197, 48.025925>,  <38.599953, 26.327391, 48.078590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238125, 26.165197, 48.025925> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169335, 0.058304, 0.983832,
		-0.391250, 0.912242, -0.121402,
		-0.904571, -0.405482, -0.131664,
		37.966755, 26.043552, 47.986427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173428, 26.671024, 48.539627>,  <38.599953, 26.327391, 48.078590>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173428, 26.671024, 48.539627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.951027, 26.350677, 48.450653>,  <37.817589, 26.158470, 48.397270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.951027, 26.350677, 48.450653>,  <38.173428, 26.671024, 48.539627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951027, 26.350677, 48.450653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282436, -0.069653, 0.956754,
		-0.781726, 0.594777, -0.187467,
		-0.555998, -0.800867, -0.222436,
		37.784229, 26.110416, 48.383923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520981, 26.918737, 48.672661>,  <38.173428, 26.671024, 48.539627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520981, 26.918737, 48.672661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.545879, 26.520102, 48.694344>,  <37.560818, 26.280920, 48.707352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.545879, 26.520102, 48.694344>,  <37.520981, 26.918737, 48.672661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545879, 26.520102, 48.694344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441948, 0.021171, 0.896791,
		-0.894878, -0.079779, -0.439122,
		0.062249, -0.996588, 0.054204,
		37.564552, 26.221125, 48.710606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470238, 27.473791, 48.089119>,  <37.520981, 26.918737, 48.672661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470238, 27.473791, 48.089119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.256210, 27.401917, 48.419308>,  <37.127792, 27.358791, 48.617420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.256210, 27.401917, 48.419308>,  <37.470238, 27.473791, 48.089119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256210, 27.401917, 48.419308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744060, 0.562987, -0.359751,
		-0.400091, -0.806696, -0.434935,
		-0.535073, -0.179684, 0.825476,
		37.095688, 27.348011, 48.666950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747009, 27.485670, 47.827545>,  <37.470238, 27.473791, 48.089119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747009, 27.485670, 47.827545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.711098, 27.532108, 48.223213>,  <36.689552, 27.559971, 48.460613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.711098, 27.532108, 48.223213>,  <36.747009, 27.485670, 47.827545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711098, 27.532108, 48.223213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805121, 0.576181, -0.140699,
		-0.586277, -0.809034, 0.041745,
		-0.089778, 0.116098, 0.989172,
		36.684166, 27.566936, 48.519966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997009, 27.452803, 47.961430>,  <36.747009, 27.485670, 47.827545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997009, 27.452803, 47.961430> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.175472, 27.641588, 48.265587>,  <36.282551, 27.754860, 48.448082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.175472, 27.641588, 48.265587>,  <35.997009, 27.452803, 47.961430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175472, 27.641588, 48.265587> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712410, 0.701547, -0.017440,
		-0.541681, -0.533929, 0.649231,
		0.446155, 0.471966, 0.760391,
		36.309319, 27.783178, 48.493706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426083, 27.749392, 48.432484>,  <35.997009, 27.452803, 47.961430>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426083, 27.749392, 48.432484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.750851, 27.971937, 48.503197>,  <35.945709, 28.105465, 48.545624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.750851, 27.971937, 48.503197>,  <35.426083, 27.749392, 48.432484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750851, 27.971937, 48.503197> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577957, 0.808723, 0.109237,
		-0.082189, -0.190861, 0.978170,
		0.811918, 0.556362, 0.176778,
		35.994427, 28.138845, 48.556229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264286, 28.125139, 48.972549>,  <35.426083, 27.749392, 48.432484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264286, 28.125139, 48.972549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.552788, 28.359087, 48.824108>,  <35.725891, 28.499456, 48.735043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.552788, 28.359087, 48.824108>,  <35.264286, 28.125139, 48.972549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552788, 28.359087, 48.824108> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604880, 0.792873, 0.073977,
		0.337501, 0.171114, 0.925642,
		0.721258, 0.584870, -0.371099,
		35.769165, 28.534548, 48.712780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388474, 28.707945, 49.430817>,  <35.264286, 28.125139, 48.972549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388474, 28.707945, 49.430817> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.493546, 28.829695, 49.064568>,  <35.556587, 28.902744, 48.844818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.493546, 28.829695, 49.064568>,  <35.388474, 28.707945, 49.430817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493546, 28.829695, 49.064568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576889, 0.810197, 0.103825,
		0.773432, 0.500937, 0.388412,
		0.262681, 0.304373, -0.915618,
		35.572350, 28.921007, 48.789883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752541, 29.490931, 49.427280>,  <35.388474, 28.707945, 49.430817>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752541, 29.490931, 49.427280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.568695, 29.397211, 49.084618>,  <35.458389, 29.340979, 48.879021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.568695, 29.397211, 49.084618>,  <35.752541, 29.490931, 49.427280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568695, 29.397211, 49.084618> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443698, 0.896149, -0.007050,
		0.769344, 0.376857, -0.515838,
		-0.459611, -0.234300, -0.856657,
		35.430813, 29.326921, 48.827621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033104, 30.286383, 49.486389>,  <35.752541, 29.490931, 49.427280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033104, 30.286383, 49.486389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.286945, 30.545315, 49.655262>,  <36.439251, 30.700674, 49.756584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.286945, 30.545315, 49.655262>,  <36.033104, 30.286383, 49.486389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286945, 30.545315, 49.655262> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351473, -0.728254, 0.588314,
		0.688291, -0.224960, -0.689672,
		0.634604, 0.647333, 0.422183,
		36.477325, 30.739515, 49.781918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738155, 29.942080, 49.533909>,  <36.033104, 30.286383, 49.486389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738155, 29.942080, 49.533909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.781929, 30.235794, 49.801891>,  <36.808193, 30.412024, 49.962681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.781929, 30.235794, 49.801891>,  <36.738155, 29.942080, 49.533909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781929, 30.235794, 49.801891> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435120, -0.641389, 0.631895,
		0.893697, 0.222360, -0.389695,
		0.109438, 0.734286, 0.669960,
		36.814762, 30.456079, 50.002880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426868, 30.023293, 49.685349>,  <36.738155, 29.942080, 49.533909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426868, 30.023293, 49.685349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.222553, 30.177650, 49.992641>,  <37.099964, 30.270266, 50.177017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.222553, 30.177650, 49.992641>,  <37.426868, 30.023293, 49.685349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222553, 30.177650, 49.992641> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478762, -0.614526, 0.627013,
		0.714058, 0.688072, 0.129143,
		-0.510791, 0.385895, 0.768230,
		37.069317, 30.293419, 50.223110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895939, 30.192928, 50.248520>,  <37.426868, 30.023293, 49.685349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895939, 30.192928, 50.248520> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.533569, 30.145012, 50.410976>,  <37.316147, 30.116262, 50.508450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.533569, 30.145012, 50.410976>,  <37.895939, 30.192928, 50.248520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533569, 30.145012, 50.410976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378448, -0.659292, 0.649701,
		0.189934, 0.742283, 0.642605,
		-0.905926, -0.119793, 0.406137,
		37.261791, 30.109074, 50.532818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120785, 30.317389, 50.965595>,  <37.895939, 30.192928, 50.248520>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120785, 30.317389, 50.965595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.758881, 30.148008, 50.947262>,  <37.541737, 30.046381, 50.936260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.758881, 30.148008, 50.947262>,  <38.120785, 30.317389, 50.965595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758881, 30.148008, 50.947262> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287364, -0.686309, 0.668133,
		-0.314377, 0.591329, 0.742629,
		-0.904759, -0.423451, -0.045833,
		37.487453, 30.020973, 50.933514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991772, 30.074890, 51.653057>,  <38.120785, 30.317389, 50.965595>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991772, 30.074890, 51.653057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.741917, 29.860914, 51.425491>,  <37.592003, 29.732529, 51.288952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.741917, 29.860914, 51.425491>,  <37.991772, 30.074890, 51.653057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741917, 29.860914, 51.425491> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255762, -0.828485, 0.498194,
		-0.737844, 0.165684, 0.654320,
		-0.624638, -0.534940, -0.568917,
		37.554527, 29.700432, 51.254818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550068, 29.761868, 52.087257>,  <37.991772, 30.074890, 51.653057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550068, 29.761868, 52.087257> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.553810, 29.532919, 51.759281>,  <37.556053, 29.395550, 51.562496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.553810, 29.532919, 51.759281>,  <37.550068, 29.761868, 52.087257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553810, 29.532919, 51.759281> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290031, -0.783177, 0.550014,
		-0.956971, -0.242952, 0.158682,
		0.009351, -0.572371, -0.819941,
		37.556614, 29.361208, 51.513298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221703, 29.075722, 52.316441>,  <37.550068, 29.761868, 52.087257>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221703, 29.075722, 52.316441> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.438221, 29.007755, 51.987045>,  <37.568130, 28.966974, 51.789410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.438221, 29.007755, 51.987045>,  <37.221703, 29.075722, 52.316441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438221, 29.007755, 51.987045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368677, -0.832243, 0.414064,
		-0.755697, -0.527730, -0.387843,
		0.541294, -0.169918, -0.823486,
		37.600609, 28.956779, 51.739998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047970, 28.421276, 52.217587>,  <37.221703, 29.075722, 52.316441>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047970, 28.421276, 52.217587> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.387562, 28.499777, 52.021332>,  <37.591316, 28.546877, 51.903580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.387562, 28.499777, 52.021332>,  <37.047970, 28.421276, 52.217587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387562, 28.499777, 52.021332> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400004, -0.845388, 0.354001,
		-0.345306, -0.496795, -0.796215,
		0.848976, 0.196251, -0.490637,
		37.642254, 28.558653, 51.874142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.729340, 38.304131, 38.915150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120541, 38.225365, 38.887600>,  <34.355259, 38.178104, 38.871071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120541, 38.225365, 38.887600>,  <33.729340, 38.304131, 38.915150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120541, 38.225365, 38.887600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108326, -0.761521, 0.639023,
		-0.178282, -0.617503, -0.766098,
		0.977998, -0.196915, -0.068874,
		34.413940, 38.166290, 38.866940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731926, 37.637615, 38.990601>,  <33.729340, 38.304131, 38.915150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731926, 37.637615, 38.990601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117001, 37.714863, 39.066433>,  <34.348045, 37.761211, 39.111935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117001, 37.714863, 39.066433>,  <33.731926, 37.637615, 38.990601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117001, 37.714863, 39.066433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005223, -0.687163, 0.726485,
		0.270571, -0.700367, -0.660513,
		0.962686, 0.193116, 0.189584,
		34.405807, 37.772797, 39.123306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016373, 36.953400, 39.181400>,  <33.731926, 37.637615, 38.990601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016373, 36.953400, 39.181400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291592, 37.223919, 39.286629>,  <34.456722, 37.386230, 39.349766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291592, 37.223919, 39.286629>,  <34.016373, 36.953400, 39.181400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291592, 37.223919, 39.286629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296958, -0.593195, 0.748289,
		0.662120, -0.436738, -0.608980,
		0.688050, 0.676298, 0.263073,
		34.498005, 37.426807, 39.365551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714443, 36.594273, 39.144176>,  <34.016373, 36.953400, 39.181400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714443, 36.594273, 39.144176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732124, 36.901237, 39.400028>,  <34.742733, 37.085415, 39.553539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.732124, 36.901237, 39.400028>,  <34.714443, 36.594273, 39.144176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732124, 36.901237, 39.400028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340159, -0.613560, 0.712627,
		0.939328, 0.186074, -0.288164,
		0.044204, 0.767412, 0.639629,
		34.745384, 37.131462, 39.591915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337166, 36.514606, 39.555183>,  <34.714443, 36.594273, 39.144176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337166, 36.514606, 39.555183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140194, 36.768471, 39.793415>,  <35.022011, 36.920792, 39.936356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.140194, 36.768471, 39.793415>,  <35.337166, 36.514606, 39.555183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140194, 36.768471, 39.793415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231339, -0.564239, 0.792538,
		0.839044, 0.528051, 0.131027,
		-0.492431, 0.634662, 0.595580,
		34.992466, 36.958870, 39.972088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762672, 36.510540, 40.145378>,  <35.337166, 36.514606, 39.555183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762672, 36.510540, 40.145378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394531, 36.633488, 40.242107>,  <35.173649, 36.707256, 40.300144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.394531, 36.633488, 40.242107>,  <35.762672, 36.510540, 40.145378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394531, 36.633488, 40.242107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008230, -0.633416, 0.773768,
		0.391007, 0.710147, 0.585495,
		-0.920351, 0.307367, 0.241826,
		35.118427, 36.725697, 40.314655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784245, 36.785843, 40.788200>,  <35.762672, 36.510540, 40.145378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784245, 36.785843, 40.788200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416962, 36.645069, 40.715496>,  <35.196590, 36.560604, 40.671871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416962, 36.645069, 40.715496>,  <35.784245, 36.785843, 40.788200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416962, 36.645069, 40.715496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143610, -0.723445, 0.675281,
		-0.369151, 0.593944, 0.714813,
		-0.918207, -0.351935, -0.181764,
		35.141499, 36.539490, 40.660965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.576027, 36.610485, 41.401127>,  <35.784245, 36.785843, 40.788200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.576027, 36.610485, 41.401127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257313, 36.439278, 41.230511>,  <35.066086, 36.336555, 41.128139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257313, 36.439278, 41.230511>,  <35.576027, 36.610485, 41.401127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257313, 36.439278, 41.230511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185006, -0.499190, 0.846512,
		-0.575245, 0.753400, 0.318561,
		-0.796784, -0.428017, -0.426540,
		35.018276, 36.310871, 41.102551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962669, 36.794556, 41.895023>,  <35.576027, 36.610485, 41.401127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962669, 36.794556, 41.895023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885929, 36.474380, 41.667873>,  <34.839886, 36.282272, 41.531582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.885929, 36.474380, 41.667873>,  <34.962669, 36.794556, 41.895023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885929, 36.474380, 41.667873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263607, -0.515335, 0.815439,
		-0.945359, 0.306140, -0.112134,
		-0.191851, -0.800443, -0.567877,
		34.828373, 36.234249, 41.497509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348602, 36.575699, 42.121700>,  <34.962669, 36.794556, 41.895023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348602, 36.575699, 42.121700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512856, 36.257259, 41.943890>,  <34.611408, 36.066196, 41.837204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512856, 36.257259, 41.943890>,  <34.348602, 36.575699, 42.121700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512856, 36.257259, 41.943890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205019, -0.555655, 0.805739,
		-0.888454, -0.239725, -0.391385,
		0.410630, -0.796103, -0.444525,
		34.636044, 36.018429, 41.810532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843544, 36.137527, 42.094559>,  <34.348602, 36.575699, 42.121700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843544, 36.137527, 42.094559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167549, 35.905579, 42.059624>,  <34.361950, 35.766407, 42.038662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167549, 35.905579, 42.059624>,  <33.843544, 36.137527, 42.094559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167549, 35.905579, 42.059624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266892, -0.497152, 0.825596,
		-0.522168, -0.645428, -0.557462,
		0.810006, -0.579882, -0.087337,
		34.410553, 35.731617, 42.033424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675041, 35.255630, 42.079041>,  <33.843544, 36.137527, 42.094559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675041, 35.255630, 42.079041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062611, 35.303551, 42.165600>,  <34.295155, 35.332302, 42.217537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062611, 35.303551, 42.165600>,  <33.675041, 35.255630, 42.079041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062611, 35.303551, 42.165600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105259, -0.591996, 0.799038,
		0.223832, -0.796987, -0.560991,
		0.968927, 0.119801, 0.216398,
		34.353291, 35.339493, 42.230518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881176, 34.618851, 41.786911>,  <33.675041, 35.255630, 42.079041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881176, 34.618851, 41.786911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698338, 34.311932, 41.606995>,  <33.588634, 34.127781, 41.499046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.698338, 34.311932, 41.606995>,  <33.881176, 34.618851, 41.786911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698338, 34.311932, 41.606995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033988, 0.490276, -0.870904,
		0.888766, -0.413378, -0.198026,
		-0.457100, -0.767299, -0.449790,
		33.561207, 34.081741, 41.472057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.189529, 34.518715, 41.219826>,  <33.881176, 34.618851, 41.786911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.189529, 34.518715, 41.219826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831757, 34.361012, 41.135387>,  <33.617092, 34.266392, 41.084724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831757, 34.361012, 41.135387>,  <34.189529, 34.518715, 41.219826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831757, 34.361012, 41.135387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043316, 0.393439, -0.918330,
		0.445113, -0.830522, -0.334824,
		-0.894426, -0.394257, -0.211100,
		33.563427, 34.242737, 41.072060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220383, 34.365364, 40.436573>,  <34.189529, 34.518715, 41.219826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220383, 34.365364, 40.436573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830990, 34.357594, 40.527748>,  <33.597355, 34.352932, 40.582455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830990, 34.357594, 40.527748>,  <34.220383, 34.365364, 40.436573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830990, 34.357594, 40.527748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228460, 0.134198, -0.964260,
		-0.011857, -0.990764, -0.135078,
		-0.973481, -0.019427, 0.227941,
		33.538944, 34.351765, 40.596130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904808, 33.844368, 40.010498>,  <34.220383, 34.365364, 40.436573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904808, 33.844368, 40.010498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610725, 34.091347, 40.122375>,  <33.434277, 34.239536, 40.189503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610725, 34.091347, 40.122375>,  <33.904808, 33.844368, 40.010498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610725, 34.091347, 40.122375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315258, 0.053813, -0.947479,
		-0.600074, -0.784766, 0.155093,
		-0.735203, 0.617452, 0.279696,
		33.390163, 34.276581, 40.206284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370117, 33.445400, 39.816399>,  <33.904808, 33.844368, 40.010498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370117, 33.445400, 39.816399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264603, 33.830582, 39.838799>,  <33.201294, 34.061691, 39.852238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264603, 33.830582, 39.838799>,  <33.370117, 33.445400, 39.816399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264603, 33.830582, 39.838799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202031, 0.001613, -0.979378,
		-0.943186, -0.269661, 0.194121,
		-0.263787, 0.962954, 0.056001,
		33.185467, 34.119469, 39.855598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820847, 33.509384, 39.442455>,  <33.370117, 33.445400, 39.816399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820847, 33.509384, 39.442455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902679, 33.900913, 39.445492>,  <32.951778, 34.135830, 39.447315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902679, 33.900913, 39.445492>,  <32.820847, 33.509384, 39.442455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902679, 33.900913, 39.445492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181652, 0.045590, -0.982305,
		-0.961846, 0.199583, 0.187132,
		0.204583, 0.978820, 0.007596,
		32.964054, 34.194561, 39.447769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255302, 33.785683, 39.181129>,  <32.820847, 33.509384, 39.442455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255302, 33.785683, 39.181129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540150, 34.063759, 39.141922>,  <32.711056, 34.230602, 39.118397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540150, 34.063759, 39.141922>,  <32.255302, 33.785683, 39.181129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540150, 34.063759, 39.141922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204307, 0.071631, -0.976283,
		-0.671679, 0.715250, 0.193041,
		0.712114, 0.695188, -0.098018,
		32.753784, 34.272316, 39.112518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931858, 34.431999, 38.871250>,  <32.255302, 33.785683, 39.181129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931858, 34.431999, 38.871250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324532, 34.493073, 38.825665>,  <32.560135, 34.529716, 38.798313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324532, 34.493073, 38.825665>,  <31.931858, 34.431999, 38.871250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324532, 34.493073, 38.825665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127236, 0.080142, -0.988629,
		-0.141813, 0.985021, 0.098101,
		0.981682, 0.152683, -0.113965,
		32.619038, 34.538876, 38.791473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961643, 35.080662, 38.448170>,  <31.931858, 34.431999, 38.871250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961643, 35.080662, 38.448170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276604, 34.837521, 38.407146>,  <32.465580, 34.691635, 38.382534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.276604, 34.837521, 38.407146>,  <31.961643, 35.080662, 38.448170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276604, 34.837521, 38.407146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178864, -0.066074, -0.981653,
		0.589921, 0.791299, -0.160749,
		0.787402, -0.607849, -0.102556,
		32.512825, 34.655167, 38.376381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170990, 35.216587, 37.762844>,  <31.961643, 35.080662, 38.448170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170990, 35.216587, 37.762844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366669, 34.877129, 37.843327>,  <32.484074, 34.673454, 37.891617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366669, 34.877129, 37.843327>,  <32.170990, 35.216587, 37.762844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366669, 34.877129, 37.843327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295923, -0.378511, -0.877017,
		0.820439, 0.369490, -0.436300,
		0.489193, -0.848650, 0.201204,
		32.513428, 34.622532, 37.903687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679638, 35.135284, 37.292053>,  <32.170990, 35.216587, 37.762844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679638, 35.135284, 37.292053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579090, 34.774231, 37.431808>,  <32.518761, 34.557598, 37.515663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.579090, 34.774231, 37.431808>,  <32.679638, 35.135284, 37.292053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579090, 34.774231, 37.431808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447818, -0.211557, -0.868736,
		0.858063, -0.374834, -0.351037,
		-0.251368, -0.902631, 0.349387,
		32.503681, 34.503441, 37.536625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987606, 34.642864, 36.768723>,  <32.679638, 35.135284, 37.292053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987606, 34.642864, 36.768723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710018, 34.443623, 36.976685>,  <32.543465, 34.324078, 37.101463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.710018, 34.443623, 36.976685>,  <32.987606, 34.642864, 36.768723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710018, 34.443623, 36.976685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445755, -0.269837, -0.853516,
		0.565427, -0.824065, -0.034772,
		-0.693970, -0.498101, 0.519905,
		32.501827, 34.294193, 37.132656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804111, 34.194439, 36.286156>,  <32.987606, 34.642864, 36.768723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804111, 34.194439, 36.286156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520046, 34.122700, 36.558483>,  <32.349609, 34.079655, 36.721878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520046, 34.122700, 36.558483>,  <32.804111, 34.194439, 36.286156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520046, 34.122700, 36.558483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457381, -0.617626, -0.639797,
		0.535236, -0.765749, 0.356582,
		-0.710159, -0.179349, 0.680815,
		32.306999, 34.068893, 36.762726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695164, 33.464287, 36.300499>,  <32.804111, 34.194439, 36.286156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695164, 33.464287, 36.300499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360897, 33.664360, 36.391247>,  <32.160336, 33.784405, 36.445694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.360897, 33.664360, 36.391247>,  <32.695164, 33.464287, 36.300499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.360897, 33.664360, 36.391247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497720, -0.515018, -0.697876,
		-0.232228, -0.696111, 0.679338,
		-0.835671, 0.500186, 0.226867,
		32.110195, 33.814415, 36.459305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005417, 33.199604, 36.342133>,  <32.695164, 33.464287, 36.300499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005417, 33.199604, 36.342133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017807, 32.853722, 36.141602>,  <32.025242, 32.646194, 36.021282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.017807, 32.853722, 36.141602>,  <32.005417, 33.199604, 36.342133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017807, 32.853722, 36.141602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570221, -0.396650, 0.719387,
		-0.820907, -0.308154, 0.480783,
		0.030979, -0.864702, -0.501329,
		32.027100, 32.594311, 35.991203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826937, 32.635712, 36.777813>,  <32.005417, 33.199604, 36.342133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826937, 32.635712, 36.777813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049473, 32.456417, 36.497936>,  <32.182995, 32.348839, 36.330009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049473, 32.456417, 36.497936>,  <31.826937, 32.635712, 36.777813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049473, 32.456417, 36.497936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519715, -0.469319, 0.713888,
		-0.648369, -0.760805, -0.028146,
		0.556339, -0.448235, -0.699694,
		32.216373, 32.321945, 36.288029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.808109, 31.933435, 36.999100>,  <31.826937, 32.635712, 36.777813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.808109, 31.933435, 36.999100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132317, 31.977961, 36.769085>,  <32.326839, 32.004677, 36.631077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.132317, 31.977961, 36.769085>,  <31.808109, 31.933435, 36.999100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132317, 31.977961, 36.769085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483837, -0.680549, 0.550232,
		-0.330095, -0.724198, -0.605453,
		0.810517, 0.111312, -0.575040,
		32.375473, 32.011353, 36.596573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102261, 31.292524, 36.637024>,  <31.808109, 31.933435, 36.999100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102261, 31.292524, 36.637024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399605, 31.550106, 36.709393>,  <32.578011, 31.704655, 36.752815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399605, 31.550106, 36.709393>,  <32.102261, 31.292524, 36.637024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399605, 31.550106, 36.709393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517941, -0.725310, 0.453501,
		0.423261, -0.243407, -0.872699,
		0.743362, 0.643956, 0.180925,
		32.622612, 31.743294, 36.763672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685108, 31.003572, 36.454765>,  <32.102261, 31.292524, 36.637024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685108, 31.003572, 36.454765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834278, 31.284197, 36.697662>,  <32.923779, 31.452572, 36.843399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.834278, 31.284197, 36.697662>,  <32.685108, 31.003572, 36.454765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834278, 31.284197, 36.697662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623179, -0.674253, 0.396271,
		0.687443, 0.230643, -0.688641,
		0.372921, 0.701560, 0.607242,
		32.946156, 31.494665, 36.879833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427422, 30.888809, 36.457783>,  <32.685108, 31.003572, 36.454765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427422, 30.888809, 36.457783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351154, 31.102926, 36.786930>,  <33.305393, 31.231396, 36.984417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.351154, 31.102926, 36.786930>,  <33.427422, 30.888809, 36.457783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351154, 31.102926, 36.786930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587413, -0.609389, 0.532532,
		0.786506, 0.584900, -0.198246,
		-0.190669, 0.535292, 0.822866,
		33.293953, 31.263514, 37.033791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057976, 30.981243, 36.759750>,  <33.427422, 30.888809, 36.457783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057976, 30.981243, 36.759750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796436, 31.040655, 37.056511>,  <33.639511, 31.076303, 37.234566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796436, 31.040655, 37.056511>,  <34.057976, 30.981243, 36.759750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796436, 31.040655, 37.056511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546485, -0.585448, 0.598836,
		0.523291, 0.796987, 0.301625,
		-0.653851, 0.148532, 0.741901,
		33.600281, 31.085215, 37.279079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499718, 31.026531, 37.216999>,  <34.057976, 30.981243, 36.759750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499718, 31.026531, 37.216999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157883, 30.998747, 37.422852>,  <33.952782, 30.982077, 37.546364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157883, 30.998747, 37.422852>,  <34.499718, 31.026531, 37.216999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157883, 30.998747, 37.422852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484854, -0.461651, 0.742829,
		0.185982, 0.884338, 0.428202,
		-0.854592, -0.069462, 0.514634,
		33.901505, 30.977907, 37.577240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524223, 31.351124, 37.928989>,  <34.499718, 31.026531, 37.216999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524223, 31.351124, 37.928989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240231, 31.069775, 37.942825>,  <34.069836, 30.900965, 37.951126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240231, 31.069775, 37.942825>,  <34.524223, 31.351124, 37.928989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240231, 31.069775, 37.942825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452298, -0.417802, 0.787952,
		-0.539774, 0.575073, 0.614765,
		-0.709979, -0.703373, 0.034585,
		34.027237, 30.858763, 37.953201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277920, 31.434214, 38.583496>,  <34.524223, 31.351124, 37.928989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277920, 31.434214, 38.583496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154732, 31.069559, 38.474632>,  <34.080818, 30.850767, 38.409313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154732, 31.069559, 38.474632>,  <34.277920, 31.434214, 38.583496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154732, 31.069559, 38.474632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446481, -0.391096, 0.804797,
		-0.840123, 0.126343, 0.527476,
		-0.307974, -0.911637, -0.272159,
		34.062340, 30.796068, 38.392986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062469, 31.128345, 39.213089>,  <34.277920, 31.434214, 38.583496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062469, 31.128345, 39.213089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130096, 30.815706, 38.972916>,  <34.170673, 30.628122, 38.828812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130096, 30.815706, 38.972916>,  <34.062469, 31.128345, 39.213089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130096, 30.815706, 38.972916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453125, -0.479363, 0.751590,
		-0.875268, -0.399139, 0.273118,
		0.169066, -0.781600, -0.600431,
		34.180817, 30.581226, 38.792786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838448, 30.626184, 39.669117>,  <34.062469, 31.128345, 39.213089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838448, 30.626184, 39.669117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090069, 30.469048, 39.400799>,  <34.241043, 30.374765, 39.239807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.090069, 30.469048, 39.400799>,  <33.838448, 30.626184, 39.669117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.090069, 30.469048, 39.400799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459499, -0.508117, 0.728476,
		-0.627021, -0.766479, -0.139120,
		0.629050, -0.392845, -0.670796,
		34.278786, 30.351194, 39.199558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886490, 29.964170, 39.944443>,  <33.838448, 30.626184, 39.669117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886490, 29.964170, 39.944443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192677, 30.004887, 39.690292>,  <34.376389, 30.029316, 39.537804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192677, 30.004887, 39.690292>,  <33.886490, 29.964170, 39.944443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192677, 30.004887, 39.690292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601778, -0.462901, 0.650835,
		-0.227864, -0.880546, -0.415592,
		0.765468, 0.101793, -0.635371,
		34.422318, 30.035425, 39.499680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251141, 29.346447, 39.882427>,  <33.886490, 29.964170, 39.944443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251141, 29.346447, 39.882427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525043, 29.597073, 39.733551>,  <34.689384, 29.747448, 39.644226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525043, 29.597073, 39.733551>,  <34.251141, 29.346447, 39.882427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525043, 29.597073, 39.733551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713026, -0.470403, 0.519917,
		0.150681, -0.621399, -0.768868,
		0.684754, 0.626565, -0.372193,
		34.730469, 29.785042, 39.621895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716888, 28.990301, 39.496929>,  <34.251141, 29.346447, 39.882427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716888, 28.990301, 39.496929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927277, 29.315859, 39.595669>,  <35.053509, 29.511192, 39.654915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.927277, 29.315859, 39.595669>,  <34.716888, 28.990301, 39.496929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927277, 29.315859, 39.595669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651845, -0.572193, 0.497688,
		0.546313, -0.100857, -0.831487,
		0.525967, 0.813893, 0.246854,
		35.085068, 29.560026, 39.669724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389881, 28.773726, 39.445255>,  <34.716888, 28.990301, 39.496929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389881, 28.773726, 39.445255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393829, 29.104368, 39.670334>,  <35.396198, 29.302753, 39.805382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393829, 29.104368, 39.670334>,  <35.389881, 28.773726, 39.445255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393829, 29.104368, 39.670334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635797, -0.439514, 0.634500,
		0.771793, 0.351496, -0.529892,
		0.009871, 0.826607, 0.562694,
		35.396790, 29.352350, 39.839142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083584, 28.951374, 39.509712>,  <35.389881, 28.773726, 39.445255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083584, 28.951374, 39.509712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886295, 29.120197, 39.813976>,  <35.767921, 29.221491, 39.996532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.886295, 29.120197, 39.813976>,  <36.083584, 28.951374, 39.509712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886295, 29.120197, 39.813976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585287, -0.485892, 0.649113,
		0.643561, 0.765359, -0.007373,
		-0.493222, 0.422059, 0.760656,
		35.738327, 29.246815, 40.042171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689049, 29.087297, 39.959892>,  <36.083584, 28.951374, 39.509712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689049, 29.087297, 39.959892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356915, 29.093613, 40.182709>,  <36.157635, 29.097403, 40.316399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.356915, 29.093613, 40.182709>,  <36.689049, 29.087297, 39.959892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356915, 29.093613, 40.182709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533887, -0.263931, 0.803309,
		0.159702, 0.964412, 0.210722,
		-0.830337, 0.015789, 0.557037,
		36.107815, 29.098349, 40.349819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941101, 29.214251, 40.611324>,  <36.689049, 29.087297, 39.959892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941101, 29.214251, 40.611324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577156, 29.055006, 40.658058>,  <36.358788, 28.959459, 40.686100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.577156, 29.055006, 40.658058>,  <36.941101, 29.214251, 40.611324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.577156, 29.055006, 40.658058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308602, -0.461141, 0.831934,
		-0.277322, 0.793005, 0.542434,
		-0.909867, -0.398110, 0.116838,
		36.304195, 28.935574, 40.693111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873291, 29.220911, 41.328049>,  <36.941101, 29.214251, 40.611324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873291, 29.220911, 41.328049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604580, 28.953249, 41.200962>,  <36.443352, 28.792652, 41.124710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604580, 28.953249, 41.200962>,  <36.873291, 29.220911, 41.328049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604580, 28.953249, 41.200962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163521, -0.552294, 0.817455,
		-0.722479, 0.497194, 0.480439,
		-0.671777, -0.669156, -0.317719,
		36.403046, 28.752502, 41.105648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518593, 29.131235, 41.828857>,  <36.873291, 29.220911, 41.328049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518593, 29.131235, 41.828857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425262, 28.789028, 41.643967>,  <36.369267, 28.583704, 41.533031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425262, 28.789028, 41.643967>,  <36.518593, 29.131235, 41.828857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425262, 28.789028, 41.643967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334272, -0.516942, 0.788057,
		-0.913139, 0.029364, 0.406590,
		-0.233323, -0.855517, -0.462224,
		36.355267, 28.532373, 41.505299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118916, 28.773817, 42.267220>,  <36.518593, 29.131235, 41.828857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118916, 28.773817, 42.267220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277809, 28.496962, 42.026173>,  <36.373146, 28.330849, 41.881542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277809, 28.496962, 42.026173>,  <36.118916, 28.773817, 42.267220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277809, 28.496962, 42.026173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199418, -0.575862, 0.792853,
		-0.895791, -0.435119, -0.090725,
		0.397230, -0.692138, -0.602622,
		36.396976, 28.289320, 41.845387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212765, 28.303213, 42.818169>,  <36.118916, 28.773817, 42.267220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212765, 28.303213, 42.818169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382854, 28.146248, 42.491928>,  <36.484909, 28.052069, 42.296185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.382854, 28.146248, 42.491928>,  <36.212765, 28.303213, 42.818169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382854, 28.146248, 42.491928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262859, -0.808742, 0.526158,
		-0.866080, -0.438120, -0.240743,
		0.425219, -0.392413, -0.815598,
		36.510422, 28.028524, 42.247250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982979, 27.582289, 42.736874>,  <36.212765, 28.303213, 42.818169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982979, 27.582289, 42.736874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331066, 27.641197, 42.548820>,  <36.539921, 27.676542, 42.435989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.331066, 27.641197, 42.548820>,  <35.982979, 27.582289, 42.736874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331066, 27.641197, 42.548820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416406, -0.729860, 0.542135,
		-0.263291, -0.667544, -0.696465,
		0.870221, 0.147272, -0.470135,
		36.592133, 27.685379, 42.407780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283794, 26.873163, 42.445454>,  <35.982979, 27.582289, 42.736874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283794, 26.873163, 42.445454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604679, 27.109978, 42.476299>,  <36.797211, 27.252066, 42.494808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.604679, 27.109978, 42.476299>,  <36.283794, 26.873163, 42.445454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604679, 27.109978, 42.476299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404982, -0.634509, 0.658323,
		0.438682, -0.496884, -0.748775,
		0.802214, 0.592034, 0.077119,
		36.845345, 27.287588, 42.499435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759506, 26.427658, 42.618206>,  <36.283794, 26.873163, 42.445454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759506, 26.427658, 42.618206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973255, 26.761829, 42.669594>,  <37.101505, 26.962332, 42.700428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.973255, 26.761829, 42.669594>,  <36.759506, 26.427658, 42.618206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973255, 26.761829, 42.669594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458248, -0.414061, 0.786487,
		0.710249, -0.361405, -0.604096,
		0.534374, 0.835428, 0.128474,
		37.133568, 27.012457, 42.708138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556965, 26.193926, 42.638340>,  <36.759506, 26.427658, 42.618206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556965, 26.193926, 42.638340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498791, 26.555527, 42.799152>,  <37.463886, 26.772488, 42.895641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.498791, 26.555527, 42.799152>,  <37.556965, 26.193926, 42.638340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.498791, 26.555527, 42.799152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562469, -0.258749, 0.785288,
		0.813927, 0.340342, -0.470840,
		-0.145437, 0.904000, 0.402034,
		37.455158, 26.826727, 42.919762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125469, 26.504686, 42.830528>,  <37.556965, 26.193926, 42.638340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125469, 26.504686, 42.830528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861034, 26.654587, 43.090534>,  <37.702374, 26.744528, 43.246536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861034, 26.654587, 43.090534>,  <38.125469, 26.504686, 42.830528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861034, 26.654587, 43.090534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503266, -0.421068, 0.754602,
		0.556490, 0.825991, 0.089764,
		-0.661092, 0.374753, 0.650014,
		37.662708, 26.767014, 43.285538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679989, 26.957415, 42.956917>,  <38.125469, 26.504686, 42.830528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679989, 26.957415, 42.956917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069210, 26.943909, 42.865681>,  <39.302742, 26.935804, 42.810940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069210, 26.943909, 42.865681>,  <38.679989, 26.957415, 42.956917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069210, 26.943909, 42.865681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159637, 0.615156, -0.772075,
		0.166384, 0.787682, 0.593189,
		0.973053, -0.033766, -0.228095,
		39.361126, 26.933779, 42.797253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875404, 27.641281, 42.900131>,  <38.679989, 26.957415, 42.956917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875404, 27.641281, 42.900131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202389, 27.471781, 42.744083>,  <39.398579, 27.370081, 42.650455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202389, 27.471781, 42.744083>,  <38.875404, 27.641281, 42.900131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202389, 27.471781, 42.744083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008448, 0.686056, -0.727499,
		0.575924, 0.591406, 0.564403,
		0.817460, -0.423752, -0.390120,
		39.447628, 27.344656, 42.627048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318459, 28.125605, 42.826443>,  <38.875404, 27.641281, 42.900131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.318459, 28.125605, 42.826443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.449089, 27.857901, 42.559479>,  <39.527466, 27.697277, 42.399300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.449089, 27.857901, 42.559479>,  <39.318459, 28.125605, 42.826443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449089, 27.857901, 42.559479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145227, 0.733273, -0.664244,
		0.933948, 0.119997, 0.336662,
		0.326573, -0.669262, -0.667412,
		39.547062, 27.657122, 42.359257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.024166, 28.256046, 42.563232>,  <39.318459, 28.125605, 42.826443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.024166, 28.256046, 42.563232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834911, 28.063383, 42.268169>,  <39.721359, 27.947786, 42.091129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.834911, 28.063383, 42.268169>,  <40.024166, 28.256046, 42.563232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834911, 28.063383, 42.268169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226775, 0.742511, -0.630279,
		0.851299, -0.465494, -0.242086,
		-0.473142, -0.481657, -0.737661,
		39.692970, 27.918886, 42.046871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311382, 28.590302, 41.979824>,  <40.024166, 28.256046, 42.563232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311382, 28.590302, 41.979824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003555, 28.396582, 41.813347>,  <39.818859, 28.280350, 41.713459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003555, 28.396582, 41.813347>,  <40.311382, 28.590302, 41.979824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003555, 28.396582, 41.813347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100985, 0.551266, -0.828196,
		0.630529, -0.679383, -0.375330,
		-0.769568, -0.484299, -0.416197,
		39.772686, 28.251291, 41.688488>
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
