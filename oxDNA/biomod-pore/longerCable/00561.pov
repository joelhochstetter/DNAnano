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
	<23.938274, 35.068935, 34.836849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.334797, 35.020252, 34.856834>,  <24.572710, 34.991043, 34.868824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.334797, 35.020252, 34.856834>,  <23.938274, 35.068935, 34.836849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.334797, 35.020252, 34.856834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125411, 0.988937, -0.079223,
		-0.039767, 0.084800, 0.995604,
		0.991308, -0.121709, 0.049962,
		24.632189, 34.983738, 34.871822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.193369, 35.375919, 35.322445>,  <23.938274, 35.068935, 34.836849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.193369, 35.375919, 35.322445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.504578, 35.355965, 35.071941>,  <24.691303, 35.343990, 34.921638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.504578, 35.355965, 35.071941>,  <24.193369, 35.375919, 35.322445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.504578, 35.355965, 35.071941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084798, 0.996059, 0.025996,
		0.622491, -0.073330, 0.779184,
		0.778020, -0.049891, -0.626256,
		24.737984, 35.340996, 34.884064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.730715, 35.497841, 35.766129>,  <24.193369, 35.375919, 35.322445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.730715, 35.497841, 35.766129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.736383, 35.614712, 35.383625>,  <24.739784, 35.684834, 35.154121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.736383, 35.614712, 35.383625>,  <24.730715, 35.497841, 35.766129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.736383, 35.614712, 35.383625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250512, 0.924818, 0.286278,
		0.968010, -0.243612, -0.060088,
		0.014170, 0.292172, -0.956261,
		24.740635, 35.702362, 35.096748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.396250, 35.782654, 35.522232>,  <24.730715, 35.497841, 35.766129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.396250, 35.782654, 35.522232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.081312, 35.930481, 35.324844>,  <24.892349, 36.019176, 35.206413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.081312, 35.930481, 35.324844>,  <25.396250, 35.782654, 35.522232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.081312, 35.930481, 35.324844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210528, 0.913468, 0.348215,
		0.579454, 0.170277, -0.797019,
		-0.787344, 0.369569, -0.493465,
		24.845108, 36.041351, 35.176804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.558924, 36.380737, 35.159325>,  <25.396250, 35.782654, 35.522232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.558924, 36.380737, 35.159325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.172758, 36.417801, 35.256805>,  <24.941059, 36.440041, 35.315292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.172758, 36.417801, 35.256805>,  <25.558924, 36.380737, 35.159325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.172758, 36.417801, 35.256805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166941, 0.937668, 0.304810,
		-0.200263, 0.334952, -0.920708,
		-0.965415, 0.092662, 0.243697,
		24.883133, 36.445599, 35.329914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.186398, 36.118538, 35.535313>,  <25.558924, 36.380737, 35.159325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.186398, 36.118538, 35.535313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.262983, 35.746536, 35.409817>,  <26.308935, 35.523335, 35.334518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.262983, 35.746536, 35.409817>,  <26.186398, 36.118538, 35.535313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.262983, 35.746536, 35.409817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319269, 0.361283, -0.876095,
		0.928122, 0.067571, 0.366093,
		0.191462, -0.930005, -0.313742,
		26.320421, 35.467533, 35.315693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.928957, 35.883995, 35.552147>,  <26.186398, 36.118538, 35.535313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.928957, 35.883995, 35.552147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236155, 36.067589, 35.730820>,  <27.420473, 36.177746, 35.838024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236155, 36.067589, 35.730820>,  <26.928957, 35.883995, 35.552147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.236155, 36.067589, 35.730820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079496, 0.623729, -0.777588,
		-0.635506, 0.632691, 0.442532,
		0.767992, 0.458982, 0.446680,
		27.466553, 36.205284, 35.864822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.832153, 36.555298, 35.427479>,  <26.928957, 35.883995, 35.552147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.832153, 36.555298, 35.427479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.228058, 36.552265, 35.484489>,  <27.465601, 36.550446, 35.518696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.228058, 36.552265, 35.484489>,  <26.832153, 36.555298, 35.427479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.228058, 36.552265, 35.484489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116913, 0.615866, -0.779128,
		-0.081870, 0.787814, 0.610447,
		0.989762, -0.007581, 0.142527,
		27.524986, 36.549992, 35.527248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.060125, 37.233700, 35.417110>,  <26.832153, 36.555298, 35.427479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.060125, 37.233700, 35.417110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.390917, 37.030338, 35.321083>,  <27.589392, 36.908321, 35.263466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.390917, 37.030338, 35.321083>,  <27.060125, 37.233700, 35.417110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.390917, 37.030338, 35.321083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063851, 0.509154, -0.858304,
		0.558594, 0.694471, 0.453522,
		0.826980, -0.508401, -0.240068,
		27.639011, 36.877819, 35.249062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.559858, 37.734833, 35.155739>,  <27.060125, 37.233700, 35.417110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.559858, 37.734833, 35.155739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708168, 37.387924, 35.022850>,  <27.797153, 37.179779, 34.943115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708168, 37.387924, 35.022850>,  <27.559858, 37.734833, 35.155739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708168, 37.387924, 35.022850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182432, 0.418765, -0.889581,
		0.910628, 0.269227, 0.313486,
		0.370776, -0.867267, -0.332224,
		27.819401, 37.127743, 34.923183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276428, 37.822475, 34.971733>,  <27.559858, 37.734833, 35.155739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.276428, 37.822475, 34.971733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.085415, 37.541107, 34.761147>,  <27.970806, 37.372288, 34.634796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.085415, 37.541107, 34.761147>,  <28.276428, 37.822475, 34.971733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.085415, 37.541107, 34.761147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174596, 0.511273, -0.841496,
		0.861091, -0.493760, -0.121335,
		-0.477533, -0.703421, -0.526462,
		27.942156, 37.330082, 34.603207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.790718, 37.967041, 34.299847>,  <28.276428, 37.822475, 34.971733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.790718, 37.967041, 34.299847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750832, 37.786003, 33.945396>,  <27.726900, 37.677380, 33.732727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750832, 37.786003, 33.945396>,  <27.790718, 37.967041, 34.299847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750832, 37.786003, 33.945396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136758, -0.875874, 0.462754,
		-0.985573, 0.167329, 0.025444,
		-0.099718, -0.452598, -0.886122,
		27.720917, 37.650223, 33.679562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.000401, 37.896748, 34.009937>,  <27.790718, 37.967041, 34.299847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.000401, 37.896748, 34.009937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.142012, 37.638870, 33.738930>,  <27.226978, 37.484146, 33.576324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.142012, 37.638870, 33.738930>,  <27.000401, 37.896748, 34.009937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.142012, 37.638870, 33.738930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600764, -0.398442, 0.693056,
		-0.716760, -0.652394, 0.246246,
		0.354030, -0.644691, -0.677522,
		27.248220, 37.445461, 33.535671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.074608, 37.267654, 34.268482>,  <27.000401, 37.896748, 34.009937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.074608, 37.267654, 34.268482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.330620, 37.238907, 33.962490>,  <27.484226, 37.221661, 33.778896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.330620, 37.238907, 33.962490>,  <27.074608, 37.267654, 34.268482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.330620, 37.238907, 33.962490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643176, -0.494559, 0.584582,
		-0.420339, -0.866168, -0.270311,
		0.640031, -0.071865, -0.764981,
		27.522629, 37.217346, 33.732994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.143288, 36.663593, 33.908222>,  <27.074608, 37.267654, 34.268482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.143288, 36.663593, 33.908222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455885, 36.905273, 33.970455>,  <27.643444, 37.050282, 34.007793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455885, 36.905273, 33.970455>,  <27.143288, 36.663593, 33.908222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455885, 36.905273, 33.970455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208077, -0.487487, 0.847975,
		0.588192, -0.630315, -0.506689,
		0.781495, 0.604202, 0.155581,
		27.690334, 37.086533, 34.017128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.644341, 36.252773, 33.948608>,  <27.143288, 36.663593, 33.908222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.644341, 36.252773, 33.948608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.725790, 36.585022, 34.155918>,  <27.774660, 36.784370, 34.280304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.725790, 36.585022, 34.155918>,  <27.644341, 36.252773, 33.948608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.725790, 36.585022, 34.155918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280911, -0.556673, 0.781796,
		0.937884, -0.013602, -0.346681,
		0.203622, 0.830620, 0.518274,
		27.786877, 36.834209, 34.311401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.178331, 36.038773, 34.361195>,  <27.644341, 36.252773, 33.948608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.178331, 36.038773, 34.361195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.051262, 36.374969, 34.536762>,  <27.975019, 36.576687, 34.642101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.051262, 36.374969, 34.536762>,  <28.178331, 36.038773, 34.361195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.051262, 36.374969, 34.536762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328690, -0.336580, 0.882426,
		0.889407, 0.424593, -0.169340,
		-0.317676, 0.840496, 0.438917,
		27.955959, 36.627117, 34.668438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.739777, 36.262627, 34.913345>,  <28.178331, 36.038773, 34.361195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.739777, 36.262627, 34.913345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.401449, 36.441227, 35.030117>,  <28.198452, 36.548389, 35.100182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.401449, 36.441227, 35.030117>,  <28.739777, 36.262627, 34.913345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.401449, 36.441227, 35.030117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294406, -0.065666, 0.953422,
		0.444876, 0.892369, -0.075911,
		-0.845820, 0.446503, 0.291932,
		28.147703, 36.575176, 35.117695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855492, 36.965652, 35.270866>,  <28.739777, 36.262627, 34.913345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855492, 36.965652, 35.270866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581495, 36.692471, 35.372345>,  <28.417097, 36.528561, 35.433231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581495, 36.692471, 35.372345>,  <28.855492, 36.965652, 35.270866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.581495, 36.692471, 35.372345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553955, -0.262057, 0.790228,
		-0.473206, 0.681835, 0.557832,
		-0.684989, -0.682955, 0.253699,
		28.375999, 36.487583, 35.448456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.682941, 37.323021, 35.835377>,  <28.855492, 36.965652, 35.270866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.682941, 37.323021, 35.835377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676596, 36.923088, 35.831860>,  <28.672789, 36.683128, 35.829750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676596, 36.923088, 35.831860>,  <28.682941, 37.323021, 35.835377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676596, 36.923088, 35.831860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654242, -0.017032, 0.756093,
		-0.756118, 0.006242, 0.654405,
		-0.015865, -0.999835, -0.008795,
		28.671837, 36.623138, 35.829220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585604, 36.995972, 36.486744>,  <28.682941, 37.323021, 35.835377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585604, 36.995972, 36.486744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857483, 36.813419, 36.257053>,  <29.020611, 36.703888, 36.119240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857483, 36.813419, 36.257053>,  <28.585604, 36.995972, 36.486744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857483, 36.813419, 36.257053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693611, 0.145281, 0.705547,
		-0.238572, -0.877846, 0.415295,
		0.679696, -0.456377, -0.574224,
		29.061392, 36.676506, 36.084785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.863400, 36.351456, 36.836250>,  <28.585604, 36.995972, 36.486744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.863400, 36.351456, 36.836250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.104837, 36.530006, 36.572002>,  <29.249701, 36.637135, 36.413452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.104837, 36.530006, 36.572002>,  <28.863400, 36.351456, 36.836250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.104837, 36.530006, 36.572002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730596, 0.022089, 0.682453,
		0.319222, -0.894574, -0.312786,
		0.603595, 0.446374, -0.660623,
		29.285915, 36.663918, 36.373814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386442, 36.774334, 37.117668>,  <28.863400, 36.351456, 36.836250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386442, 36.774334, 37.117668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.079330, 36.684631, 37.357742>,  <28.895063, 36.630810, 37.501789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.079330, 36.684631, 37.357742>,  <29.386442, 36.774334, 37.117668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.079330, 36.684631, 37.357742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612334, 0.018886, 0.790373,
		-0.188583, 0.974347, 0.122820,
		-0.767778, -0.224258, 0.600188,
		28.848997, 36.617355, 37.537800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.446741, 37.250343, 37.709957>,  <29.386442, 36.774334, 37.117668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.446741, 37.250343, 37.709957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227404, 36.945324, 37.847267>,  <29.095800, 36.762310, 37.929653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227404, 36.945324, 37.847267>,  <29.446741, 37.250343, 37.709957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227404, 36.945324, 37.847267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410841, 0.111880, 0.904816,
		-0.728374, 0.637180, 0.251938,
		-0.548344, -0.762551, 0.343270,
		29.062901, 36.716560, 37.950249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215530, 37.237122, 37.744869>,  <29.446741, 37.250343, 37.709957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215530, 37.237122, 37.744869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527229, 37.403275, 37.932583>,  <30.714249, 37.502964, 38.045212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.527229, 37.403275, 37.932583>,  <30.215530, 37.237122, 37.744869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527229, 37.403275, 37.932583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532668, -0.833507, -0.146733,
		0.330205, 0.364316, -0.870769,
		0.779249, 0.415378, 0.469288,
		30.761003, 37.527889, 38.073368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853491, 37.370735, 37.272327>,  <30.215530, 37.237122, 37.744869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853491, 37.370735, 37.272327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979734, 37.288273, 37.642818>,  <31.055481, 37.238796, 37.865112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979734, 37.288273, 37.642818>,  <30.853491, 37.370735, 37.272327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979734, 37.288273, 37.642818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589673, -0.722142, -0.361659,
		0.743422, 0.660312, -0.106351,
		0.315609, -0.206153, 0.926225,
		31.074417, 37.226425, 37.920685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070875, 37.460632, 36.473816>,  <30.853491, 37.370735, 37.272327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070875, 37.460632, 36.473816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.675438, 37.450882, 36.533272>,  <30.438175, 37.445030, 36.568943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.675438, 37.450882, 36.533272>,  <31.070875, 37.460632, 36.473816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.675438, 37.450882, 36.533272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006071, 0.992465, 0.122375,
		-0.150499, 0.120076, -0.981291,
		-0.988592, -0.024375, 0.148636,
		30.378860, 37.443569, 36.577862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639311, 36.987381, 36.250824>,  <31.070875, 37.460632, 36.473816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639311, 36.987381, 36.250824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022469, 37.019642, 36.140602>,  <32.252365, 37.038998, 36.074467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022469, 37.019642, 36.140602>,  <31.639311, 36.987381, 36.250824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022469, 37.019642, 36.140602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250304, 0.235608, 0.939062,
		0.140657, -0.968496, 0.205501,
		0.957895, 0.080648, -0.275558,
		32.309837, 37.043839, 36.057934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075932, 36.480518, 36.553410>,  <31.639311, 36.987381, 36.250824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075932, 36.480518, 36.553410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342007, 36.767315, 36.470028>,  <32.501652, 36.939392, 36.419998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342007, 36.767315, 36.470028>,  <32.075932, 36.480518, 36.553410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342007, 36.767315, 36.470028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297902, 0.001151, 0.954596,
		0.684674, -0.697085, -0.212826,
		0.665189, 0.716988, -0.208451,
		32.541565, 36.982410, 36.407494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783485, 36.289162, 36.607136>,  <32.075932, 36.480518, 36.553410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783485, 36.289162, 36.607136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770985, 36.686718, 36.649479>,  <32.763485, 36.925251, 36.674885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770985, 36.686718, 36.649479>,  <32.783485, 36.289162, 36.607136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770985, 36.686718, 36.649479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418227, -0.083191, 0.904525,
		0.907805, 0.072543, -0.413071,
		-0.031253, 0.993890, 0.105861,
		32.761608, 36.984886, 36.681236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.486877, 36.534866, 36.710213>,  <32.783485, 36.289162, 36.607136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.486877, 36.534866, 36.710213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201450, 36.770741, 36.861519>,  <33.030193, 36.912266, 36.952301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201450, 36.770741, 36.861519>,  <33.486877, 36.534866, 36.710213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201450, 36.770741, 36.861519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577455, 0.189335, 0.794165,
		0.396691, 0.785124, -0.475622,
		-0.713570, 0.589689, 0.378266,
		32.987381, 36.947647, 36.974998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373856, 36.726200, 37.445827>,  <33.486877, 36.534866, 36.710213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373856, 36.726200, 37.445827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567181, 36.686794, 37.793781>,  <33.683174, 36.663151, 38.002556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567181, 36.686794, 37.793781>,  <33.373856, 36.726200, 37.445827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567181, 36.686794, 37.793781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738279, -0.579868, 0.344524,
		0.470481, -0.808733, -0.352985,
		0.483313, -0.098510, 0.869888,
		33.712173, 36.657242, 38.054749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275455, 36.022869, 37.584583>,  <33.373856, 36.726200, 37.445827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275455, 36.022869, 37.584583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394413, 36.165588, 37.938816>,  <33.465786, 36.251221, 38.151356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.394413, 36.165588, 37.938816>,  <33.275455, 36.022869, 37.584583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394413, 36.165588, 37.938816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615165, -0.637743, 0.463525,
		0.730158, -0.682627, 0.029829,
		0.297392, 0.356797, 0.885581,
		33.483631, 36.272629, 38.204491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482674, 35.465210, 37.990910>,  <33.275455, 36.022869, 37.584583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482674, 35.465210, 37.990910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398018, 35.743645, 38.265331>,  <33.347225, 35.910706, 38.429985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398018, 35.743645, 38.265331>,  <33.482674, 35.465210, 37.990910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398018, 35.743645, 38.265331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604130, -0.644965, 0.468025,
		0.768268, -0.315415, 0.557026,
		-0.211640, 0.696085, 0.686057,
		33.334526, 35.952469, 38.471149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625786, 35.201424, 38.742115>,  <33.482674, 35.465210, 37.990910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625786, 35.201424, 38.742115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354645, 35.495461, 38.747192>,  <33.191959, 35.671883, 38.750240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354645, 35.495461, 38.747192>,  <33.625786, 35.201424, 38.742115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354645, 35.495461, 38.747192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618063, -0.579119, 0.531619,
		0.398139, 0.352512, 0.846889,
		-0.677852, 0.735089, 0.012695,
		33.151291, 35.715988, 38.750999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973991, 34.946541, 38.982677>,  <33.625786, 35.201424, 38.742115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973991, 34.946541, 38.982677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884602, 35.336151, 38.997257>,  <32.830967, 35.569916, 39.006004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884602, 35.336151, 38.997257>,  <32.973991, 34.946541, 38.982677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884602, 35.336151, 38.997257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861189, -0.214828, 0.460654,
		0.456520, 0.071556, 0.886831,
		-0.223479, 0.974027, 0.036450,
		32.817558, 35.628361, 39.008194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695282, 35.031963, 39.642586>,  <32.973991, 34.946541, 38.982677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695282, 35.031963, 39.642586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587677, 35.330948, 39.399628>,  <32.523113, 35.510338, 39.253853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587677, 35.330948, 39.399628>,  <32.695282, 35.031963, 39.642586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587677, 35.330948, 39.399628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959337, -0.151996, 0.237845,
		0.085459, 0.646679, 0.757960,
		-0.269016, 0.747464, -0.607393,
		32.506973, 35.555187, 39.217411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241318, 35.507969, 40.048813>,  <32.695282, 35.031963, 39.642586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241318, 35.507969, 40.048813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178970, 35.544453, 39.655392>,  <32.141560, 35.566345, 39.419338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178970, 35.544453, 39.655392>,  <32.241318, 35.507969, 40.048813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178970, 35.544453, 39.655392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985976, -0.074482, 0.149347,
		-0.059635, 0.993042, 0.101543,
		-0.155871, 0.091213, -0.983557,
		32.132210, 35.571815, 39.360325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849001, 36.177155, 40.034367>,  <32.241318, 35.507969, 40.048813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849001, 36.177155, 40.034367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783268, 35.936794, 39.721470>,  <31.743828, 35.792576, 39.533730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.783268, 35.936794, 39.721470>,  <31.849001, 36.177155, 40.034367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783268, 35.936794, 39.721470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976847, -0.010991, 0.213657,
		-0.136985, 0.799245, -0.585186,
		-0.164332, -0.600905, -0.782245,
		31.733969, 35.756523, 39.486797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263887, 35.638062, 40.119747>,  <31.849001, 36.177155, 40.034367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263887, 35.638062, 40.119747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523077, 35.335991, 40.159428>,  <31.678591, 35.154751, 40.183235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523077, 35.335991, 40.159428>,  <31.263887, 35.638062, 40.119747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523077, 35.335991, 40.159428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757055, 0.652873, 0.024988,
		-0.083639, 0.058912, 0.994753,
		0.647976, -0.755173, 0.099205,
		31.717470, 35.109440, 40.189190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120863, 35.364594, 39.471142>,  <31.263887, 35.638062, 40.119747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120863, 35.364594, 39.471142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876295, 35.595135, 39.254265>,  <30.729555, 35.733459, 39.124138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876295, 35.595135, 39.254265>,  <31.120863, 35.364594, 39.471142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876295, 35.595135, 39.254265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720153, 0.121326, -0.683125,
		-0.327942, -0.808141, -0.489247,
		-0.611420, 0.576358, -0.542197,
		30.692869, 35.768044, 39.091606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263651, 34.977146, 38.855675>,  <31.120863, 35.364594, 39.471142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263651, 34.977146, 38.855675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.221666, 35.372433, 38.900219>,  <31.196476, 35.609604, 38.926945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.221666, 35.372433, 38.900219>,  <31.263651, 34.977146, 38.855675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221666, 35.372433, 38.900219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921701, 0.138720, -0.362250,
		-0.373431, 0.064621, -0.925404,
		-0.104963, 0.988221, 0.111364,
		31.190178, 35.668900, 38.933628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632298, 35.226925, 38.319042>,  <31.263651, 34.977146, 38.855675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632298, 35.226925, 38.319042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600943, 35.514664, 38.595127>,  <31.582130, 35.687309, 38.760777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.600943, 35.514664, 38.595127>,  <31.632298, 35.226925, 38.319042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600943, 35.514664, 38.595127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974356, 0.201759, -0.099621,
		-0.210918, 0.664701, -0.716718,
		-0.078386, 0.719351, 0.690210,
		31.577427, 35.730469, 38.802189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844584, 35.957710, 38.140484>,  <31.632298, 35.226925, 38.319042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844584, 35.957710, 38.140484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927759, 35.858349, 38.518913>,  <31.977665, 35.798733, 38.745972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927759, 35.858349, 38.518913>,  <31.844584, 35.957710, 38.140484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927759, 35.858349, 38.518913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937965, 0.324997, -0.120824,
		-0.277458, 0.912509, 0.300574,
		0.207939, -0.248405, 0.946074,
		31.990141, 35.783829, 38.802734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158794, 36.521091, 38.474567>,  <31.844584, 35.957710, 38.140484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158794, 36.521091, 38.474567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279926, 36.213459, 38.699711>,  <32.352604, 36.028881, 38.834797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279926, 36.213459, 38.699711>,  <32.158794, 36.521091, 38.474567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279926, 36.213459, 38.699711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947764, 0.305107, -0.093026,
		-0.100188, 0.561628, 0.821302,
		0.302830, -0.769080, 0.562859,
		32.370777, 35.982735, 38.868568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.494068, 36.795197, 39.141930>,  <32.158794, 36.521091, 38.474567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.494068, 36.795197, 39.141930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661953, 36.471828, 38.976856>,  <32.762684, 36.277809, 38.877811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.661953, 36.471828, 38.976856>,  <32.494068, 36.795197, 39.141930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661953, 36.471828, 38.976856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858341, 0.501339, -0.109134,
		0.295120, -0.308419, 0.904313,
		0.419709, -0.808416, -0.412684,
		32.787865, 36.229305, 38.853050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182095, 36.844303, 39.482468>,  <32.494068, 36.795197, 39.141930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182095, 36.844303, 39.482468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222954, 36.619804, 39.153938>,  <33.247471, 36.485107, 38.956821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222954, 36.619804, 39.153938>,  <33.182095, 36.844303, 39.482468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222954, 36.619804, 39.153938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873131, 0.446208, -0.196321,
		0.476664, -0.697068, 0.535618,
		0.102148, -0.561244, -0.821323,
		33.253597, 36.451431, 38.907543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862854, 36.673847, 39.399597>,  <33.182095, 36.844303, 39.482468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862854, 36.673847, 39.399597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753063, 36.584541, 39.025471>,  <33.687191, 36.530956, 38.800995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753063, 36.584541, 39.025471>,  <33.862854, 36.673847, 39.399597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753063, 36.584541, 39.025471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891903, 0.304436, -0.334405,
		0.359405, -0.925998, 0.115570,
		-0.274474, -0.223264, -0.935316,
		33.670719, 36.517563, 38.744877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417801, 36.460533, 39.052845>,  <33.862854, 36.673847, 39.399597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417801, 36.460533, 39.052845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167339, 36.580112, 38.764801>,  <34.017063, 36.651859, 38.591976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167339, 36.580112, 38.764801>,  <34.417801, 36.460533, 39.052845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167339, 36.580112, 38.764801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779142, 0.274753, -0.563425,
		0.029416, -0.913859, -0.404964,
		-0.626156, 0.298951, -0.720109,
		33.979492, 36.669796, 38.548767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881905, 36.196751, 38.512527>,  <34.417801, 36.460533, 39.052845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881905, 36.196751, 38.512527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614590, 36.464329, 38.382351>,  <34.454201, 36.624874, 38.304245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614590, 36.464329, 38.382351>,  <34.881905, 36.196751, 38.512527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614590, 36.464329, 38.382351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726971, 0.494442, -0.476488,
		-0.157829, -0.555018, -0.816728,
		-0.668284, 0.668941, -0.325445,
		34.414104, 36.665012, 38.284718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730946, 36.127899, 37.720306>,  <34.881905, 36.196751, 38.512527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730946, 36.127899, 37.720306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710289, 36.488422, 37.892342>,  <34.697895, 36.704735, 37.995564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.710289, 36.488422, 37.892342>,  <34.730946, 36.127899, 37.720306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710289, 36.488422, 37.892342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732284, 0.327004, -0.597351,
		-0.679038, 0.284102, -0.676900,
		-0.051640, 0.901307, 0.430092,
		34.694798, 36.758816, 38.021370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.559105, 36.629364, 37.214668>,  <34.730946, 36.127899, 37.720306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.559105, 36.629364, 37.214668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765495, 36.807247, 37.507519>,  <34.889328, 36.913979, 37.683228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765495, 36.807247, 37.507519>,  <34.559105, 36.629364, 37.214668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765495, 36.807247, 37.507519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629056, 0.383416, -0.676225,
		-0.581431, 0.809461, -0.081914,
		0.515972, 0.444707, 0.732126,
		34.920288, 36.940659, 37.727158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543434, 37.462421, 37.253120>,  <34.559105, 36.629364, 37.214668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543434, 37.462421, 37.253120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872070, 37.272438, 37.379230>,  <35.069252, 37.158447, 37.454899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.872070, 37.272438, 37.379230>,  <34.543434, 37.462421, 37.253120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872070, 37.272438, 37.379230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552994, 0.529634, -0.643184,
		0.138505, 0.702781, 0.697793,
		0.821592, -0.474960, 0.315277,
		35.118549, 37.129951, 37.473812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056831, 38.028786, 37.458134>,  <34.543434, 37.462421, 37.253120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056831, 38.028786, 37.458134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191616, 37.680023, 37.316017>,  <35.272488, 37.470764, 37.230747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191616, 37.680023, 37.316017>,  <35.056831, 38.028786, 37.458134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191616, 37.680023, 37.316017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483689, 0.484065, -0.729196,
		0.807776, 0.073861, 0.584844,
		0.336962, -0.871909, -0.355290,
		35.292706, 37.418449, 37.209431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450745, 38.202896, 36.858864>,  <35.056831, 38.028786, 37.458134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450745, 38.202896, 36.858864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484688, 37.807243, 36.810829>,  <35.505054, 37.569851, 36.782009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484688, 37.807243, 36.810829>,  <35.450745, 38.202896, 36.858864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484688, 37.807243, 36.810829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527905, 0.146853, -0.836511,
		0.845053, 0.007592, 0.534629,
		0.084862, -0.989129, -0.120091,
		35.510147, 37.510506, 36.774803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187790, 38.040974, 36.715611>,  <35.450745, 38.202896, 36.858864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187790, 38.040974, 36.715611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949776, 37.756744, 36.565403>,  <35.806965, 37.586208, 36.475277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.949776, 37.756744, 36.565403>,  <36.187790, 38.040974, 36.715611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.949776, 37.756744, 36.565403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495061, 0.044014, -0.867742,
		0.633122, -0.702247, 0.325586,
		-0.595039, -0.710572, -0.375522,
		35.771263, 37.543571, 36.452747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684464, 37.408890, 36.493484>,  <36.187790, 38.040974, 36.715611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684464, 37.408890, 36.493484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322926, 37.511757, 36.356705>,  <36.106003, 37.573475, 36.274635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322926, 37.511757, 36.356705>,  <36.684464, 37.408890, 36.493484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322926, 37.511757, 36.356705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415841, 0.339911, -0.843526,
		-0.100692, -0.904614, -0.414166,
		-0.903845, 0.257164, -0.341950,
		36.051773, 37.588905, 36.254120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389988, 36.951691, 36.022995>,  <36.684464, 37.408890, 36.493484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389988, 36.951691, 36.022995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458000, 37.336296, 35.936668>,  <36.498806, 37.567059, 35.884872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458000, 37.336296, 35.936668>,  <36.389988, 36.951691, 36.022995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458000, 37.336296, 35.936668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964114, -0.207623, -0.165460,
		-0.203901, -0.179935, -0.962314,
		0.170026, 0.961518, -0.215813,
		36.509007, 37.624752, 35.871925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343708, 36.768551, 35.240734>,  <36.389988, 36.951691, 36.022995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343708, 36.768551, 35.240734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477627, 36.393322, 35.205132>,  <36.557980, 36.168182, 35.183769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477627, 36.393322, 35.205132>,  <36.343708, 36.768551, 35.240734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477627, 36.393322, 35.205132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014176, 0.099464, -0.994940,
		0.942183, 0.331843, 0.046599,
		0.334799, -0.938076, -0.089009,
		36.578068, 36.111900, 35.178429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912048, 36.821548, 34.842651>,  <36.343708, 36.768551, 35.240734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912048, 36.821548, 34.842651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739792, 36.462990, 34.800678>,  <36.636436, 36.247852, 34.775494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.739792, 36.462990, 34.800678>,  <36.912048, 36.821548, 34.842651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739792, 36.462990, 34.800678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117810, 0.059442, -0.991255,
		0.894799, -0.439241, 0.080007,
		-0.430644, -0.896400, -0.104935,
		36.610600, 36.194069, 34.769199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364166, 36.488785, 34.437424>,  <36.912048, 36.821548, 34.842651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364166, 36.488785, 34.437424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031059, 36.268105, 34.418964>,  <36.831196, 36.135696, 34.407890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031059, 36.268105, 34.418964>,  <37.364166, 36.488785, 34.437424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031059, 36.268105, 34.418964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105412, -0.076185, -0.991506,
		0.543495, -0.830558, 0.121600,
		-0.832768, -0.551696, -0.046145,
		36.781227, 36.102596, 34.405121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461872, 35.898460, 34.007038>,  <37.364166, 36.488785, 34.437424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461872, 35.898460, 34.007038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063133, 35.906857, 33.976406>,  <36.823891, 35.911896, 33.958027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.063133, 35.906857, 33.976406>,  <37.461872, 35.898460, 34.007038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063133, 35.906857, 33.976406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074258, -0.094986, -0.992705,
		-0.028108, -0.995257, 0.093128,
		-0.996843, 0.020987, -0.076576,
		36.764080, 35.913155, 33.953434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157318, 35.288303, 33.679020>,  <37.461872, 35.898460, 34.007038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157318, 35.288303, 33.679020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896034, 35.579529, 33.595848>,  <36.739265, 35.754265, 33.545944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.896034, 35.579529, 33.595848>,  <37.157318, 35.288303, 33.679020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896034, 35.579529, 33.595848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053941, -0.318658, -0.946334,
		-0.755254, -0.606938, 0.247423,
		-0.653209, 0.728068, -0.207929,
		36.700073, 35.797951, 33.533470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756866, 35.014671, 33.166107>,  <37.157318, 35.288303, 33.679020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756866, 35.014671, 33.166107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768715, 35.407585, 33.092098>,  <36.775826, 35.643333, 33.047695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768715, 35.407585, 33.092098>,  <36.756866, 35.014671, 33.166107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768715, 35.407585, 33.092098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140308, -0.187354, -0.972220,
		-0.989665, 0.002839, -0.143373,
		0.029622, 0.982289, -0.185019,
		36.777603, 35.702271, 33.036594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308857, 35.274170, 32.680744>,  <36.756866, 35.014671, 33.166107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308857, 35.274170, 32.680744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621815, 35.522892, 32.666809>,  <36.809589, 35.672123, 32.658447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621815, 35.522892, 32.666809>,  <36.308857, 35.274170, 32.680744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621815, 35.522892, 32.666809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157560, -0.251750, -0.954881,
		-0.602518, 0.741608, -0.294940,
		0.782399, 0.621803, -0.034836,
		36.856533, 35.709435, 32.656357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316170, 35.788204, 32.152920>,  <36.308857, 35.274170, 32.680744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316170, 35.788204, 32.152920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696621, 35.680962, 32.214207>,  <36.924892, 35.616615, 32.250980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.696621, 35.680962, 32.214207>,  <36.316170, 35.788204, 32.152920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696621, 35.680962, 32.214207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076111, -0.277340, -0.957753,
		0.299274, 0.922606, -0.243380,
		0.951127, -0.268106, 0.153221,
		36.981960, 35.600529, 32.260174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644363, 35.404816, 31.957247>,  <36.316170, 35.788204, 32.152920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644363, 35.404816, 31.957247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402592, 35.142365, 32.137981>,  <35.257526, 34.984894, 32.246422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.402592, 35.142365, 32.137981>,  <35.644363, 35.404816, 31.957247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402592, 35.142365, 32.137981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323010, -0.316615, -0.891863,
		0.728236, -0.685018, -0.020564,
		-0.604431, -0.656129, 0.451838,
		35.221264, 34.945526, 32.273533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784458, 34.709072, 31.789680>,  <35.644363, 35.404816, 31.957247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784458, 34.709072, 31.789680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434898, 34.902473, 31.809790>,  <35.225163, 35.018513, 31.821856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.434898, 34.902473, 31.809790>,  <35.784458, 34.709072, 31.789680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434898, 34.902473, 31.809790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175162, -0.216739, -0.960387,
		-0.453450, -0.848088, 0.274099,
		-0.873900, 0.483499, 0.050272,
		35.172729, 35.047523, 31.824871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224606, 34.266968, 31.488926>,  <35.784458, 34.709072, 31.789680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224606, 34.266968, 31.488926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115910, 34.651081, 31.463591>,  <35.050694, 34.881550, 31.448389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115910, 34.651081, 31.463591>,  <35.224606, 34.266968, 31.488926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115910, 34.651081, 31.463591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246200, -0.132990, -0.960052,
		-0.930347, -0.245286, 0.272560,
		-0.271735, 0.960285, -0.063337,
		35.034389, 34.939167, 31.444590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562077, 34.255959, 31.173819>,  <35.224606, 34.266968, 31.488926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562077, 34.255959, 31.173819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728336, 34.610077, 31.090401>,  <34.828091, 34.822548, 31.040350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728336, 34.610077, 31.090401>,  <34.562077, 34.255959, 31.173819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728336, 34.610077, 31.090401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220124, -0.124555, -0.967487,
		-0.882487, 0.448039, 0.143104,
		0.415647, 0.885295, -0.208543,
		34.853031, 34.875664, 31.027838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999504, 34.692623, 30.948381>,  <34.562077, 34.255959, 31.173819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999504, 34.692623, 30.948381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346310, 34.837597, 30.811600>,  <34.554394, 34.924580, 30.729530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346310, 34.837597, 30.811600>,  <33.999504, 34.692623, 30.948381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346310, 34.837597, 30.811600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290352, -0.190252, -0.937816,
		-0.404952, 0.912386, -0.059718,
		0.867012, 0.362431, -0.341956,
		34.606415, 34.946327, 30.709013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819073, 35.235073, 30.477037>,  <33.999504, 34.692623, 30.948381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819073, 35.235073, 30.477037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198910, 35.154152, 30.381247>,  <34.426811, 35.105598, 30.323772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198910, 35.154152, 30.381247>,  <33.819073, 35.235073, 30.477037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198910, 35.154152, 30.381247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225554, 0.089621, -0.970100,
		0.217713, 0.975214, 0.039473,
		0.949593, -0.202300, -0.239475,
		34.483788, 35.093460, 30.309404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998695, 35.654922, 29.952513>,  <33.819073, 35.235073, 30.477037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998695, 35.654922, 29.952513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287994, 35.382168, 29.908794>,  <34.461575, 35.218513, 29.882563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287994, 35.382168, 29.908794>,  <33.998695, 35.654922, 29.952513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287994, 35.382168, 29.908794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165573, -0.017567, -0.986041,
		0.670452, 0.731244, -0.125608,
		0.723243, -0.681890, -0.109296,
		34.504967, 35.177601, 29.876005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.310143, 35.849197, 29.332296>,  <33.998695, 35.654922, 29.952513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.310143, 35.849197, 29.332296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404507, 35.465015, 29.391441>,  <34.461124, 35.234505, 29.426928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.404507, 35.465015, 29.391441>,  <34.310143, 35.849197, 29.332296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404507, 35.465015, 29.391441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084521, -0.171859, -0.981489,
		0.968092, 0.219049, -0.121723,
		0.235913, -0.960460, 0.147860,
		34.475281, 35.176876, 29.435799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716614, 35.664635, 28.731632>,  <34.310143, 35.849197, 29.332296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716614, 35.664635, 28.731632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562531, 35.328415, 28.883993>,  <34.470078, 35.126682, 28.975409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562531, 35.328415, 28.883993>,  <34.716614, 35.664635, 28.731632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562531, 35.328415, 28.883993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255181, -0.299637, -0.919294,
		0.886845, -0.451322, -0.099069,
		-0.385213, -0.840551, 0.380900,
		34.446968, 35.076248, 28.998262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828266, 35.189812, 28.273684>,  <34.716614, 35.664635, 28.731632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828266, 35.189812, 28.273684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559574, 34.981678, 28.484598>,  <34.398361, 34.856796, 28.611147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559574, 34.981678, 28.484598>,  <34.828266, 35.189812, 28.273684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559574, 34.981678, 28.484598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355973, -0.397496, -0.845742,
		0.649666, -0.755808, 0.081783,
		-0.671727, -0.520338, 0.527287,
		34.358055, 34.825577, 28.642784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792068, 34.599361, 27.957676>,  <34.828266, 35.189812, 28.273684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792068, 34.599361, 27.957676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447563, 34.574059, 28.159361>,  <34.240860, 34.558876, 28.280373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.447563, 34.574059, 28.159361>,  <34.792068, 34.599361, 27.957676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447563, 34.574059, 28.159361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459734, -0.325753, -0.826154,
		0.216513, -0.943336, 0.251475,
		-0.861259, -0.063261, 0.504213,
		34.189186, 34.555080, 28.310625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558636, 33.942871, 27.797365>,  <34.792068, 34.599361, 27.957676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558636, 33.942871, 27.797365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246105, 34.155628, 27.927977>,  <34.058586, 34.283283, 28.006344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.246105, 34.155628, 27.927977>,  <34.558636, 33.942871, 27.797365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246105, 34.155628, 27.927977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545569, -0.327953, -0.771233,
		-0.303130, -0.780726, 0.546423,
		-0.781324, 0.531895, 0.326528,
		34.011707, 34.315197, 28.025936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019913, 33.490677, 27.856237>,  <34.558636, 33.942871, 27.797365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019913, 33.490677, 27.856237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873550, 33.856693, 27.788349>,  <33.785732, 34.076305, 27.747616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873550, 33.856693, 27.788349>,  <34.019913, 33.490677, 27.856237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873550, 33.856693, 27.788349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538669, -0.356953, -0.763165,
		-0.758911, -0.187828, 0.623519,
		-0.365910, 0.915044, -0.169719,
		33.763779, 34.131207, 27.737434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458138, 33.298912, 27.608088>,  <34.019913, 33.490677, 27.856237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458138, 33.298912, 27.608088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430157, 33.686825, 27.514599>,  <33.413368, 33.919575, 27.458506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430157, 33.686825, 27.514599>,  <33.458138, 33.298912, 27.608088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430157, 33.686825, 27.514599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454643, -0.239542, -0.857857,
		-0.887923, 0.046254, 0.457661,
		-0.069950, 0.969784, -0.233724,
		33.409172, 33.977760, 27.444481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786236, 33.395409, 27.386509>,  <33.458138, 33.298912, 27.608088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786236, 33.395409, 27.386509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991814, 33.687672, 27.206732>,  <33.115158, 33.863029, 27.098866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991814, 33.687672, 27.206732>,  <32.786236, 33.395409, 27.386509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991814, 33.687672, 27.206732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440474, -0.224813, -0.869161,
		-0.736102, 0.644668, 0.206295,
		0.513942, 0.730659, -0.449445,
		33.145996, 33.906868, 27.071898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396458, 33.739174, 27.013933>,  <32.786236, 33.395409, 27.386509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396458, 33.739174, 27.013933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720657, 33.858829, 26.812498>,  <32.915176, 33.930622, 26.691637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720657, 33.858829, 26.812498>,  <32.396458, 33.739174, 27.013933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720657, 33.858829, 26.812498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544201, 0.066596, -0.836307,
		-0.216631, 0.951884, 0.216766,
		0.810503, 0.299135, -0.503590,
		32.963810, 33.948570, 26.661421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135044, 34.135246, 26.493706>,  <32.396458, 33.739174, 27.013933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135044, 34.135246, 26.493706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494999, 34.040348, 26.347328>,  <32.710972, 33.983410, 26.259501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.494999, 34.040348, 26.347328>,  <32.135044, 34.135246, 26.493706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494999, 34.040348, 26.347328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381398, -0.021157, -0.924169,
		0.211516, 0.971219, -0.109525,
		0.899887, -0.237249, -0.365945,
		32.764965, 33.969173, 26.237545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144550, 34.466209, 25.860518>,  <32.135044, 34.135246, 26.493706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144550, 34.466209, 25.860518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406097, 34.165413, 25.827126>,  <32.563026, 33.984936, 25.807091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406097, 34.165413, 25.827126>,  <32.144550, 34.466209, 25.860518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406097, 34.165413, 25.827126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373915, -0.225245, -0.899696,
		0.657760, 0.619494, -0.428460,
		0.653865, -0.751992, -0.083481,
		32.602257, 33.939816, 25.802082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517647, 34.592030, 25.188490>,  <32.144550, 34.466209, 25.860518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517647, 34.592030, 25.188490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505013, 34.212399, 25.313873>,  <32.497433, 33.984619, 25.389103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505013, 34.212399, 25.313873>,  <32.517647, 34.592030, 25.188490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505013, 34.212399, 25.313873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311985, -0.288582, -0.905199,
		0.949562, -0.126388, -0.286981,
		-0.031589, -0.949077, 0.313458,
		32.495537, 33.927677, 25.407911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620728, 34.207142, 24.583275>,  <32.517647, 34.592030, 25.188490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620728, 34.207142, 24.583275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512226, 33.895039, 24.808702>,  <32.447124, 33.707775, 24.943960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512226, 33.895039, 24.808702>,  <32.620728, 34.207142, 24.583275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512226, 33.895039, 24.808702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405970, -0.438145, -0.802008,
		0.872703, -0.446340, -0.197915,
		-0.271253, -0.780262, 0.563571,
		32.430851, 33.660961, 24.977774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923286, 33.558304, 24.363346>,  <32.620728, 34.207142, 24.583275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923286, 33.558304, 24.363346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587040, 33.445652, 24.548410>,  <32.385292, 33.378059, 24.659449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587040, 33.445652, 24.548410>,  <32.923286, 33.558304, 24.363346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587040, 33.445652, 24.548410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272867, -0.517681, -0.810895,
		0.467881, -0.807894, 0.358323,
		-0.840614, -0.281628, 0.462661,
		32.334854, 33.361164, 24.687208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725555, 32.886509, 24.050762>,  <32.923286, 33.558304, 24.363346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725555, 32.886509, 24.050762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391857, 32.982708, 24.249235>,  <32.191639, 33.040428, 24.368319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391857, 32.982708, 24.249235>,  <32.725555, 32.886509, 24.050762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391857, 32.982708, 24.249235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551278, -0.382466, -0.741493,
		0.011444, -0.892120, 0.451653,
		-0.834243, 0.240501, 0.496183,
		32.141582, 33.054859, 24.398090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272369, 32.322250, 23.929293>,  <32.725555, 32.886509, 24.050762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272369, 32.322250, 23.929293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011456, 32.590237, 24.071093>,  <31.854908, 32.751030, 24.156172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.011456, 32.590237, 24.071093>,  <32.272369, 32.322250, 23.929293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011456, 32.590237, 24.071093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712185, -0.381630, -0.589195,
		-0.259454, -0.636792, 0.726071,
		-0.652286, 0.669966, 0.354499,
		31.815769, 32.791225, 24.177443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650581, 32.021965, 24.143606>,  <32.272369, 32.322250, 23.929293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650581, 32.021965, 24.143606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557787, 32.399879, 24.051039>,  <31.502110, 32.626629, 23.995499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.557787, 32.399879, 24.051039>,  <31.650581, 32.021965, 24.143606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557787, 32.399879, 24.051039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678038, -0.327650, -0.657958,
		-0.697457, 0.004275, 0.716614,
		-0.231986, 0.944789, -0.231421,
		31.488192, 32.683315, 23.981613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012579, 31.922712, 23.819948>,  <31.650581, 32.021965, 24.143606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012579, 31.922712, 23.819948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.107035, 32.302032, 23.735128>,  <31.163708, 32.529625, 23.684237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.107035, 32.302032, 23.735128>,  <31.012579, 31.922712, 23.819948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107035, 32.302032, 23.735128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667358, -0.000348, -0.744737,
		-0.706308, 0.317374, 0.632773,
		0.236140, 0.948300, -0.212048,
		31.177877, 32.586521, 23.671515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.371593, 32.250828, 23.919991>,  <31.012579, 31.922712, 23.819948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.371593, 32.250828, 23.919991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.597923, 32.468136, 23.671894>,  <30.733721, 32.598518, 23.523035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.597923, 32.468136, 23.671894>,  <30.371593, 32.250828, 23.919991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597923, 32.468136, 23.671894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745829, 0.016509, -0.665933,
		-0.351541, 0.839397, 0.414526,
		0.565826, 0.543268, -0.620242,
		30.767672, 32.631115, 23.485821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957037, 32.858959, 23.729576>,  <30.371593, 32.250828, 23.919991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957037, 32.858959, 23.729576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226793, 32.806110, 23.438993>,  <30.388647, 32.774403, 23.264645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226793, 32.806110, 23.438993>,  <29.957037, 32.858959, 23.729576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226793, 32.806110, 23.438993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697167, 0.210141, -0.685419,
		0.243215, 0.968703, 0.049609,
		0.674392, -0.132118, -0.726457,
		30.429111, 32.766476, 23.221056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659058, 33.208763, 23.130318>,  <29.957037, 32.858959, 23.729576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659058, 33.208763, 23.130318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.962133, 33.024887, 22.945023>,  <30.143980, 32.914562, 22.833845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.962133, 33.024887, 22.945023>,  <29.659058, 33.208763, 23.130318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.962133, 33.024887, 22.945023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462620, 0.122334, -0.878076,
		0.460311, 0.879614, -0.119970,
		0.757692, -0.459688, -0.463239,
		30.189442, 32.886982, 22.806051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978657, 33.647099, 22.619965>,  <29.659058, 33.208763, 23.130318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978657, 33.647099, 22.619965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074091, 33.284489, 22.480658>,  <30.131351, 33.066921, 22.397074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.074091, 33.284489, 22.480658>,  <29.978657, 33.647099, 22.619965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.074091, 33.284489, 22.480658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402402, 0.234099, -0.885026,
		0.883826, 0.351298, -0.308935,
		0.238587, -0.906525, -0.348266,
		30.145666, 33.012531, 22.376179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455093, 33.697723, 22.054619>,  <29.978657, 33.647099, 22.619965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455093, 33.697723, 22.054619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237709, 33.363491, 22.022495>,  <30.107279, 33.162952, 22.003222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237709, 33.363491, 22.022495>,  <30.455093, 33.697723, 22.054619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237709, 33.363491, 22.022495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340185, 0.306692, -0.888940,
		0.767415, -0.455782, -0.450928,
		-0.543459, -0.835585, -0.080310,
		30.074671, 33.112816, 21.998402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419872, 33.615582, 21.374018>,  <30.455093, 33.697723, 22.054619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419872, 33.615582, 21.374018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138958, 33.372547, 21.522417>,  <29.970409, 33.226727, 21.611458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138958, 33.372547, 21.522417>,  <30.419872, 33.615582, 21.374018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138958, 33.372547, 21.522417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584330, 0.194293, -0.787914,
		0.406641, -0.770125, -0.491478,
		-0.702284, -0.607584, 0.371000,
		29.928272, 33.190273, 21.633717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154802, 33.091106, 20.814539>,  <30.419872, 33.615582, 21.374018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154802, 33.091106, 20.814539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854784, 33.116226, 21.077898>,  <29.674772, 33.131298, 21.235912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854784, 33.116226, 21.077898>,  <30.154802, 33.091106, 20.814539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854784, 33.116226, 21.077898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602905, 0.344343, -0.719676,
		-0.271910, -0.936741, -0.220410,
		-0.750047, 0.062800, 0.658396,
		29.629770, 33.135067, 21.275417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627922, 32.850845, 20.422436>,  <30.154802, 33.091106, 20.814539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627922, 32.850845, 20.422436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475458, 33.077797, 20.714409>,  <29.383980, 33.213966, 20.889593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475458, 33.077797, 20.714409>,  <29.627922, 32.850845, 20.422436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475458, 33.077797, 20.714409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572409, 0.475172, -0.668251,
		-0.725993, -0.672531, 0.143655,
		-0.381159, 0.567375, 0.729934,
		29.361111, 33.248009, 20.933390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911154, 32.812359, 20.357296>,  <29.627922, 32.850845, 20.422436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911154, 32.812359, 20.357296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.960680, 33.134453, 20.589249>,  <28.990396, 33.327709, 20.728420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.960680, 33.134453, 20.589249>,  <28.911154, 32.812359, 20.357296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960680, 33.134453, 20.589249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685950, 0.491724, -0.536359,
		-0.717037, -0.331358, 0.613236,
		0.123816, 0.805239, 0.579880,
		28.997826, 33.376026, 20.763212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267282, 33.096432, 20.438192>,  <28.911154, 32.812359, 20.357296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.267282, 33.096432, 20.438192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.481834, 33.423103, 20.523355>,  <28.610565, 33.619106, 20.574453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.481834, 33.423103, 20.523355>,  <28.267282, 33.096432, 20.438192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.481834, 33.423103, 20.523355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652593, 0.561300, -0.508984,
		-0.535183, 0.134065, 0.834030,
		0.536378, 0.816681, 0.212909,
		28.642748, 33.668106, 20.587229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874826, 33.479294, 20.801889>,  <28.267282, 33.096432, 20.438192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874826, 33.479294, 20.801889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148767, 33.723888, 20.643362>,  <28.313131, 33.870644, 20.548246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148767, 33.723888, 20.643362>,  <27.874826, 33.479294, 20.801889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.148767, 33.723888, 20.643362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721629, 0.493642, -0.485355,
		-0.101146, 0.618391, 0.779334,
		0.684851, 0.611482, -0.396319,
		28.354223, 33.907333, 20.524466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482697, 34.215996, 20.699175>,  <27.874826, 33.479294, 20.801889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.482697, 34.215996, 20.699175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.817860, 34.208771, 20.480970>,  <28.018957, 34.204433, 20.350048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.817860, 34.208771, 20.480970>,  <27.482697, 34.215996, 20.699175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.817860, 34.208771, 20.480970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424952, 0.605624, -0.672782,
		0.342530, 0.795546, 0.499779,
		0.837907, -0.018066, -0.545513,
		28.069231, 34.203350, 20.317316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.311430, 34.749287, 20.445436>,  <27.482697, 34.215996, 20.699175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.311430, 34.749287, 20.445436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596327, 34.623100, 20.194616>,  <27.767265, 34.547386, 20.044125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.596327, 34.623100, 20.194616>,  <27.311430, 34.749287, 20.445436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.596327, 34.623100, 20.194616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481884, 0.429798, -0.763585,
		0.510393, 0.846021, 0.154099,
		0.712241, -0.315471, -0.627050,
		27.809999, 34.528458, 20.006502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.632320, 35.273918, 20.216265>,  <27.311430, 34.749287, 20.445436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.632320, 35.273918, 20.216265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683617, 34.976902, 19.953300>,  <27.714394, 34.798691, 19.795523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683617, 34.976902, 19.953300>,  <27.632320, 35.273918, 20.216265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.683617, 34.976902, 19.953300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341668, 0.589222, -0.732175,
		0.931030, 0.318510, -0.178140,
		0.128240, -0.742542, -0.657408,
		27.722088, 34.754139, 19.756079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.938896, 35.621906, 19.597792>,  <27.632320, 35.273918, 20.216265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.938896, 35.621906, 19.597792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781410, 35.278034, 19.467602>,  <27.686918, 35.071709, 19.389488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781410, 35.278034, 19.467602>,  <27.938896, 35.621906, 19.597792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.781410, 35.278034, 19.467602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349881, 0.467570, -0.811764,
		0.850043, -0.205724, -0.484876,
		-0.393713, -0.859683, -0.325476,
		27.663296, 35.020130, 19.369959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.047554, 35.511890, 18.817835>,  <27.938896, 35.621906, 19.597792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.047554, 35.511890, 18.817835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.738113, 35.270695, 18.895760>,  <27.552448, 35.125977, 18.942514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.738113, 35.270695, 18.895760>,  <28.047554, 35.511890, 18.817835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.738113, 35.270695, 18.895760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505325, 0.401536, -0.763816,
		0.382338, -0.689338, -0.615330,
		-0.773604, -0.602978, 0.194818,
		27.506033, 35.089798, 18.954203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.922462, 35.167816, 18.124872>,  <28.047554, 35.511890, 18.817835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.922462, 35.167816, 18.124872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.585608, 35.118603, 18.334890>,  <27.383495, 35.089073, 18.460901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.585608, 35.118603, 18.334890>,  <27.922462, 35.167816, 18.124872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.585608, 35.118603, 18.334890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536913, 0.100450, -0.837636,
		0.050313, -0.987306, -0.150648,
		-0.842136, -0.123029, 0.525044,
		27.332966, 35.081692, 18.492403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.561684, 34.603004, 17.812729>,  <27.922462, 35.167816, 18.124872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.561684, 34.603004, 17.812729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299238, 34.841717, 17.997496>,  <27.141771, 34.984943, 18.108356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299238, 34.841717, 17.997496>,  <27.561684, 34.603004, 17.812729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299238, 34.841717, 17.997496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647173, -0.130106, -0.751158,
		-0.388179, -0.791785, 0.471585,
		-0.656112, 0.596782, 0.461918,
		27.102404, 35.020752, 18.136070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.244759, 34.843052, 17.190834>,  <27.561684, 34.603004, 17.812729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.244759, 34.843052, 17.190834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.533365, 34.591022, 17.305668>,  <27.706530, 34.439804, 17.374569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.533365, 34.591022, 17.305668>,  <27.244759, 34.843052, 17.190834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.533365, 34.591022, 17.305668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102882, 0.507583, 0.855439,
		-0.684712, -0.587677, 0.431052,
		0.721516, -0.630077, 0.287087,
		27.749821, 34.402000, 17.391794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.860161, 34.861156, 16.521700>,  <27.244759, 34.843052, 17.190834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.860161, 34.861156, 16.521700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.923109, 35.204311, 16.717358>,  <26.960878, 35.410206, 16.834751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.923109, 35.204311, 16.717358>,  <26.860161, 34.861156, 16.521700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.923109, 35.204311, 16.717358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954452, 0.259270, -0.147649,
		-0.253486, -0.443628, 0.859615,
		0.157371, 0.857889, 0.489143,
		26.970320, 35.461678, 16.864101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.266825, 34.945652, 17.030500>,  <26.860161, 34.861156, 16.521700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.266825, 34.945652, 17.030500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.446228, 35.301201, 16.993093>,  <26.553871, 35.514530, 16.970650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.446228, 35.301201, 16.993093>,  <26.266825, 34.945652, 17.030500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.446228, 35.301201, 16.993093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.884248, 0.456531, 0.098406,
		0.130164, 0.038557, 0.990742,
		0.448511, 0.888872, -0.093518,
		26.580782, 35.567863, 16.965038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.164392, 35.323288, 17.630262>,  <26.266825, 34.945652, 17.030500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.164392, 35.323288, 17.630262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.184597, 35.523220, 17.284403>,  <26.196720, 35.643181, 17.076887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.184597, 35.523220, 17.284403>,  <26.164392, 35.323288, 17.630262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.184597, 35.523220, 17.284403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953282, 0.282307, 0.107504,
		0.297830, 0.818822, 0.490742,
		0.050513, 0.499833, -0.864647,
		26.199751, 35.673172, 17.025009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.946676, 36.001015, 17.770155>,  <26.164392, 35.323288, 17.630262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.946676, 36.001015, 17.770155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.892767, 35.904976, 17.385616>,  <25.860422, 35.847351, 17.154894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.892767, 35.904976, 17.385616>,  <25.946676, 36.001015, 17.770155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.892767, 35.904976, 17.385616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978621, 0.184371, 0.091147,
		0.155360, 0.953079, -0.259816,
		-0.134772, -0.240101, -0.961347,
		25.852335, 35.832947, 17.097212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.658268, 36.551350, 17.366306>,  <25.946676, 36.001015, 17.770155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.658268, 36.551350, 17.366306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.564322, 36.180023, 17.251017>,  <25.507954, 35.957230, 17.181843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.564322, 36.180023, 17.251017>,  <25.658268, 36.551350, 17.366306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.564322, 36.180023, 17.251017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968238, 0.197275, 0.153615,
		-0.085743, 0.315147, -0.945162,
		-0.234868, -0.928313, -0.288222,
		25.493860, 35.901527, 17.164551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.102186, 36.631817, 16.868130>,  <25.658268, 36.551350, 17.366306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.102186, 36.631817, 16.868130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.078199, 36.283676, 17.063637>,  <25.063808, 36.074791, 17.180941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.078199, 36.283676, 17.063637>,  <25.102186, 36.631817, 16.868130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.078199, 36.283676, 17.063637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872679, 0.283422, 0.397621,
		-0.484598, -0.402695, -0.776532,
		-0.059966, -0.870350, 0.488769,
		25.060209, 36.022572, 17.210268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.971930, 36.656746, 17.681858>,  <25.102186, 36.631817, 16.868130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.971930, 36.656746, 17.681858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.986040, 36.265907, 17.765800>,  <24.994507, 36.031403, 17.816166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.986040, 36.265907, 17.765800>,  <24.971930, 36.656746, 17.681858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.986040, 36.265907, 17.765800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306483, 0.189291, 0.932865,
		-0.951222, -0.097223, -0.292786,
		0.035274, -0.977096, 0.209855,
		24.996622, 35.972778, 17.828756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.345316, 36.467396, 17.954449>,  <24.971930, 36.656746, 17.681858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.345316, 36.467396, 17.954449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.642614, 36.232338, 18.082361>,  <24.820993, 36.091305, 18.159109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.642614, 36.232338, 18.082361>,  <24.345316, 36.467396, 17.954449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.642614, 36.232338, 18.082361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384256, 0.016311, 0.923082,
		-0.547659, -0.808956, -0.213683,
		0.743248, -0.587643, 0.319779,
		24.865589, 36.056046, 18.178295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.131348, 36.391880, 18.588171>,  <24.345316, 36.467396, 17.954449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.131348, 36.391880, 18.588171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.485790, 36.210262, 18.625385>,  <24.698456, 36.101292, 18.647713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.485790, 36.210262, 18.625385>,  <24.131348, 36.391880, 18.588171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.485790, 36.210262, 18.625385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104623, -0.000406, 0.994512,
		-0.451520, -0.890977, -0.047863,
		0.886106, -0.454049, 0.093034,
		24.751621, 36.074047, 18.653296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.024868, 35.778454, 19.058243>,  <24.131348, 36.391880, 18.588171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.024868, 35.778454, 19.058243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.414902, 35.863041, 19.085062>,  <24.648922, 35.913795, 19.101154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.414902, 35.863041, 19.085062>,  <24.024868, 35.778454, 19.058243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.414902, 35.863041, 19.085062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052072, -0.075626, 0.995776,
		0.215648, -0.974454, -0.062730,
		0.975082, 0.211470, 0.067050,
		24.707426, 35.926483, 19.105177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.360569, 35.318764, 19.541885>,  <24.024868, 35.778454, 19.058243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.360569, 35.318764, 19.541885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.642235, 35.602276, 19.524998>,  <24.811234, 35.772385, 19.514866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.642235, 35.602276, 19.524998>,  <24.360569, 35.318764, 19.541885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.642235, 35.602276, 19.524998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021144, 0.038500, 0.999035,
		0.709724, -0.704376, 0.012124,
		0.704162, 0.708782, -0.042217,
		24.853483, 35.814911, 19.512333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.016487, 35.128559, 19.883251>,  <24.360569, 35.318764, 19.541885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.016487, 35.128559, 19.883251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.055626, 35.526016, 19.905516>,  <25.079109, 35.764492, 19.918875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.055626, 35.526016, 19.905516>,  <25.016487, 35.128559, 19.883251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.055626, 35.526016, 19.905516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266216, -0.080024, 0.960586,
		0.958934, -0.079173, -0.272354,
		0.097848, 0.993644, 0.055661,
		25.084980, 35.824108, 19.922215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.670923, 35.315456, 20.184635>,  <25.016487, 35.128559, 19.883251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.670923, 35.315456, 20.184635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.453686, 35.645485, 20.246996>,  <25.323343, 35.843502, 20.284412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.453686, 35.645485, 20.246996>,  <25.670923, 35.315456, 20.184635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.453686, 35.645485, 20.246996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350030, 0.053693, 0.935198,
		0.763236, 0.562469, -0.317961,
		-0.543092, 0.825073, 0.155901,
		25.290758, 35.893005, 20.293766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.163181, 35.873447, 20.324261>,  <25.670923, 35.315456, 20.184635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.163181, 35.873447, 20.324261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.822119, 36.020954, 20.472307>,  <25.617481, 36.109459, 20.561136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.822119, 36.020954, 20.472307>,  <26.163181, 35.873447, 20.324261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.822119, 36.020954, 20.472307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422482, 0.069876, 0.903673,
		0.307380, 0.926893, -0.215377,
		-0.852658, 0.368764, 0.370118,
		25.566320, 36.131584, 20.583342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.369284, 36.457546, 20.790272>,  <26.163181, 35.873447, 20.324261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.369284, 36.457546, 20.790272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.000008, 36.361168, 20.910049>,  <25.778442, 36.303341, 20.981916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.000008, 36.361168, 20.910049>,  <26.369284, 36.457546, 20.790272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.000008, 36.361168, 20.910049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250162, 0.214779, 0.944081,
		-0.291790, 0.946474, -0.138006,
		-0.923189, -0.240949, 0.299442,
		25.723051, 36.288883, 20.999882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.159573, 36.956963, 21.334118>,  <26.369284, 36.457546, 20.790272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.159573, 36.956963, 21.334118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.908766, 36.652195, 21.399033>,  <25.758282, 36.469334, 21.437983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.908766, 36.652195, 21.399033>,  <26.159573, 36.956963, 21.334118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.908766, 36.652195, 21.399033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041775, 0.175142, 0.983657,
		-0.777886, 0.623548, -0.077987,
		-0.627016, -0.761914, 0.162289,
		25.720661, 36.423622, 21.447720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.641783, 37.216991, 21.725643>,  <26.159573, 36.956963, 21.334118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.641783, 37.216991, 21.725643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.677961, 36.823132, 21.785358>,  <25.699669, 36.586815, 21.821188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.677961, 36.823132, 21.785358>,  <25.641783, 37.216991, 21.725643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.677961, 36.823132, 21.785358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014259, 0.148608, 0.988793,
		-0.995799, -0.091561, -0.000599,
		0.090446, -0.984648, 0.149289,
		25.705095, 36.527737, 21.830145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.233843, 37.185814, 22.289030>,  <25.641783, 37.216991, 21.725643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.233843, 37.185814, 22.289030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.422113, 36.833969, 22.261471>,  <25.535076, 36.622864, 22.244934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.422113, 36.833969, 22.261471>,  <25.233843, 37.185814, 22.289030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.422113, 36.833969, 22.261471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061208, -0.045351, 0.997094,
		-0.880181, -0.473524, 0.032494,
		0.470674, -0.879613, -0.068900,
		25.563316, 36.570084, 22.240801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.984985, 36.718575, 22.838524>,  <25.233843, 37.185814, 22.289030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.984985, 36.718575, 22.838524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.339991, 36.562508, 22.740471>,  <25.552994, 36.468868, 22.681639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.339991, 36.562508, 22.740471>,  <24.984985, 36.718575, 22.838524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.339991, 36.562508, 22.740471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232981, -0.079011, 0.969266,
		-0.397546, -0.917347, 0.020779,
		0.887512, -0.390169, -0.245135,
		25.606245, 36.445457, 22.666931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.104721, 36.206306, 23.395056>,  <24.984985, 36.718575, 22.838524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.104721, 36.206306, 23.395056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.459478, 36.235279, 23.212551>,  <25.672333, 36.252663, 23.103048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.459478, 36.235279, 23.212551>,  <25.104721, 36.206306, 23.395056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.459478, 36.235279, 23.212551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458980, -0.250418, 0.852425,
		-0.052517, -0.965425, -0.255337,
		0.886893, 0.072427, -0.456262,
		25.725546, 36.257008, 23.075672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.459181, 35.659389, 23.629547>,  <25.104721, 36.206306, 23.395056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.459181, 35.659389, 23.629547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719444, 35.938850, 23.510534>,  <25.875603, 36.106529, 23.439127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719444, 35.938850, 23.510534>,  <25.459181, 35.659389, 23.629547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.719444, 35.938850, 23.510534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595315, -0.226063, 0.771035,
		0.471427, -0.678805, -0.563010,
		0.650658, 0.698655, -0.297530,
		25.914642, 36.148445, 23.421274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.165815, 35.302876, 23.693361>,  <25.459181, 35.659389, 23.629547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.165815, 35.302876, 23.693361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.239138, 35.695774, 23.677366>,  <26.283131, 35.931511, 23.667768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.239138, 35.695774, 23.677366>,  <26.165815, 35.302876, 23.693361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.239138, 35.695774, 23.677366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748129, -0.112994, 0.653861,
		0.637732, -0.149773, -0.755557,
		0.183304, 0.982243, -0.039990,
		26.294128, 35.990448, 23.665369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.910774, 35.441986, 23.620598>,  <26.165815, 35.302876, 23.693361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.910774, 35.441986, 23.620598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775154, 35.794361, 23.752653>,  <26.693783, 36.005787, 23.831886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775154, 35.794361, 23.752653>,  <26.910774, 35.441986, 23.620598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.775154, 35.794361, 23.752653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703212, 0.004207, 0.710968,
		0.624930, 0.473211, -0.620914,
		-0.339050, 0.880939, 0.330139,
		26.673439, 36.058643, 23.851694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457844, 35.817692, 23.689184>,  <26.910774, 35.441986, 23.620598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457844, 35.817692, 23.689184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.209295, 36.028530, 23.921070>,  <27.060165, 36.155033, 24.060202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.209295, 36.028530, 23.921070>,  <27.457844, 35.817692, 23.689184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.209295, 36.028530, 23.921070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758932, 0.221011, 0.612517,
		0.194730, 0.820565, -0.537358,
		-0.621372, 0.527093, 0.579715,
		27.022884, 36.186657, 24.094984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850340, 36.246864, 24.059515>,  <27.457844, 35.817692, 23.689184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.850340, 36.246864, 24.059515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.523458, 36.293583, 24.285271>,  <27.327330, 36.321613, 24.420723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.523458, 36.293583, 24.285271>,  <27.850340, 36.246864, 24.059515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.523458, 36.293583, 24.285271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575032, 0.099111, 0.812105,
		0.038918, 0.988198, -0.148158,
		-0.817205, 0.116801, 0.564388,
		27.278297, 36.328625, 24.454588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.024099, 36.845142, 24.550415>,  <27.850340, 36.246864, 24.059515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.024099, 36.845142, 24.550415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721193, 36.642822, 24.715689>,  <27.539450, 36.521431, 24.814854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721193, 36.642822, 24.715689>,  <28.024099, 36.845142, 24.550415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.721193, 36.642822, 24.715689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540358, -0.129878, 0.831351,
		-0.366830, 0.852820, 0.371663,
		-0.757264, -0.505796, 0.413185,
		27.494015, 36.491085, 24.839643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.916695, 37.153164, 25.178398>,  <28.024099, 36.845142, 24.550415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.916695, 37.153164, 25.178398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796741, 36.772579, 25.206093>,  <27.724770, 36.544228, 25.222710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.796741, 36.772579, 25.206093>,  <27.916695, 37.153164, 25.178398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.796741, 36.772579, 25.206093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432539, -0.070921, 0.898821,
		-0.850282, 0.299491, 0.432812,
		-0.299885, -0.951459, 0.069239,
		27.706776, 36.487141, 25.226864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.009958, 36.995277, 25.869379>,  <27.916695, 37.153164, 25.178398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.009958, 36.995277, 25.869379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938034, 36.616226, 25.763794>,  <27.894878, 36.388798, 25.700443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938034, 36.616226, 25.763794>,  <28.009958, 36.995277, 25.869379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.938034, 36.616226, 25.763794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470846, -0.318511, 0.822712,
		-0.863697, 0.023647, 0.503457,
		-0.179811, -0.947624, -0.263963,
		27.884090, 36.331940, 25.684605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823725, 36.602654, 26.488514>,  <28.009958, 36.995277, 25.869379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823725, 36.602654, 26.488514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963457, 36.351631, 26.210194>,  <28.047297, 36.201019, 26.043201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.963457, 36.351631, 26.210194>,  <27.823725, 36.602654, 26.488514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.963457, 36.351631, 26.210194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606572, -0.414529, 0.678406,
		-0.714168, -0.659043, 0.235850,
		0.349332, -0.627557, -0.695801,
		28.068256, 36.163364, 26.001453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.835276, 35.952335, 26.816702>,  <27.823725, 36.602654, 26.488514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.835276, 35.952335, 26.816702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.089184, 35.899734, 26.512131>,  <28.241528, 35.868176, 26.329388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.089184, 35.899734, 26.512131>,  <27.835276, 35.952335, 26.816702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.089184, 35.899734, 26.512131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640605, -0.461465, 0.613739,
		-0.432079, -0.877358, -0.208685,
		0.634770, -0.131499, -0.761429,
		28.279613, 35.860283, 26.283701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020176, 35.158474, 26.735535>,  <27.835276, 35.952335, 26.816702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020176, 35.158474, 26.735535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.302748, 35.380917, 26.560398>,  <28.472290, 35.514381, 26.455317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.302748, 35.380917, 26.560398>,  <28.020176, 35.158474, 26.735535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.302748, 35.380917, 26.560398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702573, -0.476036, 0.528943,
		0.085718, -0.681278, -0.726989,
		0.706430, 0.556103, -0.437843,
		28.514677, 35.547749, 26.429045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.620636, 34.792633, 26.842007>,  <28.020176, 35.158474, 26.735535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.620636, 34.792633, 26.842007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.805437, 35.125797, 26.720142>,  <28.916317, 35.325695, 26.647024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.805437, 35.125797, 26.720142>,  <28.620636, 34.792633, 26.842007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805437, 35.125797, 26.720142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778122, -0.215856, 0.589859,
		0.425535, -0.509579, -0.747830,
		0.462003, 0.832908, -0.304660,
		28.944038, 35.375671, 26.628744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234619, 34.499615, 26.658117>,  <28.620636, 34.792633, 26.842007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234619, 34.499615, 26.658117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.301300, 34.893078, 26.685308>,  <29.341309, 35.129158, 26.701622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.301300, 34.893078, 26.685308>,  <29.234619, 34.499615, 26.658117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301300, 34.893078, 26.685308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755119, -0.171696, 0.632705,
		0.634039, -0.054143, -0.771404,
		0.166703, 0.983661, 0.067977,
		29.351311, 35.188175, 26.705702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.949476, 34.589859, 26.757675>,  <29.234619, 34.499615, 26.658117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.949476, 34.589859, 26.757675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.823984, 34.950474, 26.876875>,  <29.748690, 35.166843, 26.948395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.823984, 34.950474, 26.876875>,  <29.949476, 34.589859, 26.757675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823984, 34.950474, 26.876875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675745, -0.008485, 0.737086,
		0.667039, 0.432618, -0.606548,
		-0.313731, 0.901537, 0.298000,
		29.729864, 35.220936, 26.966274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.594257, 35.102833, 26.909525>,  <29.949476, 34.589859, 26.757675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.594257, 35.102833, 26.909525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271103, 35.187637, 27.129478>,  <30.077209, 35.238522, 27.261450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.271103, 35.187637, 27.129478>,  <30.594257, 35.102833, 26.909525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271103, 35.187637, 27.129478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542550, -0.096784, 0.834429,
		0.230130, 0.972463, -0.036838,
		-0.807886, 0.212013, 0.549882,
		30.028738, 35.251240, 27.294443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942331, 35.378017, 27.352646>,  <30.594257, 35.102833, 26.909525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942331, 35.378017, 27.352646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.579866, 35.294502, 27.499763>,  <30.362387, 35.244392, 27.588034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.579866, 35.294502, 27.499763>,  <30.942331, 35.378017, 27.352646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579866, 35.294502, 27.499763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383725, -0.040236, 0.922570,
		-0.177824, 0.977132, 0.116579,
		-0.906164, -0.208789, 0.367796,
		30.308018, 35.231865, 27.610102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951038, 35.839466, 27.853443>,  <30.942331, 35.378017, 27.352646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951038, 35.839466, 27.853443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669579, 35.579449, 27.968206>,  <30.500702, 35.423439, 28.037064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669579, 35.579449, 27.968206>,  <30.951038, 35.839466, 27.853443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669579, 35.579449, 27.968206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337650, 0.049382, 0.939976,
		-0.625197, 0.758287, 0.184741,
		-0.703649, -0.650048, 0.286909,
		30.458485, 35.384434, 28.054279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549507, 36.128841, 28.423740>,  <30.951038, 35.839466, 27.853443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549507, 36.128841, 28.423740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498474, 35.734215, 28.464533>,  <30.467854, 35.497437, 28.489008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.498474, 35.734215, 28.464533>,  <30.549507, 36.128841, 28.423740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498474, 35.734215, 28.464533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192302, 0.076266, 0.978368,
		-0.973007, 0.144436, 0.179990,
		-0.127584, -0.986571, 0.101983,
		30.460199, 35.438244, 28.495129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249109, 36.073544, 29.043736>,  <30.549507, 36.128841, 28.423740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249109, 36.073544, 29.043736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371876, 35.696938, 28.988098>,  <30.445536, 35.470974, 28.954716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371876, 35.696938, 28.988098>,  <30.249109, 36.073544, 29.043736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371876, 35.696938, 28.988098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442046, 0.011595, 0.896917,
		-0.842851, -0.336762, 0.419753,
		0.306915, -0.941518, -0.139091,
		30.463951, 35.414482, 28.946371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.194841, 35.675098, 29.725336>,  <30.249109, 36.073544, 29.043736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.194841, 35.675098, 29.725336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448309, 35.459259, 29.503599>,  <30.600389, 35.329754, 29.370556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.448309, 35.459259, 29.503599>,  <30.194841, 35.675098, 29.725336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448309, 35.459259, 29.503599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593749, -0.120115, 0.795635,
		-0.495907, -0.833311, 0.244272,
		0.633671, -0.539597, -0.554343,
		30.638411, 35.297379, 29.337296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336472, 35.086948, 30.121689>,  <30.194841, 35.675098, 29.725336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336472, 35.086948, 30.121689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645067, 35.105228, 29.867849>,  <30.830225, 35.116196, 29.715546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645067, 35.105228, 29.867849>,  <30.336472, 35.086948, 30.121689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645067, 35.105228, 29.867849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636151, -0.072477, 0.768153,
		-0.010886, -0.996323, -0.084989,
		0.771488, 0.045704, -0.634600,
		30.876514, 35.118938, 29.677469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776234, 34.611137, 30.405403>,  <30.336472, 35.086948, 30.121689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776234, 34.611137, 30.405403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013809, 34.804283, 30.148006>,  <31.156355, 34.920170, 29.993568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013809, 34.804283, 30.148006>,  <30.776234, 34.611137, 30.405403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013809, 34.804283, 30.148006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741520, -0.018308, 0.670681,
		0.312067, -0.875504, -0.368928,
		0.593938, 0.482865, -0.643490,
		31.191990, 34.949142, 29.954960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382143, 34.304813, 30.426727>,  <30.776234, 34.611137, 30.405403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382143, 34.304813, 30.426727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491207, 34.658783, 30.275698>,  <31.556644, 34.871166, 30.185080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.491207, 34.658783, 30.275698>,  <31.382143, 34.304813, 30.426727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491207, 34.658783, 30.275698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756800, 0.045048, 0.652092,
		0.594063, -0.463545, -0.657430,
		0.272658, 0.884927, -0.377573,
		31.573004, 34.924263, 30.162426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.255489, 34.346962, 30.345251>,  <31.382143, 34.304813, 30.426727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.255489, 34.346962, 30.345251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083523, 34.707085, 30.372433>,  <31.980345, 34.923161, 30.388742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.083523, 34.707085, 30.372433>,  <32.255489, 34.346962, 30.345251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083523, 34.707085, 30.372433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514508, 0.182445, 0.837851,
		0.741928, 0.395166, -0.541652,
		-0.429912, 0.900310, 0.067955,
		31.954550, 34.977177, 30.392818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771862, 34.895523, 30.325451>,  <32.255489, 34.346962, 30.345251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771862, 34.895523, 30.325451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458237, 35.060055, 30.511377>,  <32.270061, 35.158772, 30.622932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.458237, 35.060055, 30.511377>,  <32.771862, 34.895523, 30.325451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458237, 35.060055, 30.511377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597890, 0.299454, 0.743542,
		0.166648, 0.860893, -0.480720,
		-0.784064, 0.411327, 0.464816,
		32.223019, 35.183453, 30.650822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061836, 35.481495, 30.679939>,  <32.771862, 34.895523, 30.325451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061836, 35.481495, 30.679939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709854, 35.450207, 30.867371>,  <32.498665, 35.431435, 30.979830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709854, 35.450207, 30.867371>,  <33.061836, 35.481495, 30.679939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709854, 35.450207, 30.867371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385285, 0.459532, 0.800241,
		-0.277918, 0.884711, -0.374231,
		-0.879953, -0.078216, 0.468578,
		32.445869, 35.426743, 31.007944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.079586, 36.078678, 31.131971>,  <33.061836, 35.481495, 30.679939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.079586, 36.078678, 31.131971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785847, 35.840096, 31.261574>,  <32.609604, 35.696945, 31.339334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785847, 35.840096, 31.261574>,  <33.079586, 36.078678, 31.131971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785847, 35.840096, 31.261574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251342, 0.204468, 0.946055,
		-0.630527, 0.776167, -0.000236,
		-0.734345, -0.596454, 0.324006,
		32.565544, 35.661160, 31.358776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583935, 36.520210, 31.664669>,  <33.079586, 36.078678, 31.131971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583935, 36.520210, 31.664669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541561, 36.126259, 31.719511>,  <32.516136, 35.889889, 31.752417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541561, 36.126259, 31.719511>,  <32.583935, 36.520210, 31.664669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541561, 36.126259, 31.719511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168857, 0.118059, 0.978544,
		-0.979931, 0.126814, 0.153796,
		-0.105936, -0.984876, 0.137103,
		32.509781, 35.830795, 31.760641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233337, 36.487846, 32.240273>,  <32.583935, 36.520210, 31.664669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233337, 36.487846, 32.240273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414268, 36.136307, 32.179577>,  <32.522827, 35.925385, 32.143158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414268, 36.136307, 32.179577>,  <32.233337, 36.487846, 32.240273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414268, 36.136307, 32.179577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296140, -0.012480, 0.955063,
		-0.841248, -0.476940, 0.254616,
		0.452330, -0.878847, -0.151740,
		32.549969, 35.872654, 32.134056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599422, 36.448887, 31.850906>,  <32.233337, 36.487846, 32.240273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599422, 36.448887, 31.850906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844053, 36.723373, 32.008427>,  <31.990831, 36.888065, 32.102940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844053, 36.723373, 32.008427>,  <31.599422, 36.448887, 31.850906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844053, 36.723373, 32.008427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437040, 0.707910, -0.554851,
		-0.659524, 0.167228, 0.732846,
		0.611575, 0.686221, 0.393798,
		32.027527, 36.929241, 32.126568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179258, 37.034645, 31.964010>,  <31.599422, 36.448887, 31.850906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179258, 37.034645, 31.964010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554895, 37.171780, 31.954460>,  <31.780277, 37.254059, 31.948730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.554895, 37.171780, 31.954460>,  <31.179258, 37.034645, 31.964010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554895, 37.171780, 31.954460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229854, 0.574924, -0.785258,
		-0.255489, 0.742917, 0.618708,
		0.939091, 0.342838, -0.023875,
		31.836622, 37.274632, 31.947298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.125874, 37.721748, 31.903181>,  <31.179258, 37.034645, 31.964010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.125874, 37.721748, 31.903181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499718, 37.656071, 31.776979>,  <31.724024, 37.616665, 31.701258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499718, 37.656071, 31.776979>,  <31.125874, 37.721748, 31.903181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499718, 37.656071, 31.776979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186625, 0.528762, -0.827999,
		0.302777, 0.832738, 0.463544,
		0.934611, -0.164190, -0.315506,
		31.780102, 37.606815, 31.682327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.358763, 38.348087, 31.576658>,  <31.125874, 37.721748, 31.903181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.358763, 38.348087, 31.576658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594233, 38.053875, 31.442520>,  <31.735514, 37.877346, 31.362038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594233, 38.053875, 31.442520>,  <31.358763, 38.348087, 31.576658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594233, 38.053875, 31.442520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030954, 0.435045, -0.899876,
		0.807778, 0.519353, 0.278867,
		0.588673, -0.735533, -0.335343,
		31.770834, 37.833214, 31.341917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893019, 38.601334, 31.226448>,  <31.358763, 38.348087, 31.576658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893019, 38.601334, 31.226448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860107, 38.246994, 31.043800>,  <31.840361, 38.034389, 30.934212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.860107, 38.246994, 31.043800>,  <31.893019, 38.601334, 31.226448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860107, 38.246994, 31.043800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183356, 0.463808, -0.866754,
		0.979597, 0.012411, -0.200586,
		-0.082276, -0.885849, -0.456621,
		31.835424, 37.981239, 30.906815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127148, 38.775520, 30.633762>,  <31.893019, 38.601334, 31.226448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127148, 38.775520, 30.633762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955290, 38.418903, 30.576420>,  <31.852175, 38.204933, 30.542015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955290, 38.418903, 30.576420>,  <32.127148, 38.775520, 30.633762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955290, 38.418903, 30.576420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248804, 0.269490, -0.930307,
		0.868043, -0.364037, -0.337605,
		-0.429648, -0.891544, -0.143356,
		31.826395, 38.151440, 30.533413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.340965, 38.477585, 29.985020>,  <32.127148, 38.775520, 30.633762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.340965, 38.477585, 29.985020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000202, 38.286510, 30.070875>,  <31.795744, 38.171867, 30.122389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000202, 38.286510, 30.070875>,  <32.340965, 38.477585, 29.985020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000202, 38.286510, 30.070875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319047, 0.148391, -0.936050,
		0.415286, -0.865908, -0.278819,
		-0.851907, -0.477685, 0.214641,
		31.744631, 38.143204, 30.135267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203606, 38.067051, 29.316036>,  <32.340965, 38.477585, 29.985020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203606, 38.067051, 29.316036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887770, 38.116318, 29.556492>,  <31.698267, 38.145878, 29.700766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887770, 38.116318, 29.556492>,  <32.203606, 38.067051, 29.316036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887770, 38.116318, 29.556492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574434, 0.196149, -0.794702,
		-0.215795, -0.972808, -0.084127,
		-0.789594, 0.123167, 0.601142,
		31.650892, 38.153267, 29.736834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628557, 37.559528, 29.027744>,  <32.203606, 38.067051, 29.316036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628557, 37.559528, 29.027744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447536, 37.861794, 29.217131>,  <31.338924, 38.043152, 29.330763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.447536, 37.861794, 29.217131>,  <31.628557, 37.559528, 29.027744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.447536, 37.861794, 29.217131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494118, 0.229487, -0.838560,
		-0.742323, -0.613440, 0.269532,
		-0.452552, 0.755663, 0.473466,
		31.311771, 38.088493, 29.359171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860176, 37.527241, 28.792858>,  <31.628557, 37.559528, 29.027744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860176, 37.527241, 28.792858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.890078, 37.879112, 28.980722>,  <30.908018, 38.090233, 29.093441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.890078, 37.879112, 28.980722>,  <30.860176, 37.527241, 28.792858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890078, 37.879112, 28.980722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738301, 0.365414, -0.566907,
		-0.670316, -0.304374, 0.676782,
		0.074754, 0.879676, 0.469662,
		30.912504, 38.143017, 29.121620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185717, 37.666733, 29.088120>,  <30.860176, 37.527241, 28.792858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185717, 37.666733, 29.088120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375580, 38.017136, 29.053907>,  <30.489498, 38.227379, 29.033381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375580, 38.017136, 29.053907>,  <30.185717, 37.666733, 29.088120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375580, 38.017136, 29.053907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743564, 0.347091, -0.571525,
		-0.470971, 0.334876, 0.816115,
		0.474656, 0.876006, -0.085532,
		30.517977, 38.279938, 29.028248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609961, 38.119114, 29.156933>,  <30.185717, 37.666733, 29.088120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609961, 38.119114, 29.156933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889194, 38.336914, 28.970943>,  <30.056734, 38.467594, 28.859350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.889194, 38.336914, 28.970943>,  <29.609961, 38.119114, 29.156933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889194, 38.336914, 28.970943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705163, 0.410172, -0.578363,
		-0.124199, 0.731627, 0.670295,
		0.698083, 0.544500, -0.464973,
		30.098619, 38.500263, 28.831451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.344246, 38.707134, 29.141203>,  <29.609961, 38.119114, 29.156933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.344246, 38.707134, 29.141203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627373, 38.708599, 28.858648>,  <29.797249, 38.709476, 28.689116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627373, 38.708599, 28.858648>,  <29.344246, 38.707134, 29.141203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627373, 38.708599, 28.858648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640131, 0.426184, -0.639217,
		0.298710, 0.904629, 0.304004,
		0.707816, 0.003662, -0.706387,
		29.839718, 38.709698, 28.646732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.371855, 39.423267, 28.885557>,  <29.344246, 38.707134, 29.141203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.371855, 39.423267, 28.885557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.508673, 39.159260, 28.618011>,  <29.590763, 39.000854, 28.457483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.508673, 39.159260, 28.618011>,  <29.371855, 39.423267, 28.885557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.508673, 39.159260, 28.618011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636935, 0.360492, -0.681440,
		0.690883, 0.659107, -0.297084,
		0.342045, -0.660018, -0.668865,
		29.611286, 38.961254, 28.417353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340532, 39.741772, 28.241133>,  <29.371855, 39.423267, 28.885557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.340532, 39.741772, 28.241133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.386621, 39.359791, 28.131748>,  <29.414276, 39.130600, 28.066118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.386621, 39.359791, 28.131748>,  <29.340532, 39.741772, 28.241133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.386621, 39.359791, 28.131748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509848, 0.179409, -0.841348,
		0.852513, 0.236368, -0.466211,
		0.115225, -0.954957, -0.273460,
		29.421188, 39.073303, 28.049709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.254494, 39.780346, 27.536316>,  <29.340532, 39.741772, 28.241133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.254494, 39.780346, 27.536316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.236235, 39.385944, 27.600458>,  <29.225279, 39.149303, 27.638945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.236235, 39.385944, 27.600458>,  <29.254494, 39.780346, 27.536316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236235, 39.385944, 27.600458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497713, -0.116733, -0.859451,
		0.866140, -0.119043, -0.485418,
		-0.045647, -0.986003, 0.160356,
		29.222540, 39.090145, 27.648565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610102, 39.394413, 26.944666>,  <29.254494, 39.780346, 27.536316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610102, 39.394413, 26.944666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.341492, 39.163692, 27.130722>,  <29.180325, 39.025261, 27.242355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.341492, 39.163692, 27.130722>,  <29.610102, 39.394413, 26.944666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341492, 39.163692, 27.130722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374241, -0.277776, -0.884751,
		0.639527, -0.768209, -0.029327,
		-0.671527, -0.576797, 0.465141,
		29.140034, 38.990654, 27.270264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539053, 38.899231, 26.491562>,  <29.610102, 39.394413, 26.944666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.539053, 38.899231, 26.491562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218107, 38.848541, 26.724852>,  <29.025539, 38.818127, 26.864824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.218107, 38.848541, 26.724852>,  <29.539053, 38.899231, 26.491562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.218107, 38.848541, 26.724852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571050, -0.121105, -0.811933,
		0.173527, -0.984517, 0.024802,
		-0.802365, -0.126729, 0.583223,
		28.977398, 38.810524, 26.899818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200590, 38.298725, 26.318007>,  <29.539053, 38.899231, 26.491562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200590, 38.298725, 26.318007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.917431, 38.508701, 26.507034>,  <28.747536, 38.634686, 26.620451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.917431, 38.508701, 26.507034>,  <29.200590, 38.298725, 26.318007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.917431, 38.508701, 26.507034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626317, -0.157234, -0.763547,
		-0.326514, -0.836489, 0.440085,
		-0.707895, 0.524941, 0.472568,
		28.705063, 38.666183, 26.648806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492319, 37.877106, 26.359150>,  <29.200590, 38.298725, 26.318007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.492319, 37.877106, 26.359150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327263, 38.234768, 26.428669>,  <28.228230, 38.449368, 26.470381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327263, 38.234768, 26.428669>,  <28.492319, 37.877106, 26.359150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.327263, 38.234768, 26.428669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729278, -0.209976, -0.651202,
		-0.545785, -0.395459, 0.738736,
		-0.412640, 0.894160, 0.173797,
		28.203470, 38.503017, 26.480808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.822411, 37.742733, 26.370689>,  <28.492319, 37.877106, 26.359150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.822411, 37.742733, 26.370689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.795383, 38.139595, 26.328617>,  <27.779167, 38.377712, 26.303373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.795383, 38.139595, 26.328617>,  <27.822411, 37.742733, 26.370689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.795383, 38.139595, 26.328617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702328, -0.122177, -0.701291,
		-0.708640, 0.026486, 0.705073,
		-0.067569, 0.992155, -0.105181,
		27.775112, 38.437241, 26.297062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.122217, 37.881271, 26.351307>,  <27.822411, 37.742733, 26.370689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.122217, 37.881271, 26.351307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.308664, 38.185204, 26.170027>,  <27.420532, 38.367561, 26.061258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.308664, 38.185204, 26.170027>,  <27.122217, 37.881271, 26.351307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.308664, 38.185204, 26.170027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754686, 0.074145, -0.651884,
		-0.461718, 0.645880, 0.607993,
		0.466119, 0.759830, -0.453202,
		27.448500, 38.413151, 26.034065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564638, 38.286026, 26.222170>,  <27.122217, 37.881271, 26.351307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.564638, 38.286026, 26.222170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.861401, 38.358150, 25.963848>,  <27.039457, 38.401424, 25.808855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.861401, 38.358150, 25.963848>,  <26.564638, 38.286026, 26.222170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.861401, 38.358150, 25.963848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664319, 0.067159, -0.744425,
		-0.090857, 0.981314, 0.169611,
		0.741906, 0.180312, -0.645804,
		27.083973, 38.412243, 25.770107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.254713, 38.717903, 25.766453>,  <26.564638, 38.286026, 26.222170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.254713, 38.717903, 25.766453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.596458, 38.633350, 25.576555>,  <26.801506, 38.582619, 25.462616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.596458, 38.633350, 25.576555>,  <26.254713, 38.717903, 25.766453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.596458, 38.633350, 25.576555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451149, 0.151721, -0.879457,
		0.257929, 0.965556, 0.034261,
		0.854363, -0.211381, -0.474743,
		26.852768, 38.569935, 25.434132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.488804, 39.313595, 25.341581>,  <26.254713, 38.717903, 25.766453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.488804, 39.313595, 25.341581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.633471, 38.974777, 25.185780>,  <26.720270, 38.771488, 25.092299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.633471, 38.974777, 25.185780>,  <26.488804, 39.313595, 25.341581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.633471, 38.974777, 25.185780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449323, 0.207700, -0.868890,
		0.816888, 0.489263, -0.305477,
		0.361668, -0.847043, -0.389505,
		26.741970, 38.720665, 25.068928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.754875, 39.523464, 24.688385>,  <26.488804, 39.313595, 25.341581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.754875, 39.523464, 24.688385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720371, 39.127029, 24.647778>,  <26.699669, 38.889168, 24.623413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720371, 39.127029, 24.647778>,  <26.754875, 39.523464, 24.688385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.720371, 39.127029, 24.647778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215208, 0.118029, -0.969409,
		0.972751, -0.061772, -0.223471,
		-0.086259, -0.991087, -0.101519,
		26.694494, 38.829704, 24.617321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.162439, 39.293098, 24.017439>,  <26.754875, 39.523464, 24.688385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.162439, 39.293098, 24.017439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.895018, 39.005684, 24.094109>,  <26.734564, 38.833237, 24.140110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.895018, 39.005684, 24.094109>,  <27.162439, 39.293098, 24.017439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.895018, 39.005684, 24.094109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249222, -0.026356, -0.968088,
		0.700660, -0.694988, -0.161455,
		-0.668554, -0.718538, 0.191673,
		26.694452, 38.790123, 24.151611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.220255, 38.912769, 23.385031>,  <27.162439, 39.293098, 24.017439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.220255, 38.912769, 23.385031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.867729, 38.793377, 23.531561>,  <26.656214, 38.721741, 23.619480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.867729, 38.793377, 23.531561>,  <27.220255, 38.912769, 23.385031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.867729, 38.793377, 23.531561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364793, -0.062996, -0.928955,
		0.300349, -0.952335, -0.053364,
		-0.881315, -0.298478, 0.366326,
		26.603334, 38.703835, 23.641459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073664, 38.304424, 22.978279>,  <27.220255, 38.912769, 23.385031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073664, 38.304424, 22.978279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.730055, 38.430542, 23.139608>,  <26.523890, 38.506214, 23.236406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.730055, 38.430542, 23.139608>,  <27.073664, 38.304424, 22.978279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.730055, 38.430542, 23.139608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481637, -0.230723, -0.845454,
		-0.173510, -0.920520, 0.350053,
		-0.859023, 0.315293, 0.403324,
		26.472347, 38.525131, 23.260605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564953, 37.698578, 22.801334>,  <27.073664, 38.304424, 22.978279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.564953, 37.698578, 22.801334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.372244, 38.043816, 22.861946>,  <26.256618, 38.250957, 22.898314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.372244, 38.043816, 22.861946>,  <26.564953, 37.698578, 22.801334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.372244, 38.043816, 22.861946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440489, -0.089037, -0.893332,
		-0.757539, -0.497130, 0.423080,
		-0.481772, 0.863096, 0.151531,
		26.227713, 38.302746, 22.907406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.941292, 37.596695, 22.490341>,  <26.564953, 37.698578, 22.801334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.941292, 37.596695, 22.490341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963432, 37.993645, 22.534384>,  <25.976717, 38.231815, 22.560810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963432, 37.993645, 22.534384>,  <25.941292, 37.596695, 22.490341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.963432, 37.993645, 22.534384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432952, 0.123225, -0.892955,
		-0.899716, 0.001757, 0.436473,
		0.055353, 0.992377, 0.110106,
		25.980038, 38.291359, 22.567415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.248936, 37.888493, 22.259727>,  <25.941292, 37.596695, 22.490341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.248936, 37.888493, 22.259727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.495085, 38.203548, 22.247478>,  <25.642775, 38.392582, 22.240129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.495085, 38.203548, 22.247478>,  <25.248936, 37.888493, 22.259727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.495085, 38.203548, 22.247478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382488, 0.264415, -0.885318,
		-0.689216, 0.556513, 0.463977,
		0.615374, 0.787641, -0.030621,
		25.679697, 38.439842, 22.238293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.889343, 38.408558, 21.931767>,  <25.248936, 37.888493, 22.259727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.889343, 38.408558, 21.931767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.262539, 38.549152, 21.900799>,  <25.486456, 38.633507, 21.882219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.262539, 38.549152, 21.900799>,  <24.889343, 38.408558, 21.931767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.262539, 38.549152, 21.900799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194557, 0.311577, -0.930090,
		-0.302789, 0.882825, 0.359081,
		0.932988, 0.351482, -0.077418,
		25.542435, 38.654598, 21.877573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.910593, 39.135864, 21.561211>,  <24.889343, 38.408558, 21.931767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.910593, 39.135864, 21.561211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.276775, 38.987003, 21.499975>,  <25.496485, 38.897686, 21.463234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.276775, 38.987003, 21.499975>,  <24.910593, 39.135864, 21.561211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.276775, 38.987003, 21.499975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067240, 0.233612, -0.970002,
		0.396756, 0.898290, 0.188838,
		0.915458, -0.372157, -0.153087,
		25.551413, 38.875355, 21.454048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.181625, 39.589176, 21.184189>,  <24.910593, 39.135864, 21.561211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.181625, 39.589176, 21.184189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.408884, 39.267017, 21.116608>,  <25.545238, 39.073723, 21.076059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.408884, 39.267017, 21.116608>,  <25.181625, 39.589176, 21.184189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.408884, 39.267017, 21.116608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154368, 0.305965, -0.939445,
		0.808320, 0.507660, 0.298160,
		0.568145, -0.805398, -0.168951,
		25.579327, 39.025398, 21.065922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.761936, 39.890099, 20.831181>,  <25.181625, 39.589176, 21.184189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.761936, 39.890099, 20.831181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719629, 39.496906, 20.771090>,  <25.694244, 39.260990, 20.735035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.719629, 39.496906, 20.771090>,  <25.761936, 39.890099, 20.831181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.719629, 39.496906, 20.771090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074810, 0.142779, -0.986924,
		0.991573, -0.115624, 0.058435,
		-0.105769, -0.982978, -0.150226,
		25.687899, 39.202011, 20.726023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.163244, 39.741604, 20.241055>,  <25.761936, 39.890099, 20.831181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.163244, 39.741604, 20.241055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.949778, 39.403755, 20.258074>,  <25.821697, 39.201046, 20.268286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.949778, 39.403755, 20.258074>,  <26.163244, 39.741604, 20.241055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.949778, 39.403755, 20.258074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118895, 0.025123, -0.992589,
		0.837296, -0.534770, -0.113829,
		-0.533666, -0.844624, 0.042547,
		25.789679, 39.150368, 20.270838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.375042, 39.332527, 19.738073>,  <26.163244, 39.741604, 20.241055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.375042, 39.332527, 19.738073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.032265, 39.138218, 19.806978>,  <25.826599, 39.021633, 19.848322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.032265, 39.138218, 19.806978>,  <26.375042, 39.332527, 19.738073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.032265, 39.138218, 19.806978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115983, -0.143907, -0.982771,
		0.502192, -0.862158, 0.066979,
		-0.856943, -0.485771, 0.172264,
		25.775181, 38.992485, 19.858658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.695595, 39.429592, 19.071987>,  <26.375042, 39.332527, 19.738073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.695595, 39.429592, 19.071987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998842, 39.291992, 18.850386>,  <27.180790, 39.209431, 18.717424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.998842, 39.291992, 18.850386>,  <26.695595, 39.429592, 19.071987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.998842, 39.291992, 18.850386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495799, -0.247796, 0.832335,
		-0.423606, -0.905681, -0.017301,
		0.758117, -0.344004, -0.554003,
		27.226278, 39.188793, 18.684185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801653, 38.775860, 19.346523>,  <26.695595, 39.429592, 19.071987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801653, 38.775860, 19.346523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.142826, 38.857456, 19.154318>,  <27.347530, 38.906414, 19.038996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.142826, 38.857456, 19.154318>,  <26.801653, 38.775860, 19.346523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.142826, 38.857456, 19.154318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520000, -0.412927, 0.747724,
		-0.045886, -0.887625, -0.458276,
		0.852933, 0.203993, -0.480512,
		27.398706, 38.918655, 19.010164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.103979, 38.122307, 19.309504>,  <26.801653, 38.775860, 19.346523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.103979, 38.122307, 19.309504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394592, 38.391247, 19.252794>,  <27.568960, 38.552608, 19.218769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394592, 38.391247, 19.252794>,  <27.103979, 38.122307, 19.309504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.394592, 38.391247, 19.252794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525160, -0.410269, 0.745578,
		0.443120, -0.616142, -0.651163,
		0.726534, 0.672345, -0.141775,
		27.612553, 38.592949, 19.210262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.785128, 37.747272, 19.407602>,  <27.103979, 38.122307, 19.309504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.785128, 37.747272, 19.407602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.856270, 38.138763, 19.448519>,  <27.898954, 38.373657, 19.473068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.856270, 38.138763, 19.448519>,  <27.785128, 37.747272, 19.407602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.856270, 38.138763, 19.448519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577336, -0.187959, 0.794579,
		0.796901, -0.082263, -0.598483,
		0.177854, 0.978726, 0.102291,
		27.909626, 38.432381, 19.479206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.488783, 37.706539, 19.557426>,  <27.785128, 37.747272, 19.407602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.488783, 37.706539, 19.557426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.357189, 38.063992, 19.679537>,  <28.278233, 38.278461, 19.752804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.357189, 38.063992, 19.679537>,  <28.488783, 37.706539, 19.557426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.357189, 38.063992, 19.679537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531697, -0.091878, 0.841937,
		0.780428, 0.439300, -0.444913,
		-0.328985, 0.893630, 0.305278,
		28.258493, 38.332081, 19.771120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.050898, 37.993164, 19.776731>,  <28.488783, 37.706539, 19.557426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.050898, 37.993164, 19.776731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.749403, 38.179256, 19.962395>,  <28.568506, 38.290913, 20.073792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.749403, 38.179256, 19.962395>,  <29.050898, 37.993164, 19.776731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.749403, 38.179256, 19.962395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441049, -0.165497, 0.882092,
		0.487194, 0.869580, -0.080449,
		-0.753735, 0.465232, 0.464157,
		28.523283, 38.318825, 20.101643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305017, 38.504982, 20.169657>,  <29.050898, 37.993164, 19.776731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305017, 38.504982, 20.169657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.953854, 38.449070, 20.352844>,  <28.743155, 38.415524, 20.462757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.953854, 38.449070, 20.352844>,  <29.305017, 38.504982, 20.169657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.953854, 38.449070, 20.352844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463070, -0.004522, 0.886310,
		-0.121820, 0.990172, 0.068700,
		-0.877910, -0.139783, 0.457968,
		28.690481, 38.407135, 20.490234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214624, 39.025692, 20.684917>,  <29.305017, 38.504982, 20.169657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214624, 39.025692, 20.684917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963791, 38.732697, 20.790915>,  <28.813292, 38.556900, 20.854513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.963791, 38.732697, 20.790915>,  <29.214624, 39.025692, 20.684917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963791, 38.732697, 20.790915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439037, -0.051351, 0.897000,
		-0.643438, 0.678836, 0.353793,
		-0.627084, -0.732492, 0.264993,
		28.775665, 38.512947, 20.870413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058170, 39.204491, 21.300104>,  <29.214624, 39.025692, 20.684917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058170, 39.204491, 21.300104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.961626, 38.816578, 21.314327>,  <28.903700, 38.583828, 21.322861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.961626, 38.816578, 21.314327>,  <29.058170, 39.204491, 21.300104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.961626, 38.816578, 21.314327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314515, -0.043506, 0.948255,
		-0.918056, 0.240054, 0.315512,
		-0.241359, -0.969784, 0.035559,
		28.889217, 38.525642, 21.324995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733290, 39.061607, 21.985342>,  <29.058170, 39.204491, 21.300104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.733290, 39.061607, 21.985342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814686, 38.693390, 21.851957>,  <28.863523, 38.472462, 21.771927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.814686, 38.693390, 21.851957>,  <28.733290, 39.061607, 21.985342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814686, 38.693390, 21.851957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318660, -0.259773, 0.911578,
		-0.925769, -0.291758, 0.240478,
		0.203490, -0.920541, -0.333461,
		28.875732, 38.417229, 21.751919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.419924, 38.626606, 22.481146>,  <28.733290, 39.061607, 21.985342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.419924, 38.626606, 22.481146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.714342, 38.431713, 22.293169>,  <28.890993, 38.314777, 22.180384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.714342, 38.431713, 22.293169>,  <28.419924, 38.626606, 22.481146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.714342, 38.431713, 22.293169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454938, -0.158031, 0.876389,
		-0.501268, -0.858856, 0.105341,
		0.736045, -0.487229, -0.469942,
		28.935156, 38.285545, 22.152185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.466402, 38.024330, 22.808271>,  <28.419924, 38.626606, 22.481146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.466402, 38.024330, 22.808271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.815096, 38.076710, 22.619408>,  <29.024311, 38.108139, 22.506090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.815096, 38.076710, 22.619408>,  <28.466402, 38.024330, 22.808271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.815096, 38.076710, 22.619408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479664, -0.031359, 0.876891,
		0.100025, -0.990893, -0.090150,
		0.871732, 0.130953, -0.472159,
		29.076616, 38.115993, 22.477760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.932718, 37.409176, 22.989687>,  <28.466402, 38.024330, 22.808271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.932718, 37.409176, 22.989687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152578, 37.726875, 22.886105>,  <29.284494, 37.917496, 22.823956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152578, 37.726875, 22.886105>,  <28.932718, 37.409176, 22.989687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152578, 37.726875, 22.886105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650828, -0.212780, 0.728799,
		0.523745, -0.569121, -0.633871,
		0.549650, 0.794246, -0.258957,
		29.317472, 37.965149, 22.808416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.561308, 37.104290, 23.002817>,  <28.932718, 37.409176, 22.989687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.561308, 37.104290, 23.002817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631590, 37.498066, 23.003986>,  <29.673759, 37.734333, 23.004688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631590, 37.498066, 23.003986>,  <29.561308, 37.104290, 23.002817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631590, 37.498066, 23.003986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751352, -0.136018, 0.645731,
		0.636081, -0.111261, -0.763559,
		0.175703, 0.984439, 0.002923,
		29.684301, 37.793396, 23.004864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.325790, 37.107224, 22.921072>,  <29.561308, 37.104290, 23.002817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.325790, 37.107224, 22.921072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196739, 37.456409, 23.067410>,  <30.119308, 37.665920, 23.155212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.196739, 37.456409, 23.067410>,  <30.325790, 37.107224, 22.921072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196739, 37.456409, 23.067410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727628, -0.018458, 0.685724,
		0.605366, 0.487432, -0.629239,
		-0.322629, 0.872966, 0.365844,
		30.099951, 37.718300, 23.177162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956249, 37.559418, 23.027531>,  <30.325790, 37.107224, 22.921072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956249, 37.559418, 23.027531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673552, 37.716900, 23.262651>,  <30.503933, 37.811390, 23.403723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.673552, 37.716900, 23.262651>,  <30.956249, 37.559418, 23.027531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673552, 37.716900, 23.262651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649798, 0.032671, 0.759404,
		0.279777, 0.918656, -0.278918,
		-0.706744, 0.393704, 0.587801,
		30.461529, 37.835011, 23.438992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260881, 38.059433, 23.376595>,  <30.956249, 37.559418, 23.027531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260881, 38.059433, 23.376595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.943937, 37.988342, 23.610031>,  <30.753771, 37.945690, 23.750093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.943937, 37.988342, 23.610031>,  <31.260881, 38.059433, 23.376595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943937, 37.988342, 23.610031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583699, 0.057278, 0.809947,
		-0.177374, 0.982412, 0.058352,
		-0.792360, -0.177724, 0.583593,
		30.706230, 37.935024, 23.785109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274101, 38.593681, 23.919971>,  <31.260881, 38.059433, 23.376595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274101, 38.593681, 23.919971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025146, 38.326752, 24.083588>,  <30.875772, 38.166595, 24.181757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025146, 38.326752, 24.083588>,  <31.274101, 38.593681, 23.919971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025146, 38.326752, 24.083588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382984, 0.196116, 0.902697,
		-0.682610, 0.718483, 0.133514,
		-0.622388, -0.667324, 0.409038,
		30.838430, 38.126556, 24.206299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.731407, 38.981106, 24.347332>,  <31.274101, 38.593681, 23.919971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.731407, 38.981106, 24.347332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812597, 38.610184, 24.473129>,  <30.861311, 38.387630, 24.548609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.812597, 38.610184, 24.473129>,  <30.731407, 38.981106, 24.347332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.812597, 38.610184, 24.473129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313496, 0.365815, 0.876299,
		-0.927643, -0.079273, 0.364957,
		0.202973, -0.927305, 0.314494,
		30.873489, 38.331993, 24.567478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439203, 38.910252, 25.082348>,  <30.731407, 38.981106, 24.347332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439203, 38.910252, 25.082348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690529, 38.599072, 25.083923>,  <30.841324, 38.412365, 25.084869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.690529, 38.599072, 25.083923>,  <30.439203, 38.910252, 25.082348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.690529, 38.599072, 25.083923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247962, 0.205062, 0.946818,
		-0.737384, -0.593923, 0.321745,
		0.628315, -0.777949, 0.003939,
		30.879023, 38.365688, 25.085106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.424564, 38.613029, 25.803268>,  <30.439203, 38.910252, 25.082348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.424564, 38.613029, 25.803268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754604, 38.440220, 25.657631>,  <30.952629, 38.336533, 25.570248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754604, 38.440220, 25.657631>,  <30.424564, 38.613029, 25.803268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754604, 38.440220, 25.657631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480572, 0.197794, 0.854358,
		-0.297087, -0.879905, 0.370818,
		0.825100, -0.432023, -0.364096,
		31.002134, 38.310612, 25.548403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603170, 38.050915, 26.278168>,  <30.424564, 38.613029, 25.803268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603170, 38.050915, 26.278168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925167, 38.135010, 26.056253>,  <31.118364, 38.185467, 25.923105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925167, 38.135010, 26.056253>,  <30.603170, 38.050915, 26.278168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925167, 38.135010, 26.056253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518021, 0.206772, 0.830000,
		0.289214, -0.955534, 0.057541,
		0.804990, 0.210240, -0.554788,
		31.166664, 38.198082, 25.889816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191723, 37.701412, 26.598614>,  <30.603170, 38.050915, 26.278168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191723, 37.701412, 26.598614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360756, 37.987537, 26.375994>,  <31.462175, 38.159214, 26.242422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360756, 37.987537, 26.375994>,  <31.191723, 37.701412, 26.598614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360756, 37.987537, 26.375994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471606, 0.350840, 0.809011,
		0.773959, -0.604345, -0.189089,
		0.422582, 0.715317, -0.556549,
		31.487530, 38.202133, 26.209028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.982250, 37.648064, 26.640652>,  <31.191723, 37.701412, 26.598614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.982250, 37.648064, 26.640652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867552, 38.020607, 26.550898>,  <31.798733, 38.244133, 26.497046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867552, 38.020607, 26.550898>,  <31.982250, 37.648064, 26.640652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867552, 38.020607, 26.550898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647069, 0.361012, 0.671545,
		0.706454, 0.047370, -0.706172,
		-0.286748, 0.931357, -0.224387,
		31.781527, 38.300014, 26.483582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657928, 37.993652, 26.729322>,  <31.982250, 37.648064, 26.640652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657928, 37.993652, 26.729322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379562, 38.280666, 26.741011>,  <32.212543, 38.452873, 26.748024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379562, 38.280666, 26.741011>,  <32.657928, 37.993652, 26.729322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379562, 38.280666, 26.741011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473165, 0.427538, 0.770277,
		0.540206, 0.549871, -0.637040,
		-0.695911, 0.717533, 0.029221,
		32.170788, 38.495926, 26.749777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959995, 38.676243, 26.638451>,  <32.657928, 37.993652, 26.729322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959995, 38.676243, 26.638451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614475, 38.719021, 26.835390>,  <32.407162, 38.744690, 26.953554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614475, 38.719021, 26.835390>,  <32.959995, 38.676243, 26.638451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614475, 38.719021, 26.835390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478901, 0.477877, 0.736401,
		-0.156526, 0.871892, -0.464009,
		-0.863802, 0.106949, 0.492350,
		32.355335, 38.751106, 26.983095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052395, 39.336910, 26.889235>,  <32.959995, 38.676243, 26.638451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052395, 39.336910, 26.889235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759884, 39.163387, 27.099775>,  <32.584377, 39.059273, 27.226099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759884, 39.163387, 27.099775>,  <33.052395, 39.336910, 26.889235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759884, 39.163387, 27.099775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368594, 0.397969, 0.840095,
		-0.573910, 0.808352, -0.131127,
		-0.731277, -0.433806, 0.526352,
		32.540501, 39.033245, 27.257681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793785, 39.860992, 27.362303>,  <33.052395, 39.336910, 26.889235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793785, 39.860992, 27.362303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672794, 39.522701, 27.538143>,  <32.600201, 39.319725, 27.643648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672794, 39.522701, 27.538143>,  <32.793785, 39.860992, 27.362303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672794, 39.522701, 27.538143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453991, 0.277698, 0.846627,
		-0.838093, 0.455660, 0.299956,
		-0.302477, -0.845729, 0.439602,
		32.582050, 39.268982, 27.670023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693459, 40.001793, 28.045822>,  <32.793785, 39.860992, 27.362303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693459, 40.001793, 28.045822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669895, 39.605167, 28.092016>,  <32.655758, 39.367191, 28.119732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.669895, 39.605167, 28.092016>,  <32.693459, 40.001793, 28.045822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.669895, 39.605167, 28.092016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302795, 0.092486, 0.948558,
		-0.951234, 0.090846, 0.294791,
		-0.058909, -0.991561, 0.115483,
		32.652222, 39.307697, 28.126661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498695, 39.954353, 28.688065>,  <32.693459, 40.001793, 28.045822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498695, 39.954353, 28.688065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666119, 39.603081, 28.595457>,  <32.766571, 39.392315, 28.539892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.666119, 39.603081, 28.595457>,  <32.498695, 39.954353, 28.688065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666119, 39.603081, 28.595457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413612, -0.042628, 0.909455,
		-0.808538, -0.476418, 0.345386,
		0.418558, -0.878185, -0.231519,
		32.791687, 39.339626, 28.526001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.458023, 39.591938, 29.322412>,  <32.498695, 39.954353, 28.688065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.458023, 39.591938, 29.322412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760044, 39.431797, 29.114716>,  <32.941257, 39.335712, 28.990097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760044, 39.431797, 29.114716>,  <32.458023, 39.591938, 29.322412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760044, 39.431797, 29.114716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583579, 0.049357, 0.810555,
		-0.298882, -0.915029, 0.270907,
		0.755053, -0.400356, -0.519240,
		32.986561, 39.311691, 28.958944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827335, 39.136570, 29.835457>,  <32.458023, 39.591938, 29.322412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827335, 39.136570, 29.835457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080086, 39.182983, 29.528923>,  <33.231735, 39.210831, 29.345003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080086, 39.182983, 29.528923>,  <32.827335, 39.136570, 29.835457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080086, 39.182983, 29.528923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763284, 0.078597, 0.641264,
		0.134641, -0.990130, -0.038905,
		0.631877, 0.116036, -0.766334,
		33.269650, 39.217796, 29.299023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257912, 38.559219, 29.921194>,  <32.827335, 39.136570, 29.835457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257912, 38.559219, 29.921194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438797, 38.856049, 29.723272>,  <33.547329, 39.034145, 29.604519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438797, 38.856049, 29.723272>,  <33.257912, 38.559219, 29.921194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438797, 38.856049, 29.723272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787700, -0.072060, 0.611830,
		0.418368, -0.666433, -0.617118,
		0.452214, 0.742074, -0.494802,
		33.574463, 39.078671, 29.574831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841988, 38.395805, 29.925968>,  <33.257912, 38.559219, 29.921194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841988, 38.395805, 29.925968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913803, 38.784622, 29.865446>,  <33.956894, 39.017914, 29.829132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913803, 38.784622, 29.865446>,  <33.841988, 38.395805, 29.925968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913803, 38.784622, 29.865446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867831, -0.084065, 0.489696,
		0.463287, -0.219226, -0.858665,
		0.179538, 0.972046, -0.151305,
		33.967663, 39.076237, 29.820055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469383, 38.406391, 30.056950>,  <33.841988, 38.395805, 29.925968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469383, 38.406391, 30.056950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378414, 38.795795, 30.047493>,  <34.323833, 39.029438, 30.041819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378414, 38.795795, 30.047493>,  <34.469383, 38.406391, 30.056950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378414, 38.795795, 30.047493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919859, 0.222732, 0.322876,
		0.319588, 0.051685, -0.946146,
		-0.227425, 0.973509, -0.023640,
		34.310188, 39.087849, 30.040401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003845, 38.746605, 29.554220>,  <34.469383, 38.406391, 30.056950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003845, 38.746605, 29.554220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830818, 38.976418, 29.832155>,  <34.727001, 39.114307, 29.998917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830818, 38.976418, 29.832155>,  <35.003845, 38.746605, 29.554220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830818, 38.976418, 29.832155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897152, 0.350768, 0.268476,
		-0.089478, 0.739507, -0.667175,
		-0.432564, 0.574535, 0.694837,
		34.701050, 39.148777, 30.040606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302822, 39.364563, 29.449339>,  <35.003845, 38.746605, 29.554220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302822, 39.364563, 29.449339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171623, 39.394974, 29.825985>,  <35.092903, 39.413219, 30.051973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.171623, 39.394974, 29.825985>,  <35.302822, 39.364563, 29.449339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171623, 39.394974, 29.825985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879640, 0.388027, 0.275078,
		-0.344459, 0.918507, -0.194147,
		-0.327996, 0.076026, 0.941615,
		35.073223, 39.417782, 30.108469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588478, 40.028584, 29.629667>,  <35.302822, 39.364563, 29.449339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588478, 40.028584, 29.629667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475971, 39.847782, 29.968273>,  <35.408466, 39.739304, 30.171436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.475971, 39.847782, 29.968273>,  <35.588478, 40.028584, 29.629667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.475971, 39.847782, 29.968273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810241, 0.360810, 0.461871,
		-0.514197, 0.815789, 0.264746,
		-0.281266, -0.452000, 0.846513,
		35.391590, 39.712181, 30.222227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581921, 40.543766, 30.186777>,  <35.588478, 40.028584, 29.629667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581921, 40.543766, 30.186777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629070, 40.183212, 30.353447>,  <35.657360, 39.966881, 30.453449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629070, 40.183212, 30.353447>,  <35.581921, 40.543766, 30.186777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629070, 40.183212, 30.353447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810500, 0.329769, 0.484090,
		-0.573756, 0.280653, 0.769440,
		0.117876, -0.901380, 0.416676,
		35.664433, 39.912800, 30.478449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831326, 40.634075, 30.834772>,  <35.581921, 40.543766, 30.186777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831326, 40.634075, 30.834772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936359, 40.252483, 30.776854>,  <35.999378, 40.023529, 30.742102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936359, 40.252483, 30.776854>,  <35.831326, 40.634075, 30.834772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936359, 40.252483, 30.776854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813946, 0.138399, 0.564214,
		-0.518211, -0.266011, 0.812832,
		0.262582, -0.953983, -0.144798,
		36.015133, 39.966290, 30.733414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053860, 40.452473, 31.503843>,  <35.831326, 40.634075, 30.834772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053860, 40.452473, 31.503843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219746, 40.209846, 31.232523>,  <36.319279, 40.064270, 31.069731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219746, 40.209846, 31.232523>,  <36.053860, 40.452473, 31.503843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219746, 40.209846, 31.232523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887117, 0.103558, 0.449778,
		-0.202575, -0.788262, 0.581039,
		0.414714, -0.606563, -0.678302,
		36.344158, 40.027878, 31.029032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294876, 39.775757, 31.779022>,  <36.053860, 40.452473, 31.503843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294876, 39.775757, 31.779022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508934, 39.845501, 31.448393>,  <36.637367, 39.887348, 31.250015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508934, 39.845501, 31.448393>,  <36.294876, 39.775757, 31.779022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508934, 39.845501, 31.448393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836741, 0.025124, 0.547022,
		0.116144, -0.984362, -0.132448,
		0.535140, 0.174358, -0.826574,
		36.669476, 39.897808, 31.200420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788982, 39.190666, 31.751928>,  <36.294876, 39.775757, 31.779022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788982, 39.190666, 31.751928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897121, 39.530838, 31.571402>,  <36.962006, 39.734940, 31.463085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.897121, 39.530838, 31.571402>,  <36.788982, 39.190666, 31.751928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897121, 39.530838, 31.571402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733408, 0.121779, 0.668793,
		0.623720, -0.511803, -0.590788,
		0.270345, 0.850428, -0.451317,
		36.978226, 39.785965, 31.436007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205513, 38.894672, 32.302105>,  <36.788982, 39.190666, 31.751928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205513, 38.894672, 32.302105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597889, 38.833275, 32.349777>,  <37.833313, 38.796436, 32.378380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597889, 38.833275, 32.349777>,  <37.205513, 38.894672, 32.302105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597889, 38.833275, 32.349777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187805, -0.906399, 0.378378,
		0.049945, -0.393547, -0.917947,
		0.980936, -0.153497, 0.119181,
		37.892170, 38.787224, 32.385532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502419, 38.285946, 31.920891>,  <37.205513, 38.894672, 32.302105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502419, 38.285946, 31.920891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668980, 38.376350, 32.273148>,  <37.768917, 38.430595, 32.484501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668980, 38.376350, 32.273148>,  <37.502419, 38.285946, 31.920891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668980, 38.376350, 32.273148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356556, -0.850420, 0.386851,
		0.836349, -0.475082, -0.273528,
		0.416400, 0.226014, 0.880641,
		37.793900, 38.444153, 32.537338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797108, 37.652126, 32.069202>,  <37.502419, 38.285946, 31.920891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797108, 37.652126, 32.069202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706337, 37.825245, 32.418190>,  <37.651875, 37.929115, 32.627583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706337, 37.825245, 32.418190>,  <37.797108, 37.652126, 32.069202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706337, 37.825245, 32.418190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622817, -0.753199, 0.211640,
		0.748736, -0.495359, 0.440470,
		-0.226923, 0.432795, 0.872465,
		37.638260, 37.955082, 32.679928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344082, 37.142193, 32.298187>,  <37.797108, 37.652126, 32.069202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344082, 37.142193, 32.298187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460377, 37.200508, 32.676441>,  <38.530155, 37.235497, 32.903393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460377, 37.200508, 32.676441>,  <38.344082, 37.142193, 32.298187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460377, 37.200508, 32.676441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414900, -0.909778, 0.012702,
		0.862166, 0.388649, -0.324995,
		0.290737, 0.145791, 0.945630,
		38.547596, 37.244244, 32.960129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416939, 36.984806, 31.498386>,  <38.344082, 37.142193, 32.298187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416939, 36.984806, 31.498386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361038, 36.658623, 31.723061>,  <38.327496, 36.462914, 31.857866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361038, 36.658623, 31.723061>,  <38.416939, 36.984806, 31.498386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361038, 36.658623, 31.723061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982505, 0.043679, -0.181043,
		0.123099, -0.577162, -0.807299,
		-0.139753, -0.815461, 0.561687,
		38.319111, 36.413986, 31.891567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970242, 36.536133, 31.075113>,  <38.416939, 36.984806, 31.498386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970242, 36.536133, 31.075113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901100, 36.464329, 31.462494>,  <37.859615, 36.421246, 31.694921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.901100, 36.464329, 31.462494>,  <37.970242, 36.536133, 31.075113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901100, 36.464329, 31.462494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964943, -0.166294, -0.203053,
		0.197497, -0.969600, -0.144469,
		-0.172856, -0.179506, 0.968452,
		37.849243, 36.410477, 31.753029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615681, 35.892792, 31.074015>,  <37.970242, 36.536133, 31.075113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615681, 35.892792, 31.074015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547028, 36.128925, 31.389496>,  <37.505836, 36.270603, 31.578785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547028, 36.128925, 31.389496>,  <37.615681, 35.892792, 31.074015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547028, 36.128925, 31.389496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978740, -0.193436, -0.068201,
		0.112303, -0.783642, 0.610978,
		-0.171630, 0.590329, 0.788705,
		37.495537, 36.306023, 31.626106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342785, 35.768692, 31.344931>,  <37.615681, 35.892792, 31.074015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342785, 35.768692, 31.344931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439190, 35.386570, 31.413412>,  <38.497032, 35.157299, 31.454502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439190, 35.386570, 31.413412>,  <38.342785, 35.768692, 31.344931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439190, 35.386570, 31.413412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370525, 0.072474, 0.925991,
		-0.897009, -0.286608, -0.336497,
		0.241009, -0.955303, 0.171205,
		38.511494, 35.099979, 31.464773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762993, 35.227432, 31.353991>,  <38.342785, 35.768692, 31.344931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762993, 35.227432, 31.353991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053875, 35.175838, 31.623669>,  <38.228405, 35.144882, 31.785475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053875, 35.175838, 31.623669>,  <37.762993, 35.227432, 31.353991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053875, 35.175838, 31.623669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633437, 0.252296, 0.731508,
		-0.264452, -0.959015, 0.101765,
		0.727202, -0.128987, 0.674196,
		38.272034, 35.137142, 31.825928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504356, 35.070805, 32.078815>,  <37.762993, 35.227432, 31.353991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504356, 35.070805, 32.078815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869289, 35.234013, 32.065170>,  <38.088249, 35.331940, 32.056984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869289, 35.234013, 32.065170>,  <37.504356, 35.070805, 32.078815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869289, 35.234013, 32.065170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319455, 0.761451, 0.564040,
		0.256115, -0.503696, 0.825043,
		0.912334, 0.408024, -0.034111,
		38.142990, 35.356419, 32.054935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861053, 35.106934, 32.733028>,  <37.504356, 35.070805, 32.078815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861053, 35.106934, 32.733028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864883, 35.402451, 32.463482>,  <37.867184, 35.579762, 32.301754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864883, 35.402451, 32.463482>,  <37.861053, 35.106934, 32.733028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864883, 35.402451, 32.463482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744821, 0.454915, 0.488154,
		0.667196, 0.497237, 0.554621,
		0.009577, 0.738788, -0.673870,
		37.867756, 35.624088, 32.261322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071236, 35.909283, 32.962818>,  <37.861053, 35.106934, 32.733028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071236, 35.909283, 32.962818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793053, 35.865150, 32.678799>,  <37.626144, 35.838673, 32.508389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.793053, 35.865150, 32.678799>,  <38.071236, 35.909283, 32.962818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793053, 35.865150, 32.678799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684503, 0.402354, 0.607920,
		0.218617, 0.908811, -0.355343,
		-0.695459, -0.110332, -0.710045,
		37.584415, 35.832050, 32.465786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708908, 36.631310, 32.637924>,  <38.071236, 35.909283, 32.962818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708908, 36.631310, 32.637924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446941, 36.329060, 32.633625>,  <37.289761, 36.147709, 32.631046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446941, 36.329060, 32.633625>,  <37.708908, 36.631310, 32.637924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446941, 36.329060, 32.633625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642491, 0.549263, 0.534337,
		-0.397857, 0.356848, -0.845204,
		-0.654916, -0.755626, -0.010744,
		37.250465, 36.102371, 32.630402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017277, 36.897064, 32.637768>,  <37.708908, 36.631310, 32.637924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017277, 36.897064, 32.637768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.964905, 36.542011, 32.814388>,  <36.933483, 36.328979, 32.920361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.964905, 36.542011, 32.814388>,  <37.017277, 36.897064, 32.637768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964905, 36.542011, 32.814388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744251, 0.382232, 0.547712,
		-0.654941, -0.256912, -0.710667,
		-0.130926, -0.887634, 0.441547,
		36.925629, 36.275723, 32.946854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481319, 36.686054, 33.171856>,  <37.017277, 36.897064, 32.637768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481319, 36.686054, 33.171856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372166, 36.301796, 33.151108>,  <36.306671, 36.071239, 33.138660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372166, 36.301796, 33.151108>,  <36.481319, 36.686054, 33.171856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372166, 36.301796, 33.151108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142120, -0.013068, 0.989763,
		-0.951491, 0.277465, -0.132961,
		-0.272887, -0.960647, -0.051868,
		36.290298, 36.013603, 33.135548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855526, 36.624363, 33.615471>,  <36.481319, 36.686054, 33.171856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855526, 36.624363, 33.615471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070816, 36.288742, 33.583721>,  <36.199989, 36.087368, 33.564671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.070816, 36.288742, 33.583721>,  <35.855526, 36.624363, 33.615471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070816, 36.288742, 33.583721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022744, -0.079690, 0.996560,
		-0.842491, -0.538184, -0.023808,
		0.538230, -0.839052, -0.079378,
		36.232285, 36.037025, 33.559906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538136, 35.991074, 33.890594>,  <35.855526, 36.624363, 33.615471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538136, 35.991074, 33.890594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933090, 35.944279, 33.933258>,  <36.170063, 35.916203, 33.958855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933090, 35.944279, 33.933258>,  <35.538136, 35.991074, 33.890594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933090, 35.944279, 33.933258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136452, -0.287323, 0.948065,
		-0.080265, -0.950663, -0.299663,
		0.987389, -0.116985, 0.106658,
		36.229305, 35.909184, 33.965256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.669357, 35.405258, 34.401585>,  <35.538136, 35.991074, 33.890594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.669357, 35.405258, 34.401585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999245, 35.630630, 34.382065>,  <36.197178, 35.765854, 34.370354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999245, 35.630630, 34.382065>,  <35.669357, 35.405258, 34.401585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999245, 35.630630, 34.382065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117816, -0.086774, 0.989237,
		0.553134, -0.821592, -0.137946,
		0.824719, 0.563433, -0.048799,
		36.246662, 35.799660, 34.367424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285522, 34.967747, 34.536793>,  <35.669357, 35.405258, 34.401585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285522, 34.967747, 34.536793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336281, 35.353630, 34.629086>,  <36.366737, 35.585159, 34.684460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.336281, 35.353630, 34.629086>,  <36.285522, 34.967747, 34.536793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336281, 35.353630, 34.629086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002205, -0.232886, 0.972501,
		0.991914, -0.122897, -0.031680,
		0.126895, 0.964707, 0.230732,
		36.374348, 35.643044, 34.698303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860195, 34.915199, 35.033752>,  <36.285522, 34.967747, 34.536793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860195, 34.915199, 35.033752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634331, 35.244522, 35.056843>,  <36.498814, 35.442116, 35.070698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634331, 35.244522, 35.056843>,  <36.860195, 34.915199, 35.033752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634331, 35.244522, 35.056843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069394, -0.117051, 0.990698,
		0.822402, 0.555401, 0.123226,
		-0.564659, 0.823303, 0.057722,
		36.464931, 35.491512, 35.074158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131378, 35.267162, 35.582108>,  <36.860195, 34.915199, 35.033752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131378, 35.267162, 35.582108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780914, 35.452034, 35.527363>,  <36.570637, 35.562958, 35.494518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780914, 35.452034, 35.527363>,  <37.131378, 35.267162, 35.582108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780914, 35.452034, 35.527363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064564, 0.168840, 0.983527,
		0.477674, 0.870564, -0.118091,
		-0.876161, 0.462181, -0.136857,
		36.518066, 35.590687, 35.486305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151203, 35.898392, 35.943645>,  <37.131378, 35.267162, 35.582108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151203, 35.898392, 35.943645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768555, 35.788513, 35.904835>,  <36.538967, 35.722588, 35.881546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.768555, 35.788513, 35.904835>,  <37.151203, 35.898392, 35.943645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768555, 35.788513, 35.904835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151578, 0.184880, 0.971001,
		-0.248793, 0.943589, -0.218499,
		-0.956622, -0.274698, -0.097030,
		36.481567, 35.706104, 35.875725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697933, 35.810413, 36.516544>,  <37.151203, 35.898392, 35.943645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697933, 35.810413, 36.516544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804455, 35.596760, 36.195599>,  <37.868366, 35.468567, 36.003033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.804455, 35.596760, 36.195599>,  <37.697933, 35.810413, 36.516544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804455, 35.596760, 36.195599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962619, 0.104637, 0.249831,
		-0.049485, -0.838901, 0.542030,
		0.266300, -0.534131, -0.802364,
		37.884346, 35.436520, 35.954887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083344, 35.196434, 36.659969>,  <37.697933, 35.810413, 36.516544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083344, 35.196434, 36.659969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201736, 35.338558, 36.305309>,  <38.272774, 35.423832, 36.092514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.201736, 35.338558, 36.305309>,  <38.083344, 35.196434, 36.659969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201736, 35.338558, 36.305309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891805, 0.229720, 0.389760,
		0.342169, -0.906080, -0.248877,
		0.295982, 0.355314, -0.886649,
		38.290531, 35.445152, 36.039314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850319, 34.968327, 36.535934>,  <38.083344, 35.196434, 36.659969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850319, 34.968327, 36.535934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758495, 35.303188, 36.337349>,  <38.703403, 35.504105, 36.218197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.758495, 35.303188, 36.337349>,  <38.850319, 34.968327, 36.535934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758495, 35.303188, 36.337349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771443, 0.467514, 0.431632,
		0.593447, -0.283912, -0.753136,
		-0.229556, 0.837153, -0.496467,
		38.689629, 35.554333, 36.188408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519119, 35.272057, 36.409363>,  <38.850319, 34.968327, 36.535934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519119, 35.272057, 36.409363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246685, 35.564926, 36.412113>,  <39.083225, 35.740646, 36.413761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246685, 35.564926, 36.412113>,  <39.519119, 35.272057, 36.409363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246685, 35.564926, 36.412113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685878, 0.634679, 0.356026,
		0.256310, 0.247197, -0.934451,
		-0.681085, 0.732172, 0.006873,
		39.042358, 35.784576, 36.414173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921856, 34.618122, 36.222282>,  <39.519119, 35.272057, 36.409363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921856, 34.618122, 36.222282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.837811, 34.593964, 35.831959>,  <39.787384, 34.579468, 35.597763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.837811, 34.593964, 35.831959>,  <39.921856, 34.618122, 36.222282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837811, 34.593964, 35.831959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568143, 0.804724, -0.172139,
		0.795655, -0.590569, -0.134770,
		-0.210112, -0.060394, -0.975810,
		39.774776, 34.575844, 35.539215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559399, 34.700119, 35.912476>,  <39.921856, 34.618122, 36.222282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559399, 34.700119, 35.912476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262287, 34.804253, 35.665737>,  <40.084019, 34.866734, 35.517693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262287, 34.804253, 35.665737>,  <40.559399, 34.700119, 35.912476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262287, 34.804253, 35.665737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486323, 0.843011, -0.229831,
		0.460177, -0.470702, -0.752779,
		-0.742783, 0.260331, -0.616848,
		40.039452, 34.882351, 35.480682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054565, 35.280941, 35.793045>,  <40.559399, 34.700119, 35.912476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054565, 35.280941, 35.793045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413372, 35.442860, 35.864037>,  <41.628654, 35.540012, 35.906631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413372, 35.442860, 35.864037>,  <41.054565, 35.280941, 35.793045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413372, 35.442860, 35.864037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381932, 0.507783, 0.772195,
		0.222459, -0.760458, 0.610094,
		0.897017, 0.404796, 0.177482,
		41.682476, 35.564297, 35.917282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011696, 35.479664, 36.518024>,  <41.054565, 35.280941, 35.793045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011696, 35.479664, 36.518024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347847, 35.646034, 36.379013>,  <41.549538, 35.745857, 36.295609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347847, 35.646034, 36.379013>,  <41.011696, 35.479664, 36.518024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347847, 35.646034, 36.379013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043570, 0.690948, 0.721590,
		0.540251, -0.591265, 0.598778,
		0.840375, 0.415928, -0.347524,
		41.599960, 35.770813, 36.274757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078346, 35.825710, 37.120335>,  <41.011696, 35.479664, 36.518024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078346, 35.825710, 37.120335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.362408, 35.959335, 36.872440>,  <41.532845, 36.039509, 36.723701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.362408, 35.959335, 36.872440>,  <41.078346, 35.825710, 37.120335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362408, 35.959335, 36.872440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304264, 0.648186, 0.698053,
		0.634886, -0.684299, 0.358684,
		0.710171, 0.334050, -0.619732,
		41.575455, 36.059555, 36.686520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772724, 35.893959, 37.460155>,  <41.078346, 35.825710, 37.120335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772724, 35.893959, 37.460155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739971, 36.173283, 37.175716>,  <41.720318, 36.340878, 37.005051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.739971, 36.173283, 37.175716>,  <41.772724, 35.893959, 37.460155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.739971, 36.173283, 37.175716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200541, 0.710448, 0.674572,
		0.976257, -0.087369, -0.198212,
		-0.081883, 0.698305, -0.711101,
		41.715405, 36.382774, 36.962387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.448780, 36.332832, 37.512718>,  <41.772724, 35.893959, 37.460155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.448780, 36.332832, 37.512718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114666, 36.510094, 37.382545>,  <41.914196, 36.616451, 37.304440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.114666, 36.510094, 37.382545>,  <42.448780, 36.332832, 37.512718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.114666, 36.510094, 37.382545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162759, 0.764674, 0.623525,
		0.525168, 0.467856, -0.710851,
		-0.835289, 0.443152, -0.325435,
		41.864079, 36.643040, 37.284916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.530724, 37.073139, 37.200043>,  <42.448780, 36.332832, 37.512718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.530724, 37.073139, 37.200043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176598, 37.033058, 37.381668>,  <41.964123, 37.009010, 37.490643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176598, 37.033058, 37.381668>,  <42.530724, 37.073139, 37.200043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.176598, 37.033058, 37.381668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184722, 0.820358, 0.541194,
		-0.426724, 0.563003, -0.707767,
		-0.885316, -0.100200, 0.454065,
		41.911003, 37.002998, 37.517887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206161, 37.663246, 37.145111>,  <42.530724, 37.073139, 37.200043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206161, 37.663246, 37.145111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029842, 37.493355, 37.461418>,  <41.924053, 37.391422, 37.651203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029842, 37.493355, 37.461418>,  <42.206161, 37.663246, 37.145111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029842, 37.493355, 37.461418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139688, 0.837777, 0.527842,
		-0.886672, 0.343130, -0.309958,
		-0.440794, -0.424725, 0.790765,
		41.897606, 37.365936, 37.698647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513916, 38.047310, 37.371323>,  <42.206161, 37.663246, 37.145111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513916, 38.047310, 37.371323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.741962, 37.868706, 37.647179>,  <41.878788, 37.761543, 37.812691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.741962, 37.868706, 37.647179>,  <41.513916, 38.047310, 37.371323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.741962, 37.868706, 37.647179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245685, 0.893662, 0.375508,
		-0.783971, -0.044649, 0.619190,
		0.570113, -0.446513, 0.689636,
		41.912998, 37.734753, 37.854069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360500, 38.420712, 38.036415>,  <41.513916, 38.047310, 37.371323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.360500, 38.420712, 38.036415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681778, 38.194435, 38.111103>,  <41.874546, 38.058670, 38.155918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.681778, 38.194435, 38.111103>,  <41.360500, 38.420712, 38.036415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.681778, 38.194435, 38.111103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456600, 0.785926, 0.416937,
		-0.382608, -0.249626, 0.889549,
		0.803198, -0.565692, 0.186723,
		41.922737, 38.024727, 38.167118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.648941, 38.571442, 38.663639>,  <41.360500, 38.420712, 38.036415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.648941, 38.571442, 38.663639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977428, 38.395054, 38.518784>,  <42.174522, 38.289223, 38.431870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977428, 38.395054, 38.518784>,  <41.648941, 38.571442, 38.663639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.977428, 38.395054, 38.518784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555096, 0.764372, 0.328030,
		0.132161, -0.470408, 0.872496,
		0.821220, -0.440967, -0.362142,
		42.223793, 38.262764, 38.410141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186943, 38.320702, 39.123280>,  <41.648941, 38.571442, 38.663639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186943, 38.320702, 39.123280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387630, 38.390079, 38.784294>,  <42.508041, 38.431705, 38.580902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387630, 38.390079, 38.784294>,  <42.186943, 38.320702, 39.123280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387630, 38.390079, 38.784294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231042, 0.917233, 0.324505,
		0.833606, -0.358610, 0.420118,
		0.501717, 0.173444, -0.847465,
		42.538147, 38.442112, 38.530056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.867119, 38.532589, 39.149296>,  <42.186943, 38.320702, 39.123280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.867119, 38.532589, 39.149296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.710907, 38.701443, 38.822056>,  <42.617180, 38.802753, 38.625713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.710907, 38.701443, 38.822056>,  <42.867119, 38.532589, 39.149296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.710907, 38.701443, 38.822056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425320, 0.870875, 0.246330,
		0.816448, -0.251755, -0.519646,
		-0.390532, 0.422132, -0.818101,
		42.593746, 38.828083, 38.576626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.346684, 38.885437, 38.873505>,  <42.867119, 38.532589, 39.149296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.346684, 38.885437, 38.873505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.030548, 39.105309, 38.765274>,  <42.840866, 39.237232, 38.700336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.030548, 39.105309, 38.765274>,  <43.346684, 38.885437, 38.873505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.030548, 39.105309, 38.765274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412683, 0.804052, 0.428011,
		0.452827, 0.226612, -0.862319,
		-0.790342, 0.549679, -0.270578,
		42.793446, 39.270214, 38.684101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.508583, 39.480923, 38.740032>,  <43.346684, 38.885437, 38.873505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.508583, 39.480923, 38.740032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.127010, 39.592388, 38.784489>,  <42.898067, 39.659267, 38.811165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.127010, 39.592388, 38.784489>,  <43.508583, 39.480923, 38.740032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.127010, 39.592388, 38.784489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299782, 0.870972, 0.389279,
		0.011675, 0.404667, -0.914390,
		-0.953936, 0.278663, 0.111144,
		42.840828, 39.675987, 38.817833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.380264, 40.134457, 38.536354>,  <43.508583, 39.480923, 38.740032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.380264, 40.134457, 38.536354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.072384, 40.153011, 38.791039>,  <42.887657, 40.164143, 38.943851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.072384, 40.153011, 38.791039>,  <43.380264, 40.134457, 38.536354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.072384, 40.153011, 38.791039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105069, 0.992961, 0.054678,
		-0.629697, 0.108985, -0.769158,
		-0.769702, 0.046384, 0.636716,
		42.841473, 40.166927, 38.982052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.758869, 40.697285, 38.402325>,  <43.380264, 40.134457, 38.536354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.758869, 40.697285, 38.402325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.873768, 40.617100, 38.776981>,  <42.942707, 40.568989, 39.001778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.873768, 40.617100, 38.776981>,  <42.758869, 40.697285, 38.402325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.873768, 40.617100, 38.776981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241822, 0.961356, 0.131589,
		-0.926827, 0.188702, 0.324626,
		0.287250, -0.200462, 0.936644,
		42.959942, 40.556961, 39.057976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302177, 40.940742, 39.008545>,  <42.758869, 40.697285, 38.402325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302177, 40.940742, 39.008545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.696323, 40.928936, 39.075706>,  <42.932812, 40.921852, 39.116005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.696323, 40.928936, 39.075706>,  <42.302177, 40.940742, 39.008545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.696323, 40.928936, 39.075706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094657, 0.913854, -0.394855,
		-0.141788, 0.404969, 0.903270,
		0.985361, -0.029515, 0.167907,
		42.991932, 40.920082, 39.126080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138783, 41.640068, 38.704617>,  <42.302177, 40.940742, 39.008545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138783, 41.640068, 38.704617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.916435, 41.377865, 38.909092>,  <41.783028, 41.220543, 39.031776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.916435, 41.377865, 38.909092>,  <42.138783, 41.640068, 38.704617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916435, 41.377865, 38.909092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781148, 0.201605, -0.590901,
		0.284281, -0.727782, -0.624114,
		-0.555871, -0.655507, 0.511192,
		41.749672, 41.181213, 39.062450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.423103, 41.254761, 38.121201>,  <42.138783, 41.640068, 38.704617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.423103, 41.254761, 38.121201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549114, 40.933067, 37.919621>,  <42.624722, 40.740051, 37.798672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549114, 40.933067, 37.919621>,  <42.423103, 41.254761, 38.121201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549114, 40.933067, 37.919621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135122, 0.487575, -0.862562,
		0.939415, 0.339825, 0.044930,
		0.315026, -0.804232, -0.503953,
		42.643623, 40.691799, 37.768436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.038303, 41.488003, 37.665913>,  <42.423103, 41.254761, 38.121201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.038303, 41.488003, 37.665913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.906563, 41.173500, 37.456791>,  <42.827518, 40.984798, 37.331318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.906563, 41.173500, 37.456791>,  <43.038303, 41.488003, 37.665913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.906563, 41.173500, 37.456791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048195, 0.538971, -0.840944,
		0.942976, -0.302163, -0.139618,
		-0.329352, -0.786261, -0.522800,
		42.807758, 40.937622, 37.299950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.478539, 41.242775, 37.200695>,  <43.038303, 41.488003, 37.665913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.478539, 41.242775, 37.200695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114204, 41.147930, 37.065548>,  <42.895603, 41.091022, 36.984459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.114204, 41.147930, 37.065548>,  <43.478539, 41.242775, 37.200695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.114204, 41.147930, 37.065548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192446, 0.480188, -0.855795,
		0.365158, -0.844511, -0.391742,
		-0.910837, -0.237111, -0.337867,
		42.840954, 41.076797, 36.964188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.636726, 40.931915, 36.610420>,  <43.478539, 41.242775, 37.200695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.636726, 40.931915, 36.610420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.284058, 41.117043, 36.573635>,  <43.072456, 41.228119, 36.551563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.284058, 41.117043, 36.573635>,  <43.636726, 40.931915, 36.610420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.284058, 41.117043, 36.573635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418726, 0.677538, -0.604657,
		-0.217536, -0.571616, -0.791159,
		-0.881672, 0.462814, -0.091961,
		43.019554, 41.255886, 36.546047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.060955, 40.495296, 36.340042>,  <43.636726, 40.931915, 36.610420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.060955, 40.495296, 36.340042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.894421, 40.362869, 36.001328>,  <43.794498, 40.283413, 35.798100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.894421, 40.362869, 36.001328>,  <44.060955, 40.495296, 36.340042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.894421, 40.362869, 36.001328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828548, -0.245354, 0.503298,
		-0.374392, 0.911149, -0.172159,
		-0.416340, -0.331073, -0.846789,
		43.769520, 40.263546, 35.747292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.753563, 40.298885, 36.760437>,  <44.060955, 40.495296, 36.340042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.753563, 40.298885, 36.760437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.714874, 39.938744, 36.930145>,  <44.691662, 39.722660, 37.031971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.714874, 39.938744, 36.930145>,  <44.753563, 40.298885, 36.760437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.714874, 39.938744, 36.930145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022144, -0.424220, -0.905288,
		0.995066, -0.096952, 0.021091,
		-0.096717, -0.900354, 0.424274,
		44.685860, 39.668636, 37.057426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.039959, 39.900974, 36.245918>,  <44.753563, 40.298885, 36.760437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.039959, 39.900974, 36.245918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.823322, 39.661377, 36.481846>,  <44.693340, 39.517616, 36.623402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.823322, 39.661377, 36.481846>,  <45.039959, 39.900974, 36.245918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.823322, 39.661377, 36.481846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392774, -0.440021, -0.807533,
		0.743240, -0.669018, 0.003042,
		-0.541593, -0.598995, 0.589815,
		44.660843, 39.481678, 36.658791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.163883, 39.304958, 35.834866>,  <45.039959, 39.900974, 36.245918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.163883, 39.304958, 35.834866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.810478, 39.264435, 36.017796>,  <44.598434, 39.240120, 36.127552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.810478, 39.264435, 36.017796>,  <45.163883, 39.304958, 35.834866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.810478, 39.264435, 36.017796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324242, -0.572330, -0.753197,
		0.338042, -0.813742, 0.472813,
		-0.883513, -0.101307, 0.457320,
		44.545425, 39.234043, 36.154991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.018536, 38.613098, 36.101776>,  <45.163883, 39.304958, 35.834866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.018536, 38.613098, 36.101776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.701614, 38.829735, 35.989399>,  <44.511463, 38.959717, 35.921970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.701614, 38.829735, 35.989399>,  <45.018536, 38.613098, 36.101776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.701614, 38.829735, 35.989399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130122, -0.599872, -0.789444,
		-0.596031, -0.588962, 0.545775,
		-0.792348, 0.541550, -0.280905,
		44.463924, 38.992214, 35.905117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.692036, 38.605011, 35.992313>,  <45.018536, 38.613098, 36.101776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.692036, 38.605011, 35.992313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.026604, 38.385815, 35.996365>,  <46.227345, 38.254299, 35.998795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.026604, 38.385815, 35.996365>,  <45.692036, 38.605011, 35.992313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.026604, 38.385815, 35.996365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545541, -0.834182, -0.080780,
		0.052718, 0.062039, -0.996680,
		0.836425, -0.547988, 0.010131,
		46.277531, 38.221416, 35.999405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.680099, 38.145424, 35.406918>,  <45.692036, 38.605011, 35.992313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.680099, 38.145424, 35.406918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.863457, 38.006165, 35.734005>,  <45.973473, 37.922611, 35.930260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.863457, 38.006165, 35.734005>,  <45.680099, 38.145424, 35.406918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.863457, 38.006165, 35.734005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579011, -0.815011, -0.022413,
		0.674255, -0.463196, -0.575178,
		0.458395, -0.348146, 0.817721,
		46.000977, 37.901722, 35.979321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.039951, 37.383820, 35.294559>,  <45.680099, 38.145424, 35.406918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.039951, 37.383820, 35.294559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.901508, 37.489864, 35.654545>,  <45.818443, 37.553490, 35.870537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.901508, 37.489864, 35.654545>,  <46.039951, 37.383820, 35.294559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.901508, 37.489864, 35.654545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585698, -0.810417, 0.013489,
		0.732918, -0.522436, 0.435765,
		-0.346105, 0.265113, 0.899959,
		45.797676, 37.569397, 35.924534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.192490, 36.869778, 35.859219>,  <46.039951, 37.383820, 35.294559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.192490, 36.869778, 35.859219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.861916, 37.090378, 35.904556>,  <45.663570, 37.222740, 35.931759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.861916, 37.090378, 35.904556>,  <46.192490, 36.869778, 35.859219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.861916, 37.090378, 35.904556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562690, -0.816038, -0.132145,
		0.019618, -0.172990, 0.984728,
		-0.826435, 0.551504, 0.113349,
		45.613987, 37.255829, 35.938560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.936646, 36.724831, 35.897728>,  <46.192490, 36.869778, 35.859219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.936646, 36.724831, 35.897728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.948711, 36.819248, 35.509216>,  <46.955952, 36.875896, 35.276112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.948711, 36.819248, 35.509216>,  <46.936646, 36.724831, 35.897728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.948711, 36.819248, 35.509216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996345, -0.084785, 0.010341,
		-0.079908, -0.968037, -0.237737,
		0.030167, 0.236042, -0.971275,
		46.957760, 36.890060, 35.217834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.543465, 36.446350, 35.707703>,  <46.936646, 36.724831, 35.897728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.543465, 36.446350, 35.707703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.430233, 36.676620, 35.400856>,  <47.362293, 36.814781, 35.216747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.430233, 36.676620, 35.400856>,  <47.543465, 36.446350, 35.707703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.430233, 36.676620, 35.400856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953728, 0.084465, -0.288561,
		-0.101324, -0.813304, -0.572949,
		-0.283082, 0.575676, -0.767113,
		47.345306, 36.849323, 35.170723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.944195, 36.267952, 35.065060>,  <47.543465, 36.446350, 35.707703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.944195, 36.267952, 35.065060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.790070, 36.634621, 35.022625>,  <47.697594, 36.854622, 34.997162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.790070, 36.634621, 35.022625>,  <47.944195, 36.267952, 35.065060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.790070, 36.634621, 35.022625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832712, 0.295854, -0.468040,
		-0.397649, -0.268685, -0.877316,
		-0.385313, 0.916667, -0.106091,
		47.674477, 36.909622, 34.990799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.502296, 35.668518, 34.863613>,  <47.944195, 36.267952, 35.065060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.502296, 35.668518, 34.863613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.434612, 36.046127, 34.750347>,  <47.394001, 36.272694, 34.682388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.434612, 36.046127, 34.750347>,  <47.502296, 35.668518, 34.863613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.434612, 36.046127, 34.750347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573683, 0.139281, 0.807149,
		0.801409, 0.299021, 0.518005,
		-0.169206, 0.944027, -0.283164,
		47.383850, 36.329334, 34.665398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.474747, 35.107483, 35.321178>,  <47.502296, 35.668518, 34.863613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.474747, 35.107483, 35.321178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.771400, 34.985218, 35.082329>,  <47.949394, 34.911861, 34.939018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.771400, 34.985218, 35.082329>,  <47.474747, 35.107483, 35.321178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.771400, 34.985218, 35.082329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641106, 0.584909, 0.496855,
		0.197392, -0.751301, 0.629748,
		0.741633, -0.305660, -0.597120,
		47.993889, 34.893520, 34.903194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.332474, 35.422668, 22.301786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.971581, 35.250237, 22.306475>,  <33.755043, 35.146778, 22.309288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.971581, 35.250237, 22.306475>,  <34.332474, 35.422668, 22.301786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971581, 35.250237, 22.306475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008174, 0.044266, 0.998986,
		-0.431165, 0.901226, -0.043462,
		-0.902236, -0.431083, 0.011719,
		33.700909, 35.120911, 22.309990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856441, 35.875042, 22.643541>,  <34.332474, 35.422668, 22.301786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856441, 35.875042, 22.643541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.735687, 35.495586, 22.681374>,  <33.663235, 35.267914, 22.704073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.735687, 35.495586, 22.681374>,  <33.856441, 35.875042, 22.643541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735687, 35.495586, 22.681374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201734, 0.033398, 0.978871,
		-0.931757, 0.314584, 0.181291,
		-0.301883, -0.948642, 0.094581,
		33.645123, 35.210995, 22.709747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461433, 35.855438, 23.191429>,  <33.856441, 35.875042, 22.643541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461433, 35.855438, 23.191429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.591404, 35.478321, 23.161594>,  <33.669384, 35.252048, 23.143694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.591404, 35.478321, 23.161594>,  <33.461433, 35.855438, 23.191429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591404, 35.478321, 23.161594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263040, 0.014336, 0.964679,
		-0.908425, -0.333065, 0.252651,
		0.324923, -0.942795, -0.074586,
		33.688881, 35.195484, 23.139219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242771, 35.499119, 23.788246>,  <33.461433, 35.855438, 23.191429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242771, 35.499119, 23.788246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.512920, 35.228947, 23.669817>,  <33.675011, 35.066841, 23.598761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.512920, 35.228947, 23.669817>,  <33.242771, 35.499119, 23.788246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512920, 35.228947, 23.669817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293834, -0.121771, 0.948068,
		-0.676410, -0.727297, 0.116224,
		0.675374, -0.675434, -0.296072,
		33.715534, 35.026318, 23.580996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224335, 34.873047, 24.173443>,  <33.242771, 35.499119, 23.788246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224335, 34.873047, 24.173443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.586117, 34.818893, 24.011635>,  <33.803185, 34.786400, 23.914549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.586117, 34.818893, 24.011635>,  <33.224335, 34.873047, 24.173443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586117, 34.818893, 24.011635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381375, -0.168194, 0.908991,
		-0.191113, -0.976411, -0.100486,
		0.904450, -0.135397, -0.404523,
		33.857452, 34.778278, 23.890278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493057, 34.389755, 24.593287>,  <33.224335, 34.873047, 24.173443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493057, 34.389755, 24.593287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.810406, 34.536526, 24.399000>,  <34.000816, 34.624588, 24.282429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.810406, 34.536526, 24.399000>,  <33.493057, 34.389755, 24.593287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810406, 34.536526, 24.399000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572156, -0.177072, 0.800801,
		0.207829, -0.913241, -0.350425,
		0.793375, 0.366928, -0.485716,
		34.048420, 34.646603, 24.253284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086273, 34.036060, 24.854433>,  <33.493057, 34.389755, 24.593287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086273, 34.036060, 24.854433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.239914, 34.357868, 24.673229>,  <34.332100, 34.550953, 24.564507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.239914, 34.357868, 24.673229>,  <34.086273, 34.036060, 24.854433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239914, 34.357868, 24.673229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774139, -0.013239, 0.632878,
		0.503163, -0.593783, -0.627892,
		0.384105, 0.804516, -0.453009,
		34.355145, 34.599224, 24.537327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759453, 33.885456, 24.713055>,  <34.086273, 34.036060, 24.854433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759453, 33.885456, 24.713055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.735123, 34.284653, 24.705946>,  <34.720524, 34.524170, 24.701681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.735123, 34.284653, 24.705946>,  <34.759453, 33.885456, 24.713055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735123, 34.284653, 24.705946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739478, 0.057010, 0.670763,
		0.670428, 0.027656, -0.741459,
		-0.060821, 0.997991, -0.017771,
		34.716877, 34.584049, 24.700615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462765, 34.155659, 24.681440>,  <34.759453, 33.885456, 24.713055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462765, 34.155659, 24.681440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.244862, 34.460754, 24.820852>,  <35.114120, 34.643810, 24.904499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.244862, 34.460754, 24.820852>,  <35.462765, 34.155659, 24.681440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244862, 34.460754, 24.820852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750093, 0.257350, 0.609205,
		0.374970, 0.593298, -0.712317,
		-0.544755, 0.762738, 0.348530,
		35.081436, 34.689575, 24.925411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957314, 34.754227, 24.810574>,  <35.462765, 34.155659, 24.681440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957314, 34.754227, 24.810574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.632435, 34.855156, 25.020971>,  <35.437508, 34.915714, 25.147209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.632435, 34.855156, 25.020971>,  <35.957314, 34.754227, 24.810574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632435, 34.855156, 25.020971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567718, 0.134299, 0.812195,
		0.134299, 0.958277, -0.252328,
		-0.812195, 0.252328, 0.525995,
		35.388775, 34.930855, 25.178770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190865, 35.354950, 25.212269>,  <35.957314, 34.754227, 24.810574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190865, 35.354950, 25.212269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.856186, 35.241959, 25.399948>,  <35.655380, 35.174164, 25.512556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.856186, 35.241959, 25.399948>,  <36.190865, 35.354950, 25.212269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856186, 35.241959, 25.399948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438768, 0.166965, 0.882953,
		-0.327751, 0.944633, -0.015758,
		-0.836697, -0.282475, 0.469197,
		35.605175, 35.157215, 25.540707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900673, 35.868587, 25.484678>,  <36.190865, 35.354950, 25.212269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900673, 35.868587, 25.484678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.796494, 35.545246, 25.695860>,  <35.733986, 35.351242, 25.822569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.796494, 35.545246, 25.695860>,  <35.900673, 35.868587, 25.484678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796494, 35.545246, 25.695860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289145, 0.456422, 0.841472,
		-0.921175, 0.371812, 0.114859,
		-0.260445, -0.808353, 0.527952,
		35.718361, 35.302742, 25.854246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659191, 36.045181, 26.112490>,  <35.900673, 35.868587, 25.484678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659191, 36.045181, 26.112490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.710842, 35.662296, 26.216082>,  <35.741833, 35.432564, 26.278236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.710842, 35.662296, 26.216082>,  <35.659191, 36.045181, 26.112490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710842, 35.662296, 26.216082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211339, 0.281732, 0.935929,
		-0.968846, -0.066118, 0.238675,
		0.129124, -0.957213, 0.258981,
		35.749580, 35.375134, 26.293776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312969, 35.975601, 26.654476>,  <35.659191, 36.045181, 26.112490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312969, 35.975601, 26.654476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.594818, 35.691769, 26.654015>,  <35.763927, 35.521469, 26.653738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.594818, 35.691769, 26.654015>,  <35.312969, 35.975601, 26.654476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594818, 35.691769, 26.654015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217264, 0.214198, 0.952321,
		-0.675504, -0.671276, 0.305095,
		0.704621, -0.709583, -0.001152,
		35.806206, 35.478893, 26.653669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179340, 35.582798, 27.300156>,  <35.312969, 35.975601, 26.654476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179340, 35.582798, 27.300156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.558224, 35.509815, 27.194702>,  <35.785553, 35.466026, 27.131430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.558224, 35.509815, 27.194702>,  <35.179340, 35.582798, 27.300156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558224, 35.509815, 27.194702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277422, 0.054222, 0.959217,
		-0.160718, -0.981718, 0.101977,
		0.947210, -0.182454, -0.263635,
		35.842388, 35.455078, 27.115612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566010, 34.996170, 27.772007>,  <35.179340, 35.582798, 27.300156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566010, 34.996170, 27.772007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.857765, 35.206718, 27.597225>,  <36.032818, 35.333046, 27.492355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.857765, 35.206718, 27.597225>,  <35.566010, 34.996170, 27.772007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857765, 35.206718, 27.597225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375150, 0.226363, 0.898901,
		0.572067, -0.819568, -0.032363,
		0.729385, 0.526372, -0.436956,
		36.076580, 35.364632, 27.466139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124737, 34.733856, 28.149275>,  <35.566010, 34.996170, 27.772007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124737, 34.733856, 28.149275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.251160, 35.085445, 28.006437>,  <36.327015, 35.296398, 27.920734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.251160, 35.085445, 28.006437>,  <36.124737, 34.733856, 28.149275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251160, 35.085445, 28.006437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424719, 0.205483, 0.881698,
		0.848363, -0.430335, -0.308370,
		0.316060, 0.878970, -0.357096,
		36.345978, 35.349136, 27.899309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789234, 34.952061, 28.504768>,  <36.124737, 34.733856, 28.149275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789234, 34.952061, 28.504768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.712765, 35.307655, 28.338322>,  <36.666885, 35.521011, 28.238453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.712765, 35.307655, 28.338322>,  <36.789234, 34.952061, 28.504768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712765, 35.307655, 28.338322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411977, 0.457458, 0.788040,
		0.890914, -0.020780, -0.453696,
		-0.191171, 0.888988, -0.416117,
		36.655415, 35.574352, 28.213488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403267, 35.399448, 28.595827>,  <36.789234, 34.952061, 28.504768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403267, 35.399448, 28.595827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.104042, 35.658348, 28.537224>,  <36.924507, 35.813686, 28.502062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.104042, 35.658348, 28.537224>,  <37.403267, 35.399448, 28.595827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104042, 35.658348, 28.537224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259978, 0.488952, 0.832669,
		0.610580, 0.584802, -0.534039,
		-0.748066, 0.647250, -0.146508,
		36.879623, 35.852524, 28.493271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666546, 36.126675, 28.572153>,  <37.403267, 35.399448, 28.595827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666546, 36.126675, 28.572153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.283047, 36.113506, 28.685095>,  <37.052948, 36.105606, 28.752859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.283047, 36.113506, 28.685095>,  <37.666546, 36.126675, 28.572153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283047, 36.113506, 28.685095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259286, 0.305882, 0.916082,
		-0.116523, 0.951500, -0.284728,
		-0.958746, -0.032919, 0.282353,
		36.995422, 36.103630, 28.769800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629177, 36.725803, 28.860287>,  <37.666546, 36.126675, 28.572153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629177, 36.725803, 28.860287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.306931, 36.538704, 29.005718>,  <37.113583, 36.426445, 29.092978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.306931, 36.538704, 29.005718>,  <37.629177, 36.725803, 28.860287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306931, 36.538704, 29.005718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294367, 0.216534, 0.930839,
		-0.514125, 0.856927, -0.036755,
		-0.805620, -0.467748, 0.363577,
		37.065243, 36.398380, 29.114792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353535, 37.186508, 29.435740>,  <37.629177, 36.725803, 28.860287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353535, 37.186508, 29.435740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248394, 36.802761, 29.476786>,  <37.185310, 36.572514, 29.501413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.248394, 36.802761, 29.476786>,  <37.353535, 37.186508, 29.435740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248394, 36.802761, 29.476786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135356, 0.068639, 0.988417,
		-0.955295, 0.273694, 0.111814,
		-0.262849, -0.959364, 0.102617,
		37.169540, 36.514954, 29.507570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569366, 37.853294, 29.244545>,  <37.353535, 37.186508, 29.435740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569366, 37.853294, 29.244545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.477165, 38.242371, 29.233698>,  <37.421844, 38.475819, 29.227190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.477165, 38.242371, 29.233698>,  <37.569366, 37.853294, 29.244545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.477165, 38.242371, 29.233698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742181, -0.193765, -0.641579,
		-0.629314, -0.127758, 0.766578,
		-0.230503, 0.972694, -0.027120,
		37.408012, 38.534180, 29.225561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783291, 37.977718, 29.272774>,  <37.569366, 37.853294, 29.244545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783291, 37.977718, 29.272774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.884060, 38.338970, 29.133696>,  <36.944523, 38.555721, 29.050249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.884060, 38.338970, 29.133696>,  <36.783291, 37.977718, 29.272774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884060, 38.338970, 29.133696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809190, -0.000482, -0.587547,
		-0.530798, 0.429368, 0.730682,
		0.251922, 0.903129, -0.347696,
		36.959637, 38.609909, 29.029387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175278, 38.380482, 29.217138>,  <36.783291, 37.977718, 29.272774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175278, 38.380482, 29.217138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.438133, 38.558258, 28.973618>,  <36.595848, 38.664925, 28.827505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.438133, 38.558258, 28.973618>,  <36.175278, 38.380482, 29.217138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438133, 38.558258, 28.973618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694964, 0.044483, -0.717667,
		-0.291879, 0.894703, 0.338102,
		0.657139, 0.444441, -0.608803,
		36.635277, 38.691589, 28.790977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858238, 38.991055, 28.946404>,  <36.175278, 38.380482, 29.217138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858238, 38.991055, 28.946404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.160328, 38.894672, 28.702578>,  <36.341583, 38.836842, 28.556282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.160328, 38.894672, 28.702578>,  <35.858238, 38.991055, 28.946404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160328, 38.894672, 28.702578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640553, -0.074093, -0.764331,
		0.139005, 0.967704, -0.210301,
		0.755228, -0.240955, -0.609566,
		36.386898, 38.822388, 28.519709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977081, 39.579311, 28.538944>,  <35.858238, 38.991055, 28.946404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977081, 39.579311, 28.538944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.119091, 39.266926, 28.333397>,  <36.204296, 39.079494, 28.210068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.119091, 39.266926, 28.333397>,  <35.977081, 39.579311, 28.538944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119091, 39.266926, 28.333397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510576, 0.298480, -0.806364,
		0.783118, 0.548644, -0.292774,
		0.355020, -0.780961, -0.513869,
		36.225597, 39.032639, 28.179235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061832, 39.837200, 27.877520>,  <35.977081, 39.579311, 28.538944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061832, 39.837200, 27.877520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.064716, 39.441135, 27.821627>,  <36.066444, 39.203495, 27.788090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.064716, 39.441135, 27.821627>,  <36.061832, 39.837200, 27.877520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064716, 39.441135, 27.821627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528376, 0.114867, -0.841204,
		0.848980, 0.079894, -0.522350,
		0.007206, -0.990162, -0.139734,
		36.066879, 39.144085, 27.779707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240108, 39.722229, 27.124701>,  <36.061832, 39.837200, 27.877520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240108, 39.722229, 27.124701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.070072, 39.387161, 27.261871>,  <35.968048, 39.186119, 27.344173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.070072, 39.387161, 27.261871>,  <36.240108, 39.722229, 27.124701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070072, 39.387161, 27.261871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441460, -0.138876, -0.886469,
		0.790195, -0.528222, -0.310763,
		-0.425095, -0.837672, 0.342928,
		35.942543, 39.135860, 27.364750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396931, 39.152569, 26.641573>,  <36.240108, 39.722229, 27.124701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396931, 39.152569, 26.641573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.056461, 39.064297, 26.832069>,  <35.852180, 39.011333, 26.946367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.056461, 39.064297, 26.832069>,  <36.396931, 39.152569, 26.641573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056461, 39.064297, 26.832069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442303, -0.186978, -0.877159,
		0.282623, -0.957255, 0.061540,
		-0.851171, -0.220686, 0.476241,
		35.801109, 38.998093, 26.974941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265572, 38.647743, 26.229006>,  <36.396931, 39.152569, 26.641573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265572, 38.647743, 26.229006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.924923, 38.702610, 26.431364>,  <35.720535, 38.735531, 26.552778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.924923, 38.702610, 26.431364>,  <36.265572, 38.647743, 26.229006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924923, 38.702610, 26.431364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523986, -0.197920, -0.828412,
		-0.013505, -0.970574, 0.240426,
		-0.851620, 0.137167, 0.505894,
		35.669437, 38.743759, 26.583132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828018, 38.186794, 25.948290>,  <36.265572, 38.647743, 26.229006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828018, 38.186794, 25.948290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.565075, 38.409870, 26.151018>,  <35.407310, 38.543716, 26.272655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.565075, 38.409870, 26.151018>,  <35.828018, 38.186794, 25.948290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565075, 38.409870, 26.151018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671669, -0.128663, -0.729594,
		-0.341676, -0.820019, 0.459158,
		-0.657358, 0.557687, 0.506820,
		35.367867, 38.577175, 26.303064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214058, 37.798874, 26.129246>,  <35.828018, 38.186794, 25.948290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214058, 37.798874, 26.129246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.092442, 38.179085, 26.103756>,  <35.019474, 38.407211, 26.088461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.092442, 38.179085, 26.103756>,  <35.214058, 37.798874, 26.129246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092442, 38.179085, 26.103756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710961, -0.270917, -0.648952,
		-0.634111, -0.151999, 0.758156,
		-0.304038, 0.950526, -0.063726,
		35.001232, 38.464241, 26.084639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536442, 37.749691, 26.207134>,  <35.214058, 37.798874, 26.129246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536442, 37.749691, 26.207134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.610565, 38.104088, 26.037111>,  <34.655037, 38.316727, 25.935097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.610565, 38.104088, 26.037111>,  <34.536442, 37.749691, 26.207134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610565, 38.104088, 26.037111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704902, -0.181528, -0.685683,
		-0.684672, 0.426684, 0.590902,
		0.185305, 0.885996, -0.425057,
		34.666157, 38.369888, 25.909594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850620, 38.180939, 25.996115>,  <34.536442, 37.749691, 26.207134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850620, 38.180939, 25.996115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.164646, 38.302017, 25.779951>,  <34.353062, 38.374664, 25.650253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.164646, 38.302017, 25.779951>,  <33.850620, 38.180939, 25.996115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164646, 38.302017, 25.779951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512848, -0.171614, -0.841151,
		-0.347355, 0.937509, 0.020508,
		0.785068, 0.302695, -0.540411,
		34.400166, 38.392826, 25.617828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507946, 38.598232, 25.522854>,  <33.850620, 38.180939, 25.996115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507946, 38.598232, 25.522854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.861481, 38.537045, 25.346022>,  <34.073601, 38.500332, 25.239922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.861481, 38.537045, 25.346022>,  <33.507946, 38.598232, 25.522854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861481, 38.537045, 25.346022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457692, -0.087377, -0.884807,
		0.096724, 0.984360, -0.147241,
		0.883834, -0.152973, -0.442082,
		34.126633, 38.491154, 25.213398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358856, 38.958393, 24.865532>,  <33.507946, 38.598232, 25.522854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358856, 38.958393, 24.865532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.675575, 38.723957, 24.796764>,  <33.865604, 38.583294, 24.755505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.675575, 38.723957, 24.796764>,  <33.358856, 38.958393, 24.865532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.675575, 38.723957, 24.796764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293839, -0.118762, -0.948448,
		0.535460, 0.801494, -0.266252,
		0.791796, -0.586092, -0.171918,
		33.913113, 38.548130, 24.745190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830669, 39.158920, 24.252060>,  <33.358856, 38.958393, 24.865532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830669, 39.158920, 24.252060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.928860, 38.772163, 24.279978>,  <33.987774, 38.540112, 24.296728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.928860, 38.772163, 24.279978>,  <33.830669, 39.158920, 24.252060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928860, 38.772163, 24.279978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122603, -0.102387, -0.987160,
		0.961619, 0.233763, -0.143677,
		0.245472, -0.966888, 0.069797,
		34.002502, 38.482098, 24.300917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403297, 39.042572, 23.667377>,  <33.830669, 39.158920, 24.252060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403297, 39.042572, 23.667377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.258720, 38.679443, 23.752438>,  <34.171974, 38.461567, 23.803473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.258720, 38.679443, 23.752438>,  <34.403297, 39.042572, 23.667377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258720, 38.679443, 23.752438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012636, -0.232816, -0.972439,
		0.932309, -0.348794, 0.095621,
		-0.361442, -0.907821, 0.212649,
		34.150288, 38.407097, 23.816233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751049, 38.632980, 23.306496>,  <34.403297, 39.042572, 23.667377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751049, 38.632980, 23.306496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.445690, 38.381107, 23.364086>,  <34.262474, 38.229984, 23.398640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.445690, 38.381107, 23.364086>,  <34.751049, 38.632980, 23.306496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445690, 38.381107, 23.364086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059549, -0.290554, -0.955004,
		0.643178, -0.720474, 0.259305,
		-0.763398, -0.629678, 0.143975,
		34.216671, 38.192204, 23.407278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.892250, 37.892731, 22.678396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.520550, 37.833134, 22.813625>,  <34.297531, 37.797375, 22.894762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.520550, 37.833134, 22.813625>,  <34.892250, 37.892731, 22.678396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520550, 37.833134, 22.813625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250611, -0.418134, -0.873131,
		0.271449, -0.896083, 0.351213,
		-0.929252, -0.148992, 0.338071,
		34.241776, 37.788437, 22.915047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674568, 37.144306, 22.529839>,  <34.892250, 37.892731, 22.678396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674568, 37.144306, 22.529839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.364471, 37.395096, 22.560553>,  <34.178413, 37.545570, 22.578981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.364471, 37.395096, 22.560553>,  <34.674568, 37.144306, 22.529839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364471, 37.395096, 22.560553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363440, -0.343323, -0.866049,
		-0.516631, -0.699307, 0.494027,
		-0.775245, 0.626977, 0.076785,
		34.131897, 37.583187, 22.583588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104492, 36.685242, 22.296888>,  <34.674568, 37.144306, 22.529839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104492, 36.685242, 22.296888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.966377, 37.058731, 22.259085>,  <33.883507, 37.282825, 22.236403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.966377, 37.058731, 22.259085>,  <34.104492, 36.685242, 22.296888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966377, 37.058731, 22.259085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387798, -0.233654, -0.891638,
		-0.854627, -0.271225, 0.442775,
		-0.345290, 0.933725, -0.094507,
		33.862789, 37.338848, 22.230732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434216, 36.631443, 22.042482>,  <34.104492, 36.685242, 22.296888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434216, 36.631443, 22.042482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.504726, 37.014301, 21.950569>,  <33.547031, 37.244015, 21.895422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.504726, 37.014301, 21.950569>,  <33.434216, 36.631443, 22.042482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504726, 37.014301, 21.950569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505204, -0.112375, -0.855652,
		-0.844805, 0.266917, 0.463745,
		0.176275, 0.957145, -0.229783,
		33.557610, 37.301445, 21.881634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837078, 36.909473, 21.889305>,  <33.434216, 36.631443, 22.042482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837078, 36.909473, 21.889305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.086475, 37.168716, 21.714392>,  <33.236115, 37.324265, 21.609444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.086475, 37.168716, 21.714392>,  <32.837078, 36.909473, 21.889305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086475, 37.168716, 21.714392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585847, 0.016917, -0.810245,
		-0.517730, 0.761359, 0.390241,
		0.623489, 0.648110, -0.437281,
		33.273521, 37.363148, 21.583208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.342365, 37.453510, 21.592478>,  <32.837078, 36.909473, 21.889305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.342365, 37.453510, 21.592478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.683212, 37.468548, 21.383677>,  <32.887718, 37.477570, 21.258396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.683212, 37.468548, 21.383677>,  <32.342365, 37.453510, 21.592478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683212, 37.468548, 21.383677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515481, -0.112077, -0.849540,
		-0.090445, 0.992988, -0.076121,
		0.852114, 0.037598, -0.522003,
		32.938847, 37.479828, 21.227076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148781, 37.913830, 21.053110>,  <32.342365, 37.453510, 21.592478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148781, 37.913830, 21.053110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.470524, 37.704395, 20.940784>,  <32.663570, 37.578735, 20.873388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.470524, 37.704395, 20.940784>,  <32.148781, 37.913830, 21.053110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470524, 37.704395, 20.940784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365113, -0.062737, -0.928847,
		0.468715, 0.849659, -0.241632,
		0.804362, -0.523587, -0.280816,
		32.711834, 37.547318, 20.856539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471470, 38.218445, 20.497519>,  <32.148781, 37.913830, 21.053110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471470, 38.218445, 20.497519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.579067, 37.836143, 20.449884>,  <32.643623, 37.606762, 20.421305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.579067, 37.836143, 20.449884>,  <32.471470, 38.218445, 20.497519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579067, 37.836143, 20.449884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369628, 0.011736, -0.929106,
		0.889393, 0.293938, -0.350116,
		0.268990, -0.955753, -0.119085,
		32.659763, 37.549419, 20.414158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768787, 38.239780, 19.905943>,  <32.471470, 38.218445, 20.497519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768787, 38.239780, 19.905943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.717072, 37.846451, 19.957111>,  <32.686043, 37.610455, 19.987812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.717072, 37.846451, 19.957111>,  <32.768787, 38.239780, 19.905943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717072, 37.846451, 19.957111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145435, -0.108803, -0.983367,
		0.980883, -0.145745, -0.128942,
		-0.129292, -0.983321, 0.127919,
		32.678284, 37.551453, 19.995487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023109, 37.983383, 19.305195>,  <32.768787, 38.239780, 19.905943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023109, 37.983383, 19.305195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.809883, 37.671432, 19.436426>,  <32.681950, 37.484261, 19.515165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.809883, 37.671432, 19.436426>,  <33.023109, 37.983383, 19.305195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809883, 37.671432, 19.436426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374941, -0.129865, -0.917907,
		0.758461, -0.612313, -0.223182,
		-0.533063, -0.779877, 0.328079,
		32.649963, 37.437469, 19.534849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991188, 37.504520, 18.846916>,  <33.023109, 37.983383, 19.305195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991188, 37.504520, 18.846916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.681522, 37.355316, 19.051477>,  <32.495724, 37.265793, 19.174213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.681522, 37.355316, 19.051477>,  <32.991188, 37.504520, 18.846916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681522, 37.355316, 19.051477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550035, -0.003418, -0.835135,
		0.313267, -0.927818, -0.202526,
		-0.774161, -0.373016, 0.511403,
		32.449272, 37.243412, 19.204899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734142, 37.010906, 18.403276>,  <32.991188, 37.504520, 18.846916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734142, 37.010906, 18.403276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.439808, 37.111649, 18.654711>,  <32.263206, 37.172092, 18.805571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.439808, 37.111649, 18.654711>,  <32.734142, 37.010906, 18.403276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439808, 37.111649, 18.654711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611290, 0.152306, -0.776613,
		-0.291334, -0.955704, 0.041886,
		-0.735833, 0.251858, 0.628584,
		32.219059, 37.187206, 18.843287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153748, 36.648899, 18.034512>,  <32.734142, 37.010906, 18.403276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153748, 36.648899, 18.034512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.992062, 36.900101, 18.300510>,  <31.895050, 37.050823, 18.460110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.992062, 36.900101, 18.300510>,  <32.153748, 36.648899, 18.034512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992062, 36.900101, 18.300510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835167, 0.043052, -0.548308,
		-0.372970, -0.777017, 0.507087,
		-0.404214, 0.628006, 0.664997,
		31.870798, 37.088501, 18.500010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466757, 36.418324, 18.311794>,  <32.153748, 36.648899, 18.034512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466757, 36.418324, 18.311794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.467421, 36.808762, 18.398729>,  <31.467819, 37.043026, 18.450890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.467421, 36.808762, 18.398729>,  <31.466757, 36.418324, 18.311794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467421, 36.808762, 18.398729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895062, 0.098371, -0.434957,
		-0.445939, -0.193808, 0.873829,
		0.001661, 0.976095, 0.217338,
		31.467918, 37.101589, 18.463930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864904, 36.603622, 18.617558>,  <31.466757, 36.418324, 18.311794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864904, 36.603622, 18.617558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.976034, 36.960739, 18.475723>,  <31.042713, 37.175011, 18.390623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.976034, 36.960739, 18.475723>,  <30.864904, 36.603622, 18.617558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.976034, 36.960739, 18.475723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813941, 0.022731, -0.580503,
		-0.510209, 0.449892, 0.732996,
		0.277826, 0.892793, -0.354588,
		31.059381, 37.228577, 18.369347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.240120, 37.093575, 18.748449>,  <30.864904, 36.603622, 18.617558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.240120, 37.093575, 18.748449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.486666, 37.194935, 18.450218>,  <30.634594, 37.255753, 18.271280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.486666, 37.194935, 18.450218>,  <30.240120, 37.093575, 18.748449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486666, 37.194935, 18.450218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773811, 0.019380, -0.633120,
		-0.145984, 0.967167, 0.208029,
		0.616364, 0.253400, -0.745576,
		30.671576, 37.270954, 18.226545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848190, 37.727734, 18.378284>,  <30.240120, 37.093575, 18.748449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848190, 37.727734, 18.378284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.132259, 37.607288, 18.123730>,  <30.302700, 37.535023, 17.970997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.132259, 37.607288, 18.123730>,  <29.848190, 37.727734, 18.378284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132259, 37.607288, 18.123730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685668, -0.090725, -0.722238,
		0.159740, 0.949262, -0.270895,
		0.710171, -0.301114, -0.636387,
		30.345310, 37.516953, 17.932814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.891642, 38.214535, 17.869556>,  <29.848190, 37.727734, 18.378284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.891642, 38.214535, 17.869556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.049171, 37.875462, 17.727377>,  <30.143690, 37.672020, 17.642069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.049171, 37.875462, 17.727377>,  <29.891642, 38.214535, 17.869556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049171, 37.875462, 17.727377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630162, 0.032533, -0.775782,
		0.669177, 0.529512, -0.521363,
		0.393824, -0.847678, -0.355448,
		30.167318, 37.621159, 17.620743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767700, 38.238564, 17.235708>,  <29.891642, 38.214535, 17.869556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767700, 38.238564, 17.235708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.869402, 37.851742, 17.230705>,  <29.930424, 37.619648, 17.227703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.869402, 37.851742, 17.230705>,  <29.767700, 38.238564, 17.235708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.869402, 37.851742, 17.230705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640998, -0.158816, -0.750933,
		0.724208, 0.198946, -0.660261,
		0.254254, -0.967057, -0.012508,
		29.945679, 37.561626, 17.226954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.006573, 38.092129, 16.634016>,  <29.767700, 38.238564, 17.235708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.006573, 38.092129, 16.634016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.915695, 37.726612, 16.768694>,  <29.861168, 37.507301, 16.849501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.915695, 37.726612, 16.768694>,  <30.006573, 38.092129, 16.634016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915695, 37.726612, 16.768694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416413, -0.221378, -0.881812,
		0.880331, -0.340546, -0.330220,
		-0.227194, -0.913794, 0.336694,
		29.847536, 37.452473, 16.869701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.201868, 37.552021, 16.114393>,  <30.006573, 38.092129, 16.634016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.201868, 37.552021, 16.114393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.904001, 37.401909, 16.335167>,  <29.725281, 37.311840, 16.467632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.904001, 37.401909, 16.335167>,  <30.201868, 37.552021, 16.114393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.904001, 37.401909, 16.335167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492014, -0.250119, -0.833884,
		0.450991, -0.892527, 0.001612,
		-0.744668, -0.375281, 0.551937,
		29.680601, 37.289326, 16.500748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093390, 36.935799, 15.785891>,  <30.201868, 37.552021, 16.114393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093390, 36.935799, 15.785891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.749912, 36.992443, 15.982906>,  <29.543825, 37.026428, 16.101116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.749912, 36.992443, 15.982906>,  <30.093390, 36.935799, 15.785891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749912, 36.992443, 15.982906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509732, -0.335581, -0.792186,
		0.053107, -0.931307, 0.360343,
		-0.858692, 0.141608, 0.492539,
		29.492304, 37.034927, 16.130669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.624020, 36.354061, 15.924936>,  <30.093390, 36.935799, 15.785891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.624020, 36.354061, 15.924936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.384537, 36.674362, 15.932335>,  <29.240847, 36.866543, 15.936774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.384537, 36.674362, 15.932335>,  <29.624020, 36.354061, 15.924936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384537, 36.674362, 15.932335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554119, -0.397409, -0.731449,
		-0.578359, -0.448174, 0.681645,
		-0.598709, 0.800753, 0.018497,
		29.204924, 36.914589, 15.937884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.977249, 36.124008, 15.935662>,  <29.624020, 36.354061, 15.924936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.977249, 36.124008, 15.935662> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.969709, 36.467518, 15.730859>,  <28.965185, 36.673622, 15.607977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.969709, 36.467518, 15.730859>,  <28.977249, 36.124008, 15.935662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.969709, 36.467518, 15.730859> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330094, -0.488731, -0.807577,
		-0.943760, 0.153791, 0.292687,
		-0.018847, 0.858773, -0.512010,
		28.964056, 36.725151, 15.577256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724800, 35.403019, 16.251926>,  <28.977249, 36.124008, 15.935662>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724800, 35.403019, 16.251926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.561283, 35.038696, 16.275000>,  <28.463173, 34.820103, 16.288843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.561283, 35.038696, 16.275000>,  <28.724800, 35.403019, 16.251926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561283, 35.038696, 16.275000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604904, -0.223086, 0.764411,
		-0.683360, 0.347375, 0.642144,
		-0.408790, -0.910804, 0.057681,
		28.438646, 34.765453, 16.292303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.654795, 35.336288, 16.966303>,  <28.724800, 35.403019, 16.251926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.654795, 35.336288, 16.966303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.613745, 34.961285, 16.833311>,  <28.589115, 34.736282, 16.753517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.613745, 34.961285, 16.833311>,  <28.654795, 35.336288, 16.966303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.613745, 34.961285, 16.833311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611553, -0.323078, 0.722235,
		-0.784519, -0.129208, 0.606494,
		-0.102626, -0.937511, -0.332479,
		28.582956, 34.680031, 16.733568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.433064, 34.969391, 17.527664>,  <28.654795, 35.336288, 16.966303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.433064, 34.969391, 17.527664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.575283, 34.668797, 17.305365>,  <28.660614, 34.488441, 17.171984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.575283, 34.668797, 17.305365>,  <28.433064, 34.969391, 17.527664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575283, 34.668797, 17.305365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629799, -0.246719, 0.736534,
		-0.690608, -0.611883, 0.385564,
		0.355547, -0.751484, -0.555750,
		28.681948, 34.443352, 17.138639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431885, 34.417412, 17.972195>,  <28.433064, 34.969391, 17.527664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431885, 34.417412, 17.972195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.702742, 34.320610, 17.694227>,  <28.865255, 34.262527, 17.527447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.702742, 34.320610, 17.694227>,  <28.431885, 34.417412, 17.972195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.702742, 34.320610, 17.694227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660259, -0.217095, 0.718977,
		-0.324862, -0.945675, 0.012785,
		0.677143, -0.242010, -0.694916,
		28.905884, 34.248009, 17.485752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.739021, 33.821796, 18.134796>,  <28.431885, 34.417412, 17.972195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.739021, 33.821796, 18.134796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.031967, 34.005547, 17.933754>,  <29.207735, 34.115799, 17.813129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.031967, 34.005547, 17.933754>,  <28.739021, 33.821796, 18.134796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031967, 34.005547, 17.933754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658573, -0.290371, 0.694237,
		0.172976, -0.839438, -0.515193,
		0.732366, 0.459379, -0.502604,
		29.251677, 34.143360, 17.782972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.212927, 33.386162, 18.259077>,  <28.739021, 33.821796, 18.134796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.212927, 33.386162, 18.259077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.390768, 33.716427, 18.120165>,  <29.497473, 33.914585, 18.036818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.390768, 33.716427, 18.120165>,  <29.212927, 33.386162, 18.259077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390768, 33.716427, 18.120165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768565, -0.152523, 0.621325,
		0.460040, -0.543149, -0.702391,
		0.444602, 0.825667, -0.347279,
		29.524149, 33.964127, 18.015982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858637, 33.281837, 18.233101>,  <29.212927, 33.386162, 18.259077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858637, 33.281837, 18.233101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.861408, 33.681679, 18.222151>,  <29.863071, 33.921581, 18.215580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.861408, 33.681679, 18.222151>,  <29.858637, 33.281837, 18.233101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.861408, 33.681679, 18.222151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711191, 0.014322, 0.702852,
		0.702964, -0.024338, -0.710809,
		0.006926, 0.999601, -0.027377,
		29.863485, 33.981560, 18.213938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483433, 33.474247, 18.245300>,  <29.858637, 33.281837, 18.233101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483433, 33.474247, 18.245300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.327215, 33.832550, 18.330246>,  <30.233484, 34.047531, 18.381212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.327215, 33.832550, 18.330246>,  <30.483433, 33.474247, 18.245300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.327215, 33.832550, 18.330246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741784, 0.169588, 0.648842,
		0.545189, 0.410930, -0.730689,
		-0.390545, 0.895755, 0.212363,
		30.210052, 34.101276, 18.393955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007284, 34.057858, 18.221111>,  <30.483433, 33.474247, 18.245300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007284, 34.057858, 18.221111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.712751, 34.248592, 18.413130>,  <30.536032, 34.363033, 18.528341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.712751, 34.248592, 18.413130>,  <31.007284, 34.057858, 18.221111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.712751, 34.248592, 18.413130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662905, 0.366282, 0.652989,
		0.135535, 0.799041, -0.585801,
		-0.736333, 0.476833, 0.480045,
		30.491852, 34.391644, 18.557144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.234612, 34.720150, 18.293709>,  <31.007284, 34.057858, 18.221111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.234612, 34.720150, 18.293709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.963694, 34.669819, 18.583656>,  <30.801144, 34.639618, 18.757626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.963694, 34.669819, 18.583656>,  <31.234612, 34.720150, 18.293709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963694, 34.669819, 18.583656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678481, 0.274161, 0.681542,
		-0.284491, 0.953416, -0.100313,
		-0.677295, -0.125832, 0.724871,
		30.760506, 34.632069, 18.801117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282494, 35.352219, 18.725477>,  <31.234612, 34.720150, 18.293709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282494, 35.352219, 18.725477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.101269, 35.105679, 18.983114>,  <30.992535, 34.957756, 19.137695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.101269, 35.105679, 18.983114>,  <31.282494, 35.352219, 18.725477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101269, 35.105679, 18.983114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684219, 0.222737, 0.694430,
		-0.571472, 0.755317, 0.320804,
		-0.453060, -0.616348, 0.644090,
		30.965351, 34.920773, 19.176342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029686, 35.765282, 19.310305>,  <31.282494, 35.352219, 18.725477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029686, 35.765282, 19.310305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.065273, 35.385143, 19.429586>,  <31.086626, 35.157059, 19.501156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.065273, 35.385143, 19.429586>,  <31.029686, 35.765282, 19.310305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065273, 35.385143, 19.429586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602714, 0.289725, 0.743502,
		-0.792982, 0.113584, 0.598563,
		0.088969, -0.950346, 0.298205,
		31.091965, 35.100040, 19.519049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155466, 35.792374, 20.065844>,  <31.029686, 35.765282, 19.310305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155466, 35.792374, 20.065844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.238640, 35.403191, 20.025591>,  <31.288544, 35.169682, 20.001440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.238640, 35.403191, 20.025591>,  <31.155466, 35.792374, 20.065844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238640, 35.403191, 20.025591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465746, 0.008013, 0.884882,
		-0.860142, -0.230864, 0.454816,
		0.207932, -0.972953, -0.100632,
		31.301020, 35.111305, 19.995401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015234, 35.419651, 20.694407>,  <31.155466, 35.792374, 20.065844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015234, 35.419651, 20.694407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.288225, 35.202091, 20.499105>,  <31.452021, 35.071556, 20.381924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.288225, 35.202091, 20.499105>,  <31.015234, 35.419651, 20.694407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288225, 35.202091, 20.499105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538009, -0.078338, 0.839291,
		-0.494743, -0.835483, 0.239161,
		0.682478, -0.543904, -0.488254,
		31.492970, 35.038921, 20.352629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161110, 34.856831, 21.103868>,  <31.015234, 35.419651, 20.694407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161110, 34.856831, 21.103868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.482029, 34.890774, 20.867525>,  <31.674582, 34.911140, 20.725719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.482029, 34.890774, 20.867525>,  <31.161110, 34.856831, 21.103868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482029, 34.890774, 20.867525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596919, -0.110429, 0.794665,
		0.002187, -0.990255, -0.139251,
		0.802299, 0.084860, -0.590861,
		31.722719, 34.916233, 20.690268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563015, 34.315632, 21.311089>,  <31.161110, 34.856831, 21.103868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563015, 34.315632, 21.311089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.820932, 34.549839, 21.114553>,  <31.975683, 34.690361, 20.996632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.820932, 34.549839, 21.114553>,  <31.563015, 34.315632, 21.311089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820932, 34.549839, 21.114553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640432, -0.062958, 0.765430,
		0.417236, -0.808214, -0.415577,
		0.644795, 0.585514, -0.491338,
		32.014370, 34.725494, 20.967152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.328884, 33.986874, 21.262178>,  <31.563015, 34.315632, 21.311089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.328884, 33.986874, 21.262178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.403896, 34.369057, 21.171026>,  <32.448902, 34.598366, 21.116335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.403896, 34.369057, 21.171026>,  <32.328884, 33.986874, 21.262178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403896, 34.369057, 21.171026> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841060, -0.036351, 0.539719,
		0.507396, -0.292875, -0.810416,
		0.187530, 0.955460, -0.227881,
		32.460155, 34.655693, 21.102661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121460, 34.042877, 21.061003>,  <32.328884, 33.986874, 21.262178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121460, 34.042877, 21.061003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.989189, 34.404491, 21.169353>,  <32.909828, 34.621460, 21.234364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.989189, 34.404491, 21.169353>,  <33.121460, 34.042877, 21.061003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989189, 34.404491, 21.169353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649380, 0.009688, 0.760403,
		0.684807, 0.427348, -0.590266,
		-0.330675, 0.904035, 0.270877,
		32.889988, 34.675701, 21.250616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708057, 34.401535, 21.280336>,  <33.121460, 34.042877, 21.061003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708057, 34.401535, 21.280336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.442921, 34.647034, 21.451895>,  <33.283840, 34.794334, 21.554831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.442921, 34.647034, 21.451895>,  <33.708057, 34.401535, 21.280336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442921, 34.647034, 21.451895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663614, 0.216249, 0.716137,
		0.346782, 0.759307, -0.550632,
		-0.662841, 0.613751, 0.428896,
		33.244068, 34.831158, 21.580563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180744, 34.815804, 21.608471>,  <33.708057, 34.401535, 21.280336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180744, 34.815804, 21.608471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.823856, 34.846275, 21.786524>,  <33.609722, 34.864559, 21.893356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.823856, 34.846275, 21.786524>,  <34.180744, 34.815804, 21.608471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823856, 34.846275, 21.786524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449570, 0.056400, 0.891463,
		0.042809, 0.995497, -0.084571,
		-0.892219, 0.076184, 0.445132,
		33.556190, 34.869129, 21.920063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.030140, 39.472664, 25.314739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.921886, 39.130760, 25.491894>,  <34.856934, 38.925617, 25.598186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.921886, 39.130760, 25.491894>,  <35.030140, 39.472664, 25.314739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921886, 39.130760, 25.491894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509023, 0.263426, 0.819453,
		-0.817101, 0.447209, 0.363799,
		-0.270632, -0.854758, 0.442885,
		34.840698, 38.874332, 25.624760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638313, 39.686008, 26.011890>,  <35.030140, 39.472664, 25.314739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638313, 39.686008, 26.011890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.771030, 39.308849, 26.023634>,  <34.850662, 39.082554, 26.030682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.771030, 39.308849, 26.023634>,  <34.638313, 39.686008, 26.011890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771030, 39.308849, 26.023634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356543, 0.154157, 0.921473,
		-0.873379, -0.295270, 0.387331,
		0.331794, -0.942895, 0.029361,
		34.870567, 39.025982, 26.032442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466156, 39.460674, 26.675468>,  <34.638313, 39.686008, 26.011890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466156, 39.460674, 26.675468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.753586, 39.207867, 26.559401>,  <34.926044, 39.056183, 26.489759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.753586, 39.207867, 26.559401>,  <34.466156, 39.460674, 26.675468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753586, 39.207867, 26.559401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446235, 0.098998, 0.889423,
		-0.533410, -0.768600, 0.353169,
		0.718573, -0.632024, -0.290169,
		34.969158, 39.018261, 26.472349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530785, 38.916405, 27.199230>,  <34.466156, 39.460674, 26.675468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530785, 38.916405, 27.199230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.882080, 38.829529, 27.028805>,  <35.092857, 38.777405, 26.926550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.882080, 38.829529, 27.028805>,  <34.530785, 38.916405, 27.199230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882080, 38.829529, 27.028805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432159, -0.021078, 0.901551,
		-0.204788, -0.975902, 0.075349,
		0.878237, -0.217189, -0.426061,
		35.145550, 38.764374, 26.900986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839672, 38.528900, 27.678949>,  <34.530785, 38.916405, 27.199230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839672, 38.528900, 27.678949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.142380, 38.667294, 27.457106>,  <35.324005, 38.750328, 27.323999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.142380, 38.667294, 27.457106>,  <34.839672, 38.528900, 27.678949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.142380, 38.667294, 27.457106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610614, -0.071308, 0.788711,
		0.233334, -0.935526, -0.265228,
		0.756773, 0.345985, -0.554607,
		35.369411, 38.771088, 27.290724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387470, 38.042801, 27.605789>,  <34.839672, 38.528900, 27.678949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387470, 38.042801, 27.605789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.542965, 38.409458, 27.568584>,  <35.636261, 38.629452, 27.546263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.542965, 38.409458, 27.568584>,  <35.387470, 38.042801, 27.605789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542965, 38.409458, 27.568584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641922, -0.197039, 0.741020,
		0.660925, -0.347765, -0.665010,
		0.388734, 0.916643, -0.093010,
		35.659584, 38.684452, 27.540682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114666, 37.922184, 27.507307>,  <35.387470, 38.042801, 27.605789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114666, 37.922184, 27.507307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.113625, 38.313492, 27.590231>,  <36.112999, 38.548279, 27.639984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.113625, 38.313492, 27.590231>,  <36.114666, 37.922184, 27.507307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113625, 38.313492, 27.590231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868405, -0.100581, 0.485547,
		0.495849, 0.181292, -0.849275,
		-0.002605, 0.978272, 0.207307,
		36.112843, 38.606972, 27.652424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867119, 38.047173, 27.593884>,  <36.114666, 37.922184, 27.507307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867119, 38.047173, 27.593884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.664230, 38.359688, 27.739388>,  <36.542496, 38.547195, 27.826691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.664230, 38.359688, 27.739388>,  <36.867119, 38.047173, 27.593884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664230, 38.359688, 27.739388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714463, 0.145166, 0.684448,
		0.481943, 0.607060, -0.631830,
		-0.507221, 0.781284, 0.363761,
		36.512066, 38.594074, 27.848516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320541, 38.623745, 27.678261>,  <36.867119, 38.047173, 27.593884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320541, 38.623745, 27.678261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.020386, 38.665234, 27.939383>,  <36.840290, 38.690128, 28.096056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.020386, 38.665234, 27.939383>,  <37.320541, 38.623745, 27.678261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020386, 38.665234, 27.939383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658539, 0.202328, 0.724838,
		-0.056896, 0.973809, -0.220133,
		-0.750393, 0.103726, 0.652803,
		36.795269, 38.696350, 28.135223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360329, 39.312630, 27.914177>,  <37.320541, 38.623745, 27.678261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360329, 39.312630, 27.914177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.162930, 39.098846, 28.188641>,  <37.044491, 38.970577, 28.353319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.162930, 39.098846, 28.188641>,  <37.360329, 39.312630, 27.914177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162930, 39.098846, 28.188641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636343, 0.315923, 0.703748,
		-0.592897, 0.783931, 0.184191,
		-0.493499, -0.534458, 0.686158,
		37.014881, 38.938507, 28.394487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573757, 39.661201, 28.522795>,  <37.360329, 39.312630, 27.914177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573757, 39.661201, 28.522795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.397423, 39.338371, 28.679914>,  <37.291622, 39.144672, 28.774187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.397423, 39.338371, 28.679914>,  <37.573757, 39.661201, 28.522795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397423, 39.338371, 28.679914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601802, 0.058922, 0.796468,
		-0.665954, 0.587502, 0.459725,
		-0.440839, -0.807075, 0.392799,
		37.265171, 39.096249, 28.797754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292797, 39.811527, 29.249752>,  <37.573757, 39.661201, 28.522795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292797, 39.811527, 29.249752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.322155, 39.412918, 29.233999>,  <37.339771, 39.173752, 29.224546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.322155, 39.412918, 29.233999>,  <37.292797, 39.811527, 29.249752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322155, 39.412918, 29.233999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509631, 0.003531, 0.860386,
		-0.857257, -0.083219, 0.508120,
		0.073395, -0.996525, -0.039384,
		37.344173, 39.113960, 29.222183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141815, 39.658508, 29.964043>,  <37.292797, 39.811527, 29.249752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141815, 39.658508, 29.964043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.016533, 39.668190, 30.343794>,  <36.941364, 39.674000, 30.571644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.016533, 39.668190, 30.343794>,  <37.141815, 39.658508, 29.964043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016533, 39.668190, 30.343794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922063, -0.247105, -0.297892,
		0.227386, -0.968686, 0.099711,
		-0.313203, 0.024204, 0.949378,
		36.922573, 39.675453, 30.628607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698494, 39.111008, 30.068991>,  <37.141815, 39.658508, 29.964043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698494, 39.111008, 30.068991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.593819, 39.336338, 30.382469>,  <36.531013, 39.471535, 30.570557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.593819, 39.336338, 30.382469>,  <36.698494, 39.111008, 30.068991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593819, 39.336338, 30.382469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960332, -0.233028, -0.153169,
		0.096339, -0.792693, 0.601960,
		-0.261690, 0.563325, 0.783699,
		36.515312, 39.505337, 30.617579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303658, 38.730068, 30.518002>,  <36.698494, 39.111008, 30.068991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303658, 38.730068, 30.518002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.208702, 39.109062, 30.603722>,  <36.151730, 39.336456, 30.655153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.208702, 39.109062, 30.603722>,  <36.303658, 38.730068, 30.518002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208702, 39.109062, 30.603722> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967555, -0.210967, -0.139036,
		-0.086523, -0.240354, 0.966821,
		-0.237386, 0.947482, 0.214302,
		36.137486, 39.393307, 30.668013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737461, 38.650177, 30.924688>,  <36.303658, 38.730068, 30.518002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737461, 38.650177, 30.924688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.724339, 39.032070, 30.806435>,  <35.716465, 39.261208, 30.735483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.724339, 39.032070, 30.806435>,  <35.737461, 38.650177, 30.924688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724339, 39.032070, 30.806435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968733, -0.103161, -0.225643,
		-0.245928, 0.278988, 0.928270,
		-0.032810, 0.954737, -0.295635,
		35.714497, 39.318493, 30.717745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159710, 39.045334, 31.290781>,  <35.737461, 38.650177, 30.924688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159710, 39.045334, 31.290781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.231888, 39.240147, 30.948965>,  <35.275196, 39.357037, 30.743876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.231888, 39.240147, 30.948965>,  <35.159710, 39.045334, 31.290781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231888, 39.240147, 30.948965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982441, 0.047346, -0.180469,
		-0.047436, 0.872098, 0.487027,
		0.180445, 0.487035, -0.854539,
		35.286022, 39.386257, 30.692604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542404, 39.543636, 31.233315>,  <35.159710, 39.045334, 31.290781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542404, 39.543636, 31.233315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.719700, 39.539223, 30.874779>,  <34.826077, 39.536575, 30.659658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.719700, 39.539223, 30.874779>,  <34.542404, 39.543636, 31.233315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719700, 39.539223, 30.874779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892808, 0.084048, -0.442526,
		0.080218, 0.996401, 0.027403,
		0.443236, -0.011033, -0.896337,
		34.852669, 39.535912, 30.605877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275867, 40.076698, 30.861221>,  <34.542404, 39.543636, 31.233315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275867, 40.076698, 30.861221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.400887, 39.784340, 30.618534>,  <34.475899, 39.608925, 30.472921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.400887, 39.784340, 30.618534>,  <34.275867, 40.076698, 30.861221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400887, 39.784340, 30.618534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880634, 0.016479, -0.473510,
		0.356082, 0.682294, -0.638498,
		0.312551, -0.730892, -0.606720,
		34.494652, 39.565071, 30.436518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024433, 40.341560, 30.279800>,  <34.275867, 40.076698, 30.861221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024433, 40.341560, 30.279800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.115681, 39.958660, 30.208664>,  <34.170429, 39.728920, 30.165983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.115681, 39.958660, 30.208664>,  <34.024433, 40.341560, 30.279800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115681, 39.958660, 30.208664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755182, -0.058669, -0.652885,
		0.614543, 0.283235, -0.736285,
		0.228117, -0.957254, -0.177839,
		34.184116, 39.671482, 30.155312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102417, 40.304607, 29.534521>,  <34.024433, 40.341560, 30.279800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102417, 40.304607, 29.534521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.072598, 39.912106, 29.605616>,  <34.054707, 39.676605, 29.648272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.072598, 39.912106, 29.605616>,  <34.102417, 40.304607, 29.534521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072598, 39.912106, 29.605616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599750, -0.098280, -0.794129,
		0.796708, -0.165795, -0.581179,
		-0.074544, -0.981251, 0.177736,
		34.050236, 39.617729, 29.658936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241608, 39.894531, 28.900084>,  <34.102417, 40.304607, 29.534521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241608, 39.894531, 28.900084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.025978, 39.660732, 29.142658>,  <33.896599, 39.520454, 29.288204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.025978, 39.660732, 29.142658>,  <34.241608, 39.894531, 28.900084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025978, 39.660732, 29.142658> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658057, -0.157119, -0.736393,
		0.525700, -0.796041, -0.299931,
		-0.539074, -0.584494, 0.606438,
		33.864254, 39.485386, 29.324589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068325, 39.457806, 28.326538>,  <34.241608, 39.894531, 28.900084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068325, 39.457806, 28.326538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.831181, 39.357300, 28.632580>,  <33.688896, 39.296997, 28.816204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.831181, 39.357300, 28.632580>,  <34.068325, 39.457806, 28.326538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831181, 39.357300, 28.632580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770305, -0.100113, -0.629768,
		0.234836, -0.962727, -0.134199,
		-0.592859, -0.251266, 0.765103,
		33.653324, 39.281921, 28.862110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884312, 38.831421, 28.138971>,  <34.068325, 39.457806, 28.326538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884312, 38.831421, 28.138971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.621372, 38.949383, 28.416365>,  <33.463608, 39.020161, 28.582800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.621372, 38.949383, 28.416365>,  <33.884312, 38.831421, 28.138971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621372, 38.949383, 28.416365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743953, -0.107294, -0.659562,
		-0.120104, -0.949482, 0.289928,
		-0.657350, 0.294909, 0.693484,
		33.424168, 39.037857, 28.624411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.430717, 38.255001, 28.320358>,  <33.884312, 38.831421, 28.138971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.430717, 38.255001, 28.320358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.268772, 38.619419, 28.351538>,  <33.171604, 38.838070, 28.370245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.268772, 38.619419, 28.351538>,  <33.430717, 38.255001, 28.320358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268772, 38.619419, 28.351538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637491, -0.220123, -0.738344,
		-0.655510, -0.348618, 0.669905,
		-0.404861, 0.911050, 0.077948,
		33.147312, 38.892735, 28.374922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768669, 38.046238, 28.109760>,  <33.430717, 38.255001, 28.320358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768669, 38.046238, 28.109760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.723831, 38.443634, 28.117870>,  <32.696926, 38.682072, 28.122736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.723831, 38.443634, 28.117870>,  <32.768669, 38.046238, 28.109760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.723831, 38.443634, 28.117870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653440, -0.058326, -0.754728,
		-0.748633, -0.097851, 0.655724,
		-0.112097, 0.993490, 0.020275,
		32.690201, 38.741680, 28.123953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124756, 38.184879, 28.240282>,  <32.768669, 38.046238, 28.109760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124756, 38.184879, 28.240282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.273983, 38.507698, 28.057198>,  <32.363522, 38.701389, 27.947348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.273983, 38.507698, 28.057198>,  <32.124756, 38.184879, 28.240282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273983, 38.507698, 28.057198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757567, -0.019837, -0.652456,
		-0.535641, 0.590158, 0.603989,
		0.373071, 0.807044, -0.457709,
		32.385902, 38.749813, 27.919886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531876, 38.581554, 27.911800>,  <32.124756, 38.184879, 28.240282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531876, 38.581554, 27.911800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.852562, 38.714355, 27.712992>,  <32.044975, 38.794037, 27.593706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.852562, 38.714355, 27.712992>,  <31.531876, 38.581554, 27.911800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852562, 38.714355, 27.712992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524118, -0.009238, -0.851595,
		-0.287321, 0.943234, 0.166601,
		0.801715, 0.332000, -0.497020,
		32.093075, 38.813957, 27.563885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026970, 39.032909, 28.184965>,  <31.531876, 38.581554, 27.911800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026970, 39.032909, 28.184965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.744825, 38.873428, 28.419401>,  <30.575539, 38.777740, 28.560062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.744825, 38.873428, 28.419401>,  <31.026970, 39.032909, 28.184965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.744825, 38.873428, 28.419401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667401, -0.094952, 0.738621,
		-0.238840, 0.912151, 0.333071,
		-0.705359, -0.398704, 0.586092,
		30.533218, 38.753819, 28.595228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995995, 39.454803, 28.847740>,  <31.026970, 39.032909, 28.184965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995995, 39.454803, 28.847740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.850222, 39.086796, 28.905367>,  <30.762758, 38.865990, 28.939943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.850222, 39.086796, 28.905367>,  <30.995995, 39.454803, 28.847740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.850222, 39.086796, 28.905367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556533, -0.091134, 0.825812,
		-0.746632, 0.381133, 0.545232,
		-0.364433, -0.920018, 0.144069,
		30.740892, 38.810791, 28.948587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936735, 39.368294, 29.637072>,  <30.995995, 39.454803, 28.847740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.936735, 39.368294, 29.637072> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.963526, 39.003826, 29.474449>,  <30.979601, 38.785145, 29.376875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.963526, 39.003826, 29.474449>,  <30.936735, 39.368294, 29.637072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963526, 39.003826, 29.474449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326075, -0.365109, 0.871992,
		-0.942968, -0.190972, 0.272655,
		0.066977, -0.911167, -0.406557,
		30.983620, 38.730476, 29.352482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.548681, 38.874889, 30.140755>,  <30.936735, 39.368294, 29.637072>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.548681, 38.874889, 30.140755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.787476, 38.663639, 29.899197>,  <30.930752, 38.536888, 29.754261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.787476, 38.663639, 29.899197>,  <30.548681, 38.874889, 30.140755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787476, 38.663639, 29.899197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334585, -0.520257, 0.785739,
		-0.729151, -0.671129, -0.133882,
		0.596985, -0.528128, -0.603896,
		30.966572, 38.505199, 29.718027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565577, 38.253513, 30.501518>,  <30.548681, 38.874889, 30.140755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565577, 38.253513, 30.501518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.888027, 38.223080, 30.266787>,  <31.081497, 38.204819, 30.125948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.888027, 38.223080, 30.266787>,  <30.565577, 38.253513, 30.501518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888027, 38.223080, 30.266787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514279, -0.400459, 0.758387,
		-0.292702, -0.913151, -0.283693,
		0.806128, -0.076084, -0.586829,
		31.129866, 38.200253, 30.090738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654747, 37.633362, 30.598490>,  <30.565577, 38.253513, 30.501518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.654747, 37.633362, 30.598490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.991877, 37.787170, 30.447870>,  <31.194155, 37.879456, 30.357498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.991877, 37.787170, 30.447870>,  <30.654747, 37.633362, 30.598490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991877, 37.787170, 30.447870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515323, -0.374817, 0.770684,
		0.155210, -0.843595, -0.514059,
		0.842824, 0.384525, -0.376549,
		31.244724, 37.902527, 30.334906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141527, 37.073494, 30.457928>,  <30.654747, 37.633362, 30.598490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.141527, 37.073494, 30.457928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.348694, 37.412582, 30.503761>,  <31.472994, 37.616035, 30.531261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.348694, 37.412582, 30.503761>,  <31.141527, 37.073494, 30.457928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.348694, 37.412582, 30.503761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634633, -0.470587, 0.613016,
		0.573590, -0.244771, -0.781717,
		0.517915, 0.847723, 0.114584,
		31.504068, 37.666901, 30.538137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877375, 36.775543, 30.510130>,  <31.141527, 37.073494, 30.457928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877375, 36.775543, 30.510130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.884073, 37.156761, 30.631081>,  <31.888092, 37.385490, 30.703651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.884073, 37.156761, 30.631081>,  <31.877375, 36.775543, 30.510130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884073, 37.156761, 30.631081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525206, -0.265721, 0.808425,
		0.850810, 0.145272, -0.504992,
		0.016745, 0.953041, 0.302376,
		31.889097, 37.442673, 30.721794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499172, 36.853573, 30.771805>,  <31.877375, 36.775543, 30.510130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499172, 36.853573, 30.771805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.289547, 37.151073, 30.937792>,  <32.163773, 37.329575, 31.037384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.289547, 37.151073, 30.937792>,  <32.499172, 36.853573, 30.771805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289547, 37.151073, 30.937792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371351, -0.238934, 0.897223,
		0.766460, 0.624295, -0.150978,
		-0.524059, 0.743751, 0.414966,
		32.132328, 37.374199, 31.062281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942608, 37.217724, 31.240364>,  <32.499172, 36.853573, 30.771805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942608, 37.217724, 31.240364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.578068, 37.319061, 31.370138>,  <32.359344, 37.379864, 31.448004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.578068, 37.319061, 31.370138>,  <32.942608, 37.217724, 31.240364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578068, 37.319061, 31.370138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236494, -0.322856, 0.916425,
		0.336916, 0.911911, 0.234321,
		-0.911350, 0.253342, 0.324437,
		32.304665, 37.395065, 31.467468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111439, 37.573566, 31.851984>,  <32.942608, 37.217724, 31.240364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111439, 37.573566, 31.851984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.724907, 37.472603, 31.871984>,  <32.492989, 37.412025, 31.883986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.724907, 37.472603, 31.871984>,  <33.111439, 37.573566, 31.851984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724907, 37.472603, 31.871984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169012, -0.476089, 0.863003,
		-0.194022, 0.842395, 0.502718,
		-0.966328, -0.252407, 0.050003,
		32.435009, 37.396881, 31.886986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762569, 37.931873, 32.429462>,  <33.111439, 37.573566, 31.851984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762569, 37.931873, 32.429462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.554047, 37.602261, 32.340725>,  <32.428932, 37.404495, 32.287483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.554047, 37.602261, 32.340725>,  <32.762569, 37.931873, 32.429462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554047, 37.602261, 32.340725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213243, -0.377504, 0.901121,
		-0.826296, 0.422455, 0.372514,
		-0.521308, -0.824028, -0.221844,
		32.397655, 37.355053, 32.274170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.845440, 39.668877, 26.027710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.835104, 39.274036, 26.090908>,  <27.828903, 39.037132, 26.128828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.835104, 39.274036, 26.090908>,  <27.845440, 39.668877, 26.027710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.835104, 39.274036, 26.090908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459894, 0.128592, 0.878613,
		-0.887597, 0.095366, 0.450639,
		-0.025841, -0.987101, 0.157996,
		27.827353, 38.977905, 26.138308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.793064, 39.734409, 26.685564>,  <27.845440, 39.668877, 26.027710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.793064, 39.734409, 26.685564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930302, 39.364471, 26.619902>,  <28.012644, 39.142509, 26.580505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.930302, 39.364471, 26.619902>,  <27.793064, 39.734409, 26.685564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930302, 39.364471, 26.619902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576001, 0.069109, 0.814522,
		-0.741963, -0.374010, 0.556423,
		0.343094, -0.924846, -0.164154,
		28.033230, 39.087017, 26.570656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.782368, 39.389462, 27.245583>,  <27.793064, 39.734409, 26.685564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.782368, 39.389462, 27.245583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.040668, 39.156921, 27.047579>,  <28.195648, 39.017395, 26.928776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.040668, 39.156921, 27.047579>,  <27.782368, 39.389462, 27.245583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.040668, 39.156921, 27.047579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564929, -0.072375, 0.821960,
		-0.513676, -0.810425, 0.281687,
		0.645750, -0.581354, -0.495010,
		28.234394, 38.982513, 26.899076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891413, 38.761662, 27.613283>,  <27.782368, 39.389462, 27.245583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.891413, 38.761662, 27.613283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224457, 38.782402, 27.392712>,  <28.424282, 38.794846, 27.260368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.224457, 38.782402, 27.392712>,  <27.891413, 38.761662, 27.613283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224457, 38.782402, 27.392712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553809, -0.064274, 0.830159,
		0.007606, -0.996584, -0.082233,
		0.832609, 0.051856, -0.551428,
		28.474239, 38.797958, 27.227283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.304838, 38.185158, 27.847626>,  <27.891413, 38.761662, 27.613283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.304838, 38.185158, 27.847626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.556356, 38.452442, 27.688570>,  <28.707268, 38.612812, 27.593138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.556356, 38.452442, 27.688570>,  <28.304838, 38.185158, 27.847626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.556356, 38.452442, 27.688570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695082, -0.253812, 0.672637,
		0.348535, -0.699342, -0.624055,
		0.628796, 0.668207, -0.397638,
		28.744995, 38.652905, 27.569279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976683, 37.878716, 28.057650>,  <28.304838, 38.185158, 27.847626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976683, 37.878716, 28.057650> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.042604, 38.249710, 27.923424>,  <29.082157, 38.472309, 27.842888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.042604, 38.249710, 27.923424>,  <28.976683, 37.878716, 28.057650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.042604, 38.249710, 27.923424> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863304, 0.028897, 0.503856,
		0.477018, -0.372732, -0.795943,
		0.164803, 0.927489, -0.335565,
		29.092045, 38.527958, 27.822754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.594145, 37.839436, 27.737675>,  <28.976683, 37.878716, 28.057650>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.594145, 37.839436, 27.737675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.514814, 38.212505, 27.858194>,  <29.467216, 38.436348, 27.930506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.514814, 38.212505, 27.858194>,  <29.594145, 37.839436, 27.737675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.514814, 38.212505, 27.858194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912537, 0.063520, 0.404032,
		0.357693, 0.355075, -0.863700,
		-0.198324, 0.932677, 0.301299,
		29.455317, 38.492310, 27.948584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.143770, 38.249935, 27.499825>,  <29.594145, 37.839436, 27.737675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.143770, 38.249935, 27.499825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966909, 38.474159, 27.779903>,  <29.860792, 38.608692, 27.947950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966909, 38.474159, 27.779903>,  <30.143770, 38.249935, 27.499825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.966909, 38.474159, 27.779903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857573, 0.035469, 0.513138,
		0.262807, 0.827356, -0.496401,
		-0.442154, 0.560557, 0.700197,
		29.834263, 38.642326, 27.989962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630104, 38.755791, 27.647785>,  <30.143770, 38.249935, 27.499825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630104, 38.755791, 27.647785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387314, 38.736874, 27.965109>,  <30.241640, 38.725525, 28.155504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387314, 38.736874, 27.965109>,  <30.630104, 38.755791, 27.647785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387314, 38.736874, 27.965109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794699, -0.043228, 0.605462,
		0.005662, 0.997945, 0.063819,
		-0.606977, -0.047288, 0.793311,
		30.205221, 38.722687, 28.203102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194298, 39.055992, 27.444752>,  <30.630104, 38.755791, 27.647785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194298, 39.055992, 27.444752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560276, 38.983898, 27.300314>,  <31.779863, 38.940643, 27.213652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.560276, 38.983898, 27.300314>,  <31.194298, 39.055992, 27.444752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560276, 38.983898, 27.300314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391057, -0.174815, -0.903612,
		0.099735, 0.967965, -0.230427,
		0.914947, -0.180232, -0.361094,
		31.834761, 38.929829, 27.191986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249630, 39.448032, 26.727688>,  <31.194298, 39.055992, 27.444752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249630, 39.448032, 26.727688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511959, 39.146069, 26.729187>,  <31.669355, 38.964890, 26.730087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511959, 39.146069, 26.729187>,  <31.249630, 39.448032, 26.727688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511959, 39.146069, 26.729187> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312534, -0.276026, -0.908918,
		0.687184, 0.594916, -0.416958,
		0.655821, -0.754907, 0.003749,
		31.708706, 38.919598, 26.730312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478701, 39.472885, 26.072115>,  <31.249630, 39.448032, 26.727688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478701, 39.472885, 26.072115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583515, 39.108429, 26.199333>,  <31.646404, 38.889755, 26.275665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583515, 39.108429, 26.199333>,  <31.478701, 39.472885, 26.072115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583515, 39.108429, 26.199333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362837, -0.398399, -0.842394,
		0.894251, 0.105340, -0.434993,
		0.262039, -0.911143, 0.318047,
		31.662127, 38.835087, 26.294748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907291, 39.225224, 25.556757>,  <31.478701, 39.472885, 26.072115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907291, 39.225224, 25.556757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767408, 38.906326, 25.753576>,  <31.683479, 38.714989, 25.871668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767408, 38.906326, 25.753576>,  <31.907291, 39.225224, 25.556757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767408, 38.906326, 25.753576> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156199, -0.468241, -0.869685,
		0.923747, -0.380991, 0.039218,
		-0.349705, -0.797243, 0.492047,
		31.662497, 38.667152, 25.901190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196159, 38.674538, 25.188261>,  <31.907291, 39.225224, 25.556757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196159, 38.674538, 25.188261> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892963, 38.531635, 25.406549>,  <31.711044, 38.445892, 25.537523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892963, 38.531635, 25.406549>,  <32.196159, 38.674538, 25.188261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892963, 38.531635, 25.406549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311654, -0.536606, -0.784172,
		0.572990, -0.764473, 0.295402,
		-0.757993, -0.357260, 0.545721,
		31.665565, 38.424458, 25.570267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144436, 37.947880, 25.039183>,  <32.196159, 38.674538, 25.188261>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144436, 37.947880, 25.039183> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794733, 38.058151, 25.199024>,  <31.584911, 38.124313, 25.294930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.794733, 38.058151, 25.199024>,  <32.144436, 37.947880, 25.039183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794733, 38.058151, 25.199024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479616, -0.363035, -0.798858,
		-0.075154, -0.890061, 0.449603,
		-0.874254, 0.275674, 0.399604,
		31.532457, 38.140854, 25.318905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648207, 37.376514, 24.968708>,  <32.144436, 37.947880, 25.039183>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648207, 37.376514, 24.968708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408396, 37.689590, 25.035593>,  <31.264509, 37.877438, 25.075724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408396, 37.689590, 25.035593>,  <31.648207, 37.376514, 24.968708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.408396, 37.689590, 25.035593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569052, -0.269945, -0.776730,
		-0.562801, -0.560825, 0.607231,
		-0.599529, 0.782690, 0.167214,
		31.228537, 37.924397, 25.085758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012060, 37.109436, 24.893265>,  <31.648207, 37.376514, 24.968708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012060, 37.109436, 24.893265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973997, 37.500103, 24.816259>,  <30.951159, 37.734505, 24.770056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.973997, 37.500103, 24.816259>,  <31.012060, 37.109436, 24.893265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973997, 37.500103, 24.816259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611922, -0.209926, -0.762550,
		-0.785173, 0.045240, 0.617622,
		-0.095157, 0.976670, -0.192511,
		30.945450, 37.793102, 24.758507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218496, 37.211525, 24.869896>,  <31.012060, 37.109436, 24.893265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218496, 37.211525, 24.869896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395452, 37.498692, 24.654903>,  <30.501625, 37.670990, 24.525908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395452, 37.498692, 24.654903>,  <30.218496, 37.211525, 24.869896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.395452, 37.498692, 24.654903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706746, -0.089863, -0.701737,
		-0.552089, 0.690304, 0.467630,
		0.442389, 0.717917, -0.537482,
		30.528170, 37.714066, 24.493658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.728302, 37.710712, 24.633110>,  <30.218496, 37.211525, 24.869896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.728302, 37.710712, 24.633110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019096, 37.766712, 24.364218>,  <30.193573, 37.800312, 24.202883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019096, 37.766712, 24.364218>,  <29.728302, 37.710712, 24.633110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.019096, 37.766712, 24.364218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686141, 0.185943, -0.703304,
		0.026532, 0.972535, 0.231239,
		0.726985, 0.140002, -0.672230,
		30.237192, 37.808712, 24.162548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.482327, 38.229908, 24.199476>,  <29.728302, 37.710712, 24.633110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.482327, 38.229908, 24.199476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777893, 38.073502, 23.979980>,  <29.955233, 37.979660, 23.848284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.777893, 38.073502, 23.979980>,  <29.482327, 38.229908, 24.199476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777893, 38.073502, 23.979980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427139, 0.358021, -0.830285,
		0.521112, 0.847897, 0.097530,
		0.738914, -0.391012, -0.548740,
		29.999567, 37.956200, 23.815359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.639427, 38.802395, 23.727453>,  <29.482327, 38.229908, 24.199476>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.639427, 38.802395, 23.727453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811594, 38.478374, 23.568176>,  <29.914894, 38.283962, 23.472610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811594, 38.478374, 23.568176>,  <29.639427, 38.802395, 23.727453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811594, 38.478374, 23.568176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156272, 0.367611, -0.916756,
		0.889000, 0.456812, 0.031637,
		0.430415, -0.810053, -0.398193,
		29.940718, 38.235359, 23.448719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.874866, 39.085518, 23.152330>,  <29.639427, 38.802395, 23.727453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.874866, 39.085518, 23.152330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.850124, 38.690449, 23.094805>,  <29.835279, 38.453407, 23.060289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.850124, 38.690449, 23.094805>,  <29.874866, 39.085518, 23.152330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.850124, 38.690449, 23.094805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387278, 0.156553, -0.908574,
		0.919885, -0.000506, -0.392187,
		-0.061858, -0.987669, -0.143815,
		29.831568, 38.394150, 23.051661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183302, 38.890614, 22.569294>,  <29.874866, 39.085518, 23.152330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.183302, 38.890614, 22.569294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896502, 38.623928, 22.650692>,  <29.724422, 38.463917, 22.699530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896502, 38.623928, 22.650692>,  <30.183302, 38.890614, 22.569294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.896502, 38.623928, 22.650692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539408, 0.345750, -0.767786,
		0.441536, -0.660266, -0.607532,
		-0.716997, -0.666713, 0.203491,
		29.681402, 38.423916, 22.711740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.409052, 31.867790, 21.926167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.303131, 32.214138, 22.095943>,  <30.239578, 32.421947, 22.197809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.303131, 32.214138, 22.095943>,  <30.409052, 31.867790, 21.926167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303131, 32.214138, 22.095943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785920, -0.061257, 0.615286,
		0.558757, 0.496508, -0.664282,
		-0.264803, 0.865868, 0.424443,
		30.223690, 32.473900, 22.223276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025280, 32.157887, 22.168524>,  <30.409052, 31.867790, 21.926167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025280, 32.157887, 22.168524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.768597, 32.374691, 22.385569>,  <30.614586, 32.504776, 22.515797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.768597, 32.374691, 22.385569>,  <31.025280, 32.157887, 22.168524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768597, 32.374691, 22.385569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708063, 0.146817, 0.690718,
		0.294715, 0.827444, -0.477995,
		-0.641708, 0.542016, 0.542614,
		30.576084, 32.537296, 22.548353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360296, 32.726158, 22.306376>,  <31.025280, 32.157887, 22.168524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360296, 32.726158, 22.306376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.068771, 32.741718, 22.579819>,  <30.893856, 32.751053, 22.743885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.068771, 32.741718, 22.579819>,  <31.360296, 32.726158, 22.306376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.068771, 32.741718, 22.579819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682383, 0.123544, 0.720479,
		-0.056430, 0.991576, -0.116585,
		-0.728813, 0.038899, 0.683607,
		30.850128, 32.753387, 22.784901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606409, 33.276100, 22.713140>,  <31.360296, 32.726158, 22.306376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606409, 33.276100, 22.713140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.347347, 33.103752, 22.964502>,  <31.191910, 33.000343, 23.115320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.347347, 33.103752, 22.964502>,  <31.606409, 33.276100, 22.713140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347347, 33.103752, 22.964502> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625090, 0.171118, 0.761565,
		-0.435668, 0.886041, 0.158509,
		-0.647654, -0.430872, 0.628406,
		31.153051, 32.974491, 23.153025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372921, 33.789497, 23.231569>,  <31.606409, 33.276100, 22.713140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372921, 33.789497, 23.231569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.293262, 33.437374, 23.403801>,  <31.245468, 33.226101, 23.507141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.293262, 33.437374, 23.403801>,  <31.372921, 33.789497, 23.231569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293262, 33.437374, 23.403801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412202, 0.323374, 0.851774,
		-0.889061, 0.347114, 0.298466,
		-0.199146, -0.880307, 0.430580,
		31.233519, 33.173283, 23.532974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124380, 33.891068, 23.858381>,  <31.372921, 33.789497, 23.231569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124380, 33.891068, 23.858381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.250277, 33.511700, 23.873569>,  <31.325813, 33.284081, 23.882683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.250277, 33.511700, 23.873569>,  <31.124380, 33.891068, 23.858381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250277, 33.511700, 23.873569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486439, 0.195521, 0.851557,
		-0.815056, -0.249549, 0.522885,
		0.314740, -0.948418, 0.037970,
		31.344698, 33.227173, 23.884960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982321, 33.791019, 24.510075>,  <31.124380, 33.891068, 23.858381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982321, 33.791019, 24.510075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.245546, 33.510761, 24.399769>,  <31.403482, 33.342606, 24.333586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.245546, 33.510761, 24.399769>,  <30.982321, 33.791019, 24.510075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245546, 33.510761, 24.399769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506648, 0.141098, 0.850529,
		-0.557010, -0.699418, 0.447832,
		0.658064, -0.700646, -0.275766,
		31.442965, 33.300568, 24.317039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017860, 33.416203, 25.070648>,  <30.982321, 33.791019, 24.510075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017860, 33.416203, 25.070648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.344753, 33.318302, 24.861946>,  <31.540890, 33.259563, 24.736725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.344753, 33.318302, 24.861946>,  <31.017860, 33.416203, 25.070648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344753, 33.318302, 24.861946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553029, 0.078344, 0.829470,
		-0.162135, -0.966416, 0.199379,
		0.817234, -0.244748, -0.521754,
		31.589924, 33.244877, 24.705420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428907, 32.968758, 25.558681>,  <31.017860, 33.416203, 25.070648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.428907, 32.968758, 25.558681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.680916, 33.070637, 25.265232>,  <31.832121, 33.131763, 25.089163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.680916, 33.070637, 25.265232>,  <31.428907, 32.968758, 25.558681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680916, 33.070637, 25.265232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762571, -0.024278, 0.646449,
		0.146838, -0.966716, -0.209521,
		0.630019, 0.254698, -0.733624,
		31.869921, 33.147045, 25.045145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078671, 32.674305, 25.739792>,  <31.428907, 32.968758, 25.558681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078671, 32.674305, 25.739792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.190392, 32.976982, 25.503347>,  <32.257423, 33.158588, 25.361481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.190392, 32.976982, 25.503347>,  <32.078671, 32.674305, 25.739792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190392, 32.976982, 25.503347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712811, 0.249067, 0.655642,
		0.643343, -0.604473, -0.469811,
		0.279304, 0.756689, -0.591110,
		32.274181, 33.203987, 25.326014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775043, 32.685577, 25.732353>,  <32.078671, 32.674305, 25.739792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775043, 32.685577, 25.732353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.680073, 33.063263, 25.641068>,  <32.623093, 33.289875, 25.586296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.680073, 33.063263, 25.641068>,  <32.775043, 32.685577, 25.732353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680073, 33.063263, 25.641068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703450, 0.329138, 0.629942,
		0.669917, -0.010975, -0.742355,
		-0.237423, 0.944218, -0.228216,
		32.608845, 33.346527, 25.572603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478680, 33.038578, 25.774788>,  <32.775043, 32.685577, 25.732353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478680, 33.038578, 25.774788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.196735, 33.322166, 25.783964>,  <33.027569, 33.492321, 25.789471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.196735, 33.322166, 25.783964>,  <33.478680, 33.038578, 25.774788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196735, 33.322166, 25.783964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541343, 0.516738, 0.663272,
		0.458388, 0.479933, -0.748027,
		-0.704860, 0.708975, 0.022942,
		32.985279, 33.534859, 25.790846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927567, 33.595867, 25.905733>,  <33.478680, 33.038578, 25.774788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927567, 33.595867, 25.905733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.558014, 33.700470, 26.017487>,  <33.336281, 33.763233, 26.084538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.558014, 33.700470, 26.017487>,  <33.927567, 33.595867, 25.905733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558014, 33.700470, 26.017487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381710, 0.577972, 0.721280,
		0.027144, 0.773022, -0.633798,
		-0.923883, 0.261506, 0.279381,
		33.280849, 33.778923, 26.101301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084164, 34.341259, 25.994753>,  <33.927567, 33.595867, 25.905733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084164, 34.341259, 25.994753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.761932, 34.200474, 26.185398>,  <33.568592, 34.116001, 26.299786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.761932, 34.200474, 26.185398>,  <34.084164, 34.341259, 25.994753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761932, 34.200474, 26.185398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296590, 0.456824, 0.838657,
		-0.512905, 0.816966, -0.263621,
		-0.805583, -0.351964, 0.476611,
		33.520256, 34.094883, 26.328381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271870, 35.152588, 25.809963>,  <34.084164, 34.341259, 25.994753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271870, 35.152588, 25.809963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.625065, 35.106701, 25.627899>,  <34.836983, 35.079170, 25.518661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.625065, 35.106701, 25.627899>,  <34.271870, 35.152588, 25.809963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625065, 35.106701, 25.627899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445542, 0.100342, -0.889620,
		0.147724, 0.988318, 0.037490,
		0.882989, -0.114715, -0.455160,
		34.889961, 35.072285, 25.491350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497883, 35.746357, 25.358843>,  <34.271870, 35.152588, 25.809963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497883, 35.746357, 25.358843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.669052, 35.411083, 25.223591>,  <34.771751, 35.209919, 25.142441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.669052, 35.411083, 25.223591>,  <34.497883, 35.746357, 25.358843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669052, 35.411083, 25.223591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441268, 0.132743, -0.887503,
		0.788776, 0.528985, -0.313061,
		0.427919, -0.838185, -0.338129,
		34.797428, 35.159626, 25.122152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671062, 35.942230, 24.680504>,  <34.497883, 35.746357, 25.358843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671062, 35.942230, 24.680504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.688084, 35.542641, 24.674208>,  <34.698296, 35.302887, 24.670429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.688084, 35.542641, 24.674208>,  <34.671062, 35.942230, 24.680504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688084, 35.542641, 24.674208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566825, -0.011163, -0.823763,
		0.822739, 0.043975, -0.566717,
		0.042551, -0.998970, -0.015742,
		34.700848, 35.242950, 24.669485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929710, 35.661171, 24.029709>,  <34.671062, 35.942230, 24.680504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929710, 35.661171, 24.029709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.748634, 35.341171, 24.187231>,  <34.639988, 35.149174, 24.281744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.748634, 35.341171, 24.187231>,  <34.929710, 35.661171, 24.029709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748634, 35.341171, 24.187231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516900, -0.124427, -0.846955,
		0.726560, -0.586963, -0.357192,
		-0.452686, -0.799995, 0.393805,
		34.612827, 35.101173, 24.305372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071781, 35.129673, 23.577417>,  <34.929710, 35.661171, 24.029709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071781, 35.129673, 23.577417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.759865, 34.997490, 23.790104>,  <34.572716, 34.918179, 23.917717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.759865, 34.997490, 23.790104>,  <35.071781, 35.129673, 23.577417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759865, 34.997490, 23.790104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456953, -0.280116, -0.844233,
		0.427926, -0.901295, 0.067428,
		-0.779791, -0.330458, 0.531718,
		34.525928, 34.898354, 23.949619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948891, 34.545330, 23.275959>,  <35.071781, 35.129673, 23.577417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948891, 34.545330, 23.275959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.619946, 34.638676, 23.483521>,  <34.422581, 34.694683, 23.608057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.619946, 34.638676, 23.483521>,  <34.948891, 34.545330, 23.275959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619946, 34.638676, 23.483521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556248, -0.137995, -0.819479,
		-0.119610, -0.962554, 0.243278,
		-0.822364, 0.233341, 0.518913,
		34.373238, 34.708687, 23.639193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545322, 34.053680, 23.124786>,  <34.948891, 34.545330, 23.275959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545322, 34.053680, 23.124786> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.308681, 34.351509, 23.248478>,  <34.166698, 34.530205, 23.322693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.308681, 34.351509, 23.248478>,  <34.545322, 34.053680, 23.124786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.308681, 34.351509, 23.248478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486609, -0.023945, -0.873292,
		-0.642824, -0.667112, 0.376481,
		-0.591599, 0.744573, 0.309230,
		34.131203, 34.574883, 23.341248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977852, 33.969345, 22.768017>,  <34.545322, 34.053680, 23.124786>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977852, 33.969345, 22.768017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.898132, 34.335697, 22.907412>,  <33.850300, 34.555508, 22.991049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.898132, 34.335697, 22.907412>,  <33.977852, 33.969345, 22.768017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898132, 34.335697, 22.907412> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666920, 0.133788, -0.733020,
		-0.717982, -0.378502, 0.584156,
		-0.199297, 0.915880, 0.348488,
		33.838345, 34.610462, 23.011957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296482, 34.015274, 22.742441>,  <33.977852, 33.969345, 22.768017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296482, 34.015274, 22.742441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.420689, 34.395283, 22.755362>,  <33.495213, 34.623287, 22.763113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.420689, 34.395283, 22.755362>,  <33.296482, 34.015274, 22.742441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420689, 34.395283, 22.755362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720568, 0.257412, -0.643832,
		-0.619967, 0.176648, 0.764485,
		0.310520, 0.950018, 0.032300,
		33.513844, 34.680286, 22.765051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697041, 34.440014, 22.828762>,  <33.296482, 34.015274, 22.742441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697041, 34.440014, 22.828762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.975014, 34.685081, 22.678186>,  <33.141796, 34.832123, 22.587841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.975014, 34.685081, 22.678186>,  <32.697041, 34.440014, 22.828762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975014, 34.685081, 22.678186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562140, 0.136426, -0.815713,
		-0.448406, 0.778476, 0.439212,
		0.694933, 0.612669, -0.376438,
		33.183495, 34.868881, 22.565254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370972, 35.022205, 22.568884>,  <32.697041, 34.440014, 22.828762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370972, 35.022205, 22.568884> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.714680, 34.993313, 22.366325>,  <32.920906, 34.975979, 22.244791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.714680, 34.993313, 22.366325>,  <32.370972, 35.022205, 22.568884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714680, 34.993313, 22.366325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493176, 0.145757, -0.857632,
		0.135759, 0.986680, 0.089622,
		0.859272, -0.072232, -0.506394,
		32.972462, 34.971642, 22.214407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456444, 35.641636, 22.212225>,  <32.370972, 35.022205, 22.568884>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456444, 35.641636, 22.212225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.670601, 35.369038, 22.012657>,  <32.799095, 35.205479, 21.892916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.670601, 35.369038, 22.012657>,  <32.456444, 35.641636, 22.212225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670601, 35.369038, 22.012657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605470, 0.102160, -0.789284,
		0.588860, 0.724661, -0.357926,
		0.535397, -0.681491, -0.498919,
		32.831219, 35.164589, 21.862982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366058, 35.818077, 21.599705>,  <32.456444, 35.641636, 22.212225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366058, 35.818077, 21.599705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.556839, 35.483330, 21.492245>,  <32.671307, 35.282482, 21.427769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.556839, 35.483330, 21.492245>,  <32.366058, 35.818077, 21.599705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556839, 35.483330, 21.492245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370560, 0.085701, -0.924846,
		0.796995, 0.540660, -0.269233,
		0.476953, -0.836865, -0.268651,
		32.699924, 35.232269, 21.411650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629005, 35.916622, 20.888277>,  <32.366058, 35.818077, 21.599705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629005, 35.916622, 20.888277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.573441, 35.526325, 20.955954>,  <32.540104, 35.292145, 20.996559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.573441, 35.526325, 20.955954>,  <32.629005, 35.916622, 20.888277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573441, 35.526325, 20.955954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395871, -0.101892, -0.912636,
		0.907739, -0.193752, -0.372116,
		-0.138909, -0.975745, 0.169192,
		32.531769, 35.233601, 21.006712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134743, 36.350178, 20.450417>,  <32.629005, 35.916622, 20.888277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134743, 36.350178, 20.450417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.991901, 36.722759, 20.422474>,  <32.906197, 36.946308, 20.405708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.991901, 36.722759, 20.422474>,  <33.134743, 36.350178, 20.450417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991901, 36.722759, 20.422474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596553, 0.284977, 0.750275,
		0.718750, 0.226254, -0.657425,
		-0.357103, 0.931449, -0.069855,
		32.884769, 37.002193, 20.401518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656487, 36.751835, 20.362862>,  <33.134743, 36.350178, 20.450417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656487, 36.751835, 20.362862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.365028, 36.969315, 20.529461>,  <33.190155, 37.099804, 20.629421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.365028, 36.969315, 20.529461>,  <33.656487, 36.751835, 20.362862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365028, 36.969315, 20.529461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604965, 0.225829, 0.763557,
		0.321089, 0.808326, -0.493468,
		-0.728642, 0.543701, 0.416498,
		33.146435, 37.132423, 20.654409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072865, 37.362083, 20.631527>,  <33.656487, 36.751835, 20.362862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072865, 37.362083, 20.631527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.720287, 37.429672, 20.807936>,  <33.508739, 37.470226, 20.913780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.720287, 37.429672, 20.807936>,  <34.072865, 37.362083, 20.631527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720287, 37.429672, 20.807936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469635, 0.214838, 0.856322,
		0.049948, 0.961921, -0.268725,
		-0.881447, 0.168974, 0.441021,
		33.455853, 37.480366, 20.940243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079117, 38.069473, 20.918781>,  <34.072865, 37.362083, 20.631527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079117, 38.069473, 20.918781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.825703, 37.835911, 21.121832>,  <33.673656, 37.695774, 21.243662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.825703, 37.835911, 21.121832>,  <34.079117, 38.069473, 20.918781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825703, 37.835911, 21.121832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455090, 0.249375, 0.854813,
		-0.625724, 0.772568, 0.107745,
		-0.633532, -0.583911, 0.507628,
		33.635643, 37.660736, 21.274120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850327, 38.465172, 21.476557>,  <34.079117, 38.069473, 20.918781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850327, 38.465172, 21.476557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.771606, 38.091312, 21.595009>,  <33.724373, 37.866997, 21.666080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.771606, 38.091312, 21.595009>,  <33.850327, 38.465172, 21.476557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771606, 38.091312, 21.595009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360297, 0.211961, 0.908437,
		-0.911841, 0.285479, 0.295038,
		-0.196803, -0.934652, 0.296132,
		33.712566, 37.810917, 21.683849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483463, 38.520859, 22.119188>,  <33.850327, 38.465172, 21.476557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483463, 38.520859, 22.119188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.562469, 38.133091, 22.177448>,  <33.609871, 37.900429, 22.212404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.562469, 38.133091, 22.177448>,  <33.483463, 38.520859, 22.119188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562469, 38.133091, 22.177448> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185111, 0.182787, 0.965569,
		-0.962665, -0.163750, 0.215553,
		0.197512, -0.969420, 0.145650,
		33.621723, 37.842266, 22.221144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124767, 38.379036, 22.635471>,  <33.483463, 38.520859, 22.119188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124767, 38.379036, 22.635471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.432331, 38.125450, 22.602350>,  <33.616871, 37.973297, 22.582478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.432331, 38.125450, 22.602350>,  <33.124767, 38.379036, 22.635471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432331, 38.125450, 22.602350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154414, 0.058466, 0.986275,
		-0.620425, -0.771146, 0.142849,
		0.768914, -0.633968, -0.082801,
		33.663006, 37.935261, 22.577509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970245, 37.896393, 23.157198>,  <33.124767, 38.379036, 22.635471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970245, 37.896393, 23.157198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.362370, 37.859657, 23.087278>,  <33.597645, 37.837616, 23.045326>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.362370, 37.859657, 23.087278>,  <32.970245, 37.896393, 23.157198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362370, 37.859657, 23.087278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167389, -0.083061, 0.982386,
		-0.104752, -0.992303, -0.066051,
		0.980310, -0.091851, -0.174801,
		33.656464, 37.832108, 23.034838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251389, 37.402355, 23.632490>,  <32.970245, 37.896393, 23.157198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251389, 37.402355, 23.632490> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.560459, 37.644726, 23.556784>,  <33.745903, 37.790150, 23.511360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.560459, 37.644726, 23.556784>,  <33.251389, 37.402355, 23.632490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560459, 37.644726, 23.556784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096748, 0.182265, 0.978478,
		0.627387, -0.774356, 0.082208,
		0.772674, 0.605930, -0.189268,
		33.792263, 37.826504, 23.500004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676769, 37.227077, 24.120537>,  <33.251389, 37.402355, 23.632490>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676769, 37.227077, 24.120537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.831573, 37.584667, 24.030180>,  <33.924458, 37.799221, 23.975965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.831573, 37.584667, 24.030180>,  <33.676769, 37.227077, 24.120537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831573, 37.584667, 24.030180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052707, 0.223133, 0.973362,
		0.920567, -0.388610, 0.039237,
		0.387014, 0.893976, -0.225891,
		33.947678, 37.852859, 23.962412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368443, 37.279400, 24.405586>,  <33.676769, 37.227077, 24.120537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368443, 37.279400, 24.405586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.274193, 37.664677, 24.353828>,  <34.217644, 37.895844, 24.322773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.274193, 37.664677, 24.353828>,  <34.368443, 37.279400, 24.405586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274193, 37.664677, 24.353828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340153, 0.206461, 0.917426,
		0.910371, 0.172158, -0.376280,
		-0.235629, 0.963190, -0.129396,
		34.203503, 37.953632, 24.315010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877529, 37.611511, 24.599306>,  <34.368443, 37.279400, 24.405586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877529, 37.611511, 24.599306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.599777, 37.895771, 24.644592>,  <34.433128, 38.066326, 24.671764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.599777, 37.895771, 24.644592>,  <34.877529, 37.611511, 24.599306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599777, 37.895771, 24.644592> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469160, 0.327774, 0.820032,
		0.545648, 0.622526, -0.561007,
		-0.694376, 0.710651, 0.113215,
		34.391464, 38.108967, 24.678556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163464, 38.291351, 24.521936>,  <34.877529, 37.611511, 24.599306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163464, 38.291351, 24.521936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.837223, 38.351055, 24.745550>,  <34.641479, 38.386879, 24.879719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.837223, 38.351055, 24.745550>,  <35.163464, 38.291351, 24.521936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837223, 38.351055, 24.745550> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562746, 0.429353, 0.706380,
		-0.134586, 0.890717, -0.434178,
		-0.815600, 0.149263, 0.559032,
		34.592545, 38.395836, 24.913260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345585, 38.921547, 24.911783>,  <35.163464, 38.291351, 24.521936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345585, 38.921547, 24.911783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.026405, 38.779728, 25.106750>,  <34.834896, 38.694637, 25.223730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.026405, 38.779728, 25.106750>,  <35.345585, 38.921547, 24.911783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026405, 38.779728, 25.106750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333053, 0.414640, 0.846847,
		-0.502347, 0.838077, -0.212780,
		-0.797950, -0.354544, 0.487417,
		34.787022, 38.673367, 25.252975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.186487, 38.304878, 21.817932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.838804, 38.223347, 21.998125>,  <29.630194, 38.174427, 22.106241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.838804, 38.223347, 21.998125>,  <30.186487, 38.304878, 21.817932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838804, 38.223347, 21.998125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488872, 0.217833, -0.844721,
		0.074046, -0.954465, -0.288986,
		-0.869207, -0.203825, 0.450482,
		29.578043, 38.162197, 22.133270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912136, 37.805260, 21.453600>,  <30.186487, 38.304878, 21.817932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912136, 37.805260, 21.453600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.585270, 37.919930, 21.653622>,  <29.389151, 37.988731, 21.773636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.585270, 37.919930, 21.653622>,  <29.912136, 37.805260, 21.453600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.585270, 37.919930, 21.653622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533150, -0.046202, -0.844758,
		-0.219071, -0.956912, 0.190598,
		-0.817165, 0.286679, 0.500056,
		29.340120, 38.005932, 21.803638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297556, 37.338875, 21.168459>,  <29.912136, 37.805260, 21.453600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297556, 37.338875, 21.168459> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.176706, 37.672821, 21.352514>,  <29.104197, 37.873188, 21.462948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.176706, 37.672821, 21.352514>,  <29.297556, 37.338875, 21.168459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.176706, 37.672821, 21.352514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603973, 0.205805, -0.769974,
		-0.737521, -0.510539, 0.442055,
		-0.302125, 0.834862, 0.460138,
		29.086069, 37.923279, 21.490555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.512716, 37.285789, 21.215324>,  <29.297556, 37.338875, 21.168459>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.512716, 37.285789, 21.215324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.611067, 37.671711, 21.252644>,  <28.670078, 37.903263, 21.275036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.611067, 37.671711, 21.252644>,  <28.512716, 37.285789, 21.215324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611067, 37.671711, 21.252644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605144, 0.227982, -0.762775,
		-0.757196, 0.131089, 0.639899,
		0.245877, 0.964800, 0.093299,
		28.684830, 37.961151, 21.280634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.905775, 37.656677, 21.267836>,  <28.512716, 37.285789, 21.215324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.905775, 37.656677, 21.267836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.177671, 37.924477, 21.148014>,  <28.340809, 38.085155, 21.076122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.177671, 37.924477, 21.148014>,  <27.905775, 37.656677, 21.267836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.177671, 37.924477, 21.148014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579416, 0.239745, -0.778973,
		-0.449702, 0.703064, 0.550880,
		0.679739, 0.669494, -0.299552,
		28.381594, 38.125324, 21.058147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.532539, 38.243790, 21.017935>,  <27.905775, 37.656677, 21.267836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.532539, 38.243790, 21.017935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.893646, 38.313457, 20.860620>,  <28.110310, 38.355259, 20.766232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.893646, 38.313457, 20.860620>,  <27.532539, 38.243790, 21.017935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.893646, 38.313457, 20.860620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426598, 0.479483, -0.766884,
		0.055005, 0.860093, 0.507163,
		0.902767, 0.174172, -0.393288,
		28.164476, 38.365707, 20.742634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552731, 38.931164, 20.728788>,  <27.532539, 38.243790, 21.017935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.552731, 38.931164, 20.728788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.849062, 38.751930, 20.528629>,  <28.026861, 38.644390, 20.408535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.849062, 38.751930, 20.528629>,  <27.552731, 38.931164, 20.728788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.849062, 38.751930, 20.528629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261894, 0.493326, -0.829482,
		0.618535, 0.745554, 0.248119,
		0.740828, -0.448083, -0.500396,
		28.071310, 38.617504, 20.378511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.753942, 39.472347, 20.234137>,  <27.552731, 38.931164, 20.728788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.753942, 39.472347, 20.234137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.915579, 39.134781, 20.092989>,  <28.012560, 38.932240, 20.008301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.915579, 39.134781, 20.092989>,  <27.753942, 39.472347, 20.234137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.915579, 39.134781, 20.092989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273550, 0.256625, -0.926992,
		0.872859, 0.471115, -0.127154,
		0.404089, -0.843916, -0.352871,
		28.036806, 38.881607, 19.987127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.306889, 39.638527, 19.655844>,  <27.753942, 39.472347, 20.234137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.306889, 39.638527, 19.655844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.161285, 39.270458, 19.598173>,  <28.073923, 39.049618, 19.563572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.161285, 39.270458, 19.598173>,  <28.306889, 39.638527, 19.655844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161285, 39.270458, 19.598173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345006, 0.276992, -0.896798,
		0.865142, -0.276699, -0.418291,
		-0.364006, -0.920170, -0.144175,
		28.052084, 38.994408, 19.554920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616541, 39.481529, 19.033035>,  <28.306889, 39.638527, 19.655844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616541, 39.481529, 19.033035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.315895, 39.223778, 19.089392>,  <28.135508, 39.069126, 19.123205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.315895, 39.223778, 19.089392>,  <28.616541, 39.481529, 19.033035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.315895, 39.223778, 19.089392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385837, 0.256268, -0.886260,
		0.534981, -0.720488, -0.441240,
		-0.751615, -0.644379, 0.140892,
		28.090410, 39.030464, 19.131659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527910, 39.121288, 18.402605>,  <28.616541, 39.481529, 19.033035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.527910, 39.121288, 18.402605> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.177156, 39.057335, 18.583937>,  <27.966703, 39.018963, 18.692736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.177156, 39.057335, 18.583937>,  <28.527910, 39.121288, 18.402605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.177156, 39.057335, 18.583937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468028, 0.068869, -0.881026,
		0.109638, -0.984731, -0.135219,
		-0.876887, -0.159880, 0.453331,
		27.914091, 39.009369, 18.719936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142664, 38.735161, 17.936007>,  <28.527910, 39.121288, 18.402605>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142664, 38.735161, 17.936007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.859856, 38.897312, 18.167797>,  <27.690170, 38.994602, 18.306871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.859856, 38.897312, 18.167797>,  <28.142664, 38.735161, 17.936007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859856, 38.897312, 18.167797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515781, 0.265015, -0.814701,
		-0.483831, -0.874892, 0.021715,
		-0.707020, 0.405378, 0.579475,
		27.647749, 39.018925, 18.341640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.977129, 38.224907, 17.398054>,  <28.142664, 38.735161, 17.936007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.977129, 38.224907, 17.398054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.330963, 38.385689, 17.492662>,  <28.543262, 38.482159, 17.549427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.330963, 38.385689, 17.492662>,  <27.977129, 38.224907, 17.398054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.330963, 38.385689, 17.492662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176238, -0.757630, 0.628440,
		0.431802, -0.514224, -0.741027,
		0.884583, 0.401959, 0.236521,
		28.596338, 38.506275, 17.563618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.408394, 37.668488, 17.304003>,  <27.977129, 38.224907, 17.398054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.408394, 37.668488, 17.304003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.605177, 37.914898, 17.550089>,  <28.723246, 38.062744, 17.697741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.605177, 37.914898, 17.550089>,  <28.408394, 37.668488, 17.304003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605177, 37.914898, 17.550089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127107, -0.749892, 0.649235,
		0.861292, -0.241197, -0.447215,
		0.491956, 0.616025, 0.615218,
		28.752764, 38.099705, 17.734653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.478319, 37.185936, 16.835205>,  <28.408394, 37.668488, 17.304003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.478319, 37.185936, 16.835205> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.809486, 37.102310, 16.627037>,  <29.008186, 37.052135, 16.502136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.809486, 37.102310, 16.627037>,  <28.478319, 37.185936, 16.835205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809486, 37.102310, 16.627037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547030, 0.096330, 0.831552,
		-0.123717, -0.973145, 0.194120,
		0.827920, -0.209067, -0.520422,
		29.057863, 37.039589, 16.470911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840765, 36.713116, 17.244654>,  <28.478319, 37.185936, 16.835205>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840765, 36.713116, 17.244654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.109436, 36.877449, 16.998056>,  <29.270639, 36.976048, 16.850098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.109436, 36.877449, 16.998056>,  <28.840765, 36.713116, 17.244654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109436, 36.877449, 16.998056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640934, 0.095104, 0.761682,
		0.371553, -0.906738, -0.199436,
		0.671679, 0.410830, -0.616495,
		29.310940, 37.000698, 16.813108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.460438, 36.359539, 17.360025>,  <28.840765, 36.713116, 17.244654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.460438, 36.359539, 17.360025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.573067, 36.705811, 17.194464>,  <29.640644, 36.913574, 17.095127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.573067, 36.705811, 17.194464>,  <29.460438, 36.359539, 17.360025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573067, 36.705811, 17.194464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824179, 0.002702, 0.566323,
		0.491373, -0.500590, -0.712715,
		0.281570, 0.865680, -0.413903,
		29.657537, 36.965515, 17.070293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.149485, 36.298939, 17.304014>,  <29.460438, 36.359539, 17.360025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.149485, 36.298939, 17.304014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.102526, 36.694317, 17.265650>,  <30.074350, 36.931541, 17.242632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.102526, 36.694317, 17.265650>,  <30.149485, 36.298939, 17.304014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102526, 36.694317, 17.265650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901291, 0.146602, 0.407655,
		0.417004, -0.038585, -0.908085,
		-0.117398, 0.988443, -0.095910,
		30.067307, 36.990849, 17.236877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806242, 36.540329, 17.193130>,  <30.149485, 36.298939, 17.304014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806242, 36.540329, 17.193130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.595882, 36.861187, 17.306259>,  <30.469667, 37.053703, 17.374136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.595882, 36.861187, 17.306259>,  <30.806242, 36.540329, 17.193130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595882, 36.861187, 17.306259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779508, 0.321515, 0.537583,
		0.340290, 0.503177, -0.794365,
		-0.525899, 0.802148, 0.282822,
		30.438112, 37.101830, 17.391106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153650, 37.121166, 17.014702>,  <30.806242, 36.540329, 17.193130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153650, 37.121166, 17.014702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.929401, 37.213161, 17.332899>,  <30.794851, 37.268356, 17.523817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.929401, 37.213161, 17.332899>,  <31.153650, 37.121166, 17.014702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.929401, 37.213161, 17.332899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823374, 0.257002, 0.505969,
		-0.088078, 0.938646, -0.333445,
		-0.560622, 0.229985, 0.795494,
		30.761215, 37.282158, 17.571547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492117, 37.751507, 17.285248>,  <31.153650, 37.121166, 17.014702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492117, 37.751507, 17.285248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.238867, 37.610237, 17.560760>,  <31.086916, 37.525475, 17.726068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.238867, 37.610237, 17.560760>,  <31.492117, 37.751507, 17.285248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238867, 37.610237, 17.560760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715688, 0.071871, 0.694712,
		-0.294856, 0.932793, 0.207258,
		-0.633127, -0.353172, 0.688781,
		31.048929, 37.504284, 17.767395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591513, 38.271656, 17.777294>,  <31.492117, 37.751507, 17.285248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591513, 38.271656, 17.777294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.415270, 37.965519, 17.964960>,  <31.309525, 37.781837, 18.077559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.415270, 37.965519, 17.964960>,  <31.591513, 38.271656, 17.777294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415270, 37.965519, 17.964960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614013, 0.124321, 0.779443,
		-0.654870, 0.631499, 0.415156,
		-0.440606, -0.765345, 0.469163,
		31.283089, 37.735916, 18.105709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573624, 38.378155, 18.544401>,  <31.591513, 38.271656, 17.777294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573624, 38.378155, 18.544401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.550081, 37.983311, 18.484879>,  <31.535955, 37.746403, 18.449165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.550081, 37.983311, 18.484879>,  <31.573624, 38.378155, 18.544401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550081, 37.983311, 18.484879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528910, -0.157257, 0.833981,
		-0.846634, -0.029619, 0.531350,
		-0.058857, -0.987113, -0.148805,
		31.532425, 37.687176, 18.440237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364492, 38.148010, 19.170853>,  <31.573624, 38.378155, 18.544401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364492, 38.148010, 19.170853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.514282, 37.831051, 18.978237>,  <31.604156, 37.640877, 18.862667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.514282, 37.831051, 18.978237>,  <31.364492, 38.148010, 19.170853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514282, 37.831051, 18.978237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495985, -0.267607, 0.826066,
		-0.783434, -0.548177, 0.292804,
		0.374474, -0.792394, -0.481540,
		31.626625, 37.593334, 18.833775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169683, 37.626568, 19.598059>,  <31.364492, 38.148010, 19.170853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169683, 37.626568, 19.598059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.487272, 37.515926, 19.381506>,  <31.677826, 37.449539, 19.251574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.487272, 37.515926, 19.381506>,  <31.169683, 37.626568, 19.598059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487272, 37.515926, 19.381506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423180, -0.387902, 0.818811,
		-0.436495, -0.879215, -0.190927,
		0.793972, -0.276610, -0.541383,
		31.725464, 37.432945, 19.219091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324966, 37.025887, 19.851400>,  <31.169683, 37.626568, 19.598059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324966, 37.025887, 19.851400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.664024, 37.091785, 19.649668>,  <31.867460, 37.131325, 19.528627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.664024, 37.091785, 19.649668>,  <31.324966, 37.025887, 19.851400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664024, 37.091785, 19.649668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524739, -0.400764, 0.751025,
		-0.078387, -0.901247, -0.426157,
		0.847647, 0.164750, -0.504334,
		31.918318, 37.141212, 19.498367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.801525, 36.562412, 20.071180>,  <31.324966, 37.025887, 19.851400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.801525, 36.562412, 20.071180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.056267, 36.820694, 19.902668>,  <32.209110, 36.975662, 19.801561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.056267, 36.820694, 19.902668>,  <31.801525, 36.562412, 20.071180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056267, 36.820694, 19.902668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706146, -0.269185, 0.654903,
		0.309473, -0.714564, -0.627396,
		0.636855, 0.645708, -0.421280,
		32.247322, 37.014408, 19.776283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514561, 36.254963, 20.049980>,  <31.801525, 36.562412, 20.071180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514561, 36.254963, 20.049980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.557602, 36.652405, 20.036278>,  <32.583427, 36.890869, 20.028057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.557602, 36.652405, 20.036278>,  <32.514561, 36.254963, 20.049980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557602, 36.652405, 20.036278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446050, -0.017456, 0.894838,
		0.888516, -0.111570, -0.445075,
		0.107606, 0.993603, -0.034256,
		32.589886, 36.950485, 20.026001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758190, 35.542648, 20.293581>,  <32.514561, 36.254963, 20.049980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758190, 35.542648, 20.293581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.542553, 35.279549, 20.504005>,  <32.413170, 35.121689, 20.630260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.542553, 35.279549, 20.504005>,  <32.758190, 35.542648, 20.293581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542553, 35.279549, 20.504005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430357, -0.321787, -0.843354,
		0.723999, -0.681039, -0.109596,
		-0.539091, -0.657753, 0.526063,
		32.380825, 35.082222, 20.661825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771053, 34.975170, 19.886868>,  <32.758190, 35.542648, 20.293581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771053, 34.975170, 19.886868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.447243, 34.943588, 20.119568>,  <32.252956, 34.924637, 20.259188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.447243, 34.943588, 20.119568>,  <32.771053, 34.975170, 19.886868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447243, 34.943588, 20.119568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566985, -0.151906, -0.809600,
		0.152296, -0.985236, 0.078204,
		-0.809527, -0.078958, 0.581749,
		32.204384, 34.919903, 20.294092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320320, 34.330730, 19.724766>,  <32.771053, 34.975170, 19.886868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320320, 34.330730, 19.724766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.061954, 34.591606, 19.883480>,  <31.906935, 34.748131, 19.978708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.061954, 34.591606, 19.883480>,  <32.320320, 34.330730, 19.724766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061954, 34.591606, 19.883480> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697483, -0.292868, -0.654023,
		-0.310340, -0.699197, 0.644060,
		-0.645915, 0.652190, 0.396789,
		31.868179, 34.787266, 20.002516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702682, 34.009750, 19.452099>,  <32.320320, 34.330730, 19.724766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702682, 34.009750, 19.452099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.587193, 34.336460, 19.651909>,  <31.517899, 34.532486, 19.771795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.587193, 34.336460, 19.651909>,  <31.702682, 34.009750, 19.452099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587193, 34.336460, 19.651909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916789, -0.085496, -0.390113,
		-0.275926, -0.570594, 0.773490,
		-0.288727, 0.816770, 0.499524,
		31.500574, 34.581490, 19.801765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.163675, 33.879440, 19.879080>,  <31.702682, 34.009750, 19.452099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.163675, 33.879440, 19.879080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.162947, 34.246441, 19.719988>,  <31.162510, 34.466640, 19.624533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.162947, 34.246441, 19.719988>,  <31.163675, 33.879440, 19.879080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162947, 34.246441, 19.719988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924925, -0.152741, -0.348115,
		-0.380145, 0.367239, 0.848897,
		-0.001820, 0.917500, -0.397732,
		31.162401, 34.521690, 19.600668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.471689, 33.976044, 19.857841>,  <31.163675, 33.879440, 19.879080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.471689, 33.976044, 19.857841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.601139, 34.290707, 19.647533>,  <30.678808, 34.479504, 19.521349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.601139, 34.290707, 19.647533>,  <30.471689, 33.976044, 19.857841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601139, 34.290707, 19.647533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742535, -0.133250, -0.656419,
		-0.586438, 0.602834, 0.541001,
		0.323623, 0.786661, -0.525768,
		30.698227, 34.526707, 19.489803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.888851, 34.346756, 19.749392>,  <30.471689, 33.976044, 19.857841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.888851, 34.346756, 19.749392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.153046, 34.461452, 19.471821>,  <30.311562, 34.530270, 19.305279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.153046, 34.461452, 19.471821>,  <29.888851, 34.346756, 19.749392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153046, 34.461452, 19.471821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695392, -0.114945, -0.709378,
		-0.283174, 0.951086, 0.123481,
		0.660486, 0.286745, -0.693927,
		30.351192, 34.547478, 19.263643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.302828, 34.630299, 20.125626>,  <29.888851, 34.346756, 19.749392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.302828, 34.630299, 20.125626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.997984, 34.398087, 20.240290>,  <28.815077, 34.258759, 20.309088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.997984, 34.398087, 20.240290>,  <29.302828, 34.630299, 20.125626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.997984, 34.398087, 20.240290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571856, -0.395955, 0.718471,
		-0.303588, 0.711483, 0.633740,
		-0.762112, -0.580527, 0.286659,
		28.769350, 34.223927, 20.326288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.337032, 34.702526, 20.914190>,  <29.302828, 34.630299, 20.125626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.337032, 34.702526, 20.914190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.128265, 34.376286, 20.814274>,  <29.003006, 34.180542, 20.754324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.128265, 34.376286, 20.814274>,  <29.337032, 34.702526, 20.914190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128265, 34.376286, 20.814274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470892, -0.519664, 0.712888,
		-0.711241, 0.254443, 0.655282,
		-0.521916, -0.815603, -0.249791,
		28.971691, 34.131603, 20.739336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137878, 34.429729, 21.489450>,  <29.337032, 34.702526, 20.914190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.137878, 34.429729, 21.489450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.087929, 34.110264, 21.253979>,  <29.057959, 33.918583, 21.112696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.087929, 34.110264, 21.253979>,  <29.137878, 34.429729, 21.489450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.087929, 34.110264, 21.253979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394525, -0.584370, 0.709127,
		-0.910360, -0.143696, 0.388066,
		-0.124876, -0.798663, -0.588679,
		29.050467, 33.870667, 21.077375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764854, 33.860817, 21.910654>,  <29.137878, 34.429729, 21.489450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.764854, 33.860817, 21.910654> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.938053, 33.657387, 21.612965>,  <29.041971, 33.535328, 21.434351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.938053, 33.657387, 21.612965>,  <28.764854, 33.860817, 21.910654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938053, 33.657387, 21.612965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404825, -0.627966, 0.664662,
		-0.805377, -0.589075, -0.066022,
		0.432995, -0.508576, -0.744222,
		29.067951, 33.504814, 21.389698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.655602, 33.130497, 22.046650>,  <28.764854, 33.860817, 21.910654>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.655602, 33.130497, 22.046650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.992712, 33.136032, 21.831415>,  <29.194979, 33.139351, 21.702274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.992712, 33.136032, 21.831415>,  <28.655602, 33.130497, 22.046650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.992712, 33.136032, 21.831415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396873, -0.691294, 0.603824,
		-0.363624, -0.722440, -0.588096,
		0.842775, 0.013834, -0.538089,
		29.245544, 33.140182, 21.669989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.874132, 32.343338, 21.813889>,  <28.655602, 33.130497, 22.046650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.874132, 32.343338, 21.813889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.178074, 32.602661, 21.794600>,  <29.360439, 32.758255, 21.783026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.178074, 32.602661, 21.794600>,  <28.874132, 32.343338, 21.813889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.178074, 32.602661, 21.794600> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595644, -0.664571, 0.451169,
		0.260447, -0.371545, -0.891135,
		0.759852, 0.648305, -0.048223,
		29.406029, 32.797153, 21.780132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520985, 31.951809, 21.846827>,  <28.874132, 32.343338, 21.813889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520985, 31.951809, 21.846827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.719744, 32.297470, 21.878654>,  <29.838999, 32.504868, 21.897751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.719744, 32.297470, 21.878654>,  <29.520985, 31.951809, 21.846827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719744, 32.297470, 21.878654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554137, -0.386520, 0.737249,
		0.667853, -0.322242, -0.670920,
		0.496896, 0.864154, 0.079572,
		29.868813, 32.556717, 21.902527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<24.608618, 38.562351, 20.125408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.982222, 38.671360, 20.033010>,  <25.206385, 38.736763, 19.977571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.982222, 38.671360, 20.033010>,  <24.608618, 38.562351, 20.125408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.982222, 38.671360, 20.033010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311010, -0.302132, 0.901104,
		0.175777, -0.913482, -0.366951,
		0.934011, 0.272518, -0.230994,
		25.262424, 38.753117, 19.963713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.026409, 38.067360, 20.245304>,  <24.608618, 38.562351, 20.125408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.026409, 38.067360, 20.245304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.268990, 38.384491, 20.269419>,  <25.414537, 38.574772, 20.283888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.268990, 38.384491, 20.269419>,  <25.026409, 38.067360, 20.245304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.268990, 38.384491, 20.269419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268315, -0.275430, 0.923117,
		0.748481, -0.543650, -0.379763,
		0.606451, 0.792832, 0.060285,
		25.450926, 38.622341, 20.287504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.647247, 37.790123, 20.536171>,  <25.026409, 38.067360, 20.245304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.647247, 37.790123, 20.536171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.664848, 38.186661, 20.585653>,  <25.675409, 38.424583, 20.615343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.664848, 38.186661, 20.585653>,  <25.647247, 37.790123, 20.536171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.664848, 38.186661, 20.585653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257516, -0.130899, 0.957366,
		0.965271, -0.010271, -0.261047,
		0.044003, 0.991342, 0.123708,
		25.678049, 38.484062, 20.622766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.296944, 37.923298, 20.862116>,  <25.647247, 37.790123, 20.536171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.296944, 37.923298, 20.862116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.080345, 38.252941, 20.928602>,  <25.950386, 38.450726, 20.968494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.080345, 38.252941, 20.928602>,  <26.296944, 37.923298, 20.862116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.080345, 38.252941, 20.928602> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239369, -0.038396, 0.970169,
		0.805907, 0.565129, -0.176474,
		-0.541495, 0.824108, 0.166218,
		25.917896, 38.500175, 20.978468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.739578, 38.429039, 21.242279>,  <26.296944, 37.923298, 20.862116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.739578, 38.429039, 21.242279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.370939, 38.560978, 21.324116>,  <26.149755, 38.640141, 21.373219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.370939, 38.560978, 21.324116>,  <26.739578, 38.429039, 21.242279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.370939, 38.560978, 21.324116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262061, 0.139935, 0.954852,
		0.286330, 0.933604, -0.215404,
		-0.921596, 0.329852, 0.204593,
		26.094460, 38.659935, 21.385494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.744287, 39.004944, 21.597818>,  <26.739578, 38.429039, 21.242279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.744287, 39.004944, 21.597818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.377598, 38.885998, 21.704544>,  <26.157583, 38.814629, 21.768579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.377598, 38.885998, 21.704544>,  <26.744287, 39.004944, 21.597818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.377598, 38.885998, 21.704544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267685, 0.038598, 0.962733,
		-0.296583, 0.953983, 0.044216,
		-0.916724, -0.297366, 0.266814,
		26.102581, 38.796787, 21.784588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.446745, 39.469128, 22.108681>,  <26.744287, 39.004944, 21.597818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.446745, 39.469128, 22.108681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.217176, 39.154594, 22.200153>,  <26.079435, 38.965874, 22.255037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.217176, 39.154594, 22.200153>,  <26.446745, 39.469128, 22.108681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.217176, 39.154594, 22.200153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326521, 0.036360, 0.944490,
		-0.751000, 0.616730, 0.235888,
		-0.573919, -0.786334, 0.228682,
		26.045000, 38.918694, 22.268759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.107687, 39.564247, 22.837727>,  <26.446745, 39.469128, 22.108681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.107687, 39.564247, 22.837727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.055103, 39.175621, 22.758949>,  <26.023554, 38.942448, 22.711683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.055103, 39.175621, 22.758949>,  <26.107687, 39.564247, 22.837727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.055103, 39.175621, 22.758949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059487, -0.206041, 0.976733,
		-0.989535, 0.116686, 0.084881,
		-0.131460, -0.971561, -0.196943,
		26.015665, 38.884151, 22.699867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.502680, 39.410007, 23.209835>,  <26.107687, 39.564247, 22.837727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.502680, 39.410007, 23.209835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.741072, 39.095394, 23.145115>,  <25.884108, 38.906628, 23.106283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.741072, 39.095394, 23.145115>,  <25.502680, 39.410007, 23.209835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.741072, 39.095394, 23.145115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150226, -0.088725, 0.984662,
		-0.788821, -0.611146, 0.065279,
		0.595981, -0.786529, -0.161798,
		25.919867, 38.859436, 23.096575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.357891, 39.017757, 23.827457>,  <25.502680, 39.410007, 23.209835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.357891, 39.017757, 23.827457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.677940, 38.856449, 23.649841>,  <25.869970, 38.759663, 23.543272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.677940, 38.856449, 23.649841>,  <25.357891, 39.017757, 23.827457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.677940, 38.856449, 23.649841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384519, -0.223326, 0.895696,
		-0.460374, -0.887411, -0.023623,
		0.800126, -0.403271, -0.444040,
		25.917978, 38.735466, 23.516630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.419127, 38.271149, 24.030205>,  <25.357891, 39.017757, 23.827457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.419127, 38.271149, 24.030205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.782463, 38.406315, 23.931629>,  <26.000465, 38.487415, 23.872484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.782463, 38.406315, 23.931629>,  <25.419127, 38.271149, 24.030205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.782463, 38.406315, 23.931629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328391, -0.211362, 0.920590,
		0.258997, -0.917135, -0.302958,
		0.908339, 0.337919, -0.246437,
		26.054964, 38.507690, 23.857698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.865173, 37.822788, 24.314106>,  <25.419127, 38.271149, 24.030205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.865173, 37.822788, 24.314106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.097778, 38.143826, 24.260918>,  <26.237341, 38.336449, 24.229004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.097778, 38.143826, 24.260918>,  <25.865173, 37.822788, 24.314106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.097778, 38.143826, 24.260918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460268, -0.189798, 0.867254,
		0.670817, -0.565523, -0.479780,
		0.581513, 0.802596, -0.132972,
		26.272232, 38.384605, 24.221025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.023996, 37.129238, 24.129217>,  <25.865173, 37.822788, 24.314106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.023996, 37.129238, 24.129217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.276655, 36.827015, 24.059757>,  <26.428249, 36.645679, 24.018082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.276655, 36.827015, 24.059757>,  <26.023996, 37.129238, 24.129217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.276655, 36.827015, 24.059757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377829, -0.104431, -0.919967,
		0.676955, 0.646703, -0.351436,
		0.631646, -0.755559, -0.173648,
		26.466148, 36.600346, 24.007664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.375450, 37.264027, 23.578691>,  <26.023996, 37.129238, 24.129217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.375450, 37.264027, 23.578691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.362246, 36.866249, 23.618673>,  <26.354322, 36.627583, 23.642662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.362246, 36.866249, 23.618673>,  <26.375450, 37.264027, 23.578691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.362246, 36.866249, 23.618673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357128, -0.081671, -0.930478,
		0.933472, -0.066413, -0.352448,
		-0.033011, -0.994444, 0.099956,
		26.352343, 36.567917, 23.648661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777029, 37.039249, 23.066107>,  <26.375450, 37.264027, 23.578691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777029, 37.039249, 23.066107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.506914, 36.761765, 23.166304>,  <26.344845, 36.595272, 23.226421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.506914, 36.761765, 23.166304>,  <26.777029, 37.039249, 23.066107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.506914, 36.761765, 23.166304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315286, -0.035523, -0.948331,
		0.666771, -0.719372, -0.194731,
		-0.675286, -0.693717, 0.250494,
		26.304329, 36.553650, 23.241451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.868364, 36.548420, 22.559835>,  <26.777029, 37.039249, 23.066107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.868364, 36.548420, 22.559835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.509678, 36.454025, 22.709616>,  <26.294466, 36.397388, 22.799484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.509678, 36.454025, 22.709616>,  <26.868364, 36.548420, 22.559835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.509678, 36.454025, 22.709616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300707, -0.295963, -0.906632,
		0.324775, -0.925591, 0.194432,
		-0.896714, -0.235984, 0.374453,
		26.240664, 36.383228, 22.821951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.726782, 35.854889, 22.308260>,  <26.868364, 36.548420, 22.559835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.726782, 35.854889, 22.308260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.379284, 36.017670, 22.421162>,  <26.170784, 36.115337, 22.488903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.379284, 36.017670, 22.421162>,  <26.726782, 35.854889, 22.308260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.379284, 36.017670, 22.421162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422873, -0.312864, -0.850467,
		-0.257789, -0.858201, 0.443888,
		-0.868748, 0.406949, 0.282257,
		26.118660, 36.139755, 22.505838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.161310, 35.395348, 22.106279>,  <26.726782, 35.854889, 22.308260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.161310, 35.395348, 22.106279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.966974, 35.742893, 22.144300>,  <25.850372, 35.951420, 22.167114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.966974, 35.742893, 22.144300>,  <26.161310, 35.395348, 22.106279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.966974, 35.742893, 22.144300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537655, -0.211343, -0.816248,
		-0.689119, -0.447673, 0.569828,
		-0.485841, 0.868863, 0.095054,
		25.821222, 36.003551, 22.172817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.639627, 35.220867, 21.776974>,  <26.161310, 35.395348, 22.106279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.639627, 35.220867, 21.776974> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.610130, 35.618954, 21.802607>,  <25.592432, 35.857807, 21.817986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.610130, 35.618954, 21.802607>,  <25.639627, 35.220867, 21.776974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.610130, 35.618954, 21.802607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551538, 0.012836, -0.834051,
		-0.830884, -0.096847, 0.547953,
		-0.073742, 0.995217, 0.064080,
		25.588007, 35.917519, 21.821831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.963152, 35.428741, 21.635967>,  <25.639627, 35.220867, 21.776974>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.963152, 35.428741, 21.635967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.181679, 35.755978, 21.564110>,  <25.312794, 35.952320, 21.520994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.181679, 35.755978, 21.564110>,  <24.963152, 35.428741, 21.635967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.181679, 35.755978, 21.564110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424552, 0.085584, -0.901350,
		-0.722008, 0.568690, 0.394076,
		0.546315, 0.818087, -0.179646,
		25.345573, 36.001404, 21.510216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.513763, 35.850330, 21.302275>,  <24.963152, 35.428741, 21.635967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.513763, 35.850330, 21.302275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.885408, 35.975803, 21.223940>,  <25.108395, 36.051086, 21.176939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.885408, 35.975803, 21.223940>,  <24.513763, 35.850330, 21.302275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.885408, 35.975803, 21.223940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293544, 0.303531, -0.906477,
		-0.224902, 0.899707, 0.374094,
		0.929113, 0.313681, -0.195838,
		25.164143, 36.069908, 21.165188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.414194, 36.563343, 20.969604>,  <24.513763, 35.850330, 21.302275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.414194, 36.563343, 20.969604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.766706, 36.419689, 20.846729>,  <24.978214, 36.333496, 20.773005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.766706, 36.419689, 20.846729>,  <24.414194, 36.563343, 20.969604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.766706, 36.419689, 20.846729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241940, 0.215517, -0.946054,
		0.405967, 0.908060, 0.103041,
		0.881281, -0.359137, -0.307188,
		25.031092, 36.311947, 20.754572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.707174, 37.088367, 20.539240>,  <24.414194, 36.563343, 20.969604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.707174, 37.088367, 20.539240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.876411, 36.734959, 20.458855>,  <24.977953, 36.522915, 20.410624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.876411, 36.734959, 20.458855>,  <24.707174, 37.088367, 20.539240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.876411, 36.734959, 20.458855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138303, 0.156224, -0.977991,
		0.895470, 0.441574, -0.056096,
		0.423091, -0.883520, -0.200965,
		25.003340, 36.469902, 20.398565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.245516, 37.059330, 20.006172>,  <24.707174, 37.088367, 20.539240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.245516, 37.059330, 20.006172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.161264, 36.670860, 19.961527>,  <25.110714, 36.437778, 19.934740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.161264, 36.670860, 19.961527>,  <25.245516, 37.059330, 20.006172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.161264, 36.670860, 19.961527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194334, 0.070297, -0.978413,
		0.958055, -0.227773, 0.173926,
		-0.210630, -0.971174, -0.111612,
		25.098076, 36.379509, 19.928043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.608131, 36.877064, 19.418068>,  <25.245516, 37.059330, 20.006172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.608131, 36.877064, 19.418068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.383888, 36.548019, 19.456068>,  <25.249344, 36.350594, 19.478868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.383888, 36.548019, 19.456068>,  <25.608131, 36.877064, 19.418068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.383888, 36.548019, 19.456068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125265, -0.197647, -0.972237,
		0.818554, -0.533141, 0.213847,
		-0.560605, -0.822615, 0.095001,
		25.215706, 36.301235, 19.484568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.995762, 36.268787, 19.139153>,  <25.608131, 36.877064, 19.418068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.995762, 36.268787, 19.139153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.606924, 36.175243, 19.131706>,  <25.373621, 36.119118, 19.127239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.606924, 36.175243, 19.131706>,  <25.995762, 36.268787, 19.139153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.606924, 36.175243, 19.131706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106881, -0.370847, -0.922523,
		0.208835, -0.898768, 0.385493,
		-0.972093, -0.233857, -0.018616,
		25.315296, 36.105087, 19.126122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.424463, 35.665821, 18.999458>,  <25.995762, 36.268787, 19.139153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.424463, 35.665821, 18.999458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.546246, 35.383072, 18.744072>,  <26.619314, 35.213421, 18.590839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.546246, 35.383072, 18.744072>,  <26.424463, 35.665821, 18.999458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.546246, 35.383072, 18.744072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379995, -0.524505, 0.761904,
		-0.873447, -0.474580, 0.108919,
		0.304456, -0.706872, -0.638466,
		26.637583, 35.171009, 18.552532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.399029, 35.039173, 19.387375>,  <26.424463, 35.665821, 18.999458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.399029, 35.039173, 19.387375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.641922, 34.964287, 19.078514>,  <26.787659, 34.919357, 18.893198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.641922, 34.964287, 19.078514>,  <26.399029, 35.039173, 19.387375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.641922, 34.964287, 19.078514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599602, -0.529654, 0.599954,
		-0.521293, -0.827296, -0.209370,
		0.607233, -0.187213, -0.772153,
		26.824093, 34.908123, 18.846869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.579220, 34.282230, 19.294962>,  <26.399029, 35.039173, 19.387375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.579220, 34.282230, 19.294962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.870483, 34.525654, 19.168825>,  <27.045242, 34.671707, 19.093143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.870483, 34.525654, 19.168825>,  <26.579220, 34.282230, 19.294962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.870483, 34.525654, 19.168825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661675, -0.504111, 0.555030,
		0.178801, -0.612804, -0.769741,
		0.728160, 0.608558, -0.315342,
		27.088932, 34.708221, 19.074223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.239075, 33.827114, 19.128309>,  <26.579220, 34.282230, 19.294962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.239075, 33.827114, 19.128309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.355604, 34.207001, 19.174217>,  <27.425522, 34.434933, 19.201761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.355604, 34.207001, 19.174217>,  <27.239075, 33.827114, 19.128309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.355604, 34.207001, 19.174217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776152, -0.304788, 0.551989,
		0.559213, -0.071730, -0.825916,
		0.291324, 0.949715, 0.114768,
		27.443001, 34.491917, 19.208647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.905079, 33.803993, 18.927122>,  <27.239075, 33.827114, 19.128309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.905079, 33.803993, 18.927122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.850111, 34.110882, 19.177719>,  <27.817131, 34.295013, 19.328077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.850111, 34.110882, 19.177719>,  <27.905079, 33.803993, 18.927122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.850111, 34.110882, 19.177719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656200, -0.403269, 0.637789,
		0.741969, 0.498747, -0.448033,
		-0.137417, 0.767219, 0.626491,
		27.808886, 34.341049, 19.365667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.533653, 33.897663, 19.098036>,  <27.905079, 33.803993, 18.927122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.533653, 33.897663, 19.098036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.326719, 34.067451, 19.395273>,  <28.202559, 34.169327, 19.573616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.326719, 34.067451, 19.395273>,  <28.533653, 33.897663, 19.098036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.326719, 34.067451, 19.395273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624513, -0.406418, 0.666939,
		0.585105, 0.809101, -0.054835,
		-0.517336, 0.424475, 0.743091,
		28.171518, 34.194794, 19.618200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082983, 34.184921, 19.517008>,  <28.533653, 33.897663, 19.098036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082983, 34.184921, 19.517008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.760183, 34.167049, 19.752552>,  <28.566504, 34.156326, 19.893879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.760183, 34.167049, 19.752552>,  <29.082983, 34.184921, 19.517008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.760183, 34.167049, 19.752552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565071, -0.348158, 0.747985,
		0.171598, 0.936371, 0.306209,
		-0.807000, -0.044677, 0.588859,
		28.518084, 34.153645, 19.929211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511177, 34.769432, 19.266151>,  <29.082983, 34.184921, 19.517008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511177, 34.769432, 19.266151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.830809, 34.672024, 19.046270>,  <30.022587, 34.613579, 18.914343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.830809, 34.672024, 19.046270>,  <29.511177, 34.769432, 19.266151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830809, 34.672024, 19.046270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592501, -0.163749, -0.788752,
		0.102068, 0.955972, -0.275137,
		0.799078, -0.243525, -0.549700,
		30.070532, 34.598965, 18.881361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.719536, 35.257809, 18.726730>,  <29.511177, 34.769432, 19.266151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.719536, 35.257809, 18.726730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.853054, 34.898491, 18.612432>,  <29.933165, 34.682899, 18.543854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.853054, 34.898491, 18.612432>,  <29.719536, 35.257809, 18.726730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853054, 34.898491, 18.612432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482395, 0.097649, -0.870494,
		0.809862, 0.428406, -0.400738,
		0.333794, -0.898294, -0.285743,
		29.953192, 34.629002, 18.526711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.838741, 35.307308, 18.096054>,  <29.719536, 35.257809, 18.726730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.838741, 35.307308, 18.096054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.860580, 34.908577, 18.119188>,  <29.873684, 34.669338, 18.133070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.860580, 34.908577, 18.119188>,  <29.838741, 35.307308, 18.096054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860580, 34.908577, 18.119188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452917, -0.076345, -0.888278,
		0.889880, 0.022302, -0.455650,
		0.054597, -0.996832, 0.057836,
		29.876959, 34.609528, 18.136539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094908, 35.024261, 17.462549>,  <29.838741, 35.307308, 18.096054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094908, 35.024261, 17.462549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.900227, 34.713619, 17.622551>,  <29.783417, 34.527233, 17.718552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.900227, 34.713619, 17.622551>,  <30.094908, 35.024261, 17.462549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.900227, 34.713619, 17.622551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516602, -0.113373, -0.848687,
		0.704444, -0.619702, -0.346017,
		-0.486704, -0.776605, 0.400004,
		29.754215, 34.480637, 17.742552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.120770, 34.574631, 16.985477>,  <30.094908, 35.024261, 17.462549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.120770, 34.574631, 16.985477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.834803, 34.452831, 17.237246>,  <29.663221, 34.379749, 17.388306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.834803, 34.452831, 17.237246>,  <30.120770, 34.574631, 16.985477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834803, 34.452831, 17.237246> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662209, 0.005924, -0.749296,
		0.224433, -0.952493, -0.205880,
		-0.714918, -0.304503, 0.629420,
		29.620327, 34.361481, 17.426071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.836897, 33.921051, 16.641985>,  <30.120770, 34.574631, 16.985477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.836897, 33.921051, 16.641985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.542576, 34.040821, 16.884949>,  <29.365984, 34.112682, 17.030727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.542576, 34.040821, 16.884949>,  <29.836897, 33.921051, 16.641985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.542576, 34.040821, 16.884949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634342, 0.009265, -0.772997,
		-0.237081, -0.954075, 0.183120,
		-0.735800, 0.299423, 0.607407,
		29.321835, 34.130646, 17.067171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229551, 33.663010, 16.302694>,  <29.836897, 33.921051, 16.641985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.229551, 33.663010, 16.302694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.044579, 33.901634, 16.565073>,  <28.933594, 34.044811, 16.722500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.044579, 33.901634, 16.565073>,  <29.229551, 33.663010, 16.302694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044579, 33.901634, 16.565073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746365, 0.137456, -0.651188,
		-0.478639, -0.790707, 0.381690,
		-0.462433, 0.596564, 0.655947,
		28.905849, 34.080605, 16.761858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.644615, 33.476654, 16.267456>,  <29.229551, 33.663010, 16.302694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.644615, 33.476654, 16.267456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.625845, 33.847046, 16.417316>,  <28.614584, 34.069279, 16.507233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.625845, 33.847046, 16.417316>,  <28.644615, 33.476654, 16.267456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625845, 33.847046, 16.417316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825120, 0.175465, -0.537018,
		-0.563005, -0.334331, 0.755809,
		-0.046924, 0.925978, 0.374651,
		28.611767, 34.124840, 16.529713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.985590, 33.551346, 16.452034>,  <28.644615, 33.476654, 16.267456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.985590, 33.551346, 16.452034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.129744, 33.917759, 16.381605>,  <28.216236, 34.137608, 16.339348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.129744, 33.917759, 16.381605>,  <27.985590, 33.551346, 16.452034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.129744, 33.917759, 16.381605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746813, 0.170239, -0.642876,
		-0.558924, 0.363174, 0.745459,
		0.360382, 0.916037, -0.176072,
		28.237858, 34.192570, 16.328783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.615356, 35.287254, 29.677452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.783108, 35.647785, 29.634119>,  <36.883759, 35.864105, 29.608120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.783108, 35.647785, 29.634119>,  <36.615356, 35.287254, 29.677452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783108, 35.647785, 29.634119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408577, 0.080835, -0.909137,
		-0.810672, 0.425532, 0.402161,
		0.419376, 0.901326, -0.108332,
		36.908920, 35.918182, 29.601620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009148, 35.718761, 29.477861>,  <36.615356, 35.287254, 29.677452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009148, 35.718761, 29.477861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.323315, 35.942505, 29.371849>,  <36.511814, 36.076752, 29.308241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.323315, 35.942505, 29.371849>,  <36.009148, 35.718761, 29.477861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323315, 35.942505, 29.371849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287606, -0.049354, -0.956476,
		-0.548093, 0.827456, 0.122111,
		0.785415, 0.559358, -0.265032,
		36.558941, 36.110313, 29.292339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780228, 36.244545, 29.067413>,  <36.009148, 35.718761, 29.477861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780228, 36.244545, 29.067413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.164272, 36.173199, 28.981285>,  <36.394699, 36.130390, 28.929607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.164272, 36.173199, 28.981285>,  <35.780228, 36.244545, 29.067413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164272, 36.173199, 28.981285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254689, -0.240139, -0.936732,
		0.115375, 0.954211, -0.275989,
		0.960116, -0.178366, -0.215321,
		36.452309, 36.119690, 28.916689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872681, 36.656586, 28.388178>,  <35.780228, 36.244545, 29.067413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872681, 36.656586, 28.388178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.166656, 36.389896, 28.437740>,  <36.343040, 36.229885, 28.467478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.166656, 36.389896, 28.437740>,  <35.872681, 36.656586, 28.388178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166656, 36.389896, 28.437740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068543, -0.254815, -0.964558,
		0.674665, 0.700394, -0.232972,
		0.734935, -0.666722, 0.123907,
		36.387138, 36.189880, 28.474913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.211819, 36.711636, 27.806698>,  <35.872681, 36.656586, 28.388178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.211819, 36.711636, 27.806698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.338097, 36.353306, 27.931810>,  <36.413864, 36.138309, 28.006878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.338097, 36.353306, 27.931810>,  <36.211819, 36.711636, 27.806698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338097, 36.353306, 27.931810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044714, -0.315230, -0.947961,
		0.947806, 0.313253, -0.059461,
		0.315696, -0.895825, 0.312783,
		36.432804, 36.084557, 28.025646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692394, 36.502953, 27.305662>,  <36.211819, 36.711636, 27.806698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692394, 36.502953, 27.305662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.593243, 36.155704, 27.477674>,  <36.533752, 35.947357, 27.580883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.593243, 36.155704, 27.477674>,  <36.692394, 36.502953, 27.305662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593243, 36.155704, 27.477674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154907, -0.402658, -0.902147,
		0.956326, -0.290239, -0.034667,
		-0.247879, -0.868117, 0.430033,
		36.518879, 35.895267, 27.606684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061298, 35.959976, 26.911560>,  <36.692394, 36.502953, 27.305662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061298, 35.959976, 26.911560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.757008, 35.773575, 27.092285>,  <36.574432, 35.661736, 27.200720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.757008, 35.773575, 27.092285>,  <37.061298, 35.959976, 26.911560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757008, 35.773575, 27.092285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229550, -0.457952, -0.858829,
		0.607123, -0.757050, 0.241408,
		-0.760729, -0.465999, 0.451814,
		36.528790, 35.633774, 27.227829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066479, 35.154232, 26.711533>,  <37.061298, 35.959976, 26.911560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066479, 35.154232, 26.711533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.692371, 35.221336, 26.836199>,  <36.467907, 35.261597, 26.910997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.692371, 35.221336, 26.836199>,  <37.066479, 35.154232, 26.711533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692371, 35.221336, 26.836199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353452, -0.396212, -0.847400,
		-0.018674, -0.902703, 0.429859,
		-0.935266, 0.167759, 0.311664,
		36.411793, 35.271664, 26.929699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656441, 34.548428, 26.680124>,  <37.066479, 35.154232, 26.711533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656441, 34.548428, 26.680124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.380993, 34.837730, 26.700914>,  <36.215725, 35.011311, 26.713388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.380993, 34.837730, 26.700914>,  <36.656441, 34.548428, 26.680124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380993, 34.837730, 26.700914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445863, -0.365804, -0.816941,
		-0.571844, -0.585738, 0.574374,
		-0.688622, 0.723256, 0.051976,
		36.174408, 35.054707, 26.716507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902119, 34.282742, 26.839071>,  <36.656441, 34.548428, 26.680124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902119, 34.282742, 26.839071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.917381, 34.628342, 26.638254>,  <35.926537, 34.835701, 26.517763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.917381, 34.628342, 26.638254>,  <35.902119, 34.282742, 26.839071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917381, 34.628342, 26.638254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634432, -0.367217, -0.680182,
		-0.772036, 0.344463, 0.534140,
		0.038153, 0.864000, -0.502044,
		35.928825, 34.887543, 26.487640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251755, 34.341366, 26.529339>,  <35.902119, 34.282742, 26.839071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251755, 34.341366, 26.529339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.408745, 34.643906, 26.320000>,  <35.502937, 34.825432, 26.194397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.408745, 34.643906, 26.320000>,  <35.251755, 34.341366, 26.529339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408745, 34.643906, 26.320000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615818, -0.206549, -0.760333,
		-0.683177, 0.620699, 0.384711,
		0.392476, 0.756353, -0.523347,
		35.526489, 34.870811, 26.162996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630569, 34.726982, 26.265509>,  <35.251755, 34.341366, 26.529339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630569, 34.726982, 26.265509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.919868, 34.854752, 26.020599>,  <35.093449, 34.931412, 25.873653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.919868, 34.854752, 26.020599>,  <34.630569, 34.726982, 26.265509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919868, 34.854752, 26.020599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584846, -0.188171, -0.789016,
		-0.367242, 0.928742, 0.050718,
		0.723249, 0.319422, -0.612275,
		35.136845, 34.950577, 25.836916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946796, 34.771671, 26.553946>,  <34.630569, 34.726982, 26.265509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946796, 34.771671, 26.553946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.666069, 34.542999, 26.723949>,  <33.497631, 34.405796, 26.825953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.666069, 34.542999, 26.723949>,  <33.946796, 34.771671, 26.553946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666069, 34.542999, 26.723949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348618, 0.244664, 0.904768,
		-0.621222, 0.783149, 0.027588,
		-0.701819, -0.571679, 0.425010,
		33.455524, 34.371494, 26.851452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551094, 35.206608, 27.047493>,  <33.946796, 34.771671, 26.553946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551094, 35.206608, 27.047493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.507824, 34.826538, 27.164431>,  <33.481861, 34.598495, 27.234594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.507824, 34.826538, 27.164431>,  <33.551094, 35.206608, 27.047493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507824, 34.826538, 27.164431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405616, 0.226295, 0.885588,
		-0.907620, 0.214382, 0.360926,
		-0.108178, -0.950174, 0.292346,
		33.475372, 34.541485, 27.252134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134823, 35.237415, 27.636889>,  <33.551094, 35.206608, 27.047493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134823, 35.237415, 27.636889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.336140, 34.892899, 27.664837>,  <33.456928, 34.686188, 27.681606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.336140, 34.892899, 27.664837>,  <33.134823, 35.237415, 27.636889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.336140, 34.892899, 27.664837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403407, 0.305695, 0.862446,
		-0.764174, -0.405872, 0.501303,
		0.503289, -0.861288, 0.069873,
		33.487125, 34.634514, 27.685799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113876, 35.245831, 28.393578>,  <33.134823, 35.237415, 27.636889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113876, 35.245831, 28.393578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.385120, 34.972931, 28.284248>,  <33.547867, 34.809193, 28.218651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.385120, 34.972931, 28.284248>,  <33.113876, 35.245831, 28.393578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385120, 34.972931, 28.284248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410103, 0.042632, 0.911042,
		-0.609906, -0.729875, 0.308702,
		0.678108, -0.682249, -0.273323,
		33.588554, 34.768257, 28.202251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060955, 34.580750, 28.898621>,  <33.113876, 35.245831, 28.393578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060955, 34.580750, 28.898621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.427177, 34.579140, 28.737755>,  <33.646912, 34.578175, 28.641235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.427177, 34.579140, 28.737755>,  <33.060955, 34.580750, 28.898621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427177, 34.579140, 28.737755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402146, 0.022858, 0.915290,
		0.005493, -0.999730, 0.022554,
		0.915559, -0.004042, -0.402163,
		33.701843, 34.577934, 28.617105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444439, 34.245308, 29.365068>,  <33.060955, 34.580750, 28.898621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444439, 34.245308, 29.365068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.724590, 34.429790, 29.147165>,  <33.892681, 34.540482, 29.016424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.724590, 34.429790, 29.147165>,  <33.444439, 34.245308, 29.365068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724590, 34.429790, 29.147165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579333, 0.078509, 0.811301,
		0.416947, -0.883812, -0.212207,
		0.700378, 0.461208, -0.544756,
		33.934704, 34.568153, 28.983738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056824, 33.943439, 29.630245>,  <33.444439, 34.245308, 29.365068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056824, 33.943439, 29.630245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.192120, 34.265030, 29.434603>,  <34.273296, 34.457985, 29.317217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.192120, 34.265030, 29.434603>,  <34.056824, 33.943439, 29.630245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192120, 34.265030, 29.434603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627481, 0.194662, 0.753906,
		0.701331, -0.561901, -0.438637,
		0.338235, 0.803974, -0.489104,
		34.293591, 34.506222, 29.287872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793724, 33.924232, 29.523581>,  <34.056824, 33.943439, 29.630245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793724, 33.924232, 29.523581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.712551, 34.315430, 29.504213>,  <34.663849, 34.550148, 29.492594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.712551, 34.315430, 29.504213>,  <34.793724, 33.924232, 29.523581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712551, 34.315430, 29.504213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525630, 0.150520, 0.837291,
		0.826154, 0.144464, -0.544609,
		-0.202933, 0.977995, -0.048418,
		34.651672, 34.608829, 29.489689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412746, 34.229008, 29.800934>,  <34.793724, 33.924232, 29.523581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412746, 34.229008, 29.800934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.149117, 34.529442, 29.816374>,  <34.990940, 34.709702, 29.825638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.149117, 34.529442, 29.816374>,  <35.412746, 34.229008, 29.800934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149117, 34.529442, 29.816374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388490, 0.296051, 0.872599,
		0.643971, 0.590103, -0.486909,
		-0.659073, 0.751088, 0.038601,
		34.951393, 34.754768, 29.827953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746861, 34.900780, 30.062529>,  <35.412746, 34.229008, 29.800934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746861, 34.900780, 30.062529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.354702, 34.949192, 30.124720>,  <35.119408, 34.978241, 30.162035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.354702, 34.949192, 30.124720>,  <35.746861, 34.900780, 30.062529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354702, 34.949192, 30.124720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191123, 0.392375, 0.899730,
		0.047889, 0.911808, -0.407815,
		-0.980397, 0.121030, 0.155477,
		35.060581, 34.985500, 30.171362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799900, 35.441822, 30.404863>,  <35.746861, 34.900780, 30.062529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799900, 35.441822, 30.404863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.424191, 35.323551, 30.474529>,  <35.198765, 35.252590, 30.516329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.424191, 35.323551, 30.474529>,  <35.799900, 35.441822, 30.404863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424191, 35.323551, 30.474529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067786, 0.337667, 0.938822,
		-0.336399, 0.893619, -0.297120,
		-0.939277, -0.295678, 0.174166,
		35.142406, 35.234848, 30.526779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426975, 35.996628, 30.797417>,  <35.799900, 35.441822, 30.404863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426975, 35.996628, 30.797417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.249710, 35.645172, 30.868519>,  <35.143353, 35.434299, 30.911180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.249710, 35.645172, 30.868519>,  <35.426975, 35.996628, 30.797417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.249710, 35.645172, 30.868519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022099, 0.187522, 0.982012,
		-0.896169, 0.439119, -0.063686,
		-0.443162, -0.878641, 0.177755,
		35.116760, 35.381580, 30.921844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878399, 36.181141, 31.237877>,  <35.426975, 35.996628, 30.797417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878399, 36.181141, 31.237877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.918453, 35.787018, 31.293209>,  <34.942486, 35.550545, 31.326408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.918453, 35.787018, 31.293209>,  <34.878399, 36.181141, 31.237877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918453, 35.787018, 31.293209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052197, 0.144041, 0.988194,
		-0.993604, -0.091732, 0.065854,
		0.100134, -0.985311, 0.138332,
		34.948494, 35.491425, 31.334709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325367, 35.847813, 31.614437>,  <34.878399, 36.181141, 31.237877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325367, 35.847813, 31.614437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.672462, 35.663273, 31.688391>,  <34.880722, 35.552547, 31.732763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.672462, 35.663273, 31.688391>,  <34.325367, 35.847813, 31.614437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672462, 35.663273, 31.688391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061759, 0.269019, 0.961153,
		-0.493164, -0.845450, 0.204947,
		0.867741, -0.461348, 0.184884,
		34.932785, 35.524868, 31.743856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198658, 35.435452, 32.139133>,  <34.325367, 35.847813, 31.614437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198658, 35.435452, 32.139133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.589161, 35.521984, 32.143681>,  <34.823463, 35.573902, 32.146408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.589161, 35.521984, 32.143681>,  <34.198658, 35.435452, 32.139133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589161, 35.521984, 32.143681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057636, 0.208817, 0.976255,
		0.208817, -0.953729, 0.216327,
		-0.976255, -0.216327, -0.011365,
		34.882038, 35.586884, 32.147091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530178, 35.239014, 31.959467>,  <34.198658, 35.435452, 32.139133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530178, 35.239014, 31.959467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.225132, 35.331257, 32.201206>,  <33.042103, 35.386604, 32.346249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.225132, 35.331257, 32.201206>,  <33.530178, 35.239014, 31.959467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225132, 35.331257, 32.201206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646815, -0.262279, -0.716129,
		-0.006636, -0.937033, 0.349177,
		-0.762618, 0.230605, 0.604346,
		32.996346, 35.400440, 32.382511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030918, 34.695374, 32.017395>,  <33.530178, 35.239014, 31.959467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030918, 34.695374, 32.017395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.872581, 35.061619, 32.045597>,  <32.777580, 35.281364, 32.062519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.872581, 35.061619, 32.045597>,  <33.030918, 34.695374, 32.017395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872581, 35.061619, 32.045597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516016, -0.158262, -0.841832,
		-0.759632, -0.369609, 0.535116,
		-0.395837, 0.915610, 0.070503,
		32.753830, 35.336304, 32.066750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262608, 34.607887, 31.936804>,  <33.030918, 34.695374, 32.017395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262608, 34.607887, 31.936804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.361935, 34.989441, 31.869343>,  <32.421532, 35.218372, 31.828865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.361935, 34.989441, 31.869343>,  <32.262608, 34.607887, 31.936804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361935, 34.989441, 31.869343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553034, -0.003343, -0.833152,
		-0.795295, 0.300155, 0.526700,
		0.248314, 0.953884, -0.168655,
		32.436428, 35.275608, 31.818747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673197, 34.804646, 31.778713>,  <32.262608, 34.607887, 31.936804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673197, 34.804646, 31.778713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.925190, 35.090672, 31.657515>,  <32.076385, 35.262287, 31.584795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.925190, 35.090672, 31.657515>,  <31.673197, 34.804646, 31.778713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925190, 35.090672, 31.657515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508830, 0.085306, -0.856630,
		-0.586695, 0.693837, 0.417587,
		0.629984, 0.715062, -0.302996,
		32.114185, 35.305191, 31.566616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311245, 35.296944, 31.717234>,  <31.673197, 34.804646, 31.778713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311245, 35.296944, 31.717234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.627001, 35.340305, 31.475536>,  <31.816454, 35.366322, 31.330519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.627001, 35.340305, 31.475536>,  <31.311245, 35.296944, 31.717234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627001, 35.340305, 31.475536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613127, 0.090158, -0.784823,
		-0.030598, 0.990011, 0.137633,
		0.789392, 0.108400, -0.604244,
		31.863819, 35.372826, 31.294264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152140, 35.759624, 31.128452>,  <31.311245, 35.296944, 31.717234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152140, 35.759624, 31.128452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.494804, 35.600758, 30.996765>,  <31.700403, 35.505436, 30.917753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.494804, 35.600758, 30.996765>,  <31.152140, 35.759624, 31.128452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.494804, 35.600758, 30.996765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375523, -0.042534, -0.925837,
		0.353710, 0.916760, -0.185583,
		0.856663, -0.397168, -0.329219,
		31.751804, 35.481606, 30.897999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331516, 36.113518, 30.553629>,  <31.152140, 35.759624, 31.128452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331516, 36.113518, 30.553629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.517054, 35.763039, 30.501276>,  <31.628376, 35.552753, 30.469864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.517054, 35.763039, 30.501276>,  <31.331516, 36.113518, 30.553629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517054, 35.763039, 30.501276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271482, 0.000048, -0.962443,
		0.843295, 0.481955, -0.237850,
		0.463843, -0.876196, -0.130883,
		31.656206, 35.500179, 30.462011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712282, 36.135086, 29.835060>,  <31.331516, 36.113518, 30.553629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712282, 36.135086, 29.835060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.666328, 35.751484, 29.938688>,  <31.638756, 35.521324, 30.000866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.666328, 35.751484, 29.938688>,  <31.712282, 36.135086, 29.835060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666328, 35.751484, 29.938688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436666, -0.185498, -0.880292,
		0.892258, -0.214261, -0.397452,
		-0.114885, -0.959001, 0.259072,
		31.631863, 35.463783, 30.016411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838997, 35.766212, 29.205446>,  <31.712282, 36.135086, 29.835060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838997, 35.766212, 29.205446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.638521, 35.501408, 29.428352>,  <31.518236, 35.342525, 29.562096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.638521, 35.501408, 29.428352>,  <31.838997, 35.766212, 29.205446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.638521, 35.501408, 29.428352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667889, -0.113530, -0.735551,
		0.550213, -0.740841, -0.385254,
		-0.501188, -0.662017, 0.557265,
		31.488165, 35.302803, 29.595531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882820, 35.111355, 28.861185>,  <31.838997, 35.766212, 29.205446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882820, 35.111355, 28.861185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.564358, 35.130333, 29.102476>,  <31.373280, 35.141720, 29.247252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.564358, 35.130333, 29.102476>,  <31.882820, 35.111355, 28.861185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564358, 35.130333, 29.102476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595992, -0.233724, -0.768223,
		0.104540, -0.971145, 0.214358,
		-0.796156, 0.047445, 0.603228,
		31.325510, 35.144566, 29.283445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454657, 34.703808, 28.556669>,  <31.882820, 35.111355, 28.861185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454657, 34.703808, 28.556669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.208426, 34.894112, 28.807974>,  <31.060686, 35.008293, 28.958757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.208426, 34.894112, 28.807974>,  <31.454657, 34.703808, 28.556669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208426, 34.894112, 28.807974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664038, 0.116186, -0.738616,
		-0.424399, -0.871868, 0.244402,
		-0.615580, 0.475760, 0.628263,
		31.023752, 35.036839, 28.996452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.872969, 34.242191, 28.639366>,  <31.454657, 34.703808, 28.556669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.872969, 34.242191, 28.639366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.749796, 34.612274, 28.728069>,  <30.675892, 34.834324, 28.781290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.749796, 34.612274, 28.728069>,  <30.872969, 34.242191, 28.639366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.749796, 34.612274, 28.728069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600360, -0.008143, -0.799688,
		-0.738069, -0.379382, 0.557963,
		-0.307931, 0.925204, 0.221756,
		30.657417, 34.889835, 28.794596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222649, 34.147038, 28.526060>,  <30.872969, 34.242191, 28.639366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222649, 34.147038, 28.526060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.287134, 34.541580, 28.512745>,  <30.325825, 34.778305, 28.504757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.287134, 34.541580, 28.512745>,  <30.222649, 34.147038, 28.526060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.287134, 34.541580, 28.512745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510040, 0.054394, -0.858429,
		-0.844907, 0.155368, 0.511852,
		0.161214, 0.986358, -0.033286,
		30.335499, 34.837486, 28.502760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681227, 34.393276, 28.261869>,  <30.222649, 34.147038, 28.526060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681227, 34.393276, 28.261869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.893383, 34.731686, 28.240231>,  <30.020678, 34.934731, 28.227247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.893383, 34.731686, 28.240231>,  <29.681227, 34.393276, 28.261869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.893383, 34.731686, 28.240231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546917, 0.292723, -0.784344,
		-0.647738, 0.445596, 0.617964,
		0.530393, 0.846024, -0.054097,
		30.052502, 34.985493, 28.224001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196005, 35.002514, 28.257673>,  <29.681227, 34.393276, 28.261869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196005, 35.002514, 28.257673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.529757, 35.108212, 28.064184>,  <29.730007, 35.171631, 27.948090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.529757, 35.108212, 28.064184>,  <29.196005, 35.002514, 28.257673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529757, 35.108212, 28.064184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547746, 0.299507, -0.781197,
		-0.061547, 0.916772, 0.394640,
		0.834377, 0.264243, -0.483725,
		29.780069, 35.187485, 27.919067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054579, 35.699486, 27.960854>,  <29.196005, 35.002514, 28.257673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054579, 35.699486, 27.960854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.356806, 35.554302, 27.742723>,  <29.538141, 35.467190, 27.611845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.356806, 35.554302, 27.742723>,  <29.054579, 35.699486, 27.960854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.356806, 35.554302, 27.742723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424282, 0.363107, -0.829541,
		0.499102, 0.858145, 0.120354,
		0.755567, -0.362961, -0.545323,
		29.583475, 35.445415, 27.579126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145144, 36.231789, 27.469463>,  <29.054579, 35.699486, 27.960854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145144, 36.231789, 27.469463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.340406, 35.923088, 27.306438>,  <29.457563, 35.737869, 27.208624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.340406, 35.923088, 27.306438>,  <29.145144, 36.231789, 27.469463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.340406, 35.923088, 27.306438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374308, 0.236721, -0.896580,
		0.788413, 0.590226, -0.173315,
		0.488157, -0.771749, -0.407561,
		29.486855, 35.691563, 27.184170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418713, 36.486362, 26.947598>,  <29.145144, 36.231789, 27.469463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418713, 36.486362, 26.947598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.394098, 36.094315, 26.872143>,  <29.379330, 35.859085, 26.826870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.394098, 36.094315, 26.872143>,  <29.418713, 36.486362, 26.947598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394098, 36.094315, 26.872143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500086, 0.193838, -0.844003,
		0.863786, 0.042398, -0.502071,
		-0.061536, -0.980117, -0.188638,
		29.375637, 35.800278, 26.815552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630188, 36.375706, 26.262367>,  <29.418713, 36.486362, 26.947598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.630188, 36.375706, 26.262367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.416359, 36.049122, 26.349663>,  <29.288061, 35.853172, 26.402040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.416359, 36.049122, 26.349663>,  <29.630188, 36.375706, 26.262367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.416359, 36.049122, 26.349663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470214, 0.072766, -0.879547,
		0.702234, -0.572799, -0.422809,
		-0.534570, -0.816459, 0.218240,
		29.255987, 35.804184, 26.415134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419937, 36.111664, 25.627977>,  <29.630188, 36.375706, 26.262367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419937, 36.111664, 25.627977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.161982, 35.953217, 25.889421>,  <29.007208, 35.858150, 26.046288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.161982, 35.953217, 25.889421>,  <29.419937, 36.111664, 25.627977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.161982, 35.953217, 25.889421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762300, 0.271934, -0.587325,
		0.054908, -0.877009, -0.477326,
		-0.644891, -0.396115, 0.653613,
		28.968513, 35.834381, 26.085505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094219, 35.603565, 25.368805>,  <29.419937, 36.111664, 25.627977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.094219, 35.603565, 25.368805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.825319, 35.723633, 25.639502>,  <28.663979, 35.795673, 25.801920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.825319, 35.723633, 25.639502>,  <29.094219, 35.603565, 25.368805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.825319, 35.723633, 25.639502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633565, 0.239623, -0.735647,
		-0.382981, -0.923298, 0.029090,
		-0.672251, 0.300169, 0.676740,
		28.623644, 35.813683, 25.842524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.538158, 35.446175, 25.021830>,  <29.094219, 35.603565, 25.368805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.538158, 35.446175, 25.021830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.429707, 35.676517, 25.330341>,  <28.364635, 35.814724, 25.515448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.429707, 35.676517, 25.330341>,  <28.538158, 35.446175, 25.021830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.429707, 35.676517, 25.330341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801675, 0.308388, -0.512069,
		-0.532734, -0.757153, 0.378040,
		-0.271132, 0.575861, 0.771279,
		28.348368, 35.849277, 25.561726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841221, 35.171455, 25.106806>,  <28.538158, 35.446175, 25.021830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841221, 35.171455, 25.106806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.840773, 35.518444, 25.305799>,  <27.840504, 35.726639, 25.425196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.840773, 35.518444, 25.305799>,  <27.841221, 35.171455, 25.106806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.840773, 35.518444, 25.305799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812314, 0.289352, -0.506380,
		-0.583219, -0.404682, 0.704335,
		-0.001122, 0.867472, 0.497485,
		27.840437, 35.778687, 25.455046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.251154, 35.295689, 25.441854>,  <27.841221, 35.171455, 25.106806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.251154, 35.295689, 25.441854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.392221, 35.660164, 25.356668>,  <27.476862, 35.878849, 25.305557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.392221, 35.660164, 25.356668>,  <27.251154, 35.295689, 25.441854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.392221, 35.660164, 25.356668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772617, 0.155148, -0.615624,
		-0.527910, 0.381651, 0.758718,
		0.352667, 0.911192, -0.212966,
		27.498022, 35.933521, 25.292778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.615326, 35.625450, 25.310287>,  <27.251154, 35.295689, 25.441854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.615326, 35.625450, 25.310287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.882145, 35.886837, 25.167164>,  <27.042236, 36.043671, 25.081289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.882145, 35.886837, 25.167164>,  <26.615326, 35.625450, 25.310287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.882145, 35.886837, 25.167164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633136, 0.244088, -0.734547,
		-0.392664, 0.716521, 0.576552,
		0.667048, 0.653466, -0.357811,
		27.082260, 36.082878, 25.059820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.252296, 36.362495, 25.205626>,  <26.615326, 35.625450, 25.310287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.252296, 36.362495, 25.205626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.571259, 36.325089, 24.967165>,  <26.762636, 36.302643, 24.824089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.571259, 36.325089, 24.967165>,  <26.252296, 36.362495, 25.205626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.571259, 36.325089, 24.967165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543110, 0.319363, -0.776556,
		0.263014, 0.943006, 0.203869,
		0.797405, -0.093522, -0.596153,
		26.810480, 36.297031, 24.788319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.193590, 36.961624, 24.811407>,  <26.252296, 36.362495, 25.205626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.193590, 36.961624, 24.811407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.428410, 36.712700, 24.604292>,  <26.569302, 36.563347, 24.480022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.428410, 36.712700, 24.604292>,  <26.193590, 36.961624, 24.811407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.428410, 36.712700, 24.604292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575050, 0.129637, -0.807782,
		0.569815, 0.771962, -0.281755,
		0.587051, -0.622310, -0.517786,
		26.604525, 36.526009, 24.448956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.532320, 37.532257, 24.449919>,  <26.193590, 36.961624, 24.811407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.532320, 37.532257, 24.449919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.574417, 37.926910, 24.499689>,  <26.599674, 38.163704, 24.529552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.574417, 37.926910, 24.499689>,  <26.532320, 37.532257, 24.449919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.574417, 37.926910, 24.499689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539360, -0.161751, 0.826394,
		0.835473, -0.019859, -0.549172,
		0.105241, 0.986632, 0.124428,
		26.605989, 38.222900, 24.537018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.361668, 37.728642, 24.566734>,  <26.532320, 37.532257, 24.449919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.361668, 37.728642, 24.566734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.144909, 38.021149, 24.732430>,  <27.014854, 38.196655, 24.831846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.144909, 38.021149, 24.732430>,  <27.361668, 37.728642, 24.566734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.144909, 38.021149, 24.732430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599801, -0.008753, 0.800102,
		0.588717, 0.682031, -0.433873,
		-0.541897, 0.731271, 0.414236,
		26.982340, 38.240528, 24.856701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869255, 38.094395, 24.803856>,  <27.361668, 37.728642, 24.566734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.869255, 38.094395, 24.803856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.541269, 38.226479, 24.990885>,  <27.344479, 38.305729, 25.103102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.541269, 38.226479, 24.990885>,  <27.869255, 38.094395, 24.803856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.541269, 38.226479, 24.990885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534986, 0.151556, 0.831156,
		0.203588, 0.931662, -0.300926,
		-0.819964, 0.330205, 0.467572,
		27.295280, 38.325539, 25.131157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.065248, 38.777863, 24.948072>,  <27.869255, 38.094395, 24.803856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.065248, 38.777863, 24.948072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.778111, 38.650616, 25.195782>,  <27.605827, 38.574268, 25.344408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.778111, 38.650616, 25.195782>,  <28.065248, 38.777863, 24.948072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.778111, 38.650616, 25.195782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525223, 0.336419, 0.781641,
		-0.456989, 0.886354, -0.074414,
		-0.717845, -0.318118, 0.619273,
		27.562757, 38.555180, 25.381563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.894365, 39.401741, 25.376467>,  <28.065248, 38.777863, 24.948072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.894365, 39.401741, 25.376467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.778576, 39.069237, 25.566292>,  <27.709103, 38.869736, 25.680187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.778576, 39.069237, 25.566292>,  <27.894365, 39.401741, 25.376467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.778576, 39.069237, 25.566292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546456, 0.263537, 0.794943,
		-0.785870, 0.489444, 0.377960,
		-0.289473, -0.831260, 0.474565,
		27.691734, 38.819859, 25.708662>
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
