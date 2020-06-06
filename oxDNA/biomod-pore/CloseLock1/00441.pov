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
	<24.639654, 35.292725, 35.105507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.365025, 35.078754, 35.302471>,  <24.200247, 34.950371, 35.420650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.365025, 35.078754, 35.302471>,  <24.639654, 35.292725, 35.105507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.365025, 35.078754, 35.302471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155390, 0.553654, 0.818120,
		-0.710259, 0.638217, -0.297003,
		-0.686576, -0.534926, 0.492410,
		24.159052, 34.918278, 35.450195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.937075, 34.567532, 35.195457>,  <24.639654, 35.292725, 35.105507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.937075, 34.567532, 35.195457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.158760, 34.762962, 34.925900>,  <25.291771, 34.880222, 34.764164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.158760, 34.762962, 34.925900>,  <24.937075, 34.567532, 35.195457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.158760, 34.762962, 34.925900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791802, -0.559132, 0.245806,
		-0.256702, -0.669823, -0.696736,
		0.554215, 0.488578, -0.673897,
		25.325024, 34.909534, 34.723732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.251911, 34.119129, 34.628674>,  <24.937075, 34.567532, 35.195457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.251911, 34.119129, 34.628674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.474789, 34.446400, 34.685421>,  <25.608515, 34.642761, 34.719471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.474789, 34.446400, 34.685421>,  <25.251911, 34.119129, 34.628674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.474789, 34.446400, 34.685421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797126, -0.574879, 0.184676,
		0.232654, 0.010186, -0.972506,
		0.557192, 0.818175, 0.141867,
		25.641947, 34.691853, 34.727982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.876034, 34.047379, 34.213612>,  <25.251911, 34.119129, 34.628674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.876034, 34.047379, 34.213612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929928, 34.278862, 34.535343>,  <25.962265, 34.417751, 34.728382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.929928, 34.278862, 34.535343>,  <25.876034, 34.047379, 34.213612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.929928, 34.278862, 34.535343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674454, -0.648235, 0.353415,
		0.725919, 0.494866, -0.477650,
		0.134736, 0.578704, 0.804331,
		25.970348, 34.452473, 34.776642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.460356, 34.022827, 33.526924>,  <25.876034, 34.047379, 34.213612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.460356, 34.022827, 33.526924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.835466, 34.072166, 33.397087>,  <26.060534, 34.101768, 33.319187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.835466, 34.072166, 33.397087>,  <25.460356, 34.022827, 33.526924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.835466, 34.072166, 33.397087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201432, -0.568171, -0.797877,
		-0.282838, 0.813614, -0.507972,
		0.937778, 0.123348, -0.324588,
		26.116800, 34.109169, 33.299709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.451292, 34.267300, 32.852272>,  <25.460356, 34.022827, 33.526924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.451292, 34.267300, 32.852272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.803326, 34.077930, 32.866833>,  <26.014545, 33.964310, 32.875568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.803326, 34.077930, 32.866833>,  <25.451292, 34.267300, 32.852272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.803326, 34.077930, 32.866833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135758, -0.324358, -0.936142,
		0.454997, 0.818941, -0.349733,
		0.880084, -0.473421, 0.036405,
		26.067350, 33.935905, 32.877754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.968224, 34.490234, 32.253487>,  <25.451292, 34.267300, 32.852272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.968224, 34.490234, 32.253487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024759, 34.111919, 32.370457>,  <26.058681, 33.884930, 32.440639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.024759, 34.111919, 32.370457>,  <25.968224, 34.490234, 32.253487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.024759, 34.111919, 32.370457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128835, -0.310453, -0.941818,
		0.981542, 0.095442, -0.165730,
		0.141341, -0.945785, 0.292426,
		26.067162, 33.828182, 32.458183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.634436, 34.284328, 31.945333>,  <25.968224, 34.490234, 32.253487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.634436, 34.284328, 31.945333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.422022, 33.953362, 32.018421>,  <26.294573, 33.754784, 32.062275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.422022, 33.953362, 32.018421>,  <26.634436, 34.284328, 31.945333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.422022, 33.953362, 32.018421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084729, -0.266404, -0.960130,
		0.843103, -0.494381, 0.211576,
		-0.531034, -0.827416, 0.182718,
		26.262712, 33.705135, 32.073238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.957825, 33.820240, 31.597338>,  <26.634436, 34.284328, 31.945333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.957825, 33.820240, 31.597338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.585699, 33.680874, 31.643164>,  <26.362425, 33.597256, 31.670660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.585699, 33.680874, 31.643164>,  <26.957825, 33.820240, 31.597338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.585699, 33.680874, 31.643164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029707, -0.239755, -0.970379,
		0.365563, -0.906159, 0.212697,
		-0.930312, -0.348416, 0.114565,
		26.306606, 33.576347, 31.677532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.983864, 33.359272, 31.152979>,  <26.957825, 33.820240, 31.597338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.983864, 33.359272, 31.152979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589241, 33.357368, 31.218315>,  <26.352467, 33.356228, 31.257517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589241, 33.357368, 31.218315>,  <26.983864, 33.359272, 31.152979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.589241, 33.357368, 31.218315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150643, -0.360838, -0.920382,
		0.063319, -0.932616, 0.355271,
		-0.986559, -0.004758, 0.163340,
		26.293274, 33.355942, 31.267317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.819284, 32.732029, 30.865482>,  <26.983864, 33.359272, 31.152979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.819284, 32.732029, 30.865482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494019, 32.964840, 30.866148>,  <26.298859, 33.104527, 30.866547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.494019, 32.964840, 30.866148>,  <26.819284, 32.732029, 30.865482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.494019, 32.964840, 30.866148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227453, -0.315147, -0.921384,
		-0.535749, -0.749616, 0.388651,
		-0.813165, 0.582030, 0.001663,
		26.250069, 33.139450, 30.866648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.212749, 32.303829, 30.434923>,  <26.819284, 32.732029, 30.865482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.212749, 32.303829, 30.434923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.092724, 32.685379, 30.438707>,  <26.020708, 32.914307, 30.440977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.092724, 32.685379, 30.438707>,  <26.212749, 32.303829, 30.434923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.092724, 32.685379, 30.438707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177951, -0.046231, -0.982953,
		-0.937174, -0.296631, 0.183614,
		-0.300063, 0.953872, 0.009459,
		26.002705, 32.971542, 30.441545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.563700, 32.326080, 30.062807>,  <26.212749, 32.303829, 30.434923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.563700, 32.326080, 30.062807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.697830, 32.702515, 30.045328>,  <25.778309, 32.928375, 30.034840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.697830, 32.702515, 30.045328>,  <25.563700, 32.326080, 30.062807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.697830, 32.702515, 30.045328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112441, -0.006073, -0.993640,
		-0.935368, 0.338108, 0.103780,
		0.335327, 0.941088, -0.043698,
		25.798428, 32.984840, 30.032219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.130014, 32.653854, 29.546820>,  <25.563700, 32.326080, 30.062807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.130014, 32.653854, 29.546820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.461712, 32.871666, 29.597162>,  <25.660730, 33.002354, 29.627367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.461712, 32.871666, 29.597162>,  <25.130014, 32.653854, 29.546820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.461712, 32.871666, 29.597162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131373, 0.028961, -0.990910,
		-0.543229, 0.838239, -0.047521,
		0.829243, 0.544534, 0.125854,
		25.710485, 33.035027, 29.634918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.042789, 33.087528, 29.020164>,  <25.130014, 32.653854, 29.546820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.042789, 33.087528, 29.020164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431837, 33.132614, 29.101465>,  <25.665266, 33.159664, 29.150246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.431837, 33.132614, 29.101465>,  <25.042789, 33.087528, 29.020164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.431837, 33.132614, 29.101465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206718, -0.019825, -0.978200,
		-0.106226, 0.993430, -0.042582,
		0.972617, 0.112713, 0.203254,
		25.723621, 33.166428, 29.162441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.380556, 33.744606, 28.711876>,  <25.042789, 33.087528, 29.020164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.380556, 33.744606, 28.711876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.664892, 33.468384, 28.765293>,  <25.835495, 33.302650, 28.797342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.664892, 33.468384, 28.765293>,  <25.380556, 33.744606, 28.711876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.664892, 33.468384, 28.765293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292313, 0.117361, -0.949094,
		0.639733, 0.713691, 0.285284,
		0.710841, -0.690559, 0.133541,
		25.878145, 33.261215, 28.805355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.882259, 33.903873, 28.198700>,  <25.380556, 33.744606, 28.711876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.882259, 33.903873, 28.198700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.008232, 33.542664, 28.315565>,  <26.083817, 33.325935, 28.385685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.008232, 33.542664, 28.315565>,  <25.882259, 33.903873, 28.198700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.008232, 33.542664, 28.315565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528614, -0.088777, -0.844207,
		0.788280, 0.420308, 0.449394,
		0.314931, -0.903028, 0.292162,
		26.102711, 33.271755, 28.403214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.579636, 33.837772, 27.947027>,  <25.882259, 33.903873, 28.198700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.579636, 33.837772, 27.947027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.481863, 33.456051, 28.015789>,  <26.423201, 33.227016, 28.057045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.481863, 33.456051, 28.015789>,  <26.579636, 33.837772, 27.947027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.481863, 33.456051, 28.015789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569476, -0.284764, -0.771107,
		0.784825, -0.090587, 0.613060,
		-0.244430, -0.954308, 0.171903,
		26.408533, 33.169758, 28.067360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.198383, 33.537201, 27.866531>,  <26.579636, 33.837772, 27.947027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.198383, 33.537201, 27.866531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906452, 33.269890, 27.808901>,  <26.731293, 33.109505, 27.774323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906452, 33.269890, 27.808901>,  <27.198383, 33.537201, 27.866531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.906452, 33.269890, 27.808901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502562, -0.381601, -0.775765,
		0.463446, -0.638582, 0.614354,
		-0.729828, -0.668276, -0.144076,
		26.687504, 33.069408, 27.765678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.501493, 32.933266, 27.779720>,  <27.198383, 33.537201, 27.866531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.501493, 32.933266, 27.779720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.142544, 32.833714, 27.633965>,  <26.927174, 32.773983, 27.546511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.142544, 32.833714, 27.633965>,  <27.501493, 32.933266, 27.779720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.142544, 32.833714, 27.633965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432631, -0.333616, -0.837574,
		0.086886, -0.909264, 0.407050,
		-0.897375, -0.248876, -0.364389,
		26.873331, 32.759052, 27.524649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.557568, 32.239685, 27.546799>,  <27.501493, 32.933266, 27.779720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.557568, 32.239685, 27.546799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.250166, 32.401924, 27.348854>,  <27.065725, 32.499268, 27.230087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.250166, 32.401924, 27.348854>,  <27.557568, 32.239685, 27.546799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.250166, 32.401924, 27.348854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379798, -0.333257, -0.862956,
		-0.514932, -0.851134, 0.102064,
		-0.768504, 0.405600, -0.494864,
		27.019615, 32.523605, 27.200396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.493067, 31.576361, 27.298639>,  <27.557568, 32.239685, 27.546799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.493067, 31.576361, 27.298639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.331457, 31.888210, 27.107244>,  <27.234491, 32.075321, 26.992407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.331457, 31.888210, 27.107244>,  <27.493067, 31.576361, 27.298639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.331457, 31.888210, 27.107244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232117, -0.418583, -0.878015,
		-0.884808, -0.465805, -0.011846,
		-0.404026, 0.779624, -0.478487,
		27.210249, 32.122097, 26.963697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.012806, 31.347242, 26.667477>,  <27.493067, 31.576361, 27.298639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.012806, 31.347242, 26.667477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097549, 31.727251, 26.575760>,  <27.148396, 31.955256, 26.520729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097549, 31.727251, 26.575760>,  <27.012806, 31.347242, 26.667477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.097549, 31.727251, 26.575760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188652, -0.269961, -0.944209,
		-0.958919, 0.156783, -0.236417,
		0.211860, 0.950021, -0.229293,
		27.161108, 32.012257, 26.506971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.702551, 31.318300, 26.140533>,  <27.012806, 31.347242, 26.667477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.702551, 31.318300, 26.140533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.939178, 31.640802, 26.140619>,  <27.081154, 31.834303, 26.140671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.939178, 31.640802, 26.140619>,  <26.702551, 31.318300, 26.140533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.939178, 31.640802, 26.140619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156538, -0.114592, -0.981002,
		-0.790913, 0.580362, -0.193999,
		0.591567, 0.806256, 0.000217,
		27.116648, 31.882679, 26.140684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.545013, 31.862902, 25.601263>,  <26.702551, 31.318300, 26.140533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.545013, 31.862902, 25.601263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.934490, 31.857540, 25.692253>,  <27.168177, 31.854322, 25.746847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.934490, 31.857540, 25.692253>,  <26.545013, 31.862902, 25.601263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.934490, 31.857540, 25.692253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227782, 0.029956, -0.973251,
		0.006231, 0.999461, 0.032221,
		0.973692, -0.013404, 0.227473,
		27.226599, 31.853519, 25.760494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.926161, 32.472816, 25.222893>,  <26.545013, 31.862902, 25.601263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.926161, 32.472816, 25.222893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153734, 32.152824, 25.299147>,  <27.290279, 31.960829, 25.344898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153734, 32.152824, 25.299147>,  <26.926161, 32.472816, 25.222893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153734, 32.152824, 25.299147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177703, -0.106742, -0.978278,
		0.802953, 0.590453, 0.081431,
		0.568935, -0.799982, 0.190634,
		27.324415, 31.912830, 25.356337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552206, 32.674957, 25.087494>,  <26.926161, 32.472816, 25.222893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.552206, 32.674957, 25.087494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.568024, 32.275425, 25.076435>,  <27.577515, 32.035706, 25.069799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.568024, 32.275425, 25.076435>,  <27.552206, 32.674957, 25.087494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568024, 32.275425, 25.076435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419226, 0.041702, -0.906924,
		0.907020, 0.024272, 0.420387,
		0.039544, -0.998835, -0.027649,
		27.579887, 31.975775, 25.068140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.922382, 32.761070, 24.403187>,  <27.552206, 32.674957, 25.087494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.922382, 32.761070, 24.403187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.789793, 32.410271, 24.542326>,  <27.710239, 32.199791, 24.625809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.789793, 32.410271, 24.542326>,  <27.922382, 32.761070, 24.403187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.789793, 32.410271, 24.542326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425463, -0.468023, -0.774555,
		0.842084, -0.108749, 0.528269,
		-0.331474, -0.876999, 0.347846,
		27.690351, 32.147171, 24.646679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453428, 32.189388, 24.316032>,  <27.922382, 32.761070, 24.403187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.453428, 32.189388, 24.316032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.089470, 32.023697, 24.325050>,  <27.871096, 31.924282, 24.330462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.089470, 32.023697, 24.325050>,  <28.453428, 32.189388, 24.316032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.089470, 32.023697, 24.325050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201536, -0.488887, -0.848748,
		0.362594, -0.767728, 0.528317,
		-0.909895, -0.414226, 0.022543,
		27.816502, 31.899429, 24.331814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.588427, 31.478609, 24.252342>,  <28.453428, 32.189388, 24.316032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.588427, 31.478609, 24.252342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.237030, 31.599207, 24.104097>,  <28.026192, 31.671566, 24.015150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.237030, 31.599207, 24.104097>,  <28.588427, 31.478609, 24.252342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.237030, 31.599207, 24.104097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235911, -0.400815, -0.885264,
		-0.415463, -0.865124, 0.280981,
		-0.878485, 0.301508, -0.370617,
		27.973482, 31.689655, 23.992914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105890, 30.926151, 23.860453>,  <28.588427, 31.478609, 24.252342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105890, 30.926151, 23.860453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.062954, 31.298609, 23.721056>,  <28.037193, 31.522083, 23.637419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.062954, 31.298609, 23.721056>,  <28.105890, 30.926151, 23.860453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.062954, 31.298609, 23.721056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159200, -0.329894, -0.930497,
		-0.981394, -0.155359, -0.112828,
		-0.107340, 0.931146, -0.348490,
		28.030752, 31.577953, 23.616508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.475634, 30.622683, 23.914984>,  <28.105890, 30.926151, 23.860453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.475634, 30.622683, 23.914984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650816, 30.274334, 23.825741>,  <27.755924, 30.065325, 23.772196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.650816, 30.274334, 23.825741>,  <27.475634, 30.622683, 23.914984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.650816, 30.274334, 23.825741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033685, -0.232103, 0.972108,
		-0.898366, -0.433255, -0.072315,
		0.437955, -0.870873, -0.223107,
		27.782202, 30.013073, 23.758808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.030073, 30.052950, 24.061178>,  <27.475634, 30.622683, 23.914984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.030073, 30.052950, 24.061178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.402199, 29.910593, 24.096645>,  <27.625473, 29.825180, 24.117926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.402199, 29.910593, 24.096645>,  <27.030073, 30.052950, 24.061178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.402199, 29.910593, 24.096645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191324, -0.264643, 0.945177,
		-0.312914, -0.896273, -0.314291,
		0.930311, -0.355891, 0.088668,
		27.681292, 29.803825, 24.123245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.091944, 29.310282, 24.456577>,  <27.030073, 30.052950, 24.061178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.091944, 29.310282, 24.456577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.413933, 29.543028, 24.502977>,  <27.607126, 29.682674, 24.530817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.413933, 29.543028, 24.502977>,  <27.091944, 29.310282, 24.456577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.413933, 29.543028, 24.502977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110628, -0.044884, 0.992848,
		0.582909, -0.812046, 0.028240,
		0.804971, 0.581864, 0.115998,
		27.655424, 29.717587, 24.537777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.629887, 29.000917, 24.974113>,  <27.091944, 29.310282, 24.456577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.629887, 29.000917, 24.974113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644516, 29.399652, 24.945890>,  <27.653294, 29.638893, 24.928957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644516, 29.399652, 24.945890>,  <27.629887, 29.000917, 24.974113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644516, 29.399652, 24.945890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104916, 0.074044, 0.991721,
		0.993808, -0.028871, 0.107292,
		0.036576, 0.996837, -0.070556,
		27.655489, 29.698704, 24.924723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.273769, 29.231838, 25.413054>,  <27.629887, 29.000917, 24.974113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.273769, 29.231838, 25.413054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991322, 29.513895, 25.387217>,  <27.821854, 29.683128, 25.371714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991322, 29.513895, 25.387217>,  <28.273769, 29.231838, 25.413054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.991322, 29.513895, 25.387217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121583, -0.030871, 0.992101,
		0.697577, 0.708395, 0.107531,
		-0.706119, 0.705141, -0.064594,
		27.779486, 29.725437, 25.367838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.440056, 29.692659, 25.924465>,  <28.273769, 29.231838, 25.413054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.440056, 29.692659, 25.924465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054234, 29.738331, 25.829304>,  <27.822741, 29.765734, 25.772207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.054234, 29.738331, 25.829304>,  <28.440056, 29.692659, 25.924465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.054234, 29.738331, 25.829304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233310, 0.052242, 0.970998,
		0.123294, 0.992086, -0.023752,
		-0.964554, 0.114177, -0.237905,
		27.764868, 29.772583, 25.757933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.206741, 30.305168, 26.272823>,  <28.440056, 29.692659, 25.924465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.206741, 30.305168, 26.272823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921328, 30.035929, 26.195045>,  <27.750080, 29.874386, 26.148378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921328, 30.035929, 26.195045>,  <28.206741, 30.305168, 26.272823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.921328, 30.035929, 26.195045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190524, -0.080661, 0.978363,
		-0.674219, 0.735141, -0.070687,
		-0.713533, -0.673099, -0.194445,
		27.707268, 29.834000, 26.136713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.603191, 30.506090, 26.600132>,  <28.206741, 30.305168, 26.272823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.603191, 30.506090, 26.600132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505562, 30.126997, 26.517931>,  <27.446985, 29.899542, 26.468611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.505562, 30.126997, 26.517931>,  <27.603191, 30.506090, 26.600132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.505562, 30.126997, 26.517931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529607, -0.047253, 0.846926,
		-0.812370, 0.315547, -0.490393,
		-0.244072, -0.947733, -0.205502,
		27.432341, 29.842678, 26.456280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.894123, 30.491713, 26.733482>,  <27.603191, 30.506090, 26.600132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.894123, 30.491713, 26.733482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.045713, 30.121563, 26.736481>,  <27.136667, 29.899473, 26.738279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.045713, 30.121563, 26.736481>,  <26.894123, 30.491713, 26.733482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.045713, 30.121563, 26.736481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276171, -0.105366, 0.955316,
		-0.883237, -0.364111, -0.295493,
		0.378976, -0.925376, 0.007494,
		27.159407, 29.843950, 26.738729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.363634, 30.179358, 27.120817>,  <26.894123, 30.491713, 26.733482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.363634, 30.179358, 27.120817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702377, 29.968391, 27.148129>,  <26.905624, 29.841812, 27.164515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702377, 29.968391, 27.148129>,  <26.363634, 30.179358, 27.120817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.702377, 29.968391, 27.148129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202449, -0.200990, 0.958445,
		-0.491777, -0.825491, -0.276985,
		0.846859, -0.527416, 0.068277,
		26.956434, 29.810167, 27.168612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.204582, 29.745449, 27.599625>,  <26.363634, 30.179358, 27.120817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.204582, 29.745449, 27.599625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.597086, 29.669189, 27.588434>,  <26.832588, 29.623434, 27.581720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.597086, 29.669189, 27.588434>,  <26.204582, 29.745449, 27.599625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.597086, 29.669189, 27.588434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007201, -0.181364, 0.983389,
		-0.192575, -0.964755, -0.179338,
		0.981256, -0.190668, -0.027979,
		26.891464, 29.611996, 27.580042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.340189, 29.202826, 28.133049>,  <26.204582, 29.745449, 27.599625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.340189, 29.202826, 28.133049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.687050, 29.393747, 28.076164>,  <26.895166, 29.508301, 28.042034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.687050, 29.393747, 28.076164>,  <26.340189, 29.202826, 28.133049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.687050, 29.393747, 28.076164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235603, -0.141568, 0.961483,
		0.438788, -0.867259, -0.235215,
		0.867154, 0.477305, -0.142210,
		26.947197, 29.536940, 28.033501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.807281, 28.835226, 28.493160>,  <26.340189, 29.202826, 28.133049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.807281, 28.835226, 28.493160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.006529, 29.181854, 28.480942>,  <27.126078, 29.389832, 28.473610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.006529, 29.181854, 28.480942>,  <26.807281, 28.835226, 28.493160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.006529, 29.181854, 28.480942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366338, -0.178385, 0.913223,
		0.785923, -0.466083, -0.406315,
		0.498118, 0.866571, -0.030547,
		27.155964, 29.441826, 28.471777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.462898, 28.649113, 28.703857>,  <26.807281, 28.835226, 28.493160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.462898, 28.649113, 28.703857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376091, 29.035521, 28.760014>,  <27.324007, 29.267365, 28.793707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.376091, 29.035521, 28.760014>,  <27.462898, 28.649113, 28.703857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.376091, 29.035521, 28.760014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170729, -0.104040, 0.979810,
		0.961121, 0.236607, -0.142349,
		-0.217020, 0.966019, 0.140391,
		27.310986, 29.325327, 28.802132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.639034, 28.734837, 29.363302>,  <27.462898, 28.649113, 28.703857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.639034, 28.734837, 29.363302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.499428, 29.104881, 29.303495>,  <27.415665, 29.326908, 29.267611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.499428, 29.104881, 29.303495>,  <27.639034, 28.734837, 29.363302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.499428, 29.104881, 29.303495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135534, 0.207704, 0.968757,
		0.927265, 0.317845, -0.197876,
		-0.349014, 0.925113, -0.149518,
		27.394724, 29.382416, 29.258640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.174683, 29.166492, 29.447002>,  <27.639034, 28.734837, 29.363302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.174683, 29.166492, 29.447002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825089, 29.349777, 29.511738>,  <27.615332, 29.459749, 29.550579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.825089, 29.349777, 29.511738>,  <28.174683, 29.166492, 29.447002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825089, 29.349777, 29.511738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268390, 0.177514, 0.946813,
		0.405114, 0.870936, -0.278125,
		-0.873985, 0.458214, 0.161837,
		27.562893, 29.487242, 29.560289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.314085, 29.868084, 29.708185>,  <28.174683, 29.166492, 29.447002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.314085, 29.868084, 29.708185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938187, 29.787769, 29.818865>,  <27.712648, 29.739580, 29.885273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.938187, 29.787769, 29.818865>,  <28.314085, 29.868084, 29.708185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.938187, 29.787769, 29.818865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173797, 0.416399, 0.892416,
		-0.294402, 0.886734, -0.356414,
		-0.939746, -0.200785, 0.276700,
		27.656263, 29.727533, 29.901875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.074282, 30.395397, 29.963160>,  <28.314085, 29.868084, 29.708185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.074282, 30.395397, 29.963160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.828508, 30.130535, 30.134750>,  <27.681044, 29.971619, 30.237705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.828508, 30.130535, 30.134750>,  <28.074282, 30.395397, 29.963160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.828508, 30.130535, 30.134750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002308, 0.545227, 0.838285,
		-0.788965, 0.514081, -0.336534,
		-0.614434, -0.662154, 0.428979,
		27.644178, 29.931889, 30.263445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616127, 30.811508, 30.271900>,  <28.074282, 30.395397, 29.963160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616127, 30.811508, 30.271900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.545914, 30.456842, 30.443020>,  <27.503786, 30.244043, 30.545692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.545914, 30.456842, 30.443020>,  <27.616127, 30.811508, 30.271900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.545914, 30.456842, 30.443020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170436, 0.455354, 0.873845,
		-0.969608, 0.080475, -0.231049,
		-0.175531, -0.886666, 0.427799,
		27.493254, 30.190842, 30.571360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994122, 30.922686, 30.558088>,  <27.616127, 30.811508, 30.271900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994122, 30.922686, 30.558088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188801, 30.628504, 30.746653>,  <27.305609, 30.451994, 30.859791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188801, 30.628504, 30.746653>,  <26.994122, 30.922686, 30.558088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.188801, 30.628504, 30.746653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010345, 0.544453, 0.838728,
		-0.873508, -0.403331, 0.272593,
		0.486699, -0.735456, 0.471411,
		27.334810, 30.407867, 30.888077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.673136, 30.863853, 31.153738>,  <26.994122, 30.922686, 30.558088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.673136, 30.863853, 31.153738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.036991, 30.709391, 31.214985>,  <27.255304, 30.616713, 31.251734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.036991, 30.709391, 31.214985>,  <26.673136, 30.863853, 31.153738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.036991, 30.709391, 31.214985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077507, 0.519897, 0.850705,
		-0.408110, -0.761965, 0.502847,
		0.909636, -0.386155, 0.153118,
		27.309881, 30.593544, 31.260920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.702662, 30.890528, 31.845467>,  <26.673136, 30.863853, 31.153738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.702662, 30.890528, 31.845467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080496, 30.869287, 31.715891>,  <27.307198, 30.856543, 31.638145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.080496, 30.869287, 31.715891>,  <26.702662, 30.890528, 31.845467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.080496, 30.869287, 31.715891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287788, 0.608662, 0.739398,
		0.157906, -0.791651, 0.590216,
		0.944587, -0.053102, -0.323938,
		27.363873, 30.853357, 31.618710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.983482, 30.989012, 32.483410>,  <26.702662, 30.890528, 31.845467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.983482, 30.989012, 32.483410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.278048, 31.015560, 32.214104>,  <27.454786, 31.031488, 32.052521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.278048, 31.015560, 32.214104>,  <26.983482, 30.989012, 32.483410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.278048, 31.015560, 32.214104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564060, 0.489243, 0.665190,
		0.373541, -0.869619, 0.322847,
		0.736412, 0.066370, -0.673269,
		27.498972, 31.035471, 32.012123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.520601, 30.706476, 32.779175>,  <26.983482, 30.989012, 32.483410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.520601, 30.706476, 32.779175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.671392, 30.977467, 32.526535>,  <27.761868, 31.140060, 32.374950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.671392, 30.977467, 32.526535>,  <27.520601, 30.706476, 32.779175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.671392, 30.977467, 32.526535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371423, 0.514107, 0.773136,
		0.848489, -0.526044, -0.057823,
		0.376976, 0.677474, -0.631599,
		27.784485, 31.180710, 32.337055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220808, 30.606512, 32.917526>,  <27.520601, 30.706476, 32.779175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220808, 30.606512, 32.917526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160881, 30.965122, 32.750771>,  <28.124924, 31.180288, 32.650715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160881, 30.965122, 32.750771>,  <28.220808, 30.606512, 32.917526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160881, 30.965122, 32.750771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521432, 0.429891, 0.737090,
		0.840037, -0.106950, -0.531883,
		-0.149820, 0.896524, -0.416892,
		28.115934, 31.234079, 32.625702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888098, 31.064968, 33.030640>,  <28.220808, 30.606512, 32.917526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888098, 31.064968, 33.030640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.583876, 31.315832, 32.963440>,  <28.401342, 31.466351, 32.923119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.583876, 31.315832, 32.963440>,  <28.888098, 31.064968, 33.030640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.583876, 31.315832, 32.963440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282741, 0.552855, 0.783843,
		0.584475, 0.548655, -0.597801,
		-0.760557, 0.627159, -0.168003,
		28.355709, 31.503981, 32.913040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.172441, 31.814463, 32.970097>,  <28.888098, 31.064968, 33.030640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.172441, 31.814463, 32.970097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783426, 31.816080, 33.063175>,  <28.550016, 31.817051, 33.119022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.783426, 31.816080, 33.063175>,  <29.172441, 31.814463, 32.970097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783426, 31.816080, 33.063175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139057, 0.811857, 0.567055,
		-0.186626, 0.583842, -0.790126,
		-0.972540, 0.004045, 0.232701,
		28.491665, 31.817293, 33.132984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934755, 32.440849, 32.759884>,  <29.172441, 31.814463, 32.970097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.934755, 32.440849, 32.759884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.672012, 32.334461, 33.042103>,  <28.514366, 32.270630, 33.211433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.672012, 32.334461, 33.042103>,  <28.934755, 32.440849, 32.759884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.672012, 32.334461, 33.042103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021874, 0.942052, 0.334754,
		-0.753699, 0.204452, -0.624610,
		-0.656856, -0.265966, 0.705551,
		28.474955, 32.254673, 33.253769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640482, 32.746803, 32.882149>,  <28.934755, 32.440849, 32.759884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.640482, 32.746803, 32.882149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.555664, 33.131184, 32.811024>,  <29.504772, 33.361813, 32.768349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.555664, 33.131184, 32.811024>,  <29.640482, 32.746803, 32.882149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.555664, 33.131184, 32.811024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739892, 0.276729, 0.613172,
		0.638432, -0.001542, -0.769677,
		-0.212047, 0.960947, -0.177813,
		29.492050, 33.419468, 32.757679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.237206, 33.254120, 32.653622>,  <29.640482, 32.746803, 32.882149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.237206, 33.254120, 32.653622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.968740, 33.488560, 32.835182>,  <29.807661, 33.629223, 32.944118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.968740, 33.488560, 32.835182>,  <30.237206, 33.254120, 32.653622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968740, 33.488560, 32.835182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699288, 0.297340, 0.650066,
		0.246042, 0.753707, -0.609417,
		-0.671163, 0.586101, 0.453900,
		29.767391, 33.664391, 32.971352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526163, 33.965008, 32.625561>,  <30.237206, 33.254120, 32.653622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526163, 33.965008, 32.625561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303007, 33.894867, 32.950031>,  <30.169113, 33.852783, 33.144714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303007, 33.894867, 32.950031>,  <30.526163, 33.965008, 32.625561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303007, 33.894867, 32.950031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768934, 0.258532, 0.584723,
		-0.312249, 0.949954, -0.009398,
		-0.557889, -0.175353, 0.811179,
		30.135641, 33.842262, 33.193386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866743, 34.361431, 33.130592>,  <30.526163, 33.965008, 32.625561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866743, 34.361431, 33.130592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623981, 34.166523, 33.381744>,  <30.478325, 34.049576, 33.532436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623981, 34.166523, 33.381744>,  <30.866743, 34.361431, 33.130592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623981, 34.166523, 33.381744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673662, 0.103801, 0.731714,
		-0.421720, 0.867058, 0.265260,
		-0.606904, -0.487274, 0.627879,
		30.441910, 34.020340, 33.570107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728762, 34.726120, 33.777786>,  <30.866743, 34.361431, 33.130592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728762, 34.726120, 33.777786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751619, 34.327209, 33.796459>,  <30.765333, 34.087864, 33.807663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751619, 34.327209, 33.796459>,  <30.728762, 34.726120, 33.777786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751619, 34.327209, 33.796459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728846, 0.073626, 0.680707,
		-0.682289, -0.004874, 0.731066,
		0.057144, -0.997274, 0.046682,
		30.768763, 34.028027, 33.810463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472681, 34.506931, 34.424793>,  <30.728762, 34.726120, 33.777786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472681, 34.506931, 34.424793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747868, 34.272202, 34.253990>,  <30.912979, 34.131363, 34.151508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747868, 34.272202, 34.253990>,  <30.472681, 34.506931, 34.424793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747868, 34.272202, 34.253990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574224, 0.080328, 0.814748,
		-0.443815, -0.805718, 0.392233,
		0.687965, -0.586827, -0.427012,
		30.954256, 34.096153, 34.125885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.680233, 34.158489, 34.958084>,  <30.472681, 34.506931, 34.424793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.680233, 34.158489, 34.958084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987175, 34.110973, 34.706036>,  <31.171341, 34.082466, 34.554806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987175, 34.110973, 34.706036>,  <30.680233, 34.158489, 34.958084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987175, 34.110973, 34.706036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630046, -0.043004, 0.775366,
		-0.119202, -0.991988, 0.041843,
		0.767354, -0.118789, -0.630124,
		31.217381, 34.075336, 34.516998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964073, 33.570530, 35.288300>,  <30.680233, 34.158489, 34.958084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964073, 33.570530, 35.288300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234463, 33.746548, 35.051853>,  <31.396696, 33.852158, 34.909985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234463, 33.746548, 35.051853>,  <30.964073, 33.570530, 35.288300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234463, 33.746548, 35.051853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649423, 0.023394, 0.760067,
		0.348294, -0.897670, -0.269962,
		0.675974, 0.440046, -0.591116,
		31.437256, 33.878563, 34.874519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601965, 33.135754, 35.364788>,  <30.964073, 33.570530, 35.288300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601965, 33.135754, 35.364788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677965, 33.505318, 35.231945>,  <31.723564, 33.727055, 35.152241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677965, 33.505318, 35.231945>,  <31.601965, 33.135754, 35.364788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677965, 33.505318, 35.231945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707122, 0.105888, 0.699118,
		0.681086, -0.367673, -0.633196,
		0.189999, 0.923907, -0.332109,
		31.734964, 33.782490, 35.132313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407871, 33.149204, 35.252342>,  <31.601965, 33.135754, 35.364788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407871, 33.149204, 35.252342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293961, 33.531296, 35.284435>,  <32.225616, 33.760551, 35.303692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293961, 33.531296, 35.284435>,  <32.407871, 33.149204, 35.252342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293961, 33.531296, 35.284435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731403, 0.162412, 0.662323,
		0.619640, 0.247298, -0.744910,
		-0.284773, 0.955231, 0.080237,
		32.208530, 33.817863, 35.308506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980534, 33.638775, 35.059135>,  <32.407871, 33.149204, 35.252342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980534, 33.638775, 35.059135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749714, 33.864353, 35.295433>,  <32.611221, 33.999702, 35.437210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749714, 33.864353, 35.295433>,  <32.980534, 33.638775, 35.059135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749714, 33.864353, 35.295433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801543, 0.252317, 0.542093,
		0.156659, 0.786319, -0.597629,
		-0.577050, 0.563949, 0.590741,
		32.576599, 34.033539, 35.472656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421326, 34.166649, 35.353615>,  <32.980534, 33.638775, 35.059135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421326, 34.166649, 35.353615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109554, 34.165714, 35.604210>,  <32.922493, 34.165154, 35.754566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109554, 34.165714, 35.604210>,  <33.421326, 34.166649, 35.353615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109554, 34.165714, 35.604210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594455, 0.312920, 0.740746,
		-0.197771, 0.949777, -0.242510,
		-0.779429, -0.002337, 0.626486,
		32.875725, 34.165012, 35.792156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592590, 34.724720, 35.807476>,  <33.421326, 34.166649, 35.353615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592590, 34.724720, 35.807476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310913, 34.510696, 35.994164>,  <33.141907, 34.382282, 36.106174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310913, 34.510696, 35.994164>,  <33.592590, 34.724720, 35.807476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310913, 34.510696, 35.994164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498544, 0.095412, 0.861598,
		-0.505539, 0.839407, 0.199564,
		-0.704191, -0.535063, 0.466715,
		33.099655, 34.350178, 36.134178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659599, 34.928928, 36.493069>,  <33.592590, 34.724720, 35.807476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659599, 34.928928, 36.493069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400314, 34.626888, 36.532356>,  <33.244743, 34.445663, 36.555927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400314, 34.626888, 36.532356>,  <33.659599, 34.928928, 36.493069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400314, 34.626888, 36.532356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280160, -0.116560, 0.952851,
		-0.708048, 0.645166, 0.287104,
		-0.648212, -0.755099, 0.098219,
		33.205853, 34.400360, 36.561821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181549, 35.025063, 37.101852>,  <33.659599, 34.928928, 36.493069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181549, 35.025063, 37.101852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166229, 34.628830, 37.049278>,  <33.157040, 34.391090, 37.017735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166229, 34.628830, 37.049278>,  <33.181549, 35.025063, 37.101852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166229, 34.628830, 37.049278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120162, -0.135146, 0.983512,
		-0.992015, 0.021872, 0.124207,
		-0.038297, -0.990584, -0.131438,
		33.154739, 34.331654, 37.009846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771076, 34.841244, 37.583195>,  <33.181549, 35.025063, 37.101852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771076, 34.841244, 37.583195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972176, 34.509663, 37.485149>,  <33.092834, 34.310715, 37.426323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972176, 34.509663, 37.485149>,  <32.771076, 34.841244, 37.583195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972176, 34.509663, 37.485149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191171, -0.169912, 0.966738,
		-0.843031, -0.532881, 0.073051,
		0.502744, -0.828956, -0.245113,
		33.122997, 34.260975, 37.411617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466003, 34.314556, 38.021427>,  <32.771076, 34.841244, 37.583195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466003, 34.314556, 38.021427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837910, 34.205231, 37.922771>,  <33.061054, 34.139637, 37.863579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.837910, 34.205231, 37.922771>,  <32.466003, 34.314556, 38.021427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837910, 34.205231, 37.922771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239525, -0.059664, 0.969055,
		-0.279573, -0.960072, 0.009992,
		0.929767, -0.273316, -0.246642,
		33.116840, 34.123238, 37.848778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.612473, 33.665577, 38.315655>,  <32.466003, 34.314556, 38.021427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.612473, 33.665577, 38.315655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967899, 33.832573, 38.239601>,  <33.181156, 33.932770, 38.193970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967899, 33.832573, 38.239601>,  <32.612473, 33.665577, 38.315655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967899, 33.832573, 38.239601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332764, -0.301273, 0.893590,
		0.315784, -0.857283, -0.406627,
		0.888565, 0.417492, -0.190136,
		33.234470, 33.957821, 38.182560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965893, 33.260647, 38.700462>,  <32.612473, 33.665577, 38.315655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965893, 33.260647, 38.700462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253357, 33.529198, 38.628036>,  <33.425835, 33.690327, 38.584579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253357, 33.529198, 38.628036>,  <32.965893, 33.260647, 38.700462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253357, 33.529198, 38.628036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463254, -0.268062, 0.844712,
		0.518582, -0.690939, -0.503662,
		0.718657, 0.671377, -0.181068,
		33.468952, 33.730610, 38.573715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603283, 32.922256, 38.699886>,  <32.965893, 33.260647, 38.700462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603283, 32.922256, 38.699886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686279, 33.300854, 38.798759>,  <33.736076, 33.528011, 38.858082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686279, 33.300854, 38.798759>,  <33.603283, 32.922256, 38.699886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686279, 33.300854, 38.798759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527388, -0.321047, 0.786632,
		0.823900, -0.032853, -0.565782,
		0.207486, 0.946493, 0.247184,
		33.748524, 33.584801, 38.872913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345264, 33.039280, 38.772373>,  <33.603283, 32.922256, 38.699886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345264, 33.039280, 38.772373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189445, 33.324787, 39.005196>,  <34.095955, 33.496090, 39.144890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.189445, 33.324787, 39.005196>,  <34.345264, 33.039280, 38.772373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189445, 33.324787, 39.005196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661843, -0.222544, 0.715847,
		0.640482, 0.664085, -0.385712,
		-0.389546, 0.713768, 0.582056,
		34.072582, 33.538918, 39.179813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908390, 33.363617, 39.089138>,  <34.345264, 33.039280, 38.772373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908390, 33.363617, 39.089138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586895, 33.441868, 39.313900>,  <34.393997, 33.488819, 39.448757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.586895, 33.441868, 39.313900>,  <34.908390, 33.363617, 39.089138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586895, 33.441868, 39.313900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516744, -0.238617, 0.822215,
		0.294931, 0.951205, 0.090694,
		-0.803736, 0.195631, 0.561905,
		34.345776, 33.500557, 39.482471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176437, 33.514091, 39.782978>,  <34.908390, 33.363617, 39.089138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176437, 33.514091, 39.782978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788864, 33.481861, 39.876507>,  <34.556320, 33.462524, 39.932625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788864, 33.481861, 39.876507>,  <35.176437, 33.514091, 39.782978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788864, 33.481861, 39.876507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247314, -0.319449, 0.914761,
		0.000987, 0.944171, 0.329453,
		-0.968935, -0.080575, 0.233823,
		34.498184, 33.457687, 39.946655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141739, 33.758854, 40.363544>,  <35.176437, 33.514091, 39.782978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141739, 33.758854, 40.363544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800449, 33.550625, 40.376240>,  <34.595676, 33.425686, 40.383858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800449, 33.550625, 40.376240>,  <35.141739, 33.758854, 40.363544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800449, 33.550625, 40.376240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203481, -0.276240, 0.939301,
		-0.480207, 0.807895, 0.341622,
		-0.853227, -0.520573, 0.031739,
		34.544479, 33.394451, 40.385761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825314, 33.949902, 41.010414>,  <35.141739, 33.758854, 40.363544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825314, 33.949902, 41.010414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637203, 33.610245, 40.914246>,  <34.524338, 33.406452, 40.856544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637203, 33.610245, 40.914246>,  <34.825314, 33.949902, 41.010414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637203, 33.610245, 40.914246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118683, -0.330804, 0.936207,
		-0.874505, 0.411738, 0.256346,
		-0.470272, -0.849141, -0.240423,
		34.496120, 33.355503, 40.842117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336010, 33.840576, 41.494267>,  <34.825314, 33.949902, 41.010414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336010, 33.840576, 41.494267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421490, 33.481976, 41.339031>,  <34.472778, 33.266815, 41.245892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421490, 33.481976, 41.339031>,  <34.336010, 33.840576, 41.494267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421490, 33.481976, 41.339031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137453, -0.365715, 0.920521,
		-0.967181, -0.250059, 0.045074,
		0.213700, -0.896506, -0.388084,
		34.485600, 33.213024, 41.222607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970795, 33.340477, 41.911346>,  <34.336010, 33.840576, 41.494267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970795, 33.340477, 41.911346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247410, 33.128189, 41.715340>,  <34.413380, 33.000816, 41.597736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.247410, 33.128189, 41.715340>,  <33.970795, 33.340477, 41.911346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.247410, 33.128189, 41.715340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234150, -0.477041, 0.847116,
		-0.683340, -0.700547, -0.205622,
		0.691535, -0.530722, -0.490014,
		34.454872, 32.968971, 41.568336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813000, 32.636627, 42.056049>,  <33.970795, 33.340477, 41.911346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813000, 32.636627, 42.056049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195744, 32.630157, 41.940006>,  <34.425388, 32.626278, 41.870380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.195744, 32.630157, 41.940006>,  <33.813000, 32.636627, 42.056049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195744, 32.630157, 41.940006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234367, -0.547207, 0.803515,
		-0.171743, -0.836841, -0.519809,
		0.956858, -0.016172, -0.290107,
		34.482800, 32.625305, 41.852974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030830, 31.950045, 42.276978>,  <33.813000, 32.636627, 42.056049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030830, 31.950045, 42.276978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372517, 32.144337, 42.202812>,  <34.577530, 32.260914, 42.158314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372517, 32.144337, 42.202812>,  <34.030830, 31.950045, 42.276978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372517, 32.144337, 42.202812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377565, -0.334384, 0.863500,
		0.357430, -0.807622, -0.469031,
		0.854218, 0.485731, -0.185411,
		34.628780, 32.290054, 42.147190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587738, 31.584455, 42.532219>,  <34.030830, 31.950045, 42.276978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587738, 31.584455, 42.532219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782597, 31.932775, 42.505688>,  <34.899509, 32.141769, 42.489769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782597, 31.932775, 42.505688>,  <34.587738, 31.584455, 42.532219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782597, 31.932775, 42.505688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429732, -0.172897, 0.886249,
		0.760278, -0.460232, -0.458436,
		0.487142, 0.870800, -0.066327,
		34.928738, 32.194016, 42.485790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367741, 31.572048, 42.641411>,  <34.587738, 31.584455, 42.532219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367741, 31.572048, 42.641411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259941, 31.936668, 42.765636>,  <35.195263, 32.155441, 42.840172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.259941, 31.936668, 42.765636>,  <35.367741, 31.572048, 42.641411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259941, 31.936668, 42.765636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584373, -0.101531, 0.805108,
		0.765428, 0.398458, -0.505323,
		-0.269496, 0.911550, 0.310563,
		35.179092, 32.210133, 42.858807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.912262, 31.794867, 43.067642>,  <35.367741, 31.572048, 42.641411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.912262, 31.794867, 43.067642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642727, 32.067085, 43.182735>,  <35.481003, 32.230415, 43.251793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642727, 32.067085, 43.182735>,  <35.912262, 31.794867, 43.067642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642727, 32.067085, 43.182735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400286, 0.008910, 0.916347,
		0.621053, 0.732650, -0.278417,
		-0.673842, 0.680547, 0.287737,
		35.440575, 32.271248, 43.269058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231632, 32.355278, 43.533749>,  <35.912262, 31.794867, 43.067642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231632, 32.355278, 43.533749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842861, 32.294884, 43.605934>,  <35.609600, 32.258648, 43.649246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842861, 32.294884, 43.605934>,  <36.231632, 32.355278, 43.533749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842861, 32.294884, 43.605934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191108, -0.059096, 0.979788,
		-0.137267, 0.986768, 0.086291,
		-0.971924, -0.150984, 0.180467,
		35.551285, 32.249588, 43.660076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000694, 32.719967, 44.126556>,  <36.231632, 32.355278, 43.533749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000694, 32.719967, 44.126556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742229, 32.415688, 44.101856>,  <35.587151, 32.233120, 44.087036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742229, 32.415688, 44.101856>,  <36.000694, 32.719967, 44.126556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742229, 32.415688, 44.101856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201342, -0.247955, 0.947618,
		-0.736166, 0.599878, 0.313379,
		-0.646159, -0.760700, -0.061755,
		35.548382, 32.187477, 44.083328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516434, 32.828548, 44.649349>,  <36.000694, 32.719967, 44.126556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516434, 32.828548, 44.649349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550228, 32.443939, 44.544788>,  <35.570503, 32.213173, 44.482052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550228, 32.443939, 44.544788>,  <35.516434, 32.828548, 44.649349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550228, 32.443939, 44.544788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291836, -0.226962, 0.929150,
		-0.952730, -0.154788, 0.261432,
		0.084486, -0.961524, -0.261406,
		35.575573, 32.155483, 44.466366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617413, 32.530739, 45.232368>,  <35.516434, 32.828548, 44.649349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617413, 32.530739, 45.232368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684971, 32.226368, 44.981781>,  <35.725506, 32.043747, 44.831429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684971, 32.226368, 44.981781>,  <35.617413, 32.530739, 45.232368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684971, 32.226368, 44.981781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500817, -0.481183, 0.719476,
		-0.848914, -0.435267, 0.299812,
		0.168900, -0.760924, -0.626472,
		35.735641, 31.998091, 44.793839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624092, 31.923050, 45.622383>,  <35.617413, 32.530739, 45.232368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624092, 31.923050, 45.622383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853992, 31.813566, 45.313904>,  <35.991932, 31.747875, 45.128819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853992, 31.813566, 45.313904>,  <35.624092, 31.923050, 45.622383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853992, 31.813566, 45.313904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660822, -0.400615, 0.634683,
		-0.482671, -0.874408, -0.049381,
		0.574754, -0.273711, -0.771194,
		36.026421, 31.731453, 45.082546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764053, 31.275064, 45.792870>,  <35.624092, 31.923050, 45.622383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764053, 31.275064, 45.792870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051777, 31.384144, 45.537300>,  <36.224411, 31.449593, 45.383957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.051777, 31.384144, 45.537300>,  <35.764053, 31.275064, 45.792870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051777, 31.384144, 45.537300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686376, -0.420840, 0.593111,
		-0.107145, -0.865175, -0.489889,
		0.719311, 0.272700, -0.638926,
		36.267570, 31.465954, 45.345623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252991, 30.805723, 45.831524>,  <35.764053, 31.275064, 45.792870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252991, 30.805723, 45.831524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465416, 31.088823, 45.645164>,  <36.592869, 31.258684, 45.533348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465416, 31.088823, 45.645164>,  <36.252991, 30.805723, 45.831524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465416, 31.088823, 45.645164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840006, -0.367578, 0.399095,
		0.111204, -0.603303, -0.789721,
		0.531059, 0.707751, -0.465902,
		36.624733, 31.301149, 45.505394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807594, 30.466261, 45.493999>,  <36.252991, 30.805723, 45.831524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807594, 30.466261, 45.493999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929955, 30.841970, 45.556213>,  <37.003368, 31.067396, 45.593540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929955, 30.841970, 45.556213>,  <36.807594, 30.466261, 45.493999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929955, 30.841970, 45.556213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800220, -0.342165, 0.492516,
		0.515824, -0.026201, -0.856294,
		0.305898, 0.939275, 0.155530,
		37.021725, 31.123753, 45.602871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506584, 30.336220, 45.573570>,  <36.807594, 30.466261, 45.493999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506584, 30.336220, 45.573570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435310, 30.711119, 45.693451>,  <37.392548, 30.936058, 45.765377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435310, 30.711119, 45.693451>,  <37.506584, 30.336220, 45.573570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435310, 30.711119, 45.693451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671468, -0.106827, 0.733293,
		0.719292, 0.331900, -0.610296,
		-0.178184, 0.937246, 0.299700,
		37.381855, 30.992292, 45.783360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227501, 30.748777, 45.607143>,  <37.506584, 30.336220, 45.573570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227501, 30.748777, 45.607143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951664, 30.921162, 45.839947>,  <37.786160, 31.024593, 45.979630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951664, 30.921162, 45.839947>,  <38.227501, 30.748777, 45.607143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951664, 30.921162, 45.839947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574429, -0.163898, 0.801978,
		0.441012, 0.887361, -0.134533,
		-0.689594, 0.430962, 0.582007,
		37.744785, 31.050449, 46.014549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535751, 31.144602, 46.147099>,  <38.227501, 30.748777, 45.607143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535751, 31.144602, 46.147099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160355, 31.094988, 46.275997>,  <37.935116, 31.065220, 46.353336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160355, 31.094988, 46.275997>,  <38.535751, 31.144602, 46.147099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160355, 31.094988, 46.275997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315635, 0.070225, 0.946278,
		-0.139999, 0.989790, -0.026757,
		-0.938496, -0.124033, 0.322244,
		37.878807, 31.057777, 46.372669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704281, 31.619965, 46.674118>,  <38.535751, 31.144602, 46.147099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704281, 31.619965, 46.674118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400551, 31.366644, 46.733932>,  <38.218315, 31.214651, 46.769821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.400551, 31.366644, 46.733932>,  <38.704281, 31.619965, 46.674118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400551, 31.366644, 46.733932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359956, -0.217347, 0.907299,
		-0.542092, 0.742758, 0.392997,
		-0.759321, -0.633301, 0.149539,
		38.172756, 31.176653, 46.778793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598789, 31.638636, 47.317951>,  <38.704281, 31.619965, 46.674118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598789, 31.638636, 47.317951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423111, 31.292690, 47.220688>,  <38.317703, 31.085123, 47.162331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423111, 31.292690, 47.220688>,  <38.598789, 31.638636, 47.317951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423111, 31.292690, 47.220688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262710, -0.382464, 0.885836,
		-0.859124, 0.325171, 0.395182,
		-0.439191, -0.864861, -0.243159,
		38.291355, 31.033232, 47.147739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.408665, 31.423965, 47.942368>,  <38.598789, 31.638636, 47.317951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.408665, 31.423965, 47.942368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426189, 31.099894, 47.708553>,  <38.436703, 30.905451, 47.568264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426189, 31.099894, 47.708553>,  <38.408665, 31.423965, 47.942368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426189, 31.099894, 47.708553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354505, -0.534419, 0.767283,
		-0.934027, -0.240837, 0.263800,
		0.043811, -0.810181, -0.584540,
		38.439331, 30.856840, 47.533192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108215, 30.902058, 48.244480>,  <38.408665, 31.423965, 47.942368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108215, 30.902058, 48.244480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388763, 30.751324, 48.002464>,  <38.557091, 30.660883, 47.857254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388763, 30.751324, 48.002464>,  <38.108215, 30.902058, 48.244480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388763, 30.751324, 48.002464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233249, -0.680762, 0.694376,
		-0.673547, -0.628144, -0.389576,
		0.701377, -0.376827, -0.605039,
		38.599174, 30.638273, 47.820950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743378, 30.575420, 48.496597>,  <38.108215, 30.902058, 48.244480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743378, 30.575420, 48.496597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077007, 30.436983, 48.668430>,  <39.277184, 30.353922, 48.771530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077007, 30.436983, 48.668430>,  <38.743378, 30.575420, 48.496597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077007, 30.436983, 48.668430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278435, -0.408140, -0.869423,
		0.476229, 0.844774, -0.244055,
		0.834074, -0.346091, 0.429583,
		39.327229, 30.333157, 48.797306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431297, 30.710720, 48.153343>,  <38.743378, 30.575420, 48.496597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431297, 30.710720, 48.153343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535908, 30.387415, 48.364368>,  <39.598675, 30.193432, 48.490982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.535908, 30.387415, 48.364368>,  <39.431297, 30.710720, 48.153343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.535908, 30.387415, 48.364368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531846, -0.335441, -0.777572,
		0.805447, 0.483935, 0.342145,
		0.261525, -0.808261, 0.527559,
		39.614365, 30.144936, 48.522636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162582, 30.684607, 48.033733>,  <39.431297, 30.710720, 48.153343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162582, 30.684607, 48.033733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042156, 30.326527, 48.165173>,  <39.969898, 30.111679, 48.244038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042156, 30.326527, 48.165173>,  <40.162582, 30.684607, 48.033733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042156, 30.326527, 48.165173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727932, -0.438344, -0.527228,
		0.616014, 0.080469, 0.783614,
		-0.301067, -0.895198, 0.328602,
		39.951836, 30.057968, 48.263752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787621, 30.309309, 47.968250>,  <40.162582, 30.684607, 48.033733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787621, 30.309309, 47.968250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478439, 30.055555, 47.964165>,  <40.292931, 29.903303, 47.961712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478439, 30.055555, 47.964165>,  <40.787621, 30.309309, 47.968250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478439, 30.055555, 47.964165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477382, -0.570899, -0.667967,
		0.417918, -0.521181, 0.744121,
		-0.772950, -0.634385, -0.010214,
		40.246555, 29.865240, 47.961102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062241, 29.581629, 47.809113>,  <40.787621, 30.309309, 47.968250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062241, 29.581629, 47.809113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683590, 29.545574, 47.685318>,  <40.456402, 29.523941, 47.611042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683590, 29.545574, 47.685318>,  <41.062241, 29.581629, 47.809113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683590, 29.545574, 47.685318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304380, -0.565986, -0.766167,
		-0.106104, -0.819472, 0.563212,
		-0.946623, -0.090137, -0.309484,
		40.399605, 29.518534, 47.592472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713440, 28.907541, 47.788132>,  <41.062241, 29.581629, 47.809113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713440, 28.907541, 47.788132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558247, 29.130651, 47.494640>,  <40.465130, 29.264517, 47.318546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558247, 29.130651, 47.494640>,  <40.713440, 28.907541, 47.788132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558247, 29.130651, 47.494640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251616, -0.701749, -0.666511,
		-0.886657, -0.443212, 0.131920,
		-0.387981, 0.557774, -0.733730,
		40.441853, 29.297983, 47.274521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234043, 28.530672, 47.389973>,  <40.713440, 28.907541, 47.788132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234043, 28.530672, 47.389973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413235, 28.813648, 47.171307>,  <40.520748, 28.983435, 47.040108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413235, 28.813648, 47.171307>,  <40.234043, 28.530672, 47.389973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413235, 28.813648, 47.171307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110775, -0.650661, -0.751245,
		-0.887155, 0.275985, -0.369849,
		0.447979, 0.707441, -0.546665,
		40.547626, 29.025881, 47.007305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913570, 27.870897, 47.034744>,  <40.234043, 28.530672, 47.389973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913570, 27.870897, 47.034744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525475, 27.857807, 46.938774>,  <39.292618, 27.849953, 46.881191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525475, 27.857807, 46.938774>,  <39.913570, 27.870897, 47.034744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525475, 27.857807, 46.938774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219726, 0.297441, -0.929112,
		0.101767, -0.954179, -0.281399,
		-0.970239, -0.032723, -0.239927,
		39.234402, 27.847990, 46.866795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829063, 27.615166, 46.403259>,  <39.913570, 27.870897, 47.034744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829063, 27.615166, 46.403259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473610, 27.798048, 46.417656>,  <39.260338, 27.907778, 46.426292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473610, 27.798048, 46.417656>,  <39.829063, 27.615166, 46.403259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473610, 27.798048, 46.417656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157520, 0.377969, -0.912320,
		-0.430719, -0.805048, -0.407895,
		-0.888633, 0.457206, 0.035987,
		39.207020, 27.935209, 46.428452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574593, 27.499521, 45.811665>,  <39.829063, 27.615166, 46.403259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574593, 27.499521, 45.811665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361435, 27.823360, 45.910114>,  <39.233540, 28.017664, 45.969185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.361435, 27.823360, 45.910114>,  <39.574593, 27.499521, 45.811665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361435, 27.823360, 45.910114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227374, 0.417171, -0.879926,
		-0.815064, -0.412941, -0.406387,
		-0.532890, 0.809598, 0.246129,
		39.201569, 28.066240, 45.983952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197994, 27.662764, 45.191074>,  <39.574593, 27.499521, 45.811665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197994, 27.662764, 45.191074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206261, 28.016731, 45.377186>,  <39.211220, 28.229113, 45.488853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206261, 28.016731, 45.377186>,  <39.197994, 27.662764, 45.191074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206261, 28.016731, 45.377186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317995, 0.435398, -0.842204,
		-0.947867, 0.165360, -0.272403,
		0.020663, 0.884920, 0.465283,
		39.212460, 28.282207, 45.516769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919952, 28.103933, 44.729687>,  <39.197994, 27.662764, 45.191074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919952, 28.103933, 44.729687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138630, 28.328274, 44.978386>,  <39.269836, 28.462877, 45.127605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138630, 28.328274, 44.978386>,  <38.919952, 28.103933, 44.729687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138630, 28.328274, 44.978386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325499, 0.541788, -0.774930,
		-0.771476, 0.626028, 0.113636,
		0.546695, 0.560851, 0.621748,
		39.302639, 28.496529, 45.164909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803848, 28.799128, 44.552795>,  <38.919952, 28.103933, 44.729687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803848, 28.799128, 44.552795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145737, 28.817823, 44.759586>,  <39.350872, 28.829041, 44.883659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145737, 28.817823, 44.759586>,  <38.803848, 28.799128, 44.552795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145737, 28.817823, 44.759586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359211, 0.665701, -0.654072,
		-0.374720, 0.744754, 0.552201,
		0.854724, 0.046737, 0.516975,
		39.402153, 28.831844, 44.914680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909897, 29.499025, 44.597965>,  <38.803848, 28.799128, 44.552795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909897, 29.499025, 44.597965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267563, 29.326962, 44.647663>,  <39.482162, 29.223722, 44.677483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.267563, 29.326962, 44.647663>,  <38.909897, 29.499025, 44.597965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267563, 29.326962, 44.647663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358937, 0.522774, -0.773222,
		0.267658, 0.735982, 0.621845,
		0.894161, -0.430161, 0.124246,
		39.535812, 29.197912, 44.684937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406940, 30.068045, 44.618214>,  <38.909897, 29.499025, 44.597965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406940, 30.068045, 44.618214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567890, 29.717196, 44.513329>,  <39.664459, 29.506687, 44.450397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567890, 29.717196, 44.513329>,  <39.406940, 30.068045, 44.618214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567890, 29.717196, 44.513329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434903, 0.435179, -0.788339,
		0.805579, 0.203167, 0.556566,
		0.402371, -0.877122, -0.262213,
		39.688602, 29.454060, 44.434666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118801, 30.217281, 44.384121>,  <39.406940, 30.068045, 44.618214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118801, 30.217281, 44.384121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036495, 29.853878, 44.238640>,  <39.987114, 29.635836, 44.151352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036495, 29.853878, 44.238640>,  <40.118801, 30.217281, 44.384121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036495, 29.853878, 44.238640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456707, 0.239547, -0.856759,
		0.865494, -0.342393, 0.365632,
		-0.205762, -0.908507, -0.363700,
		39.974766, 29.581326, 44.129528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619705, 29.943785, 43.988647>,  <40.118801, 30.217281, 44.384121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619705, 29.943785, 43.988647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324120, 29.709688, 43.855125>,  <40.146770, 29.569231, 43.775013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.324120, 29.709688, 43.855125>,  <40.619705, 29.943785, 43.988647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324120, 29.709688, 43.855125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316057, 0.136444, -0.938878,
		0.595017, -0.799296, 0.084143,
		-0.738961, -0.585242, -0.333810,
		40.102432, 29.534115, 43.754982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926842, 29.733713, 43.289253>,  <40.619705, 29.943785, 43.988647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.926842, 29.733713, 43.289253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550808, 29.598316, 43.305580>,  <40.325188, 29.517078, 43.315376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.550808, 29.598316, 43.305580>,  <40.926842, 29.733713, 43.289253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550808, 29.598316, 43.305580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059847, 0.045973, -0.997148,
		0.335648, -0.939846, -0.063476,
		-0.940084, -0.338490, 0.040817,
		40.268784, 29.496769, 43.317825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847500, 29.145304, 42.795139>,  <40.926842, 29.733713, 43.289253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847500, 29.145304, 42.795139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480289, 29.293823, 42.850815>,  <40.259964, 29.382935, 42.884220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480289, 29.293823, 42.850815>,  <40.847500, 29.145304, 42.795139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480289, 29.293823, 42.850815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057261, 0.223198, -0.973090,
		-0.392375, -0.901287, -0.183640,
		-0.918021, 0.371301, 0.139186,
		40.204884, 29.405212, 42.892570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446186, 28.815603, 42.308884>,  <40.847500, 29.145304, 42.795139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446186, 28.815603, 42.308884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248890, 29.152702, 42.395134>,  <40.130512, 29.354961, 42.446884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248890, 29.152702, 42.395134>,  <40.446186, 28.815603, 42.308884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248890, 29.152702, 42.395134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048571, 0.220812, -0.974106,
		-0.868538, -0.490939, -0.067980,
		-0.493238, 0.842746, 0.215629,
		40.100918, 29.405525, 42.459824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835346, 28.861715, 41.842701>,  <40.446186, 28.815603, 42.308884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835346, 28.861715, 41.842701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869389, 29.237457, 41.975590>,  <39.889816, 29.462902, 42.055325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.869389, 29.237457, 41.975590>,  <39.835346, 28.861715, 41.842701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.869389, 29.237457, 41.975590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268686, 0.342719, -0.900195,
		-0.959460, -0.012649, 0.281560,
		0.085110, 0.939353, 0.332224,
		39.894920, 29.519262, 42.075256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246540, 29.099358, 41.724640>,  <39.835346, 28.861715, 41.842701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246540, 29.099358, 41.724640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477558, 29.424950, 41.749565>,  <39.616169, 29.620304, 41.764523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.477558, 29.424950, 41.749565>,  <39.246540, 29.099358, 41.724640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477558, 29.424950, 41.749565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287748, 0.274411, -0.917551,
		-0.763967, 0.511993, 0.392705,
		0.577542, 0.813979, 0.062316,
		39.650822, 29.669144, 41.768261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813038, 29.683130, 41.360058>,  <39.246540, 29.099358, 41.724640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813038, 29.683130, 41.360058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190868, 29.813200, 41.378136>,  <39.417564, 29.891241, 41.388981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.190868, 29.813200, 41.378136>,  <38.813038, 29.683130, 41.360058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190868, 29.813200, 41.378136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107856, 0.437381, -0.892785,
		-0.310075, 0.838428, 0.448211,
		0.944574, 0.325172, 0.045191,
		39.474239, 29.910751, 41.391693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793072, 30.417021, 41.515274>,  <38.813038, 29.683130, 41.360058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793072, 30.417021, 41.515274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130775, 30.329298, 41.319672>,  <39.333397, 30.276665, 41.202309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130775, 30.329298, 41.319672>,  <38.793072, 30.417021, 41.515274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130775, 30.329298, 41.319672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174019, 0.750824, -0.637166,
		0.506893, 0.623031, 0.595728,
		0.844261, -0.219307, -0.489007,
		39.384052, 30.263506, 41.172970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011196, 30.994740, 41.277477>,  <38.793072, 30.417021, 41.515274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011196, 30.994740, 41.277477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237228, 30.764999, 41.040565>,  <39.372849, 30.627155, 40.898418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237228, 30.764999, 41.040565>,  <39.011196, 30.994740, 41.277477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237228, 30.764999, 41.040565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179850, 0.614871, -0.767846,
		0.805191, 0.540421, 0.244158,
		0.565085, -0.574351, -0.592283,
		39.406754, 30.592693, 40.862881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410225, 31.401028, 40.842709>,  <39.011196, 30.994740, 41.277477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410225, 31.401028, 40.842709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378620, 31.054358, 40.645679>,  <39.359657, 30.846355, 40.527462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378620, 31.054358, 40.645679>,  <39.410225, 31.401028, 40.842709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378620, 31.054358, 40.645679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139258, 0.498869, -0.855416,
		0.987099, 0.001007, -0.160108,
		-0.079011, -0.866677, -0.492573,
		39.354916, 30.794353, 40.497906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571915, 31.651026, 40.111813>,  <39.410225, 31.401028, 40.842709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571915, 31.651026, 40.111813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433098, 31.276073, 40.099926>,  <39.349808, 31.051102, 40.092793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.433098, 31.276073, 40.099926>,  <39.571915, 31.651026, 40.111813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.433098, 31.276073, 40.099926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310356, 0.144691, -0.939544,
		0.885009, -0.316838, -0.341135,
		-0.347042, -0.937378, -0.029720,
		39.328983, 30.994860, 40.091011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741665, 31.350790, 39.431183>,  <39.571915, 31.651026, 40.111813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741665, 31.350790, 39.431183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435051, 31.130709, 39.563667>,  <39.251083, 30.998661, 39.643158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435051, 31.130709, 39.563667>,  <39.741665, 31.350790, 39.431183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435051, 31.130709, 39.563667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447242, 0.087240, -0.890148,
		0.460865, -0.830463, -0.312946,
		-0.766536, -0.550201, 0.331211,
		39.205090, 30.965649, 39.663033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454594, 30.881222, 38.830540>,  <39.741665, 31.350790, 39.431183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454594, 30.881222, 38.830540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139534, 30.890621, 39.076809>,  <38.950497, 30.896261, 39.224571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.139534, 30.890621, 39.076809>,  <39.454594, 30.881222, 38.830540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139534, 30.890621, 39.076809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615612, -0.070723, -0.784869,
		0.025103, -0.997219, 0.070168,
		-0.787649, 0.023493, 0.615675,
		38.903240, 30.897671, 39.261513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016788, 30.459688, 38.600060>,  <39.454594, 30.881222, 38.830540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016788, 30.459688, 38.600060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767735, 30.659145, 38.841286>,  <38.618301, 30.778820, 38.986019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767735, 30.659145, 38.841286>,  <39.016788, 30.459688, 38.600060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767735, 30.659145, 38.841286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694049, 0.004046, -0.719917,
		-0.361421, -0.866798, 0.343563,
		-0.622633, 0.498643, 0.603063,
		38.580944, 30.808739, 39.022205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344498, 30.147762, 38.603691>,  <39.016788, 30.459688, 38.600060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344498, 30.147762, 38.603691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272659, 30.531822, 38.689350>,  <38.229557, 30.762259, 38.740746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272659, 30.531822, 38.689350>,  <38.344498, 30.147762, 38.603691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272659, 30.531822, 38.689350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717050, 0.021262, -0.696697,
		-0.673486, -0.278682, 0.684656,
		-0.179600, 0.960148, 0.214149,
		38.218781, 30.819866, 38.753593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643127, 30.255575, 38.607025>,  <38.344498, 30.147762, 38.603691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643127, 30.255575, 38.607025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763561, 30.633558, 38.555798>,  <37.835819, 30.860348, 38.525063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.763561, 30.633558, 38.555798>,  <37.643127, 30.255575, 38.607025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763561, 30.633558, 38.555798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727050, 0.140571, -0.672040,
		-0.617048, 0.295450, 0.729356,
		0.301080, 0.944960, -0.128068,
		37.853886, 30.917046, 38.517376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019932, 30.621141, 38.344048>,  <37.643127, 30.255575, 38.607025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019932, 30.621141, 38.344048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313030, 30.880167, 38.260387>,  <37.488892, 31.035582, 38.210194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313030, 30.880167, 38.260387>,  <37.019932, 30.621141, 38.344048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313030, 30.880167, 38.260387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560179, 0.399493, -0.725676,
		-0.386368, 0.648897, 0.655479,
		0.732748, 0.647563, -0.209147,
		37.532856, 31.074436, 38.197643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643314, 31.304449, 38.339516>,  <37.019932, 30.621141, 38.344048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643314, 31.304449, 38.339516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983322, 31.303240, 38.128822>,  <37.187328, 31.302515, 38.002407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983322, 31.303240, 38.128822>,  <36.643314, 31.304449, 38.339516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983322, 31.303240, 38.128822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474711, 0.428966, -0.768529,
		0.228274, 0.903316, 0.363197,
		0.850024, -0.003022, -0.526736,
		37.238331, 31.302334, 37.970802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637703, 31.934404, 38.077785>,  <36.643314, 31.304449, 38.339516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637703, 31.934404, 38.077785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900238, 31.734484, 37.851719>,  <37.057758, 31.614531, 37.716080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900238, 31.734484, 37.851719>,  <36.637703, 31.934404, 38.077785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900238, 31.734484, 37.851719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453966, 0.336697, -0.824954,
		0.602605, 0.798018, -0.005906,
		0.656340, -0.499803, -0.565168,
		37.097141, 31.584543, 37.682167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935448, 32.418503, 37.712654>,  <36.637703, 31.934404, 38.077785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935448, 32.418503, 37.712654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.957184, 32.075359, 37.508251>,  <36.970226, 31.869473, 37.385609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.957184, 32.075359, 37.508251>,  <36.935448, 32.418503, 37.712654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957184, 32.075359, 37.508251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234319, 0.486513, -0.841665,
		0.970640, 0.165477, -0.174573,
		0.054344, -0.857860, -0.511003,
		36.973488, 31.818001, 37.354950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866936, 32.688789, 37.015537>,  <36.935448, 32.418503, 37.712654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866936, 32.688789, 37.015537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879547, 32.296337, 36.939232>,  <36.887112, 32.060867, 36.893448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879547, 32.296337, 36.939232>,  <36.866936, 32.688789, 37.015537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879547, 32.296337, 36.939232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024479, 0.190045, -0.981470,
		0.999203, 0.035611, -0.018026,
		0.031526, -0.981129, -0.190765,
		36.889004, 32.001999, 36.882004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310532, 32.564877, 36.353302>,  <36.866936, 32.688789, 37.015537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310532, 32.564877, 36.353302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.054058, 32.260727, 36.394703>,  <36.900173, 32.078236, 36.419544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.054058, 32.260727, 36.394703>,  <37.310532, 32.564877, 36.353302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054058, 32.260727, 36.394703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350813, 0.170475, -0.920798,
		0.682510, -0.626708, -0.376055,
		-0.641180, -0.760379, 0.103507,
		36.861706, 32.032612, 36.425755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374554, 32.105816, 35.723904>,  <37.310532, 32.564877, 36.353302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374554, 32.105816, 35.723904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018341, 32.058071, 35.899498>,  <36.804615, 32.029427, 36.004856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.018341, 32.058071, 35.899498>,  <37.374554, 32.105816, 35.723904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018341, 32.058071, 35.899498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448118, 0.063836, -0.891692,
		0.078438, -0.990793, -0.110350,
		-0.890527, -0.119392, 0.438985,
		36.751183, 32.022263, 36.031193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954426, 31.639839, 35.193069>,  <37.374554, 32.105816, 35.723904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954426, 31.639839, 35.193069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663223, 31.793552, 35.420166>,  <36.488503, 31.885780, 35.556423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663223, 31.793552, 35.420166>,  <36.954426, 31.639839, 35.193069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663223, 31.793552, 35.420166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542520, 0.183380, -0.819783,
		-0.419141, -0.904820, 0.074979,
		-0.728006, 0.384282, 0.567745,
		36.444820, 31.908836, 35.590488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307514, 31.347847, 34.882862>,  <36.954426, 31.639839, 35.193069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307514, 31.347847, 34.882862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182922, 31.673126, 35.079510>,  <36.108166, 31.868294, 35.197498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.182922, 31.673126, 35.079510>,  <36.307514, 31.347847, 34.882862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.182922, 31.673126, 35.079510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562783, 0.258995, -0.784982,
		-0.765673, -0.521182, 0.376981,
		-0.311482, 0.813198, 0.491617,
		36.089478, 31.917086, 35.226994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543613, 31.354280, 34.775238>,  <36.307514, 31.347847, 34.882862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543613, 31.354280, 34.775238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659061, 31.720644, 34.886818>,  <35.728329, 31.940462, 34.953766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.659061, 31.720644, 34.886818>,  <35.543613, 31.354280, 34.775238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659061, 31.720644, 34.886818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397760, 0.379716, -0.835226,
		-0.870912, 0.130105, 0.473904,
		0.288616, 0.915908, 0.278949,
		35.745647, 31.995417, 34.970501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900764, 31.827547, 34.789707>,  <35.543613, 31.354280, 34.775238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900764, 31.827547, 34.789707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224072, 32.062172, 34.769123>,  <35.418056, 32.202946, 34.756775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.224072, 32.062172, 34.769123>,  <34.900764, 31.827547, 34.789707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224072, 32.062172, 34.769123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384851, 0.460123, -0.800110,
		-0.445638, 0.666507, 0.597642,
		0.808267, 0.586563, -0.051458,
		35.466553, 32.238140, 34.753685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624077, 32.542343, 34.738155>,  <34.900764, 31.827547, 34.789707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624077, 32.542343, 34.738155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997772, 32.568459, 34.597912>,  <35.221989, 32.584129, 34.513763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997772, 32.568459, 34.597912>,  <34.624077, 32.542343, 34.738155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997772, 32.568459, 34.597912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299655, 0.676779, -0.672441,
		0.193383, 0.733286, 0.651840,
		0.934243, 0.065288, -0.350610,
		35.278046, 32.588043, 34.492729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716755, 33.293453, 34.641415>,  <34.624077, 32.542343, 34.738155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716755, 33.293453, 34.641415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973064, 33.090477, 34.410969>,  <35.126850, 32.968689, 34.272701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973064, 33.090477, 34.410969>,  <34.716755, 33.293453, 34.641415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973064, 33.090477, 34.410969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259983, 0.562651, -0.784750,
		0.722368, 0.652629, 0.228606,
		0.640776, -0.507444, -0.576113,
		35.165298, 32.938244, 34.238136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999825, 33.813610, 34.223129>,  <34.716755, 33.293453, 34.641415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999825, 33.813610, 34.223129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097946, 33.487545, 34.013237>,  <35.156818, 33.291908, 33.887302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097946, 33.487545, 34.013237>,  <34.999825, 33.813610, 34.223129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097946, 33.487545, 34.013237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328005, 0.439555, -0.836184,
		0.912271, 0.377233, -0.159552,
		0.245304, -0.815160, -0.524728,
		35.171539, 33.242996, 33.855820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390331, 34.008400, 33.638645>,  <34.999825, 33.813610, 34.223129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390331, 34.008400, 33.638645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233337, 33.650875, 33.551880>,  <35.139141, 33.436359, 33.499821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233337, 33.650875, 33.551880>,  <35.390331, 34.008400, 33.638645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233337, 33.650875, 33.551880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391746, 0.375827, -0.839815,
		0.832158, -0.244645, -0.497656,
		-0.392489, -0.893814, -0.216909,
		35.115589, 33.382732, 33.486809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505615, 33.923973, 32.899704>,  <35.390331, 34.008400, 33.638645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505615, 33.923973, 32.899704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244930, 33.626633, 32.959972>,  <35.088520, 33.448227, 32.996132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244930, 33.626633, 32.959972>,  <35.505615, 33.923973, 32.899704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244930, 33.626633, 32.959972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405206, 0.173309, -0.897648,
		0.641158, -0.646057, -0.414158,
		-0.651709, -0.743354, 0.150667,
		35.049419, 33.403625, 33.005173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527336, 33.436855, 32.341736>,  <35.505615, 33.923973, 32.899704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527336, 33.436855, 32.341736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158741, 33.363064, 32.478458>,  <34.937584, 33.318790, 32.560493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158741, 33.363064, 32.478458>,  <35.527336, 33.436855, 32.341736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158741, 33.363064, 32.478458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383702, 0.295724, -0.874826,
		0.060306, -0.937291, -0.343290,
		-0.921486, -0.184478, 0.341807,
		34.882294, 33.307720, 32.581001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.171497, 33.251541, 32.501205>,  <35.527336, 33.436855, 32.341736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.171497, 33.251541, 32.501205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307713, 33.594051, 32.345863>,  <36.389442, 33.799557, 32.252659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307713, 33.594051, 32.345863>,  <36.171497, 33.251541, 32.501205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307713, 33.594051, 32.345863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840093, -0.091612, 0.534651,
		0.422232, -0.508324, -0.750551,
		0.340536, 0.856279, -0.388358,
		36.409874, 33.850937, 32.229355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950912, 33.156612, 32.295544>,  <36.171497, 33.251541, 32.501205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950912, 33.156612, 32.295544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891541, 33.544544, 32.372902>,  <36.855915, 33.777302, 32.419315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891541, 33.544544, 32.372902>,  <36.950912, 33.156612, 32.295544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891541, 33.544544, 32.372902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745050, -0.018928, 0.666740,
		0.650283, 0.243056, -0.719761,
		-0.148432, 0.969828, 0.193397,
		36.847012, 33.835491, 32.430920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678688, 33.407097, 32.322319>,  <36.950912, 33.156612, 32.295544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678688, 33.407097, 32.322319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419403, 33.663124, 32.487305>,  <37.263832, 33.816742, 32.586296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419403, 33.663124, 32.487305>,  <37.678688, 33.407097, 32.322319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419403, 33.663124, 32.487305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616305, 0.122886, 0.777861,
		0.447196, 0.758428, -0.474133,
		-0.648216, 0.640067, 0.412469,
		37.224937, 33.855145, 32.611046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063992, 34.119423, 32.556805>,  <37.678688, 33.407097, 32.322319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063992, 34.119423, 32.556805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729942, 34.095715, 32.775547>,  <37.529514, 34.081490, 32.906792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729942, 34.095715, 32.775547>,  <38.063992, 34.119423, 32.556805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729942, 34.095715, 32.775547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549845, -0.062074, 0.832957,
		-0.015427, 0.996310, 0.084431,
		-0.835125, -0.059274, 0.546858,
		37.479404, 34.077930, 32.939606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099663, 34.691074, 33.069340>,  <38.063992, 34.119423, 32.556805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099663, 34.691074, 33.069340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837864, 34.417606, 33.198479>,  <37.680786, 34.253525, 33.275963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837864, 34.417606, 33.198479>,  <38.099663, 34.691074, 33.069340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837864, 34.417606, 33.198479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429613, 0.015084, 0.902887,
		-0.622146, 0.729635, 0.283842,
		-0.654497, -0.683670, 0.322845,
		37.641514, 34.212505, 33.295334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930019, 34.918289, 33.675163>,  <38.099663, 34.691074, 33.069340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930019, 34.918289, 33.675163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.809166, 34.543476, 33.745239>,  <37.736656, 34.318588, 33.787285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.809166, 34.543476, 33.745239>,  <37.930019, 34.918289, 33.675163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809166, 34.543476, 33.745239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442525, 0.024912, 0.896410,
		-0.844327, 0.348361, 0.407133,
		-0.302131, -0.937029, 0.175192,
		37.718525, 34.262367, 33.797798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787132, 34.848248, 34.431377>,  <37.930019, 34.918289, 33.675163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787132, 34.848248, 34.431377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828892, 34.467648, 34.315617>,  <37.853947, 34.239288, 34.246162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.828892, 34.467648, 34.315617>,  <37.787132, 34.848248, 34.431377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828892, 34.467648, 34.315617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470551, -0.209103, 0.857238,
		-0.876175, -0.225671, 0.425899,
		0.104397, -0.951498, -0.289400,
		37.860210, 34.182198, 34.228798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592079, 34.391037, 34.999702>,  <37.787132, 34.848248, 34.431377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592079, 34.391037, 34.999702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822033, 34.173012, 34.755600>,  <37.960007, 34.042198, 34.609138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822033, 34.173012, 34.755600>,  <37.592079, 34.391037, 34.999702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822033, 34.173012, 34.755600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543470, -0.303179, 0.782767,
		-0.611673, -0.781658, 0.121932,
		0.574888, -0.545064, -0.610254,
		37.994499, 34.009491, 34.572525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747017, 33.797634, 35.365273>,  <37.592079, 34.391037, 34.999702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747017, 33.797634, 35.365273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028145, 33.734344, 35.087856>,  <38.196823, 33.696369, 34.921406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028145, 33.734344, 35.087856>,  <37.747017, 33.797634, 35.365273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028145, 33.734344, 35.087856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524237, -0.543814, 0.655319,
		-0.480845, -0.824156, -0.299259,
		0.702826, -0.158224, -0.693542,
		38.238991, 33.686878, 34.879795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910843, 33.089901, 35.372906>,  <37.747017, 33.797634, 35.365273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910843, 33.089901, 35.372906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219318, 33.279842, 35.203304>,  <38.404404, 33.393806, 35.101543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219318, 33.279842, 35.203304>,  <37.910843, 33.089901, 35.372906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219318, 33.279842, 35.203304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636572, -0.568712, 0.520906,
		0.006219, -0.671626, -0.740864,
		0.771193, 0.474853, -0.424001,
		38.450676, 33.422298, 35.076103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361679, 32.560234, 35.296085>,  <37.910843, 33.089901, 35.372906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361679, 32.560234, 35.296085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561539, 32.906723, 35.294773>,  <38.681454, 33.114616, 35.293987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561539, 32.906723, 35.294773>,  <38.361679, 32.560234, 35.296085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561539, 32.906723, 35.294773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672866, -0.385725, 0.631243,
		0.545532, -0.317605, -0.775578,
		0.499646, 0.866224, -0.003280,
		38.711433, 33.166592, 35.293789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996281, 32.346882, 35.230549>,  <38.361679, 32.560234, 35.296085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996281, 32.346882, 35.230549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006210, 32.716587, 35.382931>,  <39.012169, 32.938408, 35.474358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006210, 32.716587, 35.382931>,  <38.996281, 32.346882, 35.230549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006210, 32.716587, 35.382931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794202, -0.249669, 0.553993,
		0.607146, 0.288803, -0.740248,
		0.024822, 0.924261, 0.380953,
		39.013657, 32.993866, 35.497215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762585, 32.502888, 35.309269>,  <38.996281, 32.346882, 35.230549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762585, 32.502888, 35.309269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548626, 32.736374, 35.553616>,  <39.420250, 32.876465, 35.700226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.548626, 32.736374, 35.553616>,  <39.762585, 32.502888, 35.309269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.548626, 32.736374, 35.553616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635465, -0.198556, 0.746164,
		0.556837, 0.787308, -0.264722,
		-0.534899, 0.583713, 0.610870,
		39.388157, 32.911488, 35.736877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240940, 32.890213, 35.672382>,  <39.762585, 32.502888, 35.309269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240940, 32.890213, 35.672382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902882, 32.935883, 35.881264>,  <39.700047, 32.963284, 36.006592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902882, 32.935883, 35.881264>,  <40.240940, 32.890213, 35.672382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902882, 32.935883, 35.881264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523384, -0.021796, 0.851818,
		0.108640, 0.993221, -0.041338,
		-0.845143, 0.114177, 0.522204,
		39.649338, 32.970135, 36.037926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.404320, 33.450142, 36.032887>,  <40.240940, 32.890213, 35.672382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.404320, 33.450142, 36.032887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118099, 33.230038, 36.205029>,  <39.946369, 33.097977, 36.308315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118099, 33.230038, 36.205029>,  <40.404320, 33.450142, 36.032887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118099, 33.230038, 36.205029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496563, 0.032656, 0.867386,
		-0.491339, 0.834357, 0.249870,
		-0.715550, -0.550257, 0.430356,
		39.903435, 33.064960, 36.334137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410973, 33.582115, 36.677959>,  <40.404320, 33.450142, 36.032887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410973, 33.582115, 36.677959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208191, 33.237476, 36.688152>,  <40.086521, 33.030693, 36.694267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208191, 33.237476, 36.688152>,  <40.410973, 33.582115, 36.677959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208191, 33.237476, 36.688152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436171, -0.230910, 0.869733,
		-0.743474, 0.452029, 0.492864,
		-0.506952, -0.861597, 0.025486,
		40.056107, 32.978996, 36.695797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.211357, 33.479847, 37.410519>,  <40.410973, 33.582115, 36.677959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.211357, 33.479847, 37.410519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197140, 33.121399, 37.233566>,  <40.188610, 32.906330, 37.127396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197140, 33.121399, 37.233566>,  <40.211357, 33.479847, 37.410519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197140, 33.121399, 37.233566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432333, -0.412884, 0.801633,
		-0.901014, -0.162767, 0.402096,
		-0.035540, -0.896121, -0.442384,
		40.186478, 32.852562, 37.100853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.885265, 33.086586, 37.855869>,  <40.211357, 33.479847, 37.410519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.885265, 33.086586, 37.855869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.088837, 32.823048, 37.634270>,  <40.210979, 32.664925, 37.501308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.088837, 32.823048, 37.634270>,  <39.885265, 33.086586, 37.855869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088837, 32.823048, 37.634270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309718, -0.460328, 0.831969,
		-0.803164, -0.594992, -0.030214,
		0.508923, -0.658850, -0.553999,
		40.241512, 32.625393, 37.468071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698463, 32.472225, 38.072968>,  <39.885265, 33.086586, 37.855869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698463, 32.472225, 38.072968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.060070, 32.414337, 37.912067>,  <40.277035, 32.379604, 37.815525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.060070, 32.414337, 37.912067>,  <39.698463, 32.472225, 38.072968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.060070, 32.414337, 37.912067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291009, -0.480957, 0.827039,
		-0.313153, -0.864718, -0.392680,
		0.904018, -0.144716, -0.402254,
		40.331276, 32.370922, 37.791389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893097, 31.946907, 38.448227>,  <39.698463, 32.472225, 38.072968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.893097, 31.946907, 38.448227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.235241, 32.061611, 38.275654>,  <40.440525, 32.130432, 38.172112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.235241, 32.061611, 38.275654>,  <39.893097, 31.946907, 38.448227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235241, 32.061611, 38.275654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512889, -0.351632, 0.783135,
		0.072868, -0.891136, -0.447848,
		0.855357, 0.286761, -0.431431,
		40.491848, 32.147640, 38.146225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132454, 31.328518, 38.475586>,  <39.893097, 31.946907, 38.448227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132454, 31.328518, 38.475586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423027, 31.600212, 38.433773>,  <40.597370, 31.763229, 38.408684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.423027, 31.600212, 38.433773>,  <40.132454, 31.328518, 38.475586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.423027, 31.600212, 38.433773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465384, -0.374283, 0.802078,
		0.505677, -0.631307, -0.587999,
		0.726436, 0.679238, -0.104533,
		40.640957, 31.803984, 38.402412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733097, 30.926277, 38.589470>,  <40.132454, 31.328518, 38.475586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733097, 30.926277, 38.589470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847073, 31.307850, 38.627056>,  <40.915459, 31.536793, 38.649609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.847073, 31.307850, 38.627056>,  <40.733097, 30.926277, 38.589470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847073, 31.307850, 38.627056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671588, -0.268617, 0.690517,
		0.683946, -0.133647, -0.717187,
		0.284934, 0.953930, 0.093964,
		40.932552, 31.594028, 38.655247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.457909, 30.918512, 38.692879>,  <40.733097, 30.926277, 38.589470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.457909, 30.918512, 38.692879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354088, 31.270693, 38.851593>,  <41.291794, 31.482000, 38.946823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354088, 31.270693, 38.851593>,  <41.457909, 30.918512, 38.692879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354088, 31.270693, 38.851593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512561, -0.222628, 0.829288,
		0.818483, 0.418621, -0.393501,
		-0.259553, 0.880451, 0.396786,
		41.276222, 31.534828, 38.970631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052834, 31.014370, 39.129570>,  <41.457909, 30.918512, 38.692879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052834, 31.014370, 39.129570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.740311, 31.229898, 39.255573>,  <41.552795, 31.359215, 39.331177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.740311, 31.229898, 39.255573>,  <42.052834, 31.014370, 39.129570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740311, 31.229898, 39.255573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304813, -0.111025, 0.945919,
		0.544656, 0.835072, -0.077495,
		-0.781306, 0.538822, 0.315011,
		41.505920, 31.391544, 39.350075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403141, 31.438017, 39.557247>,  <42.052834, 31.014370, 39.129570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.403141, 31.438017, 39.557247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.016975, 31.444120, 39.661354>,  <41.785275, 31.447783, 39.723816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.016975, 31.444120, 39.661354>,  <42.403141, 31.438017, 39.557247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.016975, 31.444120, 39.661354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260546, 0.020867, 0.965236,
		0.009297, 0.999666, -0.024121,
		-0.965417, 0.015259, 0.260265,
		41.727352, 31.448698, 39.739433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415337, 31.816154, 40.099586>,  <42.403141, 31.438017, 39.557247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415337, 31.816154, 40.099586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.087738, 31.592403, 40.150723>,  <41.891178, 31.458153, 40.181404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.087738, 31.592403, 40.150723>,  <42.415337, 31.816154, 40.099586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.087738, 31.592403, 40.150723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129210, 0.037284, 0.990916,
		-0.559062, 0.828074, 0.041742,
		-0.818996, -0.559377, 0.127840,
		41.842041, 31.424591, 40.189075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.046803, 32.156216, 40.577263>,  <42.415337, 31.816154, 40.099586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.046803, 32.156216, 40.577263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906067, 31.781967, 40.588688>,  <41.821625, 31.557417, 40.595543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.906067, 31.781967, 40.588688>,  <42.046803, 32.156216, 40.577263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906067, 31.781967, 40.588688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178327, -0.037040, 0.983274,
		-0.918917, 0.351047, 0.179880,
		-0.351838, -0.935625, 0.028564,
		41.800514, 31.501280, 40.597256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570412, 32.261478, 41.063248>,  <42.046803, 32.156216, 40.577263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.570412, 32.261478, 41.063248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667107, 31.873796, 41.044426>,  <41.725124, 31.641188, 41.033131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667107, 31.873796, 41.044426>,  <41.570412, 32.261478, 41.063248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667107, 31.873796, 41.044426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110670, -0.075718, 0.990969,
		-0.964011, -0.234344, -0.125565,
		0.241736, -0.969201, -0.047058,
		41.739628, 31.583036, 41.030308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152279, 31.911579, 41.591419>,  <41.570412, 32.261478, 41.063248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152279, 31.911579, 41.591419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465504, 31.677134, 41.508202>,  <41.653439, 31.536465, 41.458271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465504, 31.677134, 41.508202>,  <41.152279, 31.911579, 41.591419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465504, 31.677134, 41.508202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137102, -0.163596, 0.976954,
		-0.606644, -0.793539, -0.047748,
		0.783062, -0.586117, -0.208040,
		41.700424, 31.501299, 41.445789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094765, 31.399706, 42.114704>,  <41.152279, 31.911579, 41.591419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094765, 31.399706, 42.114704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457710, 31.321640, 41.965790>,  <41.675480, 31.274801, 41.876442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.457710, 31.321640, 41.965790>,  <41.094765, 31.399706, 42.114704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457710, 31.321640, 41.965790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266661, -0.417363, 0.868735,
		-0.324922, -0.887535, -0.326660,
		0.907369, -0.195164, -0.372282,
		41.729919, 31.263090, 41.854107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210361, 30.677757, 42.267517>,  <41.094765, 31.399706, 42.114704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210361, 30.677757, 42.267517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.562923, 30.854536, 42.200813>,  <41.774460, 30.960604, 42.160789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.562923, 30.854536, 42.200813>,  <41.210361, 30.677757, 42.267517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.562923, 30.854536, 42.200813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327752, -0.317956, 0.889653,
		0.340155, -0.838801, -0.425096,
		0.881404, 0.441946, -0.166764,
		41.827343, 30.987120, 42.150784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.700752, 30.176435, 42.562637>,  <41.210361, 30.677757, 42.267517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.700752, 30.176435, 42.562637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892834, 30.524748, 42.520409>,  <42.008083, 30.733734, 42.495071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.892834, 30.524748, 42.520409>,  <41.700752, 30.176435, 42.562637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.892834, 30.524748, 42.520409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449868, -0.141167, 0.881868,
		0.753009, -0.470972, -0.459525,
		0.480205, 0.870780, -0.105575,
		42.036896, 30.785982, 42.488735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396702, 30.036369, 42.736240>,  <41.700752, 30.176435, 42.562637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396702, 30.036369, 42.736240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.345547, 30.425676, 42.812557>,  <42.314854, 30.659260, 42.858345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.345547, 30.425676, 42.812557>,  <42.396702, 30.036369, 42.736240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.345547, 30.425676, 42.812557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291353, -0.147015, 0.945251,
		0.948029, 0.176469, -0.264763,
		-0.127883, 0.973265, 0.190790,
		42.307182, 30.717655, 42.869793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.021702, 30.265568, 42.998386>,  <42.396702, 30.036369, 42.736240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.021702, 30.265568, 42.998386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.756855, 30.545511, 43.105564>,  <42.597946, 30.713478, 43.169872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.756855, 30.545511, 43.105564>,  <43.021702, 30.265568, 42.998386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.756855, 30.545511, 43.105564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313759, -0.065812, 0.947219,
		0.680555, 0.711242, -0.176012,
		-0.662118, 0.699860, 0.267947,
		42.558220, 30.755468, 43.185947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.416443, 30.728863, 43.375050>,  <43.021702, 30.265568, 42.998386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.416443, 30.728863, 43.375050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.048439, 30.818316, 43.503784>,  <42.827637, 30.871988, 43.581024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.048439, 30.818316, 43.503784>,  <43.416443, 30.728863, 43.375050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.048439, 30.818316, 43.503784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326463, -0.017010, 0.945057,
		0.216820, 0.974525, -0.057358,
		-0.920006, 0.223633, 0.321834,
		42.772438, 30.885405, 43.600334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.477425, 31.293297, 43.917778>,  <43.416443, 30.728863, 43.375050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.477425, 31.293297, 43.917778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130039, 31.100439, 43.963913>,  <42.921608, 30.984724, 43.991592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.130039, 31.100439, 43.963913>,  <43.477425, 31.293297, 43.917778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.130039, 31.100439, 43.963913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164944, -0.061626, 0.984376,
		-0.467504, 0.873922, 0.133047,
		-0.868466, -0.482145, 0.115338,
		42.869499, 30.955795, 43.998516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.987133, 31.756771, 44.434559>,  <43.477425, 31.293297, 43.917778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.987133, 31.756771, 44.434559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925900, 31.361486, 44.434685>,  <42.889160, 31.124315, 44.434761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925900, 31.361486, 44.434685>,  <42.987133, 31.756771, 44.434559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.925900, 31.361486, 44.434685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169629, -0.025963, 0.985166,
		-0.973546, 0.150864, 0.171604,
		-0.153082, -0.988213, 0.000315,
		42.879974, 31.065022, 44.434780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.759090, 31.700945, 45.044540>,  <42.987133, 31.756771, 44.434559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.759090, 31.700945, 45.044540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.844181, 31.329014, 44.924431>,  <42.895237, 31.105854, 44.852367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.844181, 31.329014, 44.924431>,  <42.759090, 31.700945, 45.044540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.844181, 31.329014, 44.924431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186285, -0.263073, 0.946620,
		-0.959189, -0.257311, 0.117250,
		0.212731, -0.929830, -0.300270,
		42.908001, 31.050064, 44.834351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.580315, 32.169693, 45.580223>,  <42.759090, 31.700945, 45.044540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.580315, 32.169693, 45.580223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.485268, 32.443878, 45.855522>,  <42.428238, 32.608391, 46.020702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.485268, 32.443878, 45.855522>,  <42.580315, 32.169693, 45.580223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.485268, 32.443878, 45.855522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438460, 0.556558, -0.705688,
		-0.866770, -0.469452, 0.168299,
		-0.237618, 0.685462, 0.688243,
		42.413982, 32.649517, 46.061996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.851875, 32.280617, 45.742508>,  <42.580315, 32.169693, 45.580223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.851875, 32.280617, 45.742508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983479, 32.657211, 45.771790>,  <42.062443, 32.883167, 45.789360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.983479, 32.657211, 45.771790>,  <41.851875, 32.280617, 45.742508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983479, 32.657211, 45.771790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588417, 0.265027, -0.763889,
		-0.738591, 0.208251, 0.641182,
		0.329011, 0.941484, 0.073208,
		42.082184, 32.939655, 45.793751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286007, 32.674427, 45.865501>,  <41.851875, 32.280617, 45.742508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286007, 32.674427, 45.865501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569191, 32.889282, 45.682083>,  <41.739101, 33.018196, 45.572033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569191, 32.889282, 45.682083>,  <41.286007, 32.674427, 45.865501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569191, 32.889282, 45.682083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642028, 0.218963, -0.734748,
		-0.294258, 0.814576, 0.499877,
		0.707963, 0.537141, -0.458550,
		41.781578, 33.050423, 45.544518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901535, 33.243839, 45.677994>,  <41.286007, 32.674427, 45.865501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901535, 33.243839, 45.677994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.227951, 33.246593, 45.446812>,  <41.423801, 33.248245, 45.308102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.227951, 33.246593, 45.446812>,  <40.901535, 33.243839, 45.677994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227951, 33.246593, 45.446812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570449, 0.170618, -0.803417,
		0.093081, 0.985314, 0.143157,
		0.816042, 0.006881, -0.577952,
		41.472763, 33.248657, 45.273426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842674, 33.924866, 45.272903>,  <40.901535, 33.243839, 45.677994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842674, 33.924866, 45.272903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099556, 33.688263, 45.077888>,  <41.253685, 33.546303, 44.960880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099556, 33.688263, 45.077888>,  <40.842674, 33.924866, 45.272903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099556, 33.688263, 45.077888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415784, 0.265528, -0.869838,
		0.643967, 0.761328, -0.075413,
		0.642208, -0.591502, -0.487539,
		41.292217, 33.510811, 44.931625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963951, 34.275154, 44.704948>,  <40.842674, 33.924866, 45.272903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963951, 34.275154, 44.704948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.085190, 33.907692, 44.603588>,  <41.157932, 33.687214, 44.542770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.085190, 33.907692, 44.603588>,  <40.963951, 34.275154, 44.704948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085190, 33.907692, 44.603588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416810, 0.111330, -0.902150,
		0.856973, 0.379057, -0.349160,
		0.303095, -0.918652, -0.253402,
		41.176117, 33.632095, 44.527569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447533, 34.316315, 44.071495>,  <40.963951, 34.275154, 44.704948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447533, 34.316315, 44.071495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.248222, 33.972099, 44.113823>,  <41.128635, 33.765572, 44.139221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.248222, 33.972099, 44.113823>,  <41.447533, 34.316315, 44.071495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.248222, 33.972099, 44.113823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351058, 0.088649, -0.932148,
		0.792765, -0.501618, -0.346270,
		-0.498279, -0.860535, 0.105820,
		41.098740, 33.713940, 44.145569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609013, 33.905468, 43.516621>,  <41.447533, 34.316315, 44.071495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609013, 33.905468, 43.516621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.271526, 33.733387, 43.645039>,  <41.069035, 33.630138, 43.722092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.271526, 33.733387, 43.645039>,  <41.609013, 33.905468, 43.516621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271526, 33.733387, 43.645039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359156, 0.007922, -0.933244,
		0.398940, -0.902698, -0.161193,
		-0.843714, -0.430202, 0.321049,
		41.018414, 33.604328, 43.741352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514015, 33.268269, 43.163815>,  <41.609013, 33.905468, 43.516621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514015, 33.268269, 43.163815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.151104, 33.364815, 43.301563>,  <40.933357, 33.422741, 43.384212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.151104, 33.364815, 43.301563>,  <41.514015, 33.268269, 43.163815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.151104, 33.364815, 43.301563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379818, -0.118794, -0.917402,
		-0.180523, -0.963135, 0.199455,
		-0.907276, 0.241369, 0.344371,
		40.878922, 33.437225, 43.404877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089546, 32.784115, 42.875694>,  <41.514015, 33.268269, 43.163815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089546, 32.784115, 42.875694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842075, 33.080357, 42.980572>,  <40.693592, 33.258102, 43.043499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.842075, 33.080357, 42.980572>,  <41.089546, 32.784115, 42.875694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842075, 33.080357, 42.980572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532754, -0.150192, -0.832836,
		-0.577422, -0.654940, 0.487480,
		-0.618674, 0.740604, 0.262198,
		40.656475, 33.302540, 43.059231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337280, 32.551605, 42.787884>,  <41.089546, 32.784115, 42.875694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337280, 32.551605, 42.787884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337330, 32.951595, 42.785160>,  <40.337360, 33.191589, 42.783527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.337330, 32.951595, 42.785160>,  <40.337280, 32.551605, 42.787884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337330, 32.951595, 42.785160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509956, -0.005790, -0.860181,
		-0.860200, 0.003581, 0.509943,
		0.000128, 0.999977, -0.006807,
		40.337368, 33.251587, 42.783119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784321, 32.706970, 42.415970>,  <40.337280, 32.551605, 42.787884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784321, 32.706970, 42.415970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976566, 33.056683, 42.388718>,  <40.091911, 33.266510, 42.372368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976566, 33.056683, 42.388718>,  <39.784321, 32.706970, 42.415970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976566, 33.056683, 42.388718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526868, 0.225778, -0.819411,
		-0.701017, 0.429710, 0.569144,
		0.480610, 0.874285, -0.068127,
		40.120750, 33.318970, 42.368279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313087, 33.122475, 42.304245>,  <39.784321, 32.706970, 42.415970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313087, 33.122475, 42.304245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.629646, 33.332066, 42.178303>,  <39.819580, 33.457821, 42.102737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.629646, 33.332066, 42.178303>,  <39.313087, 33.122475, 42.304245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629646, 33.332066, 42.178303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530041, 0.331582, -0.780455,
		-0.304543, 0.784536, 0.540145,
		0.791397, 0.523981, -0.314855,
		39.867065, 33.489262, 42.083847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014404, 33.768223, 42.069702>,  <39.313087, 33.122475, 42.304245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014404, 33.768223, 42.069702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386169, 33.757626, 41.922462>,  <39.609226, 33.751266, 41.834118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.386169, 33.757626, 41.922462>,  <39.014404, 33.768223, 42.069702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386169, 33.757626, 41.922462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353393, 0.223562, -0.908369,
		0.106361, 0.974330, 0.198417,
		0.929409, -0.026496, -0.368100,
		39.664993, 33.749676, 41.812031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971935, 34.420315, 41.606060>,  <39.014404, 33.768223, 42.069702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971935, 34.420315, 41.606060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297318, 34.212658, 41.501152>,  <39.492546, 34.088062, 41.438206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297318, 34.212658, 41.501152>,  <38.971935, 34.420315, 41.606060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297318, 34.212658, 41.501152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177141, 0.208372, -0.961874,
		0.554003, 0.828896, 0.077538,
		0.813451, -0.519146, -0.262270,
		39.541351, 34.056915, 41.422470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299446, 34.789898, 41.041939>,  <38.971935, 34.420315, 41.606060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299446, 34.789898, 41.041939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406494, 34.405384, 41.015686>,  <39.470722, 34.174675, 40.999935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406494, 34.405384, 41.015686>,  <39.299446, 34.789898, 41.041939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406494, 34.405384, 41.015686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218373, 0.005826, -0.975848,
		0.938451, 0.275491, -0.208359,
		0.267623, -0.961286, -0.065628,
		39.486782, 34.116997, 40.995998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808620, 34.769501, 40.602489>,  <39.299446, 34.789898, 41.041939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808620, 34.769501, 40.602489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660412, 34.399509, 40.568718>,  <39.571487, 34.177513, 40.548454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660412, 34.399509, 40.568718>,  <39.808620, 34.769501, 40.602489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660412, 34.399509, 40.568718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254566, 0.188547, -0.948497,
		0.893259, -0.329943, -0.305329,
		-0.370519, -0.924980, -0.084429,
		39.549255, 34.122017, 40.543388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064045, 34.625435, 40.043400>,  <39.808620, 34.769501, 40.602489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064045, 34.625435, 40.043400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767540, 34.362400, 40.097240>,  <39.589638, 34.204578, 40.129543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.767540, 34.362400, 40.097240>,  <40.064045, 34.625435, 40.043400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767540, 34.362400, 40.097240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181107, 0.002853, -0.983459,
		0.646326, -0.753374, -0.121209,
		-0.741258, -0.657587, 0.134597,
		39.545162, 34.165123, 40.137619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146259, 34.070248, 39.593575>,  <40.064045, 34.625435, 40.043400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146259, 34.070248, 39.593575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758755, 34.013676, 39.675068>,  <39.526253, 33.979733, 39.723965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.758755, 34.013676, 39.675068>,  <40.146259, 34.070248, 39.593575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758755, 34.013676, 39.675068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174618, -0.194390, -0.965257,
		0.176120, -0.970675, 0.163621,
		-0.968757, -0.141430, 0.203733,
		39.468128, 33.971249, 39.736187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925179, 33.489708, 39.200886>,  <40.146259, 34.070248, 39.593575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925179, 33.489708, 39.200886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579384, 33.669861, 39.290165>,  <39.371906, 33.777954, 39.343731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.579384, 33.669861, 39.290165>,  <39.925179, 33.489708, 39.200886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579384, 33.669861, 39.290165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183998, 0.129682, -0.974334,
		-0.467772, -0.883366, -0.029238,
		-0.864485, 0.450386, 0.223199,
		39.320038, 33.804977, 39.357124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.435711, 33.200375, 38.683083>,  <39.925179, 33.489708, 39.200886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.435711, 33.200375, 38.683083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286671, 33.544159, 38.823086>,  <39.197247, 33.750427, 38.907085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.286671, 33.544159, 38.823086>,  <39.435711, 33.200375, 38.683083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286671, 33.544159, 38.823086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183726, 0.301379, -0.935636,
		-0.909624, -0.412921, 0.045611,
		-0.372598, 0.859457, 0.350006,
		39.174892, 33.801994, 38.928089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925228, 33.352028, 38.177429>,  <39.435711, 33.200375, 38.683083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925228, 33.352028, 38.177429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968330, 33.699718, 38.370441>,  <38.994190, 33.908333, 38.486248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968330, 33.699718, 38.370441>,  <38.925228, 33.352028, 38.177429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968330, 33.699718, 38.370441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336074, 0.488629, -0.805169,
		-0.935651, -0.075403, 0.344777,
		0.107756, 0.869227, 0.482527,
		39.000656, 33.960487, 38.515198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328453, 33.755085, 38.017181>,  <38.925228, 33.352028, 38.177429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328453, 33.755085, 38.017181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596634, 34.022129, 38.146660>,  <38.757542, 34.182358, 38.224346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596634, 34.022129, 38.146660>,  <38.328453, 33.755085, 38.017181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596634, 34.022129, 38.146660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272137, 0.627152, -0.729810,
		-0.690240, 0.401214, 0.602160,
		0.670455, 0.667614, 0.323700,
		38.797771, 34.222412, 38.243771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.046898, 34.471878, 38.056847>,  <38.328453, 33.755085, 38.017181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.046898, 34.471878, 38.056847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441696, 34.516926, 38.010979>,  <38.678577, 34.543953, 37.983459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.441696, 34.516926, 38.010979>,  <38.046898, 34.471878, 38.056847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441696, 34.516926, 38.010979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160648, 0.669368, -0.725354,
		-0.004930, 0.734346, 0.678758,
		0.986999, 0.112617, -0.114671,
		38.737797, 34.550713, 37.976578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137825, 35.263966, 38.004234>,  <38.046898, 34.471878, 38.056847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137825, 35.263966, 38.004234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492889, 35.133636, 37.874069>,  <38.705929, 35.055439, 37.795971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.492889, 35.133636, 37.874069>,  <38.137825, 35.263966, 38.004234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492889, 35.133636, 37.874069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061138, 0.617015, -0.784573,
		0.456416, 0.716332, 0.527781,
		0.887664, -0.325824, -0.325410,
		38.759190, 35.035889, 37.776447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596104, 35.923367, 37.861324>,  <38.137825, 35.263966, 38.004234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596104, 35.923367, 37.861324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.713615, 35.612961, 37.638077>,  <38.784122, 35.426716, 37.504128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.713615, 35.612961, 37.638077>,  <38.596104, 35.923367, 37.861324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713615, 35.612961, 37.638077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254493, 0.626308, -0.736865,
		0.921374, 0.074434, 0.381484,
		0.293775, -0.776014, -0.558121,
		38.801746, 35.380157, 37.470642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.208164, 36.057434, 37.458439>,  <38.596104, 35.923367, 37.861324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.208164, 36.057434, 37.458439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.057941, 35.756794, 37.241531>,  <38.967808, 35.576412, 37.111385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.057941, 35.756794, 37.241531>,  <39.208164, 36.057434, 37.458439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057941, 35.756794, 37.241531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301226, 0.454347, -0.838351,
		0.876480, -0.478198, 0.055766,
		-0.375560, -0.751596, -0.542272,
		38.945274, 35.531315, 37.078850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799969, 35.915771, 37.107208>,  <39.208164, 36.057434, 37.458439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799969, 35.915771, 37.107208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472481, 35.772408, 36.927773>,  <39.275986, 35.686390, 36.820110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.472481, 35.772408, 36.927773>,  <39.799969, 35.915771, 37.107208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.472481, 35.772408, 36.927773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312666, 0.376994, -0.871846,
		0.481595, -0.854060, -0.196591,
		-0.818722, -0.358409, -0.448594,
		39.226864, 35.664886, 36.793194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.064426, 35.545708, 36.545338>,  <39.799969, 35.915771, 37.107208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.064426, 35.545708, 36.545338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681591, 35.626801, 36.462498>,  <39.451889, 35.675457, 36.412796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681591, 35.626801, 36.462498>,  <40.064426, 35.545708, 36.545338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681591, 35.626801, 36.462498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247027, 0.197002, -0.948772,
		-0.151546, -0.959213, -0.238628,
		-0.957085, 0.202730, -0.207097,
		39.394466, 35.687618, 36.400368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965504, 35.329887, 35.884495>,  <40.064426, 35.545708, 36.545338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965504, 35.329887, 35.884495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649876, 35.574898, 35.903156>,  <39.460499, 35.721905, 35.914352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.649876, 35.574898, 35.903156>,  <39.965504, 35.329887, 35.884495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649876, 35.574898, 35.903156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006901, 0.067106, -0.997722,
		-0.614266, -0.787593, -0.048724,
		-0.789069, 0.612530, 0.046656,
		39.413155, 35.758656, 35.917152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623699, 35.192673, 35.313435>,  <39.965504, 35.329887, 35.884495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623699, 35.192673, 35.313435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493626, 35.553841, 35.425854>,  <39.415581, 35.770542, 35.493305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493626, 35.553841, 35.425854>,  <39.623699, 35.192673, 35.313435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493626, 35.553841, 35.425854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003354, 0.298298, -0.954467,
		-0.945644, -0.309438, -0.100031,
		-0.325188, 0.902921, 0.281046,
		39.396069, 35.824718, 35.510166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330326, 35.412048, 34.671280>,  <39.623699, 35.192673, 35.313435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330326, 35.412048, 34.671280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358669, 35.735874, 34.904373>,  <39.375675, 35.930172, 35.044228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.358669, 35.735874, 34.904373>,  <39.330326, 35.412048, 34.671280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358669, 35.735874, 34.904373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044587, 0.586189, -0.808947,
		-0.996490, 0.031335, 0.077629,
		0.070854, 0.809569, 0.582734,
		39.379925, 35.978745, 35.079193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898800, 35.951260, 34.471729>,  <39.330326, 35.412048, 34.671280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898800, 35.951260, 34.471729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185181, 36.158058, 34.659397>,  <39.357010, 36.282139, 34.771999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185181, 36.158058, 34.659397>,  <38.898800, 35.951260, 34.471729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185181, 36.158058, 34.659397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026450, 0.651455, -0.758226,
		-0.697648, 0.555263, 0.452736,
		0.715952, 0.517000, 0.469173,
		39.399967, 36.313160, 34.800148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721264, 36.668770, 34.321457>,  <38.898800, 35.951260, 34.471729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721264, 36.668770, 34.321457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101219, 36.678635, 34.446098>,  <39.329193, 36.684555, 34.520882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101219, 36.678635, 34.446098>,  <38.721264, 36.668770, 34.321457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101219, 36.678635, 34.446098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214985, 0.672111, -0.708553,
		-0.226907, 0.740039, 0.633131,
		0.949892, 0.024661, 0.311604,
		39.386189, 36.686031, 34.539581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920265, 37.332172, 34.205338>,  <38.721264, 36.668770, 34.321457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920265, 37.332172, 34.205338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283508, 37.173237, 34.258194>,  <39.501453, 37.077873, 34.289909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283508, 37.173237, 34.258194>,  <38.920265, 37.332172, 34.205338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283508, 37.173237, 34.258194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359182, 0.576926, -0.733583,
		0.215246, 0.713636, 0.666628,
		0.908106, -0.397342, 0.132144,
		39.555939, 37.054035, 34.297836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.313110, 37.811707, 34.439018>,  <38.920265, 37.332172, 34.205338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.313110, 37.811707, 34.439018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592072, 37.577358, 34.273903>,  <39.759449, 37.436749, 34.174835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592072, 37.577358, 34.273903>,  <39.313110, 37.811707, 34.439018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592072, 37.577358, 34.273903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275573, 0.750898, -0.600176,
		0.661585, 0.304809, 0.685125,
		0.697398, -0.585870, -0.412786,
		39.801292, 37.401596, 34.150066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777412, 38.267353, 34.296764>,  <39.313110, 37.811707, 34.439018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777412, 38.267353, 34.296764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.934040, 37.963795, 34.088631>,  <40.028015, 37.781658, 33.963749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.934040, 37.963795, 34.088631>,  <39.777412, 38.267353, 34.296764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934040, 37.963795, 34.088631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625910, 0.634184, -0.453924,
		0.674471, -0.147942, 0.723327,
		0.391568, -0.758897, -0.520337,
		40.051510, 37.736126, 33.932529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433952, 38.366188, 34.338718>,  <39.777412, 38.267353, 34.296764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433952, 38.366188, 34.338718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403687, 38.122856, 34.022690>,  <40.385529, 37.976856, 33.833073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403687, 38.122856, 34.022690>,  <40.433952, 38.366188, 34.338718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403687, 38.122856, 34.022690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741948, 0.495010, -0.452193,
		0.666175, -0.620405, 0.413895,
		-0.075661, -0.608328, -0.790071,
		40.380989, 37.940357, 33.785667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081570, 38.248657, 34.172264>,  <40.433952, 38.366188, 34.338718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081570, 38.248657, 34.172264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841122, 38.214031, 33.854481>,  <40.696854, 38.193256, 33.663811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841122, 38.214031, 33.854481>,  <41.081570, 38.248657, 34.172264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841122, 38.214031, 33.854481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541076, 0.687510, -0.484321,
		0.588122, -0.720997, -0.366438,
		-0.601123, -0.086569, -0.794453,
		40.660786, 38.188061, 33.616146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800240, 38.354885, 34.199314>,  <41.081570, 38.248657, 34.172264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.800240, 38.354885, 34.199314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.779537, 38.405506, 34.595558>,  <41.767117, 38.435879, 34.833305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.779537, 38.405506, 34.595558>,  <41.800240, 38.354885, 34.199314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.779537, 38.405506, 34.595558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945693, -0.312545, 0.089332,
		0.320915, 0.941435, -0.103503,
		-0.051751, 0.126551, 0.990609,
		41.764011, 38.443470, 34.892742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493721, 38.487572, 33.960617>,  <41.800240, 38.354885, 34.199314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.493721, 38.487572, 33.960617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.240757, 38.361046, 33.677773>,  <42.088978, 38.285130, 33.508068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.240757, 38.361046, 33.677773>,  <42.493721, 38.487572, 33.960617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.240757, 38.361046, 33.677773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062165, -0.889162, 0.453350,
		-0.772133, 0.330661, 0.542654,
		-0.632412, -0.316312, -0.707108,
		42.051033, 38.266151, 33.465641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342461, 38.572056, 34.710171>,  <42.493721, 38.487572, 33.960617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.342461, 38.572056, 34.710171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.313896, 38.180000, 34.784184>,  <42.296757, 37.944767, 34.828590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.313896, 38.180000, 34.784184>,  <42.342461, 38.572056, 34.710171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.313896, 38.180000, 34.784184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427497, -0.197677, -0.882140,
		0.901192, 0.016104, 0.433121,
		-0.071412, -0.980135, 0.185029,
		42.292473, 37.885960, 34.839691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.976727, 38.250847, 34.727852>,  <42.342461, 38.572056, 34.710171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.976727, 38.250847, 34.727852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.713600, 37.973797, 34.609501>,  <42.555725, 37.807568, 34.538490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.713600, 37.973797, 34.609501>,  <42.976727, 38.250847, 34.727852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.713600, 37.973797, 34.609501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484967, -0.088955, -0.869996,
		0.576264, -0.715789, 0.394418,
		-0.657820, -0.692627, -0.295873,
		42.516254, 37.766010, 34.520741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338799, 37.597775, 34.507893>,  <42.976727, 38.250847, 34.727852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.338799, 37.597775, 34.507893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.996487, 37.705597, 34.331264>,  <42.791100, 37.770290, 34.225288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.996487, 37.705597, 34.331264>,  <43.338799, 37.597775, 34.507893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.996487, 37.705597, 34.331264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423637, -0.124778, -0.897197,
		-0.296940, -0.954868, -0.007410,
		-0.855779, 0.269552, -0.441569,
		42.739754, 37.786461, 34.198795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.102493, 37.124180, 33.981915>,  <43.338799, 37.597775, 34.507893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.102493, 37.124180, 33.981915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.969097, 37.493706, 33.906700>,  <42.889061, 37.715420, 33.861572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.969097, 37.493706, 33.906700>,  <43.102493, 37.124180, 33.981915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.969097, 37.493706, 33.906700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514918, 0.011414, -0.857163,
		-0.789712, -0.382675, -0.479494,
		-0.333488, 0.923812, -0.188032,
		42.869049, 37.770851, 33.850292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.724274, 37.160721, 33.375290>,  <43.102493, 37.124180, 33.981915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.724274, 37.160721, 33.375290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.917667, 37.507595, 33.422993>,  <43.033703, 37.715721, 33.451614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.917667, 37.507595, 33.422993>,  <42.724274, 37.160721, 33.375290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.917667, 37.507595, 33.422993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485710, -0.152434, -0.860726,
		-0.728234, 0.474074, -0.494903,
		0.483488, 0.867190, 0.119255,
		43.062714, 37.767754, 33.458771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.797272, 37.482765, 32.702599>,  <42.724274, 37.160721, 33.375290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.797272, 37.482765, 32.702599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.107418, 37.564434, 32.941635>,  <43.293507, 37.613438, 33.085056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.107418, 37.564434, 32.941635>,  <42.797272, 37.482765, 32.702599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.107418, 37.564434, 32.941635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621801, -0.412143, -0.665960,
		0.110323, 0.887948, -0.446517,
		0.775366, 0.204174, 0.597595,
		43.340027, 37.625687, 33.120914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.453415, 37.959202, 32.535042>,  <42.797272, 37.482765, 32.702599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.453415, 37.959202, 32.535042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.525639, 37.646156, 32.773342>,  <43.568974, 37.458328, 32.916321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.525639, 37.646156, 32.773342>,  <43.453415, 37.959202, 32.535042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.525639, 37.646156, 32.773342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601878, -0.391140, -0.696242,
		0.777908, 0.484281, 0.400412,
		0.180559, -0.782612, 0.595749,
		43.579807, 37.411373, 32.952068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.172424, 37.598152, 32.417755>,  <43.453415, 37.959202, 32.535042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.172424, 37.598152, 32.417755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.934288, 37.326336, 32.589241>,  <43.791409, 37.163246, 32.692135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.934288, 37.326336, 32.589241>,  <44.172424, 37.598152, 32.417755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.934288, 37.326336, 32.589241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172337, -0.629155, -0.757934,
		0.784777, -0.377342, 0.491669,
		-0.595336, -0.679542, 0.428716,
		43.755688, 37.122475, 32.717857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.555290, 36.912964, 32.582508>,  <44.172424, 37.598152, 32.417755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.555290, 36.912964, 32.582508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.162052, 36.843952, 32.557968>,  <43.926109, 36.802544, 32.543243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.162052, 36.843952, 32.557968>,  <44.555290, 36.912964, 32.582508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.162052, 36.843952, 32.557968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157527, -0.626042, -0.763713,
		0.093362, -0.760463, 0.642635,
		-0.983092, -0.172534, -0.061345,
		43.867126, 36.792191, 32.539566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.447407, 36.210682, 32.393143>,  <44.555290, 36.912964, 32.582508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.447407, 36.210682, 32.393143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.098907, 36.372593, 32.282089>,  <43.889809, 36.469742, 32.215458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.098907, 36.372593, 32.282089>,  <44.447407, 36.210682, 32.393143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.098907, 36.372593, 32.282089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027810, -0.524013, -0.851256,
		-0.490054, -0.749376, 0.445289,
		-0.871248, 0.404778, -0.277636,
		43.837532, 36.494026, 32.198799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.141674, 35.641289, 31.919764>,  <44.447407, 36.210682, 32.393143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.141674, 35.641289, 31.919764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.887455, 35.943817, 31.857708>,  <43.734924, 36.125332, 31.820475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.887455, 35.943817, 31.857708>,  <44.141674, 35.641289, 31.919764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.887455, 35.943817, 31.857708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293960, -0.422847, -0.857198,
		-0.713914, -0.499182, 0.491065,
		-0.635543, 0.756318, -0.155137,
		43.696793, 36.170712, 31.811167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455044, 35.345814, 31.725233>,  <44.141674, 35.641289, 31.919764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.455044, 35.345814, 31.725233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.464581, 35.723804, 31.594723>,  <43.470303, 35.950600, 31.516417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.464581, 35.723804, 31.594723>,  <43.455044, 35.345814, 31.725233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.464581, 35.723804, 31.594723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373281, -0.294351, -0.879784,
		-0.927412, 0.142764, 0.345724,
		0.023837, 0.944974, -0.326276,
		43.471733, 36.007298, 31.496840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.827736, 35.445625, 31.321676>,  <43.455044, 35.345814, 31.725233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.827736, 35.445625, 31.321676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.044815, 35.759983, 31.203117>,  <43.175060, 35.948597, 31.131981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.044815, 35.759983, 31.203117>,  <42.827736, 35.445625, 31.321676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.044815, 35.759983, 31.203117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335538, -0.120654, -0.934268,
		-0.769998, 0.606475, 0.198219,
		0.542694, 0.785895, -0.296399,
		43.207623, 35.995750, 31.114197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375267, 35.830708, 30.898895>,  <42.827736, 35.445625, 31.321676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375267, 35.830708, 30.898895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740295, 35.940632, 30.777769>,  <42.959312, 36.006588, 30.705093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.740295, 35.940632, 30.777769>,  <42.375267, 35.830708, 30.898895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740295, 35.940632, 30.777769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335441, 0.079539, -0.938698,
		-0.233881, 0.958202, 0.164769,
		0.912567, 0.274814, -0.302818,
		43.014065, 36.023075, 30.686924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222664, 36.366970, 30.488867>,  <42.375267, 35.830708, 30.898895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.222664, 36.366970, 30.488867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.592010, 36.254589, 30.384209>,  <42.813618, 36.187160, 30.321415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.592010, 36.254589, 30.384209>,  <42.222664, 36.366970, 30.488867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.592010, 36.254589, 30.384209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291439, -0.069327, -0.954074,
		0.249908, 0.957215, -0.145894,
		0.923369, -0.280950, -0.261644,
		42.869022, 36.170303, 30.305716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.344997, 36.670361, 29.845808>,  <42.222664, 36.366970, 30.488867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.344997, 36.670361, 29.845808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.636509, 36.396523, 29.839977>,  <42.811417, 36.232220, 29.836479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.636509, 36.396523, 29.839977>,  <42.344997, 36.670361, 29.845808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.636509, 36.396523, 29.839977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226637, -0.221065, -0.948560,
		0.646159, 0.694591, -0.316262,
		0.728776, -0.684597, -0.014577,
		42.855141, 36.191143, 29.835604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.668922, 36.770851, 29.262678>,  <42.344997, 36.670361, 29.845808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.668922, 36.770851, 29.262678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.759583, 36.400642, 29.384027>,  <42.813980, 36.178516, 29.456837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.759583, 36.400642, 29.384027>,  <42.668922, 36.770851, 29.262678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.759583, 36.400642, 29.384027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265693, -0.358420, -0.894954,
		0.937036, 0.122237, -0.327141,
		0.226651, -0.925523, 0.303375,
		42.827579, 36.122986, 29.475040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.978580, 36.526527, 28.718416>,  <42.668922, 36.770851, 29.262678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.978580, 36.526527, 28.718416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.874229, 36.195286, 28.916887>,  <42.811619, 35.996540, 29.035969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.874229, 36.195286, 28.916887>,  <42.978580, 36.526527, 28.718416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.874229, 36.195286, 28.916887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322308, -0.409768, -0.853351,
		0.909979, -0.382541, -0.160005,
		-0.260877, -0.828102, 0.496176,
		42.795967, 35.946854, 29.065741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.211647, 36.029064, 28.266304>,  <42.978580, 36.526527, 28.718416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.211647, 36.029064, 28.266304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938473, 35.869686, 28.511202>,  <42.774570, 35.774059, 28.658140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938473, 35.869686, 28.511202>,  <43.211647, 36.029064, 28.266304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.938473, 35.869686, 28.511202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432471, -0.454922, -0.778469,
		0.588704, -0.796419, 0.138363,
		-0.682932, -0.398449, 0.612243,
		42.733593, 35.750153, 28.694874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.177654, 35.319855, 28.073532>,  <43.211647, 36.029064, 28.266304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.177654, 35.319855, 28.073532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.835571, 35.401123, 28.264252>,  <42.630322, 35.449883, 28.378683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.835571, 35.401123, 28.264252>,  <43.177654, 35.319855, 28.073532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.835571, 35.401123, 28.264252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517735, -0.377080, -0.767959,
		0.023764, -0.903622, 0.427671,
		-0.855211, 0.203171, 0.476797,
		42.579006, 35.462074, 28.407291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.768543, 34.723057, 27.972813>,  <43.177654, 35.319855, 28.073532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.768543, 34.723057, 27.972813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.513332, 35.017754, 28.062366>,  <42.360207, 35.194572, 28.116098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.513332, 35.017754, 28.062366>,  <42.768543, 34.723057, 27.972813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.513332, 35.017754, 28.062366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645540, -0.353285, -0.677102,
		-0.419759, -0.576536, 0.701006,
		-0.638028, 0.736747, 0.223883,
		42.321922, 35.238777, 28.129532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116604, 34.339546, 27.897068>,  <42.768543, 34.723057, 27.972813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.116604, 34.339546, 27.897068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.010807, 34.722633, 27.942364>,  <41.947330, 34.952484, 27.969542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.010807, 34.722633, 27.942364>,  <42.116604, 34.339546, 27.897068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.010807, 34.722633, 27.942364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687461, -0.104889, -0.718607,
		-0.676344, -0.267912, 0.686135,
		-0.264491, 0.957717, 0.113238,
		41.931461, 35.009949, 27.976336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.379482, 34.394768, 28.080132>,  <42.116604, 34.339546, 27.897068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.379482, 34.394768, 28.080132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485111, 34.727043, 27.884079>,  <41.548489, 34.926407, 27.766447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.485111, 34.727043, 27.884079>,  <41.379482, 34.394768, 28.080132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485111, 34.727043, 27.884079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723849, -0.165152, -0.669901,
		-0.637423, 0.531683, 0.557678,
		0.264074, 0.830685, -0.490130,
		41.564335, 34.976250, 27.737040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783875, 34.570305, 27.859541>,  <41.379482, 34.394768, 28.080132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783875, 34.570305, 27.859541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062031, 34.741516, 27.628639>,  <41.228924, 34.844242, 27.490097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.062031, 34.741516, 27.628639>,  <40.783875, 34.570305, 27.859541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.062031, 34.741516, 27.628639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561265, -0.178161, -0.808233,
		-0.448790, 0.886031, 0.116346,
		0.695391, 0.428028, -0.577255,
		41.270649, 34.869923, 27.455463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502445, 35.044582, 27.413118>,  <40.783875, 34.570305, 27.859541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502445, 35.044582, 27.413118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836063, 34.953083, 27.212299>,  <41.036232, 34.898186, 27.091808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836063, 34.953083, 27.212299>,  <40.502445, 35.044582, 27.413118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836063, 34.953083, 27.212299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514625, 0.005397, -0.857398,
		0.198836, 0.973471, -0.113218,
		0.834041, -0.228747, -0.502045,
		41.086277, 34.884460, 27.061686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438126, 35.463223, 26.833801>,  <40.502445, 35.044582, 27.413118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438126, 35.463223, 26.833801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705036, 35.187218, 26.721638>,  <40.865185, 35.021614, 26.654341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.705036, 35.187218, 26.721638>,  <40.438126, 35.463223, 26.833801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.705036, 35.187218, 26.721638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496832, -0.131885, -0.857767,
		0.554885, 0.711685, -0.430822,
		0.667278, -0.690008, -0.280407,
		40.905220, 34.980217, 26.637516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656906, 35.631626, 26.136621>,  <40.438126, 35.463223, 26.833801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656906, 35.631626, 26.136621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690208, 35.240417, 26.213078>,  <40.710190, 35.005692, 26.258951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.690208, 35.240417, 26.213078>,  <40.656906, 35.631626, 26.136621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690208, 35.240417, 26.213078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565393, -0.204305, -0.799118,
		0.820609, -0.041542, -0.569978,
		0.083253, -0.978025, 0.191142,
		40.715183, 34.947010, 26.270420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728291, 35.193180, 25.621754>,  <40.656906, 35.631626, 26.136621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728291, 35.193180, 25.621754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558422, 34.961079, 25.899734>,  <40.456501, 34.821819, 26.066523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.558422, 34.961079, 25.899734>,  <40.728291, 35.193180, 25.621754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558422, 34.961079, 25.899734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614147, -0.379354, -0.692036,
		0.665189, -0.720692, -0.195260,
		-0.424672, -0.580253, 0.694953,
		40.431019, 34.787003, 26.108221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600891, 34.484726, 25.342686>,  <40.728291, 35.193180, 25.621754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600891, 34.484726, 25.342686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342888, 34.495064, 25.648182>,  <40.188087, 34.501266, 25.831480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342888, 34.495064, 25.648182>,  <40.600891, 34.484726, 25.342686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342888, 34.495064, 25.648182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710368, -0.388671, -0.586781,
		0.281679, -0.921014, 0.269054,
		-0.645007, 0.025843, 0.763740,
		40.149387, 34.502815, 25.877304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343971, 33.807720, 25.539970>,  <40.600891, 34.484726, 25.342686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343971, 33.807720, 25.539970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.080101, 34.100021, 25.610203>,  <39.921780, 34.275402, 25.652342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.080101, 34.100021, 25.610203>,  <40.343971, 33.807720, 25.539970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080101, 34.100021, 25.610203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731353, -0.570393, -0.373865,
		-0.173050, -0.375045, 0.910711,
		-0.659679, 0.730749, 0.175584,
		39.882198, 34.319244, 25.662878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099483, 33.493580, 26.219627>,  <40.343971, 33.807720, 25.539970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099483, 33.493580, 26.219627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750423, 33.685596, 26.183733>,  <39.540989, 33.800804, 26.162197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.750423, 33.685596, 26.183733>,  <40.099483, 33.493580, 26.219627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750423, 33.685596, 26.183733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096834, 0.010012, 0.995250,
		0.478655, 0.877191, 0.037747,
		-0.872647, 0.480037, -0.089734,
		39.488628, 33.829609, 26.156813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082092, 34.128746, 26.639746>,  <40.099483, 33.493580, 26.219627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082092, 34.128746, 26.639746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728790, 33.944206, 26.606249>,  <39.516808, 33.833481, 26.586151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728790, 33.944206, 26.606249>,  <40.082092, 34.128746, 26.639746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728790, 33.944206, 26.606249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076997, -0.033466, 0.996469,
		-0.462523, 0.886587, -0.005963,
		-0.883258, -0.461349, -0.083743,
		39.463814, 33.805801, 26.581125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774605, 34.582882, 27.121229>,  <40.082092, 34.128746, 26.639746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774605, 34.582882, 27.121229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642967, 34.209526, 27.063986>,  <39.563984, 33.985512, 27.029640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.642967, 34.209526, 27.063986>,  <39.774605, 34.582882, 27.121229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642967, 34.209526, 27.063986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085878, -0.180507, 0.979817,
		-0.940384, 0.310163, 0.139562,
		-0.329095, -0.933389, -0.143110,
		39.544239, 33.929508, 27.021053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070293, 34.465672, 27.507153>,  <39.774605, 34.582882, 27.121229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070293, 34.465672, 27.507153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306896, 34.147438, 27.454758>,  <39.448860, 33.956497, 27.423321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.306896, 34.147438, 27.454758>,  <39.070293, 34.465672, 27.507153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306896, 34.147438, 27.454758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106638, -0.083836, 0.990757,
		-0.799215, -0.600010, 0.035250,
		0.591509, -0.795588, -0.130987,
		39.484348, 33.908760, 27.415461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019661, 34.026714, 28.072712>,  <39.070293, 34.465672, 27.507153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019661, 34.026714, 28.072712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.355160, 33.871586, 27.919819>,  <39.556458, 33.778507, 27.828083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.355160, 33.871586, 27.919819>,  <39.019661, 34.026714, 28.072712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355160, 33.871586, 27.919819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285623, -0.284289, 0.915204,
		-0.463601, -0.876797, -0.127674,
		0.838745, -0.387823, -0.382230,
		39.606785, 33.755238, 27.805149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213760, 33.655178, 28.653578>,  <39.019661, 34.026714, 28.072712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213760, 33.655178, 28.653578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526321, 33.642487, 28.404287>,  <39.713856, 33.634872, 28.254713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.526321, 33.642487, 28.404287>,  <39.213760, 33.655178, 28.653578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526321, 33.642487, 28.404287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602814, -0.219833, 0.767000,
		-0.161340, -0.975021, -0.152652,
		0.781399, -0.031727, -0.623224,
		39.760742, 33.632969, 28.217319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579723, 33.034382, 28.739212>,  <39.213760, 33.655178, 28.653578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579723, 33.034382, 28.739212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.837463, 33.309223, 28.604933>,  <39.992107, 33.474129, 28.524364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.837463, 33.309223, 28.604933>,  <39.579723, 33.034382, 28.739212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837463, 33.309223, 28.604933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568837, -0.137250, 0.810918,
		0.511113, -0.713474, -0.479289,
		0.644352, 0.687107, -0.335700,
		40.030769, 33.515354, 28.504223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.206223, 32.736855, 28.820587>,  <39.579723, 33.034382, 28.739212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.206223, 32.736855, 28.820587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275600, 33.129978, 28.795269>,  <40.317226, 33.365852, 28.780077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275600, 33.129978, 28.795269>,  <40.206223, 32.736855, 28.820587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275600, 33.129978, 28.795269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670100, -0.070673, 0.738898,
		0.721721, -0.170576, -0.670837,
		0.173448, 0.982807, -0.063296,
		40.327637, 33.424820, 28.776279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009098, 32.853149, 28.765841>,  <40.206223, 32.736855, 28.820587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009098, 32.853149, 28.765841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841194, 33.189438, 28.902660>,  <40.740452, 33.391209, 28.984753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841194, 33.189438, 28.902660>,  <41.009098, 32.853149, 28.765841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841194, 33.189438, 28.902660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803827, 0.169327, 0.570255,
		0.421506, 0.514315, -0.746868,
		-0.419756, 0.840719, 0.342048,
		40.715267, 33.441654, 29.005274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545975, 33.422653, 28.743065>,  <41.009098, 32.853149, 28.765841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.545975, 33.422653, 28.743065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256577, 33.507290, 29.005909>,  <41.082939, 33.558071, 29.163614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256577, 33.507290, 29.005909>,  <41.545975, 33.422653, 28.743065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256577, 33.507290, 29.005909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686819, 0.124687, 0.716054,
		0.069576, 0.969373, -0.235533,
		-0.723491, 0.211588, 0.657108,
		41.039528, 33.570766, 29.203041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819996, 33.987015, 29.201677>,  <41.545975, 33.422653, 28.743065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.819996, 33.987015, 29.201677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506512, 33.831020, 29.395052>,  <41.318420, 33.737423, 29.511076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.506512, 33.831020, 29.395052>,  <41.819996, 33.987015, 29.201677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506512, 33.831020, 29.395052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515324, 0.026261, 0.856593,
		-0.346756, 0.920445, 0.180389,
		-0.783710, -0.389988, 0.483434,
		41.271400, 33.714024, 29.540083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.624428, 34.492779, 29.701265>,  <41.819996, 33.987015, 29.201677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.624428, 34.492779, 29.701265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478317, 34.149979, 29.846661>,  <41.390652, 33.944298, 29.933897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.478317, 34.149979, 29.846661>,  <41.624428, 34.492779, 29.701265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.478317, 34.149979, 29.846661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544273, 0.120161, 0.830258,
		-0.755209, 0.501110, 0.422550,
		-0.365276, -0.857001, 0.363488,
		41.368732, 33.892879, 29.955708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567432, 34.545879, 30.416090>,  <41.624428, 34.492779, 29.701265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567432, 34.545879, 30.416090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515713, 34.151070, 30.378021>,  <41.484680, 33.914185, 30.355181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.515713, 34.151070, 30.378021>,  <41.567432, 34.545879, 30.416090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515713, 34.151070, 30.378021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674854, -0.157913, 0.720858,
		-0.726535, 0.028982, 0.686518,
		-0.129302, -0.987028, -0.095171,
		41.476921, 33.854961, 30.349470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.179092, 34.307735, 31.115528>,  <41.567432, 34.545879, 30.416090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.179092, 34.307735, 31.115528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379364, 34.009243, 30.940046>,  <41.499527, 33.830147, 30.834757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379364, 34.009243, 30.940046>,  <41.179092, 34.307735, 31.115528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379364, 34.009243, 30.940046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506957, -0.158021, 0.847363,
		-0.701651, -0.646662, 0.299189,
		0.500679, -0.746229, -0.438705,
		41.529568, 33.785374, 30.808435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011009, 33.758968, 31.600977>,  <41.179092, 34.307735, 31.115528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011009, 33.758968, 31.600977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336117, 33.662445, 31.388874>,  <41.531181, 33.604530, 31.261612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.336117, 33.662445, 31.388874>,  <41.011009, 33.758968, 31.600977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336117, 33.662445, 31.388874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414846, -0.399311, 0.817590,
		-0.409024, -0.884490, -0.224446,
		0.812775, -0.241303, -0.530255,
		41.579948, 33.590054, 31.229797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326111, 33.140900, 31.952116>,  <41.011009, 33.758968, 31.600977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326111, 33.140900, 31.952116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.611897, 33.280170, 31.709362>,  <41.783367, 33.363735, 31.563709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.611897, 33.280170, 31.709362>,  <41.326111, 33.140900, 31.952116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.611897, 33.280170, 31.709362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664996, -0.068249, 0.743722,
		0.217531, -0.934939, -0.280301,
		0.714466, 0.348181, -0.606884,
		41.826237, 33.384624, 31.527296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.028782, 32.713528, 31.973412>,  <41.326111, 33.140900, 31.952116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.028782, 32.713528, 31.973412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126385, 33.075451, 31.833826>,  <42.184948, 33.292606, 31.750074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.126385, 33.075451, 31.833826>,  <42.028782, 32.713528, 31.973412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126385, 33.075451, 31.833826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754783, 0.048747, 0.654161,
		0.608903, -0.423012, -0.671042,
		0.244007, 0.904812, -0.348964,
		42.199589, 33.346893, 31.729137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683777, 32.738388, 32.102489>,  <42.028782, 32.713528, 31.973412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683777, 32.738388, 32.102489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619663, 33.128792, 32.043556>,  <42.581196, 33.363033, 32.008198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619663, 33.128792, 32.043556>,  <42.683777, 32.738388, 32.102489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.619663, 33.128792, 32.043556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684672, 0.217449, 0.695658,
		0.711008, 0.010632, -0.703103,
		-0.160285, 0.976014, -0.147329,
		42.571579, 33.421597, 31.999357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320507, 33.079086, 32.174641>,  <42.683777, 32.738388, 32.102489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320507, 33.079086, 32.174641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064735, 33.380424, 32.236099>,  <42.911274, 33.561226, 32.272976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.064735, 33.380424, 32.236099>,  <43.320507, 33.079086, 32.174641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.064735, 33.380424, 32.236099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626720, 0.394946, 0.671743,
		0.445368, 0.525828, -0.724674,
		-0.639429, 0.753341, 0.153651,
		42.872906, 33.606426, 32.282196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.680180, 33.620502, 32.124722>,  <43.320507, 33.079086, 32.174641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.680180, 33.620502, 32.124722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.375748, 33.763309, 32.341351>,  <43.193089, 33.848991, 32.471329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.375748, 33.763309, 32.341351>,  <43.680180, 33.620502, 32.124722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.375748, 33.763309, 32.341351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647367, 0.470717, 0.599451,
		-0.040913, 0.806825, -0.589372,
		-0.761080, 0.357014, 0.541570,
		43.147423, 33.870415, 32.503822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.851223, 34.275497, 32.113106>,  <43.680180, 33.620502, 32.124722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.851223, 34.275497, 32.113106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.599117, 34.215397, 32.417786>,  <43.447853, 34.179337, 32.600594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.599117, 34.215397, 32.417786>,  <43.851223, 34.275497, 32.113106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.599117, 34.215397, 32.417786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522366, 0.643751, 0.559213,
		-0.574368, 0.750340, -0.327248,
		-0.630266, -0.150251, 0.761702,
		43.410038, 34.170322, 32.646297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.721466, 34.996777, 32.426426>,  <43.851223, 34.275497, 32.113106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.721466, 34.996777, 32.426426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.647434, 34.704147, 32.688889>,  <43.603016, 34.528568, 32.846367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.647434, 34.704147, 32.688889>,  <43.721466, 34.996777, 32.426426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.647434, 34.704147, 32.688889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562224, 0.468803, 0.681269,
		-0.806008, 0.494997, 0.324544,
		-0.185079, -0.731575, 0.656158,
		43.591911, 34.484676, 32.885735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.347221, 35.327446, 33.073170>,  <43.721466, 34.996777, 32.426426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.347221, 35.327446, 33.073170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.524853, 34.996006, 33.209530>,  <43.631432, 34.797142, 33.291344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.524853, 34.996006, 33.209530>,  <43.347221, 35.327446, 33.073170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.524853, 34.996006, 33.209530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340734, 0.508062, 0.791058,
		-0.828670, -0.235138, 0.507954,
		0.444080, -0.828603, 0.340896,
		43.658077, 34.747425, 33.311798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.286617, 35.309261, 33.768253>,  <43.347221, 35.327446, 33.073170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.286617, 35.309261, 33.768253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564316, 35.021690, 33.754620>,  <43.730934, 34.849148, 33.746441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564316, 35.021690, 33.754620>,  <43.286617, 35.309261, 33.768253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.564316, 35.021690, 33.754620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548028, 0.497329, 0.672554,
		-0.466571, -0.485595, 0.739263,
		0.694245, -0.718931, -0.034081,
		43.772591, 34.806011, 33.744396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.456314, 35.120499, 34.424210>,  <43.286617, 35.309261, 33.768253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.456314, 35.120499, 34.424210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783512, 34.979664, 34.242252>,  <43.979832, 34.895164, 34.133080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783512, 34.979664, 34.242252>,  <43.456314, 35.120499, 34.424210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.783512, 34.979664, 34.242252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572635, 0.573451, 0.585870,
		0.054585, -0.739725, 0.670692,
		0.817991, -0.352082, -0.454894,
		44.028908, 34.874039, 34.105785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.958279, 34.903580, 34.960659>,  <43.456314, 35.120499, 34.424210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.958279, 34.903580, 34.960659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.171459, 34.944603, 34.624699>,  <44.299370, 34.969219, 34.423122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.171459, 34.944603, 34.624699>,  <43.958279, 34.903580, 34.960659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.171459, 34.944603, 34.624699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637440, 0.604109, 0.478249,
		0.556443, -0.790274, 0.256588,
		0.532955, 0.102559, -0.839905,
		44.331345, 34.975372, 34.372726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.698238, 34.768017, 35.140888>,  <43.958279, 34.903580, 34.960659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.698238, 34.768017, 35.140888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.671734, 35.003559, 34.818680>,  <44.655830, 35.144886, 34.625355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.671734, 35.003559, 34.818680>,  <44.698238, 34.768017, 35.140888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.671734, 35.003559, 34.818680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545742, 0.697227, 0.464801,
		0.835330, -0.408806, -0.367563,
		-0.066262, 0.588857, -0.805517,
		44.651855, 35.180218, 34.577026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.332558, 35.090588, 35.080338>,  <44.698238, 34.768017, 35.140888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.332558, 35.090588, 35.080338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.052761, 35.320534, 34.910522>,  <44.884884, 35.458504, 34.808632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.052761, 35.320534, 34.910522>,  <45.332558, 35.090588, 35.080338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.052761, 35.320534, 34.910522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300836, 0.775730, 0.554744,
		0.648232, 0.260324, -0.715560,
		-0.699495, 0.574869, -0.424538,
		44.842911, 35.492996, 34.783161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.974091, 34.591003, 35.016403>,  <45.332558, 35.090588, 35.080338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.974091, 34.591003, 35.016403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.345173, 34.455330, 34.954033>,  <46.567822, 34.373924, 34.916611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.345173, 34.455330, 34.954033>,  <45.974091, 34.591003, 35.016403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.345173, 34.455330, 34.954033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342961, 0.939345, -0.002836,
		0.147433, -0.050846, 0.987764,
		0.927708, -0.339183, -0.155929,
		46.623486, 34.353577, 34.907253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.441383, 35.185200, 35.204002>,  <45.974091, 34.591003, 35.016403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.441383, 35.185200, 35.204002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.658569, 34.925804, 34.990593>,  <46.788879, 34.770164, 34.862545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.658569, 34.925804, 34.990593>,  <46.441383, 35.185200, 35.204002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.658569, 34.925804, 34.990593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498312, 0.760195, -0.416878,
		0.675928, -0.039515, 0.735908,
		0.542961, -0.648492, -0.533528,
		46.821457, 34.731258, 34.830536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.231186, 35.222664, 35.461792>,  <46.441383, 35.185200, 35.204002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.231186, 35.222664, 35.461792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.161156, 35.089836, 35.091045>,  <47.119137, 35.010139, 34.868599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.161156, 35.089836, 35.091045>,  <47.231186, 35.222664, 35.461792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.161156, 35.089836, 35.091045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750053, 0.564850, -0.344043,
		0.637785, -0.755432, 0.150176,
		-0.175074, -0.332065, -0.926867,
		47.108635, 34.990215, 34.812984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.870735, 34.898460, 35.211502>,  <47.231186, 35.222664, 35.461792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.870735, 34.898460, 35.211502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.629993, 34.957142, 34.897495>,  <47.485546, 34.992352, 34.709091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.629993, 34.957142, 34.897495>,  <47.870735, 34.898460, 35.211502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.629993, 34.957142, 34.897495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727999, 0.504890, -0.463792,
		0.328308, -0.850626, -0.410670,
		-0.601857, 0.146700, -0.785014,
		47.449436, 35.001152, 34.661991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.054913, 36.530857, 42.078465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.824753, 36.204582, 42.102371>,  <35.686657, 36.008816, 42.116714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.824753, 36.204582, 42.102371>,  <36.054913, 36.530857, 42.078465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824753, 36.204582, 42.102371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325159, 0.161092, -0.931837,
		0.750462, -0.555608, -0.357920,
		-0.575395, -0.815689, 0.059767,
		35.652134, 35.959877, 42.120300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053391, 36.197586, 41.446480>,  <36.054913, 36.530857, 42.078465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053391, 36.197586, 41.446480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.705097, 36.057617, 41.584679>,  <35.496120, 35.973637, 41.667599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.705097, 36.057617, 41.584679>,  <36.053391, 36.197586, 41.446480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705097, 36.057617, 41.584679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320375, -0.129349, -0.938418,
		0.373065, -0.927805, 0.000522,
		-0.870737, -0.349924, 0.345501,
		35.443874, 35.952641, 41.688328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957512, 35.695976, 40.981518>,  <36.053391, 36.197586, 41.446480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957512, 35.695976, 40.981518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.587051, 35.751682, 41.121712>,  <35.364773, 35.785107, 41.205830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.587051, 35.751682, 41.121712>,  <35.957512, 35.695976, 40.981518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587051, 35.751682, 41.121712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361672, -0.064514, -0.930071,
		-0.106922, -0.988150, 0.110121,
		-0.926154, 0.139272, 0.350489,
		35.309204, 35.793461, 41.226860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552326, 35.206890, 40.608662>,  <35.957512, 35.695976, 40.981518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552326, 35.206890, 40.608662> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.305244, 35.491772, 40.742050>,  <35.156994, 35.662701, 40.822083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.305244, 35.491772, 40.742050>,  <35.552326, 35.206890, 40.608662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305244, 35.491772, 40.742050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430817, 0.048282, -0.901147,
		-0.657905, -0.700306, 0.277007,
		-0.617704, 0.712208, 0.333469,
		35.119934, 35.705433, 40.842091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955139, 35.032131, 40.188915>,  <35.552326, 35.206890, 40.608662>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955139, 35.032131, 40.188915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.877354, 35.397327, 40.332371>,  <34.830681, 35.616447, 40.418446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.877354, 35.397327, 40.332371>,  <34.955139, 35.032131, 40.188915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877354, 35.397327, 40.332371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533365, 0.208430, -0.819804,
		-0.823228, -0.350712, 0.446426,
		-0.194466, 0.912994, 0.358643,
		34.819016, 35.671227, 40.439964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247627, 35.075474, 40.265755>,  <34.955139, 35.032131, 40.188915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247627, 35.075474, 40.265755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.391640, 35.446136, 40.222519>,  <34.478046, 35.668533, 40.196579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.391640, 35.446136, 40.222519>,  <34.247627, 35.075474, 40.265755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391640, 35.446136, 40.222519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439995, 0.066496, -0.895535,
		-0.822666, 0.369980, 0.431665,
		0.360034, 0.926657, -0.108086,
		34.499649, 35.724133, 40.190094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779427, 35.450539, 39.882942>,  <34.247627, 35.075474, 40.265755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779427, 35.450539, 39.882942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.109669, 35.672451, 39.841770>,  <34.307812, 35.805599, 39.817066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.109669, 35.672451, 39.841770>,  <33.779427, 35.450539, 39.882942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109669, 35.672451, 39.841770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223296, 0.153714, -0.962554,
		-0.518188, 0.817671, 0.250788,
		0.825603, 0.554784, -0.102930,
		34.357349, 35.838886, 39.810890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640656, 36.049473, 39.458336>,  <33.779427, 35.450539, 39.882942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640656, 36.049473, 39.458336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.039108, 36.037998, 39.425117>,  <34.278179, 36.031113, 39.405186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.039108, 36.037998, 39.425117>,  <33.640656, 36.049473, 39.458336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039108, 36.037998, 39.425117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084749, -0.064267, -0.994328,
		0.023185, 0.997520, -0.066450,
		0.996133, -0.028685, -0.083049,
		34.337948, 36.029392, 39.400204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809490, 36.599892, 38.988735>,  <33.640656, 36.049473, 39.458336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809490, 36.599892, 38.988735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.094677, 36.325771, 38.929348>,  <34.265789, 36.161301, 38.893715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.094677, 36.325771, 38.929348>,  <33.809490, 36.599892, 38.988735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.094677, 36.325771, 38.929348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026713, 0.185042, -0.982368,
		0.700688, 0.704363, 0.113623,
		0.712968, -0.685298, -0.148472,
		34.308567, 36.120182, 38.884808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408283, 36.964115, 38.538342>,  <33.809490, 36.599892, 38.988735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408283, 36.964115, 38.538342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.490448, 36.573528, 38.512039>,  <34.539749, 36.339176, 38.496258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.490448, 36.573528, 38.512039>,  <34.408283, 36.964115, 38.538342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490448, 36.573528, 38.512039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252854, 0.117863, -0.960298,
		0.945446, 0.180633, 0.271114,
		0.205416, -0.976463, -0.065759,
		34.552074, 36.280590, 38.492310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001434, 36.915073, 38.219143>,  <34.408283, 36.964115, 38.538342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001434, 36.915073, 38.219143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.849983, 36.551037, 38.151752>,  <34.759113, 36.332615, 38.111317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.849983, 36.551037, 38.151752>,  <35.001434, 36.915073, 38.219143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849983, 36.551037, 38.151752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123312, 0.130803, -0.983710,
		0.917299, -0.393232, 0.062699,
		-0.378625, -0.910088, -0.168476,
		34.736397, 36.278011, 38.101212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.446316, 36.665829, 37.829987>,  <35.001434, 36.915073, 38.219143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.446316, 36.665829, 37.829987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.135559, 36.426098, 37.752792>,  <34.949104, 36.282261, 37.706474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.135559, 36.426098, 37.752792>,  <35.446316, 36.665829, 37.829987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.135559, 36.426098, 37.752792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102744, 0.181724, -0.977967,
		0.621193, -0.779604, -0.079603,
		-0.776893, -0.599328, -0.192986,
		34.902493, 36.246300, 37.694897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574642, 36.214191, 37.209354>,  <35.446316, 36.665829, 37.829987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574642, 36.214191, 37.209354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.175274, 36.191986, 37.212791>,  <34.935654, 36.178665, 37.214855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.175274, 36.191986, 37.212791>,  <35.574642, 36.214191, 37.209354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175274, 36.191986, 37.212791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019344, 0.196141, -0.980385,
		0.052733, -0.979003, -0.196905,
		-0.998421, -0.055507, 0.008595,
		34.875748, 36.175335, 37.215370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305416, 35.705620, 36.677235>,  <35.574642, 36.214191, 37.209354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305416, 35.705620, 36.677235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.026169, 35.978630, 36.763760>,  <34.858620, 36.142437, 36.815674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.026169, 35.978630, 36.763760>,  <35.305416, 35.705620, 36.677235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026169, 35.978630, 36.763760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118995, 0.187319, -0.975065,
		-0.706024, -0.706452, -0.049554,
		-0.698119, 0.682523, 0.216316,
		34.816734, 36.183388, 36.828655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792683, 35.558594, 36.220108>,  <35.305416, 35.705620, 36.677235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792683, 35.558594, 36.220108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.736462, 35.929485, 36.358959>,  <34.702728, 36.152020, 36.442268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.736462, 35.929485, 36.358959>,  <34.792683, 35.558594, 36.220108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736462, 35.929485, 36.358959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146241, 0.327318, -0.933529,
		-0.979213, -0.181978, 0.089591,
		-0.140557, 0.927225, 0.347127,
		34.694294, 36.207653, 36.463097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455616, 35.732262, 35.651604>,  <34.792683, 35.558594, 36.220108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455616, 35.732262, 35.651604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.550270, 36.075237, 35.834381>,  <34.607063, 36.281021, 35.944050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.550270, 36.075237, 35.834381>,  <34.455616, 35.732262, 35.651604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550270, 36.075237, 35.834381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003452, 0.471042, -0.882104,
		-0.971592, 0.207162, 0.114427,
		0.236638, 0.857440, 0.456946,
		34.621262, 36.332470, 35.971466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138214, 36.234997, 35.210247>,  <34.455616, 35.732262, 35.651604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138214, 36.234997, 35.210247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.420132, 36.405876, 35.436790>,  <34.589283, 36.508404, 35.572716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.420132, 36.405876, 35.436790>,  <34.138214, 36.234997, 35.210247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420132, 36.405876, 35.436790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390437, 0.432974, -0.812460,
		-0.592300, 0.793748, 0.138365,
		0.704798, 0.427197, 0.566359,
		34.631573, 36.534035, 35.606697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069664, 36.895218, 35.080322>,  <34.138214, 36.234997, 35.210247>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069664, 36.895218, 35.080322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.435062, 36.890491, 35.242996>,  <34.654301, 36.887657, 35.340599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.435062, 36.890491, 35.242996>,  <34.069664, 36.895218, 35.080322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435062, 36.890491, 35.242996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306033, 0.678625, -0.667691,
		-0.268099, 0.734389, 0.623534,
		0.913492, -0.011814, 0.406686,
		34.709110, 36.886948, 35.365002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302338, 37.610348, 35.103970>,  <34.069664, 36.895218, 35.080322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302338, 37.610348, 35.103970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.633533, 37.387699, 35.131134>,  <34.832253, 37.254112, 35.147434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.633533, 37.387699, 35.131134>,  <34.302338, 37.610348, 35.103970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633533, 37.387699, 35.131134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465332, 0.614469, -0.637098,
		0.312891, 0.559111, 0.767785,
		0.827989, -0.556618, 0.067910,
		34.881931, 37.220715, 35.151508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902103, 38.006783, 35.337254>,  <34.302338, 37.610348, 35.103970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902103, 38.006783, 35.337254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.102322, 37.699532, 35.177536>,  <35.222454, 37.515182, 35.081707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.102322, 37.699532, 35.177536>,  <34.902103, 38.006783, 35.337254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102322, 37.699532, 35.177536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563557, 0.639235, -0.523241,
		0.657157, 0.036884, 0.752851,
		0.500548, -0.768126, -0.399292,
		35.252487, 37.469093, 35.057747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500011, 38.340267, 35.195400>,  <34.902103, 38.006783, 35.337254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500011, 38.340267, 35.195400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.501263, 38.005646, 34.976254>,  <35.502014, 37.804871, 34.844765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.501263, 38.005646, 34.976254>,  <35.500011, 38.340267, 35.195400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501263, 38.005646, 34.976254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376523, 0.508538, -0.774351,
		0.926402, -0.203866, 0.316572,
		0.003125, -0.836557, -0.547871,
		35.502201, 37.754677, 34.811893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096611, 38.451485, 34.884830>,  <35.500011, 38.340267, 35.195400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096611, 38.451485, 34.884830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.900688, 38.188602, 34.655685>,  <35.783134, 38.030872, 34.518200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.900688, 38.188602, 34.655685>,  <36.096611, 38.451485, 34.884830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900688, 38.188602, 34.655685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258542, 0.518030, -0.815353,
		0.832612, -0.547477, -0.083822,
		-0.489810, -0.657201, -0.572864,
		35.753746, 37.991444, 34.483826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395668, 38.300591, 34.170231>,  <36.096611, 38.451485, 34.884830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395668, 38.300591, 34.170231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.707809, 38.520935, 34.051849>,  <36.895096, 38.653141, 33.980820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.707809, 38.520935, 34.051849>,  <36.395668, 38.300591, 34.170231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707809, 38.520935, 34.051849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541712, -0.359077, 0.760008,
		0.312392, -0.753400, -0.578619,
		0.780358, 0.550865, -0.295953,
		36.941917, 38.686195, 33.963062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983990, 37.859398, 34.056473>,  <36.395668, 38.300591, 34.170231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983990, 37.859398, 34.056473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.116146, 38.227203, 34.141632>,  <37.195442, 38.447887, 34.192730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.116146, 38.227203, 34.141632>,  <36.983990, 37.859398, 34.056473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116146, 38.227203, 34.141632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515253, -0.364709, 0.775565,
		0.790793, -0.146543, -0.594282,
		0.330394, 0.919517, 0.212903,
		37.215263, 38.503059, 34.205502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675144, 37.786179, 34.235233>,  <36.983990, 37.859398, 34.056473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675144, 37.786179, 34.235233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.585136, 38.150139, 34.374626>,  <37.531132, 38.368515, 34.458263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.585136, 38.150139, 34.374626>,  <37.675144, 37.786179, 34.235233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585136, 38.150139, 34.374626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495531, -0.201080, 0.844994,
		0.838937, 0.362825, -0.405639,
		-0.225019, 0.909904, 0.348485,
		37.517632, 38.423111, 34.479172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303143, 38.013378, 34.457771>,  <37.675144, 37.786179, 34.235233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303143, 38.013378, 34.457771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.016293, 38.224400, 34.639942>,  <37.844181, 38.351013, 34.749245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.016293, 38.224400, 34.639942>,  <38.303143, 38.013378, 34.457771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016293, 38.224400, 34.639942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469576, -0.117132, 0.875088,
		0.515002, 0.841407, -0.163729,
		-0.717127, 0.527555, 0.455427,
		37.801155, 38.382668, 34.776569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554371, 38.518345, 34.793877>,  <38.303143, 38.013378, 34.457771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554371, 38.518345, 34.793877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.205173, 38.450062, 34.976627>,  <37.995655, 38.409092, 35.086277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.205173, 38.450062, 34.976627>,  <38.554371, 38.518345, 34.793877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.205173, 38.450062, 34.976627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464925, -0.008194, 0.885312,
		-0.147389, 0.985287, 0.086521,
		-0.872996, -0.170711, 0.456877,
		37.943275, 38.398849, 35.113689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656006, 38.909779, 35.505119>,  <38.554371, 38.518345, 34.793877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656006, 38.909779, 35.505119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.308018, 38.715645, 35.540020>,  <38.099224, 38.599167, 35.560959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.308018, 38.715645, 35.540020>,  <38.656006, 38.909779, 35.505119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308018, 38.715645, 35.540020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180974, -0.149654, 0.972035,
		-0.458702, 0.861428, 0.218026,
		-0.869966, -0.485331, 0.087249,
		38.047028, 38.570045, 35.566196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437435, 39.022511, 36.212101>,  <38.656006, 38.909779, 35.505119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437435, 39.022511, 36.212101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.185204, 38.736752, 36.090767>,  <38.033867, 38.565296, 36.017967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.185204, 38.736752, 36.090767>,  <38.437435, 39.022511, 36.212101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185204, 38.736752, 36.090767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139317, -0.280297, 0.949749,
		-0.763522, 0.641149, 0.077221,
		-0.630575, -0.714396, -0.303336,
		37.996033, 38.522434, 35.999767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759842, 39.032185, 36.607780>,  <38.437435, 39.022511, 36.212101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759842, 39.032185, 36.607780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.834755, 38.657307, 36.490078>,  <37.879704, 38.432381, 36.419456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.834755, 38.657307, 36.490078>,  <37.759842, 39.032185, 36.607780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834755, 38.657307, 36.490078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156421, -0.324190, 0.932970,
		-0.969771, -0.128704, -0.207313,
		0.187286, -0.937196, -0.294258,
		37.890942, 38.376148, 36.401802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167641, 38.644100, 36.789948>,  <37.759842, 39.032185, 36.607780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167641, 38.644100, 36.789948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.454304, 38.368843, 36.744564>,  <37.626301, 38.203690, 36.717335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.454304, 38.368843, 36.744564>,  <37.167641, 38.644100, 36.789948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454304, 38.368843, 36.744564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161726, -0.322212, 0.932751,
		-0.678420, -0.650110, -0.342205,
		0.716653, -0.688140, -0.113455,
		37.669300, 38.162403, 36.710529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009499, 38.235176, 37.228619>,  <37.167641, 38.644100, 36.789948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009499, 38.235176, 37.228619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.371155, 38.076385, 37.165451>,  <37.588150, 37.981113, 37.127552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.371155, 38.076385, 37.165451>,  <37.009499, 38.235176, 37.228619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371155, 38.076385, 37.165451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018429, -0.405522, 0.913899,
		-0.426842, -0.823381, -0.373964,
		0.904139, -0.396982, -0.157920,
		37.642399, 37.957294, 37.118076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967037, 37.480400, 37.412479>,  <37.009499, 38.235176, 37.228619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967037, 37.480400, 37.412479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.342968, 37.614975, 37.436283>,  <37.568527, 37.695721, 37.450565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.342968, 37.614975, 37.436283>,  <36.967037, 37.480400, 37.412479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342968, 37.614975, 37.436283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047433, -0.300970, 0.952454,
		0.338353, -0.892315, -0.298816,
		0.939823, 0.336439, 0.059509,
		37.624916, 37.715908, 37.454136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214001, 36.832382, 37.731533>,  <36.967037, 37.480400, 37.412479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214001, 36.832382, 37.731533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.488060, 37.114048, 37.806076>,  <37.652496, 37.283047, 37.850800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.488060, 37.114048, 37.806076>,  <37.214001, 36.832382, 37.731533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488060, 37.114048, 37.806076> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040023, -0.219059, 0.974890,
		0.727302, -0.675404, -0.121906,
		0.685149, 0.704161, 0.186354,
		37.693604, 37.325294, 37.861980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712872, 36.522556, 38.218182>,  <37.214001, 36.832382, 37.731533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712872, 36.522556, 38.218182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.727646, 36.921005, 38.250107>,  <37.736511, 37.160076, 38.269264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.727646, 36.921005, 38.250107>,  <37.712872, 36.522556, 38.218182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727646, 36.921005, 38.250107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223971, -0.069586, 0.972108,
		0.973895, -0.053785, 0.220533,
		0.036939, 0.996125, 0.079815,
		37.738728, 37.219841, 38.274052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332710, 36.686863, 38.660175>,  <37.712872, 36.522556, 38.218182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332710, 36.686863, 38.660175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.066315, 36.983498, 38.692467>,  <37.906479, 37.161476, 38.711842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.066315, 36.983498, 38.692467>,  <38.332710, 36.686863, 38.660175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066315, 36.983498, 38.692467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054031, -0.155887, 0.986296,
		0.744004, 0.652498, 0.143887,
		-0.665987, 0.741583, 0.080726,
		37.866520, 37.205971, 38.716686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606964, 37.056049, 39.043709>,  <38.332710, 36.686863, 38.660175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.606964, 37.056049, 39.043709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.254486, 37.239941, 39.087803>,  <38.042999, 37.350273, 39.114262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.254486, 37.239941, 39.087803>,  <38.606964, 37.056049, 39.043709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254486, 37.239941, 39.087803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049679, -0.141844, 0.988642,
		0.470140, 0.876660, 0.102153,
		-0.881193, 0.459725, 0.110238,
		37.990128, 37.377857, 39.120872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694351, 37.671364, 39.506332>,  <38.606964, 37.056049, 39.043709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694351, 37.671364, 39.506332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.315506, 37.543308, 39.497524>,  <38.088200, 37.466476, 39.492241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.315506, 37.543308, 39.497524>,  <38.694351, 37.671364, 39.506332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315506, 37.543308, 39.497524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029212, 0.017689, 0.999417,
		-0.319558, 0.947207, -0.026105,
		-0.947116, -0.320134, -0.022017,
		38.031372, 37.447269, 39.490921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421803, 38.035831, 40.020275>,  <38.694351, 37.671364, 39.506332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421803, 38.035831, 40.020275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.154686, 37.742310, 39.970325>,  <37.994415, 37.566196, 39.940353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.154686, 37.742310, 39.970325>,  <38.421803, 38.035831, 40.020275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154686, 37.742310, 39.970325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028176, -0.192566, 0.980879,
		-0.743817, 0.651502, 0.149269,
		-0.667789, -0.733801, -0.124877,
		37.954350, 37.522171, 39.932861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920822, 38.142750, 40.457771>,  <38.421803, 38.035831, 40.020275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920822, 38.142750, 40.457771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.865490, 37.751579, 40.395123>,  <37.832291, 37.516876, 40.357533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.865490, 37.751579, 40.395123>,  <37.920822, 38.142750, 40.457771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865490, 37.751579, 40.395123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090356, -0.145024, 0.985294,
		-0.986255, 0.150453, -0.068299,
		-0.138335, -0.977922, -0.156625,
		37.823990, 37.458202, 40.348137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.310772, 37.883297, 41.065193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.493195, 37.565674, 40.904449>,  <37.602650, 37.375099, 40.808002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.493195, 37.565674, 40.904449>,  <37.310772, 37.883297, 41.065193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493195, 37.565674, 40.904449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091668, -0.491061, 0.866289,
		-0.885217, -0.358240, -0.296741,
		0.456057, -0.794055, -0.401856,
		37.630013, 37.327457, 40.783894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989582, 37.298840, 41.455795>,  <37.310772, 37.883297, 41.065193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989582, 37.298840, 41.455795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.308479, 37.098583, 41.320881>,  <37.499817, 36.978428, 41.239933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.308479, 37.098583, 41.320881>,  <36.989582, 37.298840, 41.455795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308479, 37.098583, 41.320881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015810, -0.575864, 0.817393,
		-0.603456, -0.646325, -0.467016,
		0.797239, -0.500644, -0.337290,
		37.547653, 36.948391, 41.219696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915390, 36.608013, 41.734985>,  <36.989582, 37.298840, 41.455795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915390, 36.608013, 41.734985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.300259, 36.638119, 41.630241>,  <37.531178, 36.656181, 41.567394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.300259, 36.638119, 41.630241>,  <36.915390, 36.608013, 41.734985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300259, 36.638119, 41.630241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266186, -0.464714, 0.844504,
		-0.058129, -0.882256, -0.467166,
		0.962168, 0.075263, -0.261858,
		37.588909, 36.660698, 41.551685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290298, 35.895054, 41.771790>,  <36.915390, 36.608013, 41.734985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290298, 35.895054, 41.771790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.581306, 36.167767, 41.802475>,  <37.755913, 36.331394, 41.820885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.581306, 36.167767, 41.802475>,  <37.290298, 35.895054, 41.771790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.581306, 36.167767, 41.802475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364477, -0.478796, 0.798693,
		0.581262, -0.553109, -0.596829,
		0.727523, 0.681781, 0.076711,
		37.799564, 36.372299, 41.825489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923462, 35.577740, 41.900925>,  <37.290298, 35.895054, 41.771790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923462, 35.577740, 41.900925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.973095, 35.951221, 42.035263>,  <38.002872, 36.175312, 42.115868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.973095, 35.951221, 42.035263>,  <37.923462, 35.577740, 41.900925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973095, 35.951221, 42.035263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374904, -0.357490, 0.855364,
		0.918723, 0.019779, -0.394408,
		0.124079, 0.933707, 0.335849,
		38.010319, 36.231335, 42.136017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641800, 35.560814, 42.259090>,  <37.923462, 35.577740, 41.900925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641800, 35.560814, 42.259090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.437031, 35.863205, 42.422279>,  <38.314171, 36.044640, 42.520191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.437031, 35.863205, 42.422279>,  <38.641800, 35.560814, 42.259090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437031, 35.863205, 42.422279> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513056, -0.111848, 0.851037,
		0.688992, 0.644977, -0.330599,
		-0.511922, 0.755973, 0.407971,
		38.283455, 36.089996, 42.544670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171417, 35.849350, 42.599674>,  <38.641800, 35.560814, 42.259090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171417, 35.849350, 42.599674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.841637, 35.997875, 42.770508>,  <38.643768, 36.086990, 42.873009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.841637, 35.997875, 42.770508>,  <39.171417, 35.849350, 42.599674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841637, 35.997875, 42.770508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313818, -0.328049, 0.891012,
		0.470952, 0.868625, 0.153935,
		-0.824453, 0.371316, 0.427085,
		38.594299, 36.109268, 42.898632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343464, 36.162945, 43.198399>,  <39.171417, 35.849350, 42.599674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.343464, 36.162945, 43.198399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.952179, 36.141804, 43.278713>,  <38.717407, 36.129120, 43.326900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.952179, 36.141804, 43.278713>,  <39.343464, 36.162945, 43.198399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952179, 36.141804, 43.278713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207545, -0.274986, 0.938780,
		0.005599, 0.959994, 0.279963,
		-0.978209, -0.052848, 0.200782,
		38.658714, 36.125950, 43.338947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204399, 36.646168, 43.722027>,  <39.343464, 36.162945, 43.198399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204399, 36.646168, 43.722027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.921825, 36.363113, 43.727722>,  <38.752281, 36.193283, 43.731140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.921825, 36.363113, 43.727722>,  <39.204399, 36.646168, 43.722027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.921825, 36.363113, 43.727722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180959, -0.161127, 0.970202,
		-0.684251, 0.687965, 0.241878,
		-0.706438, -0.707632, 0.014242,
		38.709892, 36.150826, 43.731995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855057, 36.706051, 44.292072>,  <39.204399, 36.646168, 43.722027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855057, 36.706051, 44.292072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.754276, 36.327568, 44.210865>,  <38.693810, 36.100479, 44.162140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.754276, 36.327568, 44.210865>,  <38.855057, 36.706051, 44.292072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754276, 36.327568, 44.210865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163863, -0.248470, 0.954679,
		-0.953766, 0.207266, 0.217651,
		-0.251952, -0.946205, -0.203019,
		38.678692, 36.043705, 44.149960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379406, 36.475594, 44.814846>,  <38.855057, 36.706051, 44.292072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379406, 36.475594, 44.814846> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.522636, 36.138714, 44.653614>,  <38.608574, 35.936584, 44.556873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.522636, 36.138714, 44.653614>,  <38.379406, 36.475594, 44.814846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522636, 36.138714, 44.653614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348562, -0.279919, 0.894511,
		-0.866190, -0.460804, 0.193327,
		0.358078, -0.842203, -0.403082,
		38.630058, 35.886051, 44.532688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303772, 36.116058, 45.360409>,  <38.379406, 36.475594, 44.814846>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303772, 36.116058, 45.360409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.539909, 35.890614, 45.129295>,  <38.681591, 35.755348, 44.990627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.539909, 35.890614, 45.129295>,  <38.303772, 36.116058, 45.360409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539909, 35.890614, 45.129295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447011, -0.367733, 0.815447,
		-0.672066, -0.739671, 0.034852,
		0.590346, -0.563614, -0.577781,
		38.717014, 35.721531, 44.955959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293480, 35.513592, 45.651306>,  <38.303772, 36.116058, 45.360409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293480, 35.513592, 45.651306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.622208, 35.470486, 45.427517>,  <38.819443, 35.444622, 45.293243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.622208, 35.470486, 45.427517>,  <38.293480, 35.513592, 45.651306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622208, 35.470486, 45.427517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487155, -0.376321, 0.788075,
		-0.295467, -0.920201, -0.256769,
		0.821814, -0.107764, -0.559471,
		38.868752, 35.438156, 45.259674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512699, 34.844261, 45.621941>,  <38.293480, 35.513592, 45.651306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512699, 34.844261, 45.621941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.845085, 35.046322, 45.528721>,  <39.044518, 35.167561, 45.472790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.845085, 35.046322, 45.528721>,  <38.512699, 34.844261, 45.621941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845085, 35.046322, 45.528721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456903, -0.380712, 0.803926,
		0.317385, -0.774516, -0.547167,
		0.830967, 0.505157, -0.233047,
		39.094376, 35.197868, 45.458805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128998, 34.380531, 45.624523>,  <38.512699, 34.844261, 45.621941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128998, 34.380531, 45.624523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.291500, 34.744068, 45.662411>,  <39.389000, 34.962189, 45.685143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.291500, 34.744068, 45.662411>,  <39.128998, 34.380531, 45.624523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.291500, 34.744068, 45.662411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563785, -0.330879, 0.756746,
		0.719100, -0.254030, -0.646811,
		0.406253, 0.908839, 0.094716,
		39.413376, 35.016720, 45.690826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761349, 34.218319, 45.760208>,  <39.128998, 34.380531, 45.624523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761349, 34.218319, 45.760208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.769238, 34.605659, 45.859726>,  <39.773972, 34.838066, 45.919437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.769238, 34.605659, 45.859726>,  <39.761349, 34.218319, 45.760208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769238, 34.605659, 45.859726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549023, -0.218458, 0.806753,
		0.835575, 0.120688, -0.535956,
		0.019718, 0.968355, 0.248798,
		39.775154, 34.896168, 45.934364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479446, 34.352543, 45.950325>,  <39.761349, 34.218319, 45.760208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479446, 34.352543, 45.950325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.259823, 34.636517, 46.126743>,  <40.128048, 34.806900, 46.232594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.259823, 34.636517, 46.126743>,  <40.479446, 34.352543, 45.950325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259823, 34.636517, 46.126743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439814, -0.203305, 0.874775,
		0.710703, 0.674281, -0.200615,
		-0.549057, 0.709939, 0.441048,
		40.095104, 34.849499, 46.259056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946129, 34.764553, 46.329754>,  <40.479446, 34.352543, 45.950325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946129, 34.764553, 46.329754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.587166, 34.824047, 46.495903>,  <40.371788, 34.859745, 46.595592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.587166, 34.824047, 46.495903>,  <40.946129, 34.764553, 46.329754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587166, 34.824047, 46.495903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407972, -0.078696, 0.909597,
		0.167976, 0.985741, 0.009943,
		-0.897409, 0.148734, 0.415373,
		40.317944, 34.868668, 46.620514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.099854, 35.166855, 46.826099>,  <40.946129, 34.764553, 46.329754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.099854, 35.166855, 46.826099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.740986, 35.019932, 46.924217>,  <40.525665, 34.931778, 46.983089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.740986, 35.019932, 46.924217>,  <41.099854, 35.166855, 46.826099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740986, 35.019932, 46.924217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383743, -0.373232, 0.844653,
		-0.218694, 0.851929, 0.475804,
		-0.897170, -0.367307, 0.245298,
		40.471836, 34.909740, 46.997807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974457, 35.377235, 47.585007>,  <41.099854, 35.166855, 46.826099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974457, 35.377235, 47.585007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.747791, 35.066708, 47.474575>,  <40.611790, 34.880390, 47.408318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.747791, 35.066708, 47.474575>,  <40.974457, 35.377235, 47.585007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747791, 35.066708, 47.474575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246516, -0.479458, 0.842229,
		-0.786205, 0.409206, 0.463068,
		-0.566667, -0.776318, -0.276077,
		40.577789, 34.833813, 47.391750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667683, 35.250652, 48.163792>,  <40.974457, 35.377235, 47.585007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667683, 35.250652, 48.163792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.656109, 34.922577, 47.935246>,  <40.649162, 34.725731, 47.798119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.656109, 34.922577, 47.935246>,  <40.667683, 35.250652, 48.163792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656109, 34.922577, 47.935246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182284, -0.566351, 0.803753,
		-0.982820, -0.080893, 0.165895,
		-0.028937, -0.820185, -0.571367,
		40.647427, 34.676521, 47.763836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227322, 34.772556, 48.543842>,  <40.667683, 35.250652, 48.163792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227322, 34.772556, 48.543842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.472847, 34.559807, 48.310486>,  <40.620163, 34.432156, 48.170471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.472847, 34.559807, 48.310486>,  <40.227322, 34.772556, 48.543842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472847, 34.559807, 48.310486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232084, -0.584749, 0.777307,
		-0.754567, -0.612515, -0.235486,
		0.613813, -0.531877, -0.583387,
		40.656990, 34.400246, 48.135471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288670, 34.134956, 48.874802>,  <40.227322, 34.772556, 48.543842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288670, 34.134956, 48.874802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.612278, 34.087799, 48.644466>,  <40.806442, 34.059505, 48.506264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.612278, 34.087799, 48.644466>,  <40.288670, 34.134956, 48.874802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612278, 34.087799, 48.644466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245411, -0.822452, 0.513173,
		-0.534098, -0.556484, -0.636447,
		0.809019, -0.117894, -0.575837,
		40.854984, 34.052429, 48.471714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284809, 33.403618, 48.515499>,  <40.288670, 34.134956, 48.874802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284809, 33.403618, 48.515499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.643768, 33.570553, 48.572788>,  <40.859142, 33.670715, 48.607162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.643768, 33.570553, 48.572788>,  <40.284809, 33.403618, 48.515499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643768, 33.570553, 48.572788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324425, -0.844107, 0.426886,
		0.299053, -0.336619, -0.892891,
		0.897394, 0.417338, 0.143225,
		40.912987, 33.695755, 48.615757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742493, 32.998142, 48.806927>,  <40.284809, 33.403618, 48.515499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742493, 32.998142, 48.806927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.363388, 32.890568, 48.875546>,  <39.135925, 32.826023, 48.916718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.363388, 32.890568, 48.875546>,  <39.742493, 32.998142, 48.806927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363388, 32.890568, 48.875546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273229, 0.406873, -0.871665,
		0.164627, -0.872999, -0.459098,
		-0.947758, -0.268938, 0.171546,
		39.079060, 32.809887, 48.927010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446232, 32.842342, 48.215862>,  <39.742493, 32.998142, 48.806927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446232, 32.842342, 48.215862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.099522, 32.895016, 48.408264>,  <38.891495, 32.926620, 48.523705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.099522, 32.895016, 48.408264>,  <39.446232, 32.842342, 48.215862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099522, 32.895016, 48.408264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474508, 0.078996, -0.876699,
		-0.153449, -0.988138, -0.005984,
		-0.866773, 0.131690, 0.481002,
		38.839489, 32.934521, 48.552567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964966, 32.349987, 47.832451>,  <39.446232, 32.842342, 48.215862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964966, 32.349987, 47.832451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.741680, 32.623539, 48.020367>,  <38.607708, 32.787670, 48.133118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.741680, 32.623539, 48.020367>,  <38.964966, 32.349987, 47.832451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741680, 32.623539, 48.020367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457257, 0.218902, -0.861973,
		-0.692324, -0.695983, 0.190513,
		-0.558215, 0.683878, 0.469794,
		38.574215, 32.828701, 48.161304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310665, 32.237278, 47.655357>,  <38.964966, 32.349987, 47.832451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310665, 32.237278, 47.655357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.264568, 32.610760, 47.790951>,  <38.236912, 32.834850, 47.872307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.264568, 32.610760, 47.790951>,  <38.310665, 32.237278, 47.655357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264568, 32.610760, 47.790951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608582, 0.203350, -0.766992,
		-0.785079, -0.294688, 0.544803,
		-0.115238, 0.933707, 0.338987,
		38.229996, 32.890873, 47.892647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667183, 32.471977, 47.412613>,  <38.310665, 32.237278, 47.655357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667183, 32.471977, 47.412613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.827579, 32.829281, 47.493908>,  <37.923817, 33.043663, 47.542683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.827579, 32.829281, 47.493908>,  <37.667183, 32.471977, 47.412613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827579, 32.829281, 47.493908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575800, 0.418309, -0.702475,
		-0.712505, 0.164661, 0.682073,
		0.400988, 0.893255, 0.203236,
		37.947876, 33.097256, 47.554878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177315, 32.938740, 47.633617>,  <37.667183, 32.471977, 47.412613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177315, 32.938740, 47.633617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.469284, 33.158577, 47.471054>,  <37.644466, 33.290478, 47.373516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.469284, 33.158577, 47.471054>,  <37.177315, 32.938740, 47.633617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469284, 33.158577, 47.471054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646597, 0.362372, -0.671267,
		-0.221651, 0.752752, 0.619866,
		0.729920, 0.549591, -0.406407,
		37.688259, 33.323456, 47.349133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967461, 33.652611, 47.586983>,  <37.177315, 32.938740, 47.633617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967461, 33.652611, 47.586983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.227589, 33.549099, 47.301292>,  <37.383667, 33.486992, 47.129879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.227589, 33.549099, 47.301292>,  <36.967461, 33.652611, 47.586983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227589, 33.549099, 47.301292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622812, 0.356698, -0.696327,
		0.434958, 0.897663, 0.070797,
		0.650320, -0.258780, -0.714224,
		37.422684, 33.471466, 47.087025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595093, 33.835762, 46.903278>,  <36.967461, 33.652611, 47.586983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595093, 33.835762, 46.903278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.958618, 33.751740, 46.759094>,  <37.176735, 33.701324, 46.672585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.958618, 33.751740, 46.759094>,  <36.595093, 33.835762, 46.903278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958618, 33.751740, 46.759094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312586, 0.229369, -0.921780,
		0.276308, 0.950402, 0.142792,
		0.908814, -0.210060, -0.360459,
		37.231262, 33.688721, 46.650955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745155, 34.341652, 46.542255>,  <36.595093, 33.835762, 46.903278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745155, 34.341652, 46.542255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.974854, 34.064079, 46.368500>,  <37.112671, 33.897533, 46.264248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.974854, 34.064079, 46.368500>,  <36.745155, 34.341652, 46.542255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974854, 34.064079, 46.368500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482324, 0.141969, -0.864412,
		0.661516, 0.705902, -0.253177,
		0.574247, -0.693936, -0.434388,
		37.147129, 33.855900, 46.238182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094059, 34.732224, 45.982594>,  <36.745155, 34.341652, 46.542255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094059, 34.732224, 45.982594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.069534, 34.341042, 45.902748>,  <37.054821, 34.106331, 45.854839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.069534, 34.341042, 45.902748>,  <37.094059, 34.732224, 45.982594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069534, 34.341042, 45.902748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320802, 0.208685, -0.923871,
		0.945160, 0.007397, -0.326524,
		-0.061307, -0.977955, -0.199613,
		37.051144, 34.047653, 45.842865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518993, 34.601246, 45.292351>,  <37.094059, 34.732224, 45.982594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518993, 34.601246, 45.292351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.246941, 34.312263, 45.342117>,  <37.083710, 34.138874, 45.371975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.246941, 34.312263, 45.342117>,  <37.518993, 34.601246, 45.292351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246941, 34.312263, 45.342117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154445, -0.024691, -0.987693,
		0.716637, -0.690976, -0.094787,
		-0.680131, -0.722456, 0.124412,
		37.042900, 34.095528, 45.379440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700504, 34.152557, 44.711208>,  <37.518993, 34.601246, 45.292351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700504, 34.152557, 44.711208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.329536, 34.070362, 44.836220>,  <37.106956, 34.021046, 44.911224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.329536, 34.070362, 44.836220>,  <37.700504, 34.152557, 44.711208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329536, 34.070362, 44.836220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329225, 0.051935, -0.942822,
		0.177513, -0.977279, -0.115819,
		-0.927416, -0.205494, 0.312526,
		37.051311, 34.008713, 44.929977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433388, 33.829945, 44.130772>,  <37.700504, 34.152557, 44.711208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433388, 33.829945, 44.130772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.110992, 33.930279, 44.345234>,  <36.917557, 33.990479, 44.473911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.110992, 33.930279, 44.345234>,  <37.433388, 33.829945, 44.130772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110992, 33.930279, 44.345234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476590, 0.262199, -0.839115,
		-0.351061, -0.931843, -0.091782,
		-0.805989, 0.250838, 0.536155,
		36.869194, 34.005531, 44.506081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905479, 33.680252, 43.675606>,  <37.433388, 33.829945, 44.130772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905479, 33.680252, 43.675606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.745564, 33.920860, 43.952255>,  <36.649616, 34.065224, 44.118244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.745564, 33.920860, 43.952255>,  <36.905479, 33.680252, 43.675606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745564, 33.920860, 43.952255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576873, 0.421254, -0.699830,
		-0.712311, -0.678762, 0.178589,
		-0.399787, 0.601520, 0.691624,
		36.625626, 34.101315, 44.159744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127792, 33.732075, 43.521961>,  <36.905479, 33.680252, 43.675606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127792, 33.732075, 43.521961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.231735, 34.043270, 43.750771>,  <36.294102, 34.229988, 43.888054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.231735, 34.043270, 43.750771>,  <36.127792, 33.732075, 43.521961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231735, 34.043270, 43.750771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427985, 0.623802, -0.653988,
		-0.865622, -0.074871, 0.495068,
		0.259860, 0.777988, 0.572021,
		36.309692, 34.276665, 43.922379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568001, 34.144840, 43.435898>,  <36.127792, 33.732075, 43.521961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568001, 34.144840, 43.435898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.858654, 34.394138, 43.551525>,  <36.033047, 34.543716, 43.620903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.858654, 34.394138, 43.551525>,  <35.568001, 34.144840, 43.435898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.858654, 34.394138, 43.551525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306101, 0.670384, -0.675935,
		-0.615061, 0.402676, 0.677902,
		0.726638, 0.623248, 0.289067,
		36.076645, 34.581112, 43.638245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171757, 34.713005, 43.582314>,  <35.568001, 34.144840, 43.435898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171757, 34.713005, 43.582314> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.549240, 34.839302, 43.542885>,  <35.775730, 34.915081, 43.519226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.549240, 34.839302, 43.542885>,  <35.171757, 34.713005, 43.582314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.549240, 34.839302, 43.542885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297038, 0.677847, -0.672527,
		-0.145531, 0.663950, 0.733479,
		0.943711, 0.315744, -0.098571,
		35.832352, 34.934025, 43.513313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175148, 35.490704, 43.740532>,  <35.171757, 34.713005, 43.582314>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175148, 35.490704, 43.740532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.464165, 35.355343, 43.499393>,  <35.637573, 35.274128, 43.354710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.464165, 35.355343, 43.499393>,  <35.175148, 35.490704, 43.740532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464165, 35.355343, 43.499393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321762, 0.607189, -0.726492,
		0.611883, 0.718893, 0.329836,
		0.722543, -0.338400, -0.602842,
		35.680927, 35.253822, 43.318542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385464, 36.201893, 43.462879>,  <35.175148, 35.490704, 43.740532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385464, 36.201893, 43.462879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.539360, 35.916122, 43.229103>,  <35.631699, 35.744659, 43.088837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.539360, 35.916122, 43.229103>,  <35.385464, 36.201893, 43.462879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539360, 35.916122, 43.229103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328844, 0.485537, -0.810010,
		0.862461, 0.503830, -0.048131,
		0.384738, -0.714429, -0.584438,
		35.654781, 35.701794, 43.053772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682430, 36.581505, 42.858559>,  <35.385464, 36.201893, 43.462879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682430, 36.581505, 42.858559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.661991, 36.204285, 42.727077>,  <35.649727, 35.977951, 42.648190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.661991, 36.204285, 42.727077>,  <35.682430, 36.581505, 42.858559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661991, 36.204285, 42.727077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289292, 0.328996, -0.898928,
		0.955876, 0.049153, -0.289630,
		-0.051102, -0.943051, -0.328699,
		35.646660, 35.921368, 42.628468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.025780, 33.749409, 26.297657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.962742, 34.141533, 26.250078>,  <40.924919, 34.376808, 26.221531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.962742, 34.141533, 26.250078>,  <41.025780, 33.749409, 26.297657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962742, 34.141533, 26.250078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701048, 0.195895, 0.685680,
		0.695484, 0.024670, -0.718119,
		-0.157592, 0.980314, -0.118947,
		40.915462, 34.435627, 26.214394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754395, 34.072704, 26.346947>,  <41.025780, 33.749409, 26.297657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754395, 34.072704, 26.346947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.492989, 34.365227, 26.425035>,  <41.336147, 34.540741, 26.471888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.492989, 34.365227, 26.425035>,  <41.754395, 34.072704, 26.346947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.492989, 34.365227, 26.425035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642681, 0.399858, 0.653510,
		0.399858, 0.552540, -0.731309,
		-0.653510, 0.731309, 0.195221,
		41.296936, 34.584621, 26.483603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.125256, 34.712212, 26.361860>,  <41.754395, 34.072704, 26.346947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.125256, 34.712212, 26.361860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.793465, 34.745533, 26.582777>,  <41.594391, 34.765526, 26.715328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.793465, 34.745533, 26.582777>,  <42.125256, 34.712212, 26.361860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.793465, 34.745533, 26.582777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542741, 0.353729, 0.761779,
		-0.131904, 0.931631, -0.338622,
		-0.829477, 0.083302, 0.552293,
		41.544621, 34.770523, 26.748465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.156689, 35.368340, 26.635895>,  <42.125256, 34.712212, 26.361860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.156689, 35.368340, 26.635895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.889851, 35.217289, 26.892765>,  <41.729748, 35.126659, 27.046886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.889851, 35.217289, 26.892765>,  <42.156689, 35.368340, 26.635895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889851, 35.217289, 26.892765> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507136, 0.401254, 0.762763,
		-0.545712, 0.834504, -0.076167,
		-0.667091, -0.377622, 0.642176,
		41.689724, 35.104004, 27.085419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.034019, 36.006489, 27.171152>,  <42.156689, 35.368340, 26.635895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.034019, 36.006489, 27.171152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.840050, 35.709652, 27.356256>,  <41.723667, 35.531551, 27.467319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.840050, 35.709652, 27.356256>,  <42.034019, 36.006489, 27.171152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.840050, 35.709652, 27.356256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333268, 0.332413, 0.882289,
		-0.808568, 0.582067, 0.086121,
		-0.484923, -0.742092, 0.462763,
		41.694572, 35.487026, 27.495085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.638920, 36.308090, 27.705212>,  <42.034019, 36.006489, 27.171152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.638920, 36.308090, 27.705212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.733219, 35.935177, 27.814947>,  <41.789799, 35.711430, 27.880789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.733219, 35.935177, 27.814947>,  <41.638920, 36.308090, 27.705212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.733219, 35.935177, 27.814947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418279, 0.352152, 0.837276,
		-0.877191, -0.082639, 0.472977,
		0.235751, -0.932288, 0.274338,
		41.803944, 35.655491, 27.897249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433338, 36.227760, 28.420292>,  <41.638920, 36.308090, 27.705212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.433338, 36.227760, 28.420292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.713158, 35.950829, 28.349501>,  <41.881050, 35.784672, 28.307026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.713158, 35.950829, 28.349501>,  <41.433338, 36.227760, 28.420292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713158, 35.950829, 28.349501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350828, 0.116983, 0.929104,
		-0.622540, -0.712039, 0.324722,
		0.699546, -0.692326, -0.176976,
		41.923019, 35.743130, 28.296408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471592, 35.882710, 29.082478>,  <41.433338, 36.227760, 28.420292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471592, 35.882710, 29.082478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.790634, 35.742043, 28.886454>,  <41.982059, 35.657642, 28.768839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.790634, 35.742043, 28.886454>,  <41.471592, 35.882710, 29.082478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.790634, 35.742043, 28.886454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494577, -0.083795, 0.865085,
		-0.345285, -0.932368, 0.107090,
		0.797604, -0.351665, -0.490061,
		42.029915, 35.636543, 28.739435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.765366, 35.272018, 29.423225>,  <41.471592, 35.882710, 29.082478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.765366, 35.272018, 29.423225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.073753, 35.406559, 29.206900>,  <42.258785, 35.487282, 29.077105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.073753, 35.406559, 29.206900>,  <41.765366, 35.272018, 29.423225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.073753, 35.406559, 29.206900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522490, 0.151509, 0.839076,
		0.364160, -0.929470, -0.058931,
		0.770967, 0.336349, -0.540812,
		42.305042, 35.507465, 29.044657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.311512, 34.892288, 29.703257>,  <41.765366, 35.272018, 29.423225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.311512, 34.892288, 29.703257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.471531, 35.202354, 29.507673>,  <42.567543, 35.388393, 29.390324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.471531, 35.202354, 29.507673>,  <42.311512, 34.892288, 29.703257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.471531, 35.202354, 29.507673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369399, 0.351879, 0.860073,
		0.838754, -0.524690, -0.145578,
		0.400046, 0.775165, -0.488960,
		42.591545, 35.434902, 29.360985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.078472, 34.896748, 29.921701>,  <42.311512, 34.892288, 29.703257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.078472, 34.896748, 29.921701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.025520, 35.259850, 29.762472>,  <42.993748, 35.477711, 29.666935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.025520, 35.259850, 29.762472>,  <43.078472, 34.896748, 29.921701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.025520, 35.259850, 29.762472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484414, 0.409628, 0.773012,
		0.864765, -0.090500, -0.493955,
		-0.132380, 0.907752, -0.398072,
		42.985806, 35.532177, 29.643051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.746525, 35.146778, 29.903728>,  <43.078472, 34.896748, 29.921701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.746525, 35.146778, 29.903728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.473717, 35.439247, 29.909872>,  <43.310032, 35.614727, 29.913559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.473717, 35.439247, 29.909872>,  <43.746525, 35.146778, 29.903728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.473717, 35.439247, 29.909872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403087, 0.358300, 0.842106,
		0.610219, 0.580526, -0.539094,
		-0.682021, 0.731171, 0.015361,
		43.269112, 35.658600, 29.914480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.113796, 35.803623, 30.010311>,  <43.746525, 35.146778, 29.903728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.113796, 35.803623, 30.010311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.733727, 35.887730, 30.102364>,  <43.505684, 35.938194, 30.157595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.733727, 35.887730, 30.102364>,  <44.113796, 35.803623, 30.010311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.733727, 35.887730, 30.102364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288398, 0.312733, 0.905000,
		0.118322, 0.926275, -0.357790,
		-0.950172, 0.210267, 0.230133,
		43.448673, 35.950809, 30.171404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.129814, 36.485950, 30.207817>,  <44.113796, 35.803623, 30.010311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.129814, 36.485950, 30.207817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.810936, 36.305161, 30.367918>,  <43.619610, 36.196686, 30.463978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.810936, 36.305161, 30.367918>,  <44.129814, 36.485950, 30.207817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.810936, 36.305161, 30.367918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291307, 0.292714, 0.910746,
		-0.528790, 0.842639, -0.101688,
		-0.797195, -0.451971, 0.400251,
		43.571777, 36.169571, 30.487993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.009388, 36.946800, 30.816113>,  <44.129814, 36.485950, 30.207817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.009388, 36.946800, 30.816113> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.766834, 36.635807, 30.882830>,  <43.621300, 36.449211, 30.922861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.766834, 36.635807, 30.882830>,  <44.009388, 36.946800, 30.816113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.766834, 36.635807, 30.882830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011079, 0.201479, 0.979430,
		-0.795092, 0.595762, -0.113561,
		-0.606387, -0.777479, 0.166795,
		43.584919, 36.402565, 30.932869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.374508, 37.242336, 31.118687>,  <44.009388, 36.946800, 30.816113>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.374508, 37.242336, 31.118687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.432697, 36.862820, 31.230858>,  <43.467613, 36.635109, 31.298161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.432697, 36.862820, 31.230858>,  <43.374508, 37.242336, 31.118687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.432697, 36.862820, 31.230858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000526, 0.283368, 0.959011,
		-0.989362, -0.139661, 0.040724,
		0.145476, -0.948787, 0.280427,
		43.476341, 36.578182, 31.314985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.871609, 37.146194, 31.548206>,  <43.374508, 37.242336, 31.118687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.871609, 37.146194, 31.548206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.116184, 36.842785, 31.638344>,  <43.262928, 36.660740, 31.692427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.116184, 36.842785, 31.638344>,  <42.871609, 37.146194, 31.548206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.116184, 36.842785, 31.638344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081698, 0.343772, 0.935492,
		-0.787063, -0.553586, 0.272166,
		0.611439, -0.758527, 0.225343,
		43.299618, 36.615227, 31.705946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609020, 36.826805, 32.065887>,  <42.871609, 37.146194, 31.548206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.609020, 36.826805, 32.065887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.996723, 36.730225, 32.084839>,  <43.229343, 36.672276, 32.096210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.996723, 36.730225, 32.084839>,  <42.609020, 36.826805, 32.065887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.996723, 36.730225, 32.084839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006590, 0.166993, 0.985936,
		-0.245968, -0.955936, 0.160268,
		0.969256, -0.241453, 0.047375,
		43.287498, 36.657787, 32.099052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.617500, 36.511059, 32.704243>,  <42.609020, 36.826805, 32.065887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.617500, 36.511059, 32.704243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.998306, 36.614479, 32.638725>,  <43.226788, 36.676529, 32.599415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.998306, 36.614479, 32.638725>,  <42.617500, 36.511059, 32.704243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.998306, 36.614479, 32.638725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087715, 0.282220, 0.955331,
		0.293241, -0.923848, 0.245996,
		0.952006, 0.258565, -0.163794,
		43.283909, 36.692043, 32.589588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.023293, 36.222656, 33.207939>,  <42.617500, 36.511059, 32.704243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.023293, 36.222656, 33.207939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.251373, 36.516346, 33.060547>,  <43.388222, 36.692562, 32.972111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.251373, 36.516346, 33.060547>,  <43.023293, 36.222656, 33.207939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.251373, 36.516346, 33.060547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277308, 0.250188, 0.927635,
		0.773284, -0.631124, -0.060949,
		0.570204, 0.734226, -0.368483,
		43.422436, 36.736614, 32.950001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.588028, 36.292099, 33.674198>,  <43.023293, 36.222656, 33.207939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.588028, 36.292099, 33.674198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.526581, 36.669514, 33.556797>,  <43.489712, 36.895962, 33.486355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.526581, 36.669514, 33.556797>,  <43.588028, 36.292099, 33.674198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.526581, 36.669514, 33.556797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100733, 0.310435, 0.945242,
		0.982982, 0.115642, -0.142734,
		-0.153619, 0.943534, -0.293504,
		43.480495, 36.952576, 33.468746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.374779, 36.195892, 33.914349>,  <43.588028, 36.292099, 33.674198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.374779, 36.195892, 33.914349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.654156, 35.996754, 34.119999>,  <44.821781, 35.877270, 34.243389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.654156, 35.996754, 34.119999>,  <44.374779, 36.195892, 33.914349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.654156, 35.996754, 34.119999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276799, -0.850400, -0.447440,
		0.659968, 0.170202, -0.731760,
		0.698444, -0.497847, 0.514125,
		44.863689, 35.847401, 34.274235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.891220, 35.866932, 33.437309>,  <44.374779, 36.195892, 33.914349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.891220, 35.866932, 33.437309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.832901, 35.667648, 33.779194>,  <44.797909, 35.548077, 33.984325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.832901, 35.667648, 33.779194>,  <44.891220, 35.866932, 33.437309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.832901, 35.667648, 33.779194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228633, -0.823586, -0.519070,
		0.962533, -0.271095, 0.006171,
		-0.145800, -0.498211, 0.854710,
		44.789162, 35.518185, 34.035606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.974720, 35.237274, 33.199440>,  <44.891220, 35.866932, 33.437309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.974720, 35.237274, 33.199440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.796860, 35.161366, 33.549587>,  <44.690144, 35.115822, 33.759678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.796860, 35.161366, 33.549587>,  <44.974720, 35.237274, 33.199440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.796860, 35.161366, 33.549587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449910, -0.797746, -0.401475,
		0.774511, -0.572354, 0.269340,
		-0.444651, -0.189768, 0.875371,
		44.663464, 35.104435, 33.812199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.991730, 34.529350, 33.336395>,  <44.974720, 35.237274, 33.199440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.991730, 34.529350, 33.336395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.689289, 34.645267, 33.571114>,  <44.507824, 34.714817, 33.711945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.689289, 34.645267, 33.571114>,  <44.991730, 34.529350, 33.336395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.689289, 34.645267, 33.571114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561983, -0.746988, -0.355224,
		0.335391, -0.598356, 0.727656,
		-0.756101, 0.289791, 0.586799,
		44.462460, 34.732204, 33.747154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.725903, 33.927357, 33.578987>,  <44.991730, 34.529350, 33.336395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.725903, 33.927357, 33.578987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.429935, 34.193157, 33.620865>,  <44.252354, 34.352638, 33.645992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.429935, 34.193157, 33.620865>,  <44.725903, 33.927357, 33.578987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.429935, 34.193157, 33.620865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643696, -0.654191, -0.397102,
		-0.195382, -0.361216, 0.911784,
		-0.739920, 0.664498, 0.104696,
		44.207958, 34.392506, 33.652275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.059967, 33.542248, 33.686283>,  <44.725903, 33.927357, 33.578987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.059967, 33.542248, 33.686283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.918892, 33.904202, 33.590950>,  <43.834248, 34.121372, 33.533749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.918892, 33.904202, 33.590950>,  <44.059967, 33.542248, 33.686283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.918892, 33.904202, 33.590950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781594, -0.424917, -0.456680,
		-0.514513, 0.025216, 0.857112,
		-0.352685, 0.904881, -0.238334,
		43.813087, 34.175667, 33.519451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.275829, 33.619499, 33.841488>,  <44.059967, 33.542248, 33.686283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.275829, 33.619499, 33.841488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.361500, 33.883949, 33.553867>,  <43.412903, 34.042622, 33.381294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.361500, 33.883949, 33.553867>,  <43.275829, 33.619499, 33.841488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.361500, 33.883949, 33.553867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795566, -0.309044, -0.521120,
		-0.566746, 0.683666, 0.459782,
		0.214179, 0.661130, -0.719051,
		43.425755, 34.082287, 33.338154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.594879, 33.849525, 33.614857>,  <43.275829, 33.619499, 33.841488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.594879, 33.849525, 33.614857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.807735, 33.993843, 33.308483>,  <42.935452, 34.080433, 33.124660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.807735, 33.993843, 33.308483>,  <42.594879, 33.849525, 33.614857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807735, 33.993843, 33.308483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719430, -0.284252, -0.633736,
		-0.446365, 0.888273, 0.108303,
		0.532145, 0.360793, -0.765931,
		42.967381, 34.102081, 33.078705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.148937, 34.324699, 33.190250>,  <42.594879, 33.849525, 33.614857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.148937, 34.324699, 33.190250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.457451, 34.182938, 32.978771>,  <42.642559, 34.097881, 32.851883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.457451, 34.182938, 32.978771>,  <42.148937, 34.324699, 33.190250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457451, 34.182938, 32.978771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631026, -0.317100, -0.707993,
		0.083269, 0.879683, -0.468214,
		0.771280, -0.354409, -0.528698,
		42.688835, 34.076614, 32.820164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019188, 34.573185, 32.507553>,  <42.148937, 34.324699, 33.190250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019188, 34.573185, 32.507553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.275764, 34.272255, 32.447479>,  <42.429710, 34.091698, 32.411434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.275764, 34.272255, 32.447479>,  <42.019188, 34.573185, 32.507553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275764, 34.272255, 32.447479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402962, -0.163818, -0.900436,
		0.652818, 0.638099, -0.408239,
		0.641444, -0.752326, -0.150186,
		42.468197, 34.046558, 32.402424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.258339, 34.663433, 31.924610>,  <42.019188, 34.573185, 32.507553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.258339, 34.663433, 31.924610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.328583, 34.271736, 31.965080>,  <42.370731, 34.036716, 31.989363>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.328583, 34.271736, 31.965080>,  <42.258339, 34.663433, 31.924610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.328583, 34.271736, 31.965080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481277, -0.175052, -0.858912,
		0.858797, 0.102143, -0.502030,
		0.175613, -0.979246, 0.101175,
		42.381268, 33.977962, 31.995434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.544689, 34.502377, 31.316677>,  <42.258339, 34.663433, 31.924610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.544689, 34.502377, 31.316677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.397278, 34.162094, 31.466600>,  <42.308830, 33.957924, 31.556555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.397278, 34.162094, 31.466600>,  <42.544689, 34.502377, 31.316677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.397278, 34.162094, 31.466600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364771, -0.238519, -0.900028,
		0.855061, -0.468405, -0.222413,
		-0.368528, -0.850709, 0.374809,
		42.286720, 33.906883, 31.579042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.724483, 33.994854, 30.810987>,  <42.544689, 34.502377, 31.316677>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.724483, 33.994854, 30.810987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.432789, 33.817581, 31.019527>,  <42.257771, 33.711220, 31.144651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.432789, 33.817581, 31.019527>,  <42.724483, 33.994854, 30.810987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.432789, 33.817581, 31.019527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559720, -0.051927, -0.827053,
		0.393604, -0.894928, -0.210188,
		-0.729239, -0.443178, 0.521348,
		42.214016, 33.684628, 31.175932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.548210, 33.418552, 30.404247>,  <42.724483, 33.994854, 30.810987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.548210, 33.418552, 30.404247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.264355, 33.450741, 30.684231>,  <42.094044, 33.470055, 30.852221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.264355, 33.450741, 30.684231>,  <42.548210, 33.418552, 30.404247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.264355, 33.450741, 30.684231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704212, -0.112585, -0.701006,
		0.022398, -0.990379, 0.136559,
		-0.709636, 0.080466, 0.699959,
		42.051464, 33.474880, 30.894218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145172, 32.748268, 30.349899>,  <42.548210, 33.418552, 30.404247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145172, 32.748268, 30.349899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.960125, 33.075142, 30.487417>,  <41.849098, 33.271267, 30.569927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.960125, 33.075142, 30.487417>,  <42.145172, 32.748268, 30.349899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.960125, 33.075142, 30.487417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674098, -0.072359, -0.735089,
		-0.575827, -0.571815, 0.584337,
		-0.462617, 0.817185, 0.343793,
		41.821339, 33.320297, 30.590555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464478, 32.531258, 30.311342>,  <42.145172, 32.748268, 30.349899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464478, 32.531258, 30.311342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.484127, 32.930668, 30.302088>,  <41.495914, 33.170315, 30.296535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.484127, 32.930668, 30.302088>,  <41.464478, 32.531258, 30.311342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484127, 32.930668, 30.302088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830075, 0.027930, -0.556952,
		-0.555485, 0.046564, 0.830222,
		0.049122, 0.998525, -0.023137,
		41.498863, 33.230225, 30.295147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788143, 32.772385, 30.415262>,  <41.464478, 32.531258, 30.311342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788143, 32.772385, 30.415262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.990780, 33.077465, 30.254435>,  <41.112362, 33.260513, 30.157938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.990780, 33.077465, 30.254435>,  <40.788143, 32.772385, 30.415262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990780, 33.077465, 30.254435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808836, 0.258906, -0.527971,
		-0.298583, 0.592673, 0.748055,
		0.506590, 0.762697, -0.402070,
		41.142757, 33.306274, 30.133814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259163, 33.274570, 30.240004>,  <40.788143, 32.772385, 30.415262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259163, 33.274570, 30.240004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.574440, 33.389565, 30.022343>,  <40.763607, 33.458561, 29.891747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.574440, 33.389565, 30.022343>,  <40.259163, 33.274570, 30.240004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574440, 33.389565, 30.022343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615184, 0.392730, -0.683602,
		0.017182, 0.873566, 0.486402,
		0.788196, 0.287481, -0.544152,
		40.810898, 33.475807, 29.859097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184189, 33.977566, 30.103765>,  <40.259163, 33.274570, 30.240004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184189, 33.977566, 30.103765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.438431, 33.843040, 29.825802>,  <40.590977, 33.762325, 29.659023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.438431, 33.843040, 29.825802>,  <40.184189, 33.977566, 30.103765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438431, 33.843040, 29.825802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618456, 0.316946, -0.719067,
		0.462082, 0.886813, -0.006545,
		0.635604, -0.336316, -0.694910,
		40.629112, 33.742146, 29.617329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076176, 34.454300, 29.601868>,  <40.184189, 33.977566, 30.103765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076176, 34.454300, 29.601868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.272099, 34.156693, 29.420086>,  <40.389652, 33.978127, 29.311016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.272099, 34.156693, 29.420086>,  <40.076176, 34.454300, 29.601868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272099, 34.156693, 29.420086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449904, 0.230793, -0.862740,
		0.746779, 0.627035, -0.221694,
		0.489803, -0.744018, -0.454457,
		40.419041, 33.933487, 29.283749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336281, 34.720692, 29.036283>,  <40.076176, 34.454300, 29.601868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336281, 34.720692, 29.036283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.316765, 34.334583, 28.933624>,  <40.305054, 34.102917, 28.872028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.316765, 34.334583, 28.933624>,  <40.336281, 34.720692, 29.036283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316765, 34.334583, 28.933624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322883, 0.258401, -0.910481,
		0.945181, 0.038445, -0.324277,
		-0.048790, -0.965273, -0.256649,
		40.302128, 34.045002, 28.856630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.514763, 38.339836, 38.019238> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265179, 38.029804, 37.979393>,  <38.115429, 37.843784, 37.955486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265179, 38.029804, 37.979393>,  <38.514763, 38.339836, 38.019238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265179, 38.029804, 37.979393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058312, 0.080927, -0.995013,
		0.779279, -0.626655, -0.005298,
		-0.623958, -0.775084, -0.099607,
		38.077991, 37.797279, 37.949512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893021, 37.985409, 37.556110>,  <38.514763, 38.339836, 38.019238>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893021, 37.985409, 37.556110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506290, 37.893684, 37.511105>,  <38.274250, 37.838650, 37.484100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506290, 37.893684, 37.511105>,  <38.893021, 37.985409, 37.556110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506290, 37.893684, 37.511105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078196, 0.153606, -0.985033,
		0.243164, -0.961156, -0.130580,
		-0.966828, -0.229314, -0.112510,
		38.216240, 37.824890, 37.477352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841759, 37.595409, 36.943684>,  <38.893021, 37.985409, 37.556110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841759, 37.595409, 36.943684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448284, 37.661160, 36.972927>,  <38.212200, 37.700611, 36.990471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448284, 37.661160, 36.972927>,  <38.841759, 37.595409, 36.943684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448284, 37.661160, 36.972927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089469, -0.094450, -0.991501,
		-0.156078, -0.981865, 0.107615,
		-0.983684, 0.164380, 0.073105,
		38.153179, 37.710472, 36.994858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502842, 37.237541, 36.417976>,  <38.841759, 37.595409, 36.943684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502842, 37.237541, 36.417976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259060, 37.533028, 36.533115>,  <38.112789, 37.710320, 36.602200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259060, 37.533028, 36.533115>,  <38.502842, 37.237541, 36.417976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.259060, 37.533028, 36.533115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222326, 0.189259, -0.956427,
		-0.761008, -0.646897, 0.048891,
		-0.609457, 0.738718, 0.287850,
		38.076221, 37.754642, 36.619469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896450, 37.158661, 36.048023>,  <38.502842, 37.237541, 36.417976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896450, 37.158661, 36.048023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933270, 37.543900, 36.149189>,  <37.955360, 37.775043, 36.209888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933270, 37.543900, 36.149189>,  <37.896450, 37.158661, 36.048023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933270, 37.543900, 36.149189> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329929, 0.269144, -0.904825,
		-0.939507, -0.000151, 0.342530,
		0.092053, 0.963100, 0.252913,
		37.960884, 37.832829, 36.225063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454433, 37.393291, 35.564564>,  <37.896450, 37.158661, 36.048023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454433, 37.393291, 35.564564> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623238, 37.731838, 35.694534>,  <37.724518, 37.934967, 35.772518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623238, 37.731838, 35.694534>,  <37.454433, 37.393291, 35.564564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.623238, 37.731838, 35.694534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364116, 0.486458, -0.794215,
		-0.830258, 0.216855, 0.513464,
		0.422009, 0.846364, 0.324925,
		37.749840, 37.985748, 35.792011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952576, 37.903938, 35.587017>,  <37.454433, 37.393291, 35.564564>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952576, 37.903938, 35.587017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305679, 38.091526, 35.575638>,  <37.517540, 38.204079, 35.568810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305679, 38.091526, 35.575638>,  <36.952576, 37.903938, 35.587017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305679, 38.091526, 35.575638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320348, 0.556496, -0.766609,
		-0.343683, 0.685843, 0.641484,
		0.882756, 0.468968, -0.028450,
		37.570507, 38.232216, 35.567104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737797, 38.546268, 35.475655>,  <36.952576, 37.903938, 35.587017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737797, 38.546268, 35.475655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123814, 38.538601, 35.371101>,  <37.355423, 38.534000, 35.308369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123814, 38.538601, 35.371101>,  <36.737797, 38.546268, 35.475655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123814, 38.538601, 35.371101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242837, 0.309755, -0.919283,
		0.098586, 0.950623, 0.294273,
		0.965045, -0.019168, -0.261384,
		37.413326, 38.532852, 35.292686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876717, 39.211613, 35.295902>,  <36.737797, 38.546268, 35.475655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876717, 39.211613, 35.295902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154858, 38.974812, 35.132919>,  <37.321743, 38.832729, 35.035130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154858, 38.974812, 35.132919>,  <36.876717, 39.211613, 35.295902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154858, 38.974812, 35.132919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214034, 0.370645, -0.903776,
		0.686062, 0.715649, 0.131018,
		0.695348, -0.592004, -0.407458,
		37.363461, 38.797211, 35.010681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277527, 39.661037, 34.810284>,  <36.876717, 39.211613, 35.295902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277527, 39.661037, 34.810284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334393, 39.276531, 34.715832>,  <37.368511, 39.045826, 34.659161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334393, 39.276531, 34.715832>,  <37.277527, 39.661037, 34.810284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334393, 39.276531, 34.715832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198637, 0.205999, -0.958179,
		0.969707, 0.183124, -0.161657,
		0.142165, -0.961265, -0.236134,
		37.377041, 38.988152, 34.644993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826603, 39.666176, 34.257748>,  <37.277527, 39.661037, 34.810284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826603, 39.666176, 34.257748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638302, 39.313950, 34.235817>,  <37.525322, 39.102615, 34.222656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638302, 39.313950, 34.235817>,  <37.826603, 39.666176, 34.257748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638302, 39.313950, 34.235817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117027, 0.123919, -0.985367,
		0.874472, -0.457443, -0.161384,
		-0.470748, -0.880562, -0.054830,
		37.497078, 39.049782, 34.219368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082958, 39.386261, 33.625553>,  <37.826603, 39.666176, 34.257748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082958, 39.386261, 33.625553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742767, 39.196140, 33.715694>,  <37.538654, 39.082069, 33.769779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742767, 39.196140, 33.715694>,  <38.082958, 39.386261, 33.625553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742767, 39.196140, 33.715694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354259, 0.200861, -0.913321,
		0.388838, -0.856589, -0.339206,
		-0.850474, -0.475301, 0.225351,
		37.487625, 39.053551, 33.783298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718563, 38.889793, 33.783184>,  <38.082958, 39.386261, 33.625553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718563, 38.889793, 33.783184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856400, 38.515404, 33.754303>,  <38.939102, 38.290771, 33.736973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856400, 38.515404, 33.754303>,  <38.718563, 38.889793, 33.783184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856400, 38.515404, 33.754303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361483, -0.061312, -0.930361,
		0.866365, 0.346693, -0.359465,
		0.344589, -0.935973, -0.072205,
		38.959778, 38.234612, 33.732643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201252, 38.722546, 33.141533>,  <38.718563, 38.889793, 33.783184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201252, 38.722546, 33.141533> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980751, 38.413754, 33.268127>,  <38.848450, 38.228477, 33.344082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980751, 38.413754, 33.268127>,  <39.201252, 38.722546, 33.141533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980751, 38.413754, 33.268127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382555, -0.103232, -0.918147,
		0.741466, -0.627203, -0.238420,
		-0.551252, -0.771984, 0.316483,
		38.815376, 38.182159, 33.363071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911217, 38.697712, 32.723251>,  <39.201252, 38.722546, 33.141533>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911217, 38.697712, 32.723251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236008, 38.564098, 32.914711>,  <40.430882, 38.483929, 33.029587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236008, 38.564098, 32.914711>,  <39.911217, 38.697712, 32.723251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.236008, 38.564098, 32.914711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491233, -0.833987, 0.251310,
		0.315244, -0.439189, -0.841270,
		0.811980, -0.334035, 0.478653,
		40.479603, 38.463886, 33.058308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967674, 38.026970, 32.508747>,  <39.911217, 38.697712, 32.723251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967674, 38.026970, 32.508747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159122, 38.049107, 32.859257>,  <40.273991, 38.062389, 33.069561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159122, 38.049107, 32.859257>,  <39.967674, 38.026970, 32.508747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159122, 38.049107, 32.859257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335898, -0.910552, 0.240973,
		0.811230, -0.409674, -0.417221,
		0.478622, 0.055341, 0.876275,
		40.302708, 38.065708, 33.122139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217251, 37.292797, 32.672863>,  <39.967674, 38.026970, 32.508747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217251, 37.292797, 32.672863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261421, 37.479832, 33.023670>,  <40.287922, 37.592052, 33.234154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261421, 37.479832, 33.023670>,  <40.217251, 37.292797, 32.672863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261421, 37.479832, 33.023670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200895, -0.853702, 0.480451,
		0.973370, -0.229241, -0.000331,
		0.110422, 0.467590, 0.877021,
		40.294548, 37.620110, 33.286777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567886, 36.889370, 33.080429>,  <40.217251, 37.292797, 32.672863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567886, 36.889370, 33.080429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399654, 37.131466, 33.350777>,  <40.298714, 37.276722, 33.512985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399654, 37.131466, 33.350777>,  <40.567886, 36.889370, 33.080429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.399654, 37.131466, 33.350777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350745, -0.795506, 0.494114,
		0.836715, -0.029243, 0.546857,
		-0.420578, 0.605240, 0.675868,
		40.273479, 37.313038, 33.553535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.586182, 36.456982, 33.659252>,  <40.567886, 36.889370, 33.080429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.586182, 36.456982, 33.659252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327904, 36.735775, 33.784019>,  <40.172935, 36.903049, 33.858879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327904, 36.735775, 33.784019>,  <40.586182, 36.456982, 33.659252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327904, 36.735775, 33.784019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249200, -0.578462, 0.776712,
		0.721788, 0.423788, 0.547198,
		-0.645694, 0.696983, 0.311919,
		40.134197, 36.944870, 33.877594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695087, 36.337448, 34.314529>,  <40.586182, 36.456982, 33.659252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695087, 36.337448, 34.314529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358994, 36.554291, 34.310127>,  <40.157337, 36.684399, 34.307484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.358994, 36.554291, 34.310127>,  <40.695087, 36.337448, 34.314529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358994, 36.554291, 34.310127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302207, -0.451353, 0.839614,
		0.450196, 0.708799, 0.543072,
		-0.840235, 0.542111, -0.011007,
		40.106922, 36.716923, 34.306824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623093, 36.809048, 34.878319>,  <40.695087, 36.337448, 34.314529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623093, 36.809048, 34.878319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244686, 36.740715, 34.768135>,  <40.017643, 36.699715, 34.702026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244686, 36.740715, 34.768135>,  <40.623093, 36.809048, 34.878319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244686, 36.740715, 34.768135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173150, -0.452062, 0.875020,
		-0.274007, 0.875474, 0.398076,
		-0.946012, -0.170835, -0.275456,
		39.960884, 36.689465, 34.685497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286846, 36.962566, 35.452301>,  <40.623093, 36.809048, 34.878319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286846, 36.962566, 35.452301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021755, 36.758480, 35.233036>,  <39.862701, 36.636028, 35.101479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021755, 36.758480, 35.233036>,  <40.286846, 36.962566, 35.452301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021755, 36.758480, 35.233036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373415, -0.409343, 0.832466,
		-0.649119, 0.756387, 0.080762,
		-0.662726, -0.510212, -0.548159,
		39.822937, 36.605415, 35.068588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.663227, 37.034786, 35.763920>,  <40.286846, 36.962566, 35.452301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.663227, 37.034786, 35.763920> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577934, 36.700214, 35.561958>,  <39.526760, 36.499474, 35.440781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577934, 36.700214, 35.561958>,  <39.663227, 37.034786, 35.763920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577934, 36.700214, 35.561958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481195, -0.359849, 0.799350,
		-0.850285, 0.413400, -0.325754,
		-0.213229, -0.836426, -0.504900,
		39.513966, 36.449287, 35.410488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955376, 36.952850, 35.845200>,  <39.663227, 37.034786, 35.763920>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955376, 36.952850, 35.845200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075672, 36.586460, 35.738964>,  <39.147850, 36.366627, 35.675220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075672, 36.586460, 35.738964>,  <38.955376, 36.952850, 35.845200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075672, 36.586460, 35.738964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515772, -0.390456, 0.762577,
		-0.802205, -0.092354, -0.589862,
		0.300742, -0.915978, -0.265592,
		39.165894, 36.311668, 35.659286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394661, 36.544537, 35.820202>,  <38.955376, 36.952850, 35.845200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394661, 36.544537, 35.820202> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714466, 36.315033, 35.891285>,  <38.906349, 36.177330, 35.933933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714466, 36.315033, 35.891285>,  <38.394661, 36.544537, 35.820202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714466, 36.315033, 35.891285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457237, -0.389510, 0.799510,
		-0.389510, -0.720471, -0.573763,
		-0.799510, 0.573763, -0.177708,
		38.954319, 36.142902, 35.944599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161739, 35.888306, 36.088634>,  <38.394661, 36.544537, 35.820202>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161739, 35.888306, 36.088634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546631, 35.827282, 36.178818>,  <38.777565, 35.790668, 36.232929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546631, 35.827282, 36.178818>,  <38.161739, 35.888306, 36.088634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546631, 35.827282, 36.178818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265081, -0.713590, 0.648476,
		0.061956, -0.683751, -0.727081,
		0.962233, -0.152558, 0.225461,
		38.835300, 35.781513, 36.246456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229992, 35.137928, 36.121735>,  <38.161739, 35.888306, 36.088634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229992, 35.137928, 36.121735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536465, 35.297413, 36.323326>,  <38.720348, 35.393105, 36.444283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536465, 35.297413, 36.323326>,  <38.229992, 35.137928, 36.121735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536465, 35.297413, 36.323326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048634, -0.746030, 0.664135,
		0.640782, -0.533358, -0.552203,
		0.766181, 0.398709, 0.503981,
		38.766319, 35.417027, 36.474522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.586357, 34.551003, 36.371075>,  <38.229992, 35.137928, 36.121735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.586357, 34.551003, 36.371075> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726574, 34.853546, 36.591995>,  <38.810703, 35.035072, 36.724548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726574, 34.853546, 36.591995>,  <38.586357, 34.551003, 36.371075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726574, 34.853546, 36.591995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133596, -0.543303, 0.828839,
		0.926969, -0.364329, -0.089405,
		0.350544, 0.756364, 0.552298,
		38.831738, 35.080456, 36.757683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101734, 34.185966, 35.964237>,  <38.586357, 34.551003, 36.371075>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101734, 34.185966, 35.964237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084415, 33.810051, 35.828636>,  <39.074024, 33.584503, 35.747276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084415, 33.810051, 35.828636>,  <39.101734, 34.185966, 35.964237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084415, 33.810051, 35.828636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332224, 0.333554, -0.882252,
		0.942206, 0.074425, -0.326663,
		-0.043298, -0.939788, -0.339002,
		39.071426, 33.528114, 35.726936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412094, 34.240311, 35.334599>,  <39.101734, 34.185966, 35.964237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412094, 34.240311, 35.334599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182255, 33.914921, 35.298615>,  <39.044350, 33.719685, 35.277023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182255, 33.914921, 35.298615>,  <39.412094, 34.240311, 35.334599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182255, 33.914921, 35.298615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260177, 0.285769, -0.922304,
		0.775980, -0.506548, -0.375850,
		-0.574598, -0.813477, -0.089958,
		39.009876, 33.670879, 35.271626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363049, 34.193501, 34.546280>,  <39.412094, 34.240311, 35.334599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363049, 34.193501, 34.546280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099033, 33.922150, 34.675373>,  <38.940624, 33.759338, 34.752831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099033, 33.922150, 34.675373>,  <39.363049, 34.193501, 34.546280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099033, 33.922150, 34.675373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539528, 0.129118, -0.832008,
		0.522741, -0.723283, -0.451225,
		-0.660038, -0.678373, 0.322736,
		38.901020, 33.718639, 34.772194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201843, 33.708530, 34.005131>,  <39.363049, 34.193501, 34.546280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201843, 33.708530, 34.005131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906349, 33.703583, 34.274685>,  <38.729053, 33.700615, 34.436417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906349, 33.703583, 34.274685>,  <39.201843, 33.708530, 34.005131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906349, 33.703583, 34.274685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673663, 0.045078, -0.737663,
		-0.021254, -0.998907, -0.041632,
		-0.738734, -0.012368, 0.673884,
		38.684731, 33.699871, 34.476849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.659073, 33.191616, 33.790298>,  <39.201843, 33.708530, 34.005131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.659073, 33.191616, 33.790298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471279, 33.450085, 34.030979>,  <38.358604, 33.605167, 34.175388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471279, 33.450085, 34.030979>,  <38.659073, 33.191616, 33.790298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471279, 33.450085, 34.030979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701688, 0.140583, -0.698477,
		-0.535927, -0.750130, 0.387411,
		-0.469485, 0.646174, 0.601700,
		38.330433, 33.643936, 34.211491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031281, 32.959068, 33.728142>,  <38.659073, 33.191616, 33.790298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031281, 32.959068, 33.728142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990955, 33.334724, 33.859509>,  <37.966763, 33.560116, 33.938328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990955, 33.334724, 33.859509>,  <38.031281, 32.959068, 33.728142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990955, 33.334724, 33.859509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717065, 0.160243, -0.678337,
		-0.689678, -0.303881, 0.657268,
		-0.100811, 0.939137, 0.328418,
		37.960712, 33.616467, 33.958035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337257, 33.015739, 33.759174>,  <38.031281, 32.959068, 33.728142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337257, 33.015739, 33.759174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467888, 33.393578, 33.772331>,  <37.546265, 33.620281, 33.780228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467888, 33.393578, 33.772331>,  <37.337257, 33.015739, 33.759174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.467888, 33.393578, 33.772331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631098, 0.243835, -0.736383,
		-0.703607, 0.219726, 0.675765,
		0.326578, 0.944598, 0.032895,
		37.565861, 33.676956, 33.782200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737137, 33.421703, 33.778706>,  <37.337257, 33.015739, 33.759174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737137, 33.421703, 33.778706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020950, 33.666759, 33.639435>,  <37.191238, 33.813793, 33.555874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020950, 33.666759, 33.639435>,  <36.737137, 33.421703, 33.778706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020950, 33.666759, 33.639435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611971, 0.290767, -0.735491,
		-0.349357, 0.734929, 0.581231,
		0.709536, 0.612645, -0.348174,
		37.233810, 33.850552, 33.534985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.334648, 34.061882, 33.591198>,  <36.737137, 33.421703, 33.778706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.334648, 34.061882, 33.591198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677002, 34.092384, 33.386593>,  <36.882416, 34.110687, 33.263828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677002, 34.092384, 33.386593>,  <36.334648, 34.061882, 33.591198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677002, 34.092384, 33.386593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513965, 0.235288, -0.824912,
		0.057445, 0.968929, 0.240574,
		0.855885, 0.076260, -0.511512,
		36.933769, 34.115261, 33.233139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395805, 34.705696, 33.208218>,  <36.334648, 34.061882, 33.591198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395805, 34.705696, 33.208218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658241, 34.464893, 33.026173>,  <36.815704, 34.320412, 32.916946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658241, 34.464893, 33.026173>,  <36.395805, 34.705696, 33.208218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658241, 34.464893, 33.026173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461324, 0.157341, -0.873169,
		0.597262, 0.782836, -0.174490,
		0.656094, -0.602007, -0.455114,
		36.855068, 34.284290, 32.889637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710453, 35.084843, 32.721676>,  <36.395805, 34.705696, 33.208218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710453, 35.084843, 32.721676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723412, 34.697128, 32.624161>,  <36.731186, 34.464500, 32.565651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723412, 34.697128, 32.624161>,  <36.710453, 35.084843, 32.721676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723412, 34.697128, 32.624161> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554442, 0.185519, -0.811281,
		0.831592, 0.161452, -0.531403,
		0.032398, -0.969286, -0.243792,
		36.733131, 34.406342, 32.551022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829586, 35.063732, 31.984989>,  <36.710453, 35.084843, 32.721676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829586, 35.063732, 31.984989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684177, 34.700645, 32.068794>,  <36.596931, 34.482792, 32.119076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684177, 34.700645, 32.068794>,  <36.829586, 35.063732, 31.984989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684177, 34.700645, 32.068794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503712, 0.002332, -0.863868,
		0.783663, -0.419568, -0.458077,
		-0.363520, -0.907721, 0.209514,
		36.575123, 34.428329, 32.131649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<41.662491, 32.548779, 38.104053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.347973, 32.325069, 38.209087>,  <41.159264, 32.190842, 38.272106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.347973, 32.325069, 38.209087>,  <41.662491, 32.548779, 38.104053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347973, 32.325069, 38.209087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462796, 0.251568, -0.850020,
		0.409339, -0.789889, -0.456637,
		-0.786296, -0.559276, 0.262581,
		41.112083, 32.157288, 38.287861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560204, 32.328716, 37.534523>,  <41.662491, 32.548779, 38.104053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560204, 32.328716, 37.534523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.212376, 32.252022, 37.716553>,  <41.003681, 32.206005, 37.825771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.212376, 32.252022, 37.716553>,  <41.560204, 32.328716, 37.534523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.212376, 32.252022, 37.716553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473945, 0.065272, -0.878132,
		0.138675, -0.979272, -0.147636,
		-0.869566, -0.191746, 0.455070,
		40.951504, 32.194500, 37.853073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.358242, 31.782446, 37.277779>,  <41.560204, 32.328716, 37.534523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.358242, 31.782446, 37.277779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.048531, 31.998426, 37.409805>,  <40.862701, 32.128014, 37.489021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.048531, 31.998426, 37.409805>,  <41.358242, 31.782446, 37.277779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048531, 31.998426, 37.409805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272605, 0.186116, -0.943953,
		-0.571119, -0.820862, 0.003087,
		-0.774280, 0.539951, 0.330065,
		40.816246, 32.160412, 37.508823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919777, 31.785448, 36.738522>,  <41.358242, 31.782446, 37.277779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919777, 31.785448, 36.738522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.695663, 32.024849, 36.967567>,  <40.561195, 32.168488, 37.104996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.695663, 32.024849, 36.967567>,  <40.919777, 31.785448, 36.738522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695663, 32.024849, 36.967567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490993, 0.316782, -0.811526,
		-0.667093, -0.735829, 0.116374,
		-0.560279, 0.598502, 0.572610,
		40.527580, 32.204399, 37.139351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085278, 31.640837, 36.630180>,  <40.919777, 31.785448, 36.738522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085278, 31.640837, 36.630180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.144470, 32.014114, 36.761173>,  <40.179985, 32.238083, 36.839771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.144470, 32.014114, 36.761173>,  <40.085278, 31.640837, 36.630180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144470, 32.014114, 36.761173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623255, 0.345101, -0.701754,
		-0.767890, -0.100259, 0.632688,
		0.147984, 0.933195, 0.327486,
		40.188866, 32.294071, 36.859421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359348, 31.931238, 36.769711>,  <40.085278, 31.640837, 36.630180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359348, 31.931238, 36.769711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.610973, 32.239182, 36.726624>,  <39.761948, 32.423946, 36.700771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.610973, 32.239182, 36.726624>,  <39.359348, 31.931238, 36.769711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.610973, 32.239182, 36.726624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581206, 0.373769, -0.722839,
		-0.516221, 0.517316, 0.682569,
		0.629059, 0.769858, -0.107720,
		39.799690, 32.470139, 36.694309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963379, 32.527554, 37.031494>,  <39.359348, 31.931238, 36.769711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.963379, 32.527554, 37.031494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.249748, 32.650635, 36.780807>,  <39.421570, 32.724483, 36.630398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.249748, 32.650635, 36.780807>,  <38.963379, 32.527554, 37.031494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249748, 32.650635, 36.780807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687017, 0.470338, -0.553887,
		0.124336, 0.827105, 0.548123,
		0.715925, 0.307701, -0.626715,
		39.464527, 32.742947, 36.592793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563419, 32.985161, 36.736801>,  <38.963379, 32.527554, 37.031494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563419, 32.985161, 36.736801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.898090, 32.978508, 36.517822>,  <39.098892, 32.974518, 36.386436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.898090, 32.978508, 36.517822>,  <38.563419, 32.985161, 36.736801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898090, 32.978508, 36.517822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446687, 0.557672, -0.699623,
		0.316934, 0.829895, 0.459160,
		0.836674, -0.016634, -0.547449,
		39.149094, 32.973518, 36.353588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.769768, 33.722088, 36.539062>,  <38.563419, 32.985161, 36.736801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.769768, 33.722088, 36.539062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.931225, 33.458290, 36.285404>,  <39.028099, 33.300011, 36.133209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.931225, 33.458290, 36.285404>,  <38.769768, 33.722088, 36.539062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931225, 33.458290, 36.285404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363161, 0.520686, -0.772658,
		0.839755, 0.542173, -0.029333,
		0.403641, -0.659496, -0.634145,
		39.052319, 33.260441, 36.095161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180035, 34.325748, 36.833916>,  <38.769768, 33.722088, 36.539062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180035, 34.325748, 36.833916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.038651, 34.643223, 37.031956>,  <38.953819, 34.833710, 37.150780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.038651, 34.643223, 37.031956>,  <39.180035, 34.325748, 36.833916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038651, 34.643223, 37.031956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065360, -0.548922, 0.833314,
		0.933162, 0.262187, 0.245899,
		-0.353464, 0.793689, 0.495097,
		38.932610, 34.881329, 37.180485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785248, 34.523640, 37.222885>,  <39.180035, 34.325748, 36.833916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785248, 34.523640, 37.222885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.470970, 34.685482, 37.410065>,  <39.282406, 34.782589, 37.522373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.470970, 34.685482, 37.410065>,  <39.785248, 34.523640, 37.222885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470970, 34.685482, 37.410065> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291555, -0.424974, 0.856967,
		0.545604, 0.809746, 0.215933,
		-0.785692, 0.404608, 0.467953,
		39.235264, 34.806866, 37.550449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020550, 34.704857, 37.979477>,  <39.785248, 34.523640, 37.222885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020550, 34.704857, 37.979477> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.622993, 34.662113, 37.990555>,  <39.384460, 34.636467, 37.997200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.622993, 34.662113, 37.990555>,  <40.020550, 34.704857, 37.979477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622993, 34.662113, 37.990555> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081976, -0.546437, 0.833479,
		-0.073930, 0.830655, 0.551857,
		-0.993888, -0.106858, 0.027696,
		39.324825, 34.630054, 37.998863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784294, 34.960922, 38.621735>,  <40.020550, 34.704857, 37.979477>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784294, 34.960922, 38.621735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.470993, 34.735523, 38.516670>,  <39.283012, 34.600285, 38.453632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.470993, 34.735523, 38.516670>,  <39.784294, 34.960922, 38.621735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470993, 34.735523, 38.516670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034083, -0.382937, 0.923146,
		-0.620770, 0.732008, 0.280730,
		-0.783252, -0.563493, -0.262665,
		39.236019, 34.566475, 38.437870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336090, 35.030571, 39.226006>,  <39.784294, 34.960922, 38.621735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336090, 35.030571, 39.226006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.215286, 34.718395, 39.007023>,  <39.142803, 34.531090, 38.875633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.215286, 34.718395, 39.007023>,  <39.336090, 35.030571, 39.226006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.215286, 34.718395, 39.007023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037276, -0.564169, 0.824817,
		-0.952576, 0.269508, 0.141292,
		-0.302007, -0.780435, -0.547461,
		39.124683, 34.484264, 38.842785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626221, 34.857494, 39.347252>,  <39.336090, 35.030571, 39.226006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626221, 34.857494, 39.347252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.794292, 34.514606, 39.228172>,  <38.895134, 34.308872, 39.156723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.794292, 34.514606, 39.228172>,  <38.626221, 34.857494, 39.347252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794292, 34.514606, 39.228172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070343, -0.357849, 0.931126,
		-0.904712, -0.370297, -0.210659,
		0.420177, -0.857219, -0.297702,
		38.920345, 34.257442, 39.138863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244423, 34.415024, 39.603668>,  <38.626221, 34.857494, 39.347252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244423, 34.415024, 39.603668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.579784, 34.206059, 39.541489>,  <38.781002, 34.080681, 39.504181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.579784, 34.206059, 39.541489>,  <38.244423, 34.415024, 39.603668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579784, 34.206059, 39.541489> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002060, -0.288241, 0.957556,
		-0.545047, -0.802497, -0.242739,
		0.838403, -0.522413, -0.155452,
		38.831306, 34.049335, 39.494854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204117, 33.816956, 40.047241>,  <38.244423, 34.415024, 39.603668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204117, 33.816956, 40.047241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.586437, 33.890892, 39.955788>,  <38.815830, 33.935253, 39.900917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.586437, 33.890892, 39.955788>,  <38.204117, 33.816956, 40.047241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586437, 33.890892, 39.955788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274347, -0.281125, 0.919621,
		0.105712, -0.941701, -0.319411,
		0.955803, 0.184844, -0.228635,
		38.873177, 33.946346, 39.887196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596863, 33.315098, 40.322952>,  <38.204117, 33.816956, 40.047241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596863, 33.315098, 40.322952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.901707, 33.566364, 40.260216>,  <39.084614, 33.717125, 40.222576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.901707, 33.566364, 40.260216>,  <38.596863, 33.315098, 40.322952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901707, 33.566364, 40.260216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480845, -0.386929, 0.786812,
		0.433561, -0.675054, -0.596932,
		0.762110, 0.628163, -0.156839,
		39.130341, 33.754814, 40.213165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216774, 32.890808, 40.475212>,  <38.596863, 33.315098, 40.322952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216774, 32.890808, 40.475212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.323902, 33.275944, 40.489109>,  <39.388180, 33.507027, 40.497448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.323902, 33.275944, 40.489109>,  <39.216774, 32.890808, 40.475212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.323902, 33.275944, 40.489109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407770, -0.145952, 0.901344,
		0.872923, -0.227234, -0.431707,
		0.267825, 0.962841, 0.034746,
		39.404251, 33.564796, 40.499535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698540, 32.872990, 41.043510>,  <39.216774, 32.890808, 40.475212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698540, 32.872990, 41.043510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.669010, 33.268318, 40.990192>,  <39.651291, 33.505516, 40.958202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.669010, 33.268318, 40.990192>,  <39.698540, 32.872990, 41.043510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669010, 33.268318, 40.990192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493173, 0.152349, 0.856487,
		0.866793, -0.002506, -0.498662,
		-0.073824, 0.988323, -0.133292,
		39.646862, 33.564816, 40.950207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400112, 33.163071, 41.034805>,  <39.698540, 32.872990, 41.043510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400112, 33.163071, 41.034805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.143257, 33.446030, 41.152958>,  <39.989143, 33.615803, 41.223850>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.143257, 33.446030, 41.152958>,  <40.400112, 33.163071, 41.034805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143257, 33.446030, 41.152958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508189, 0.104331, 0.854903,
		0.573937, 0.699075, -0.426485,
		-0.642138, 0.707396, 0.295383,
		39.950615, 33.658249, 41.241573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823856, 33.713135, 41.262199>,  <40.400112, 33.163071, 41.034805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823856, 33.713135, 41.262199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.458820, 33.752647, 41.420906>,  <40.239799, 33.776356, 41.516132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.458820, 33.752647, 41.420906>,  <40.823856, 33.713135, 41.262199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458820, 33.752647, 41.420906> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390294, -0.078815, 0.917311,
		0.121883, 0.991983, 0.033372,
		-0.912587, 0.098779, 0.396771,
		40.185043, 33.782280, 41.539936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896236, 34.263550, 41.720554>,  <40.823856, 33.713135, 41.262199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896236, 34.263550, 41.720554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.593262, 34.020870, 41.817059>,  <40.411476, 33.875263, 41.874962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.593262, 34.020870, 41.817059>,  <40.896236, 34.263550, 41.720554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.593262, 34.020870, 41.817059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273601, 0.040571, 0.960987,
		-0.592817, 0.793897, 0.135263,
		-0.757437, -0.606697, 0.241262,
		40.366032, 33.838860, 41.889439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.482281, 33.118851, 43.544434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.786690, 32.871040, 43.467449>,  <34.969334, 32.722355, 43.421257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.786690, 32.871040, 43.467449>,  <34.482281, 33.118851, 43.544434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786690, 32.871040, 43.467449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206614, 0.049764, -0.977156,
		0.614948, 0.783400, -0.090131,
		0.761019, -0.619523, -0.192464,
		35.014996, 32.685184, 43.409710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094677, 33.431965, 43.159035>,  <34.482281, 33.118851, 43.544434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094677, 33.431965, 43.159035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.098595, 33.041084, 43.074200>,  <35.100945, 32.806557, 43.023300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.098595, 33.041084, 43.074200>,  <35.094677, 33.431965, 43.159035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098595, 33.041084, 43.074200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146916, 0.208386, -0.966949,
		0.989100, 0.040627, -0.141526,
		0.009793, -0.977202, -0.212084,
		35.101532, 32.747925, 43.010574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.260761, 33.507210, 42.516209>,  <35.094677, 33.431965, 43.159035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.260761, 33.507210, 42.516209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.166759, 33.118607, 42.503891>,  <35.110359, 32.885445, 42.496502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.166759, 33.118607, 42.503891>,  <35.260761, 33.507210, 42.516209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166759, 33.118607, 42.503891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076174, 0.049993, -0.995841,
		0.969004, -0.231684, -0.085752,
		-0.235007, -0.971506, -0.030795,
		35.096256, 32.827156, 42.494652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661568, 33.061253, 42.066353>,  <35.260761, 33.507210, 42.516209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661568, 33.061253, 42.066353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.317867, 32.859528, 42.100655>,  <35.111645, 32.738491, 42.121235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.317867, 32.859528, 42.100655>,  <35.661568, 33.061253, 42.066353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317867, 32.859528, 42.100655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154108, 0.095352, -0.983442,
		0.487787, -0.858240, -0.159650,
		-0.859252, -0.504314, 0.085750,
		35.060093, 32.708233, 42.126381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696423, 32.375427, 41.681889>,  <35.661568, 33.061253, 42.066353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696423, 32.375427, 41.681889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.324627, 32.521873, 41.699783>,  <35.101547, 32.609741, 41.710518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.324627, 32.521873, 41.699783>,  <35.696423, 32.375427, 41.681889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324627, 32.521873, 41.699783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054538, -0.016473, -0.998376,
		-0.364789, -0.930422, 0.035279,
		-0.929492, 0.366120, 0.044734,
		35.045780, 32.631710, 41.713203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.386791, 32.250320, 41.053501>,  <35.696423, 32.375427, 41.681889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.386791, 32.250320, 41.053501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.099438, 32.487534, 41.198956>,  <34.927025, 32.629860, 41.286228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.099438, 32.487534, 41.198956>,  <35.386791, 32.250320, 41.053501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099438, 32.487534, 41.198956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374155, 0.111297, -0.920663,
		-0.586454, -0.797451, 0.141931,
		-0.718387, 0.593031, 0.363641,
		34.883923, 32.665443, 41.308048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700256, 32.090736, 40.629559>,  <35.386791, 32.250320, 41.053501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700256, 32.090736, 40.629559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.626762, 32.429684, 40.828842>,  <34.582668, 32.633053, 40.948414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.626762, 32.429684, 40.828842>,  <34.700256, 32.090736, 40.629559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626762, 32.429684, 40.828842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486288, 0.362119, -0.795232,
		-0.854264, -0.388383, 0.345531,
		-0.183731, 0.847366, 0.498211,
		34.571644, 32.683895, 40.978306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022606, 32.257614, 40.483967>,  <34.700256, 32.090736, 40.629559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022606, 32.257614, 40.483967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.193703, 32.607918, 40.573479>,  <34.296360, 32.818100, 40.627186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.193703, 32.607918, 40.573479>,  <34.022606, 32.257614, 40.483967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193703, 32.607918, 40.573479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388556, 0.401676, -0.829265,
		-0.816124, 0.267765, 0.512098,
		0.427745, 0.875762, 0.223775,
		34.322025, 32.870647, 40.640610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437855, 32.698204, 40.400608>,  <34.022606, 32.257614, 40.483967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437855, 32.698204, 40.400608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.776379, 32.910721, 40.385174>,  <33.979492, 33.038231, 40.375912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.776379, 32.910721, 40.385174>,  <33.437855, 32.698204, 40.400608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776379, 32.910721, 40.385174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311296, 0.434492, -0.845170,
		-0.432266, 0.727287, 0.533103,
		0.846310, 0.531291, -0.038585,
		34.030273, 33.070107, 40.373600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241714, 33.309170, 40.244278>,  <33.437855, 32.698204, 40.400608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241714, 33.309170, 40.244278> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.627861, 33.368942, 40.158741>,  <33.859550, 33.404808, 40.107418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.627861, 33.368942, 40.158741>,  <33.241714, 33.309170, 40.244278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627861, 33.368942, 40.158741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259762, 0.474707, -0.840938,
		-0.024154, 0.867365, 0.497086,
		0.965371, 0.149436, -0.213842,
		33.917473, 33.413773, 40.094589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348965, 34.008900, 40.103710>,  <33.241714, 33.309170, 40.244278>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348965, 34.008900, 40.103710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.659607, 33.843708, 39.913414>,  <33.845993, 33.744591, 39.799236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.659607, 33.843708, 39.913414>,  <33.348965, 34.008900, 40.103710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659607, 33.843708, 39.913414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177867, 0.580708, -0.794444,
		0.604359, 0.701587, 0.377524,
		0.776604, -0.412981, -0.475745,
		33.892590, 33.719814, 39.770691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567535, 34.544174, 39.771103>,  <33.348965, 34.008900, 40.103710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567535, 34.544174, 39.771103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.727753, 34.227345, 39.586853>,  <33.823883, 34.037247, 39.476303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.727753, 34.227345, 39.586853>,  <33.567535, 34.544174, 39.771103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727753, 34.227345, 39.586853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229783, 0.399819, -0.887325,
		0.886997, 0.461257, -0.021861,
		0.400544, -0.792077, -0.460627,
		33.847916, 33.989719, 39.448666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056404, 34.724682, 39.179092>,  <33.567535, 34.544174, 39.771103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056404, 34.724682, 39.179092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.905159, 34.364025, 39.095119>,  <33.814411, 34.147633, 39.044735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.905159, 34.364025, 39.095119>,  <34.056404, 34.724682, 39.179092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905159, 34.364025, 39.095119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106109, 0.267480, -0.957703,
		0.919659, -0.339844, -0.196810,
		-0.378112, -0.901643, -0.209930,
		33.791725, 34.093533, 39.032139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055519, 34.886436, 38.526966>,  <34.056404, 34.724682, 39.179092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055519, 34.886436, 38.526966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.901302, 34.517925, 38.506573>,  <33.808773, 34.296818, 38.494339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.901302, 34.517925, 38.506573>,  <34.055519, 34.886436, 38.526966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901302, 34.517925, 38.506573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236567, 0.152104, -0.959636,
		0.891848, -0.357920, -0.276587,
		-0.385543, -0.921280, -0.050982,
		33.785641, 34.241543, 38.491280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751530, 35.003036, 38.467461>,  <34.055519, 34.886436, 38.526966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751530, 35.003036, 38.467461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.733234, 35.402500, 38.457836>,  <34.722256, 35.642178, 38.452061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.733234, 35.402500, 38.457836>,  <34.751530, 35.003036, 38.467461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733234, 35.402500, 38.457836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102590, 0.028658, 0.994311,
		0.993672, 0.043011, -0.103764,
		-0.045740, 0.998663, -0.024064,
		34.719513, 35.702099, 38.450619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335091, 35.325947, 38.794598>,  <34.751530, 35.003036, 38.467461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335091, 35.325947, 38.794598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.028744, 35.581326, 38.825130>,  <34.844936, 35.734554, 38.843449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.028744, 35.581326, 38.825130>,  <35.335091, 35.325947, 38.794598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028744, 35.581326, 38.825130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156987, 0.070542, 0.985078,
		0.623537, 0.766425, -0.154254,
		-0.765870, 0.638449, 0.076333,
		34.798985, 35.772861, 38.848030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555840, 35.918041, 39.172714>,  <35.335091, 35.325947, 38.794598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555840, 35.918041, 39.172714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.164318, 35.935425, 39.252777>,  <34.929405, 35.945854, 39.300816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.164318, 35.935425, 39.252777>,  <35.555840, 35.918041, 39.172714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164318, 35.935425, 39.252777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204138, 0.127167, 0.970647,
		0.016727, 0.990929, -0.133342,
		-0.978799, 0.043456, 0.200159,
		34.870678, 35.948463, 39.312824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430168, 36.469532, 39.765404>,  <35.555840, 35.918041, 39.172714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430168, 36.469532, 39.765404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.088303, 36.262081, 39.775005>,  <34.883183, 36.137611, 39.780766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.088303, 36.262081, 39.775005>,  <35.430168, 36.469532, 39.765404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088303, 36.262081, 39.775005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041023, 0.113552, 0.992685,
		-0.517560, 0.847426, -0.118325,
		-0.854663, -0.518628, 0.024006,
		34.831905, 36.106491, 39.782207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096035, 36.872623, 40.206131>,  <35.430168, 36.469532, 39.765404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096035, 36.872623, 40.206131> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.920792, 36.513058, 40.204975>,  <34.815643, 36.297318, 40.204281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.920792, 36.513058, 40.204975>,  <35.096035, 36.872623, 40.206131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920792, 36.513058, 40.204975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004381, -0.005347, 0.999976,
		-0.898911, 0.438087, 0.006280,
		-0.438110, -0.898917, -0.002887,
		34.789360, 36.243382, 40.204109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553684, 36.946724, 40.699200>,  <35.096035, 36.872623, 40.206131>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553684, 36.946724, 40.699200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.637402, 36.558220, 40.653862>,  <34.687634, 36.325119, 40.626659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.637402, 36.558220, 40.653862>,  <34.553684, 36.946724, 40.699200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637402, 36.558220, 40.653862> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137643, -0.085494, 0.986785,
		-0.968117, -0.222130, 0.115794,
		0.209295, -0.971262, -0.113343,
		34.700191, 36.266842, 40.619858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277111, 36.579216, 41.284103>,  <34.553684, 36.946724, 40.699200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277111, 36.579216, 41.284103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.537960, 36.309689, 41.145134>,  <34.694469, 36.147972, 41.061752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.537960, 36.309689, 41.145134>,  <34.277111, 36.579216, 41.284103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537960, 36.309689, 41.145134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218722, -0.271560, 0.937239,
		-0.725878, -0.687181, -0.029710,
		0.652121, -0.673823, -0.347421,
		34.733597, 36.107540, 41.040909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084991, 35.971161, 41.628498>,  <34.277111, 36.579216, 41.284103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084991, 35.971161, 41.628498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.464363, 35.903671, 41.521156>,  <34.691986, 35.863178, 41.456753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.464363, 35.903671, 41.521156>,  <34.084991, 35.971161, 41.628498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464363, 35.903671, 41.521156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201018, -0.334458, 0.920722,
		-0.245096, -0.927185, -0.283294,
		0.948430, -0.168718, -0.268355,
		34.748894, 35.853054, 41.440651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350800, 35.344776, 42.017151>,  <34.084991, 35.971161, 41.628498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350800, 35.344776, 42.017151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.679562, 35.550335, 41.918861>,  <34.876820, 35.673672, 41.859886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.679562, 35.550335, 41.918861>,  <34.350800, 35.344776, 42.017151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679562, 35.550335, 41.918861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468047, -0.363396, 0.805528,
		0.324663, -0.777079, -0.539205,
		0.821904, 0.513899, -0.245728,
		34.926132, 35.704506, 41.845142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867908, 34.965118, 42.278812>,  <34.350800, 35.344776, 42.017151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867908, 34.965118, 42.278812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.125916, 35.263866, 42.214146>,  <35.280720, 35.443115, 42.175346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.125916, 35.263866, 42.214146>,  <34.867908, 34.965118, 42.278812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125916, 35.263866, 42.214146> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507011, -0.259986, 0.821795,
		0.571743, -0.612040, -0.546367,
		0.645019, 0.746870, -0.161665,
		35.319420, 35.487926, 42.165646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504559, 34.736507, 42.208824>,  <34.867908, 34.965118, 42.278812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504559, 34.736507, 42.208824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.526863, 35.110374, 42.349277>,  <35.540245, 35.334694, 42.433548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.526863, 35.110374, 42.349277>,  <35.504559, 34.736507, 42.208824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526863, 35.110374, 42.349277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616477, -0.308864, 0.724265,
		0.785396, 0.176080, -0.593421,
		0.055758, 0.934665, 0.351130,
		35.543591, 35.390774, 42.454617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278904, 34.804012, 42.351986>,  <35.504559, 34.736507, 42.208824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278904, 34.804012, 42.351986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.096920, 35.085480, 42.570293>,  <35.987732, 35.254360, 42.701279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.096920, 35.085480, 42.570293>,  <36.278904, 34.804012, 42.351986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096920, 35.085480, 42.570293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662109, -0.142541, 0.735726,
		0.595504, 0.696080, -0.401058,
		-0.454957, 0.703672, 0.545765,
		35.960434, 35.296581, 42.734024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783070, 35.126011, 42.647259>,  <36.278904, 34.804012, 42.351986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783070, 35.126011, 42.647259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.455093, 35.182625, 42.869129>,  <36.258308, 35.216595, 43.002251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.455093, 35.182625, 42.869129>,  <36.783070, 35.126011, 42.647259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455093, 35.182625, 42.869129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487210, -0.336159, 0.805992,
		0.300535, 0.931110, 0.206674,
		-0.819942, 0.141535, 0.554673,
		36.209110, 35.225086, 43.035530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031136, 35.464737, 43.260815>,  <36.783070, 35.126011, 42.647259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031136, 35.464737, 43.260815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.683647, 35.276901, 43.323830>,  <36.475155, 35.164200, 43.361641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.683647, 35.276901, 43.323830>,  <37.031136, 35.464737, 43.260815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683647, 35.276901, 43.323830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403066, -0.485369, 0.775857,
		-0.287865, 0.737500, 0.610923,
		-0.868718, -0.469585, 0.157541,
		36.423031, 35.136024, 43.371094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388233, 35.957565, 43.533646>,  <37.031136, 35.464737, 43.260815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388233, 35.957565, 43.533646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.779835, 36.008659, 43.470104>,  <38.014797, 36.039314, 43.431980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.779835, 36.008659, 43.470104>,  <37.388233, 35.957565, 43.533646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779835, 36.008659, 43.470104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201318, 0.483606, -0.851820,
		-0.031982, 0.865915, 0.499167,
		0.979004, 0.127735, -0.158858,
		38.073536, 36.046978, 43.422447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518692, 36.646965, 43.418789>,  <37.388233, 35.957565, 43.533646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518692, 36.646965, 43.418789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.844612, 36.471737, 43.266895>,  <38.040165, 36.366600, 43.175758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.844612, 36.471737, 43.266895>,  <37.518692, 36.646965, 43.418789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844612, 36.471737, 43.266895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129557, 0.500857, -0.855779,
		0.565082, 0.746485, 0.351343,
		0.814799, -0.438066, -0.379737,
		38.089050, 36.340317, 43.152973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632450, 37.120235, 42.967102>,  <37.518692, 36.646965, 43.418789>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632450, 37.120235, 42.967102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.848267, 36.801323, 42.858845>,  <37.977757, 36.609978, 42.793892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.848267, 36.801323, 42.858845>,  <37.632450, 37.120235, 42.967102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848267, 36.801323, 42.858845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055391, 0.287137, -0.956287,
		0.840137, 0.530945, 0.110759,
		0.539539, -0.797277, -0.270644,
		38.010128, 36.562141, 42.777653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159657, 37.421852, 42.581345>,  <37.632450, 37.120235, 42.967102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159657, 37.421852, 42.581345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.129101, 37.044441, 42.452404>,  <38.110767, 36.817993, 42.375038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.129101, 37.044441, 42.452404>,  <38.159657, 37.421852, 42.581345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129101, 37.044441, 42.452404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076831, 0.327909, -0.941580,
		0.994113, -0.047163, -0.097542,
		-0.076393, -0.943531, -0.322355,
		38.106182, 36.761383, 42.355698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595249, 37.375305, 42.043762>,  <38.159657, 37.421852, 42.581345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595249, 37.375305, 42.043762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.345020, 37.069572, 41.981209>,  <38.194885, 36.886131, 41.943676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.345020, 37.069572, 41.981209>,  <38.595249, 37.375305, 42.043762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345020, 37.069572, 41.981209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004374, 0.197003, -0.980393,
		0.780156, -0.613988, -0.119896,
		-0.625570, -0.764335, -0.156379,
		38.157349, 36.840271, 41.934296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862461, 37.006184, 41.364353>,  <38.595249, 37.375305, 42.043762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862461, 37.006184, 41.364353> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.476971, 36.911400, 41.413475>,  <38.245678, 36.854530, 41.442947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.476971, 36.911400, 41.413475>,  <38.862461, 37.006184, 41.364353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476971, 36.911400, 41.413475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151925, 0.108782, -0.982388,
		0.219432, -0.965409, -0.140837,
		-0.963726, -0.236964, 0.122800,
		38.187851, 36.840313, 41.450314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655422, 36.424606, 40.849022>,  <38.862461, 37.006184, 41.364353>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655422, 36.424606, 40.849022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.334187, 36.641872, 40.947021>,  <38.141445, 36.772232, 41.005821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.334187, 36.641872, 40.947021>,  <38.655422, 36.424606, 40.849022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334187, 36.641872, 40.947021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155646, 0.205666, -0.966165,
		-0.575176, -0.814047, -0.080626,
		-0.803086, 0.543166, 0.244997,
		38.093262, 36.804821, 41.020519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178223, 36.177605, 40.371983>,  <38.655422, 36.424606, 40.849022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178223, 36.177605, 40.371983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.034988, 36.526089, 40.506313>,  <37.949047, 36.735180, 40.586910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.034988, 36.526089, 40.506313>,  <38.178223, 36.177605, 40.371983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034988, 36.526089, 40.506313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319381, 0.223686, -0.920848,
		-0.877367, -0.436996, 0.198148,
		-0.358084, 0.871205, 0.335823,
		37.927563, 36.787449, 40.607059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541908, 36.234940, 40.039555>,  <38.178223, 36.177605, 40.371983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541908, 36.234940, 40.039555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.650597, 36.610802, 40.122700>,  <37.715809, 36.836319, 40.172588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.650597, 36.610802, 40.122700>,  <37.541908, 36.234940, 40.039555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650597, 36.610802, 40.122700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328761, 0.293633, -0.897605,
		-0.904479, 0.175563, 0.388711,
		0.271725, 0.939658, 0.207866,
		37.732113, 36.892700, 40.185059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992481, 36.661358, 39.893486>,  <37.541908, 36.234940, 40.039555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992481, 36.661358, 39.893486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.308411, 36.905632, 39.870670>,  <37.497967, 37.052197, 39.856983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.308411, 36.905632, 39.870670>,  <36.992481, 36.661358, 39.893486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.308411, 36.905632, 39.870670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328648, 0.342865, -0.880019,
		-0.517856, 0.713801, 0.471501,
		0.789820, 0.610681, -0.057035,
		37.545357, 37.088837, 39.853561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794502, 37.214966, 39.611351>,  <36.992481, 36.661358, 39.893486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794502, 37.214966, 39.611351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.185154, 37.278282, 39.553204>,  <37.419544, 37.316273, 39.518314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.185154, 37.278282, 39.553204>,  <36.794502, 37.214966, 39.611351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185154, 37.278282, 39.553204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204010, 0.470095, -0.858714,
		-0.067593, 0.868305, 0.491404,
		0.976633, 0.158294, -0.145368,
		37.478146, 37.325771, 39.509594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766312, 37.740566, 39.180637>,  <36.794502, 37.214966, 39.611351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766312, 37.740566, 39.180637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.147438, 37.622578, 39.151951>,  <37.376114, 37.551785, 39.134739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.147438, 37.622578, 39.151951>,  <36.766312, 37.740566, 39.180637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147438, 37.622578, 39.151951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010128, 0.205243, -0.978659,
		0.303393, 0.933204, 0.192570,
		0.952812, -0.294968, -0.071720,
		37.433281, 37.534088, 39.130436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226204, 38.299438, 38.825100>,  <36.766312, 37.740566, 39.180637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226204, 38.299438, 38.825100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.414558, 37.950603, 38.771847>,  <37.527573, 37.741302, 38.739895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.414558, 37.950603, 38.771847>,  <37.226204, 38.299438, 38.825100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414558, 37.950603, 38.771847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258781, 0.280821, -0.924214,
		0.843386, 0.400747, 0.357915,
		0.470886, -0.872090, -0.133135,
		37.555824, 37.688976, 38.731907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896046, 38.448250, 38.485561>,  <37.226204, 38.299438, 38.825100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896046, 38.448250, 38.485561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.855427, 38.060528, 38.396000>,  <37.831055, 37.827896, 38.342262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.855427, 38.060528, 38.396000>,  <37.896046, 38.448250, 38.485561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855427, 38.060528, 38.396000> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301040, 0.184574, -0.935579,
		0.948189, -0.162412, 0.273056,
		-0.101550, -0.969306, -0.223904,
		37.824963, 37.769737, 38.328827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.551775, 33.032925, 25.929174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.830456, 33.223869, 26.143364>,  <28.997665, 33.338436, 26.271877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.830456, 33.223869, 26.143364>,  <28.551775, 33.032925, 25.929174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.830456, 33.223869, 26.143364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528337, -0.846379, 0.067105,
		0.485246, 0.236158, -0.841882,
		0.696704, 0.477360, 0.535473,
		29.039467, 33.367077, 26.304007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.852888, 32.995918, 26.024860>,  <28.551775, 33.032925, 25.929174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.852888, 32.995918, 26.024860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.614502, 32.674751, 26.029720>,  <27.471470, 32.482052, 26.032637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.614502, 32.674751, 26.029720>,  <27.852888, 32.995918, 26.024860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.614502, 32.674751, 26.029720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313177, 0.246336, 0.917191,
		-0.739422, 0.542808, -0.398264,
		-0.595965, -0.802918, 0.012151,
		27.435713, 32.433876, 26.033365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.464180, 33.249523, 26.587679>,  <27.852888, 32.995918, 26.024860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.464180, 33.249523, 26.587679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.325329, 32.879280, 26.527348>,  <27.242018, 32.657135, 26.491148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.325329, 32.879280, 26.527348>,  <27.464180, 33.249523, 26.587679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325329, 32.879280, 26.527348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613381, 0.102426, 0.783117,
		-0.709412, 0.364358, -0.603306,
		-0.347129, -0.925609, -0.150828,
		27.221189, 32.601597, 26.482100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.670155, 33.196487, 26.468763>,  <27.464180, 33.249523, 26.587679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.670155, 33.196487, 26.468763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.812933, 32.852688, 26.615110>,  <26.898600, 32.646408, 26.702919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.812933, 32.852688, 26.615110>,  <26.670155, 33.196487, 26.468763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.812933, 32.852688, 26.615110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514933, 0.145741, 0.844750,
		-0.779380, -0.489927, -0.390561,
		0.356945, -0.859495, 0.365867,
		26.920017, 32.594841, 26.724871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.024225, 32.884090, 26.524557>,  <26.670155, 33.196487, 26.468763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.024225, 32.884090, 26.524557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.328459, 32.752659, 26.748539>,  <26.510998, 32.673798, 26.882929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.328459, 32.752659, 26.748539>,  <26.024225, 32.884090, 26.524557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.328459, 32.752659, 26.748539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517965, 0.212910, 0.828481,
		-0.391443, -0.920165, -0.008258,
		0.760582, -0.328581, 0.559956,
		26.556633, 32.654083, 26.916525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.676912, 32.603199, 27.025135>,  <26.024225, 32.884090, 26.524557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.676912, 32.603199, 27.025135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.040907, 32.663551, 27.179621>,  <26.259304, 32.699764, 27.272312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.040907, 32.663551, 27.179621>,  <25.676912, 32.603199, 27.025135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.040907, 32.663551, 27.179621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406504, 0.140995, 0.902704,
		0.081744, -0.978446, 0.189636,
		0.909985, 0.150879, 0.386216,
		26.313902, 32.708817, 27.295486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.749691, 32.187618, 27.592264>,  <25.676912, 32.603199, 27.025135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.749691, 32.187618, 27.592264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.051512, 32.442120, 27.656563>,  <26.232605, 32.594818, 27.695141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.051512, 32.442120, 27.656563>,  <25.749691, 32.187618, 27.592264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.051512, 32.442120, 27.656563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304387, 0.122318, 0.944663,
		0.581379, -0.761725, 0.285961,
		0.754551, 0.636250, 0.160746,
		26.277878, 32.632996, 27.704786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.062130, 31.936375, 28.181089>,  <25.749691, 32.187618, 27.592264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.062130, 31.936375, 28.181089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.159990, 32.323483, 28.157200>,  <26.218706, 32.555748, 28.142866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.159990, 32.323483, 28.157200>,  <26.062130, 31.936375, 28.181089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.159990, 32.323483, 28.157200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207500, 0.112425, 0.971753,
		0.947149, -0.225346, 0.228317,
		0.244649, 0.967771, -0.059723,
		26.233385, 32.613815, 28.139282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.437857, 32.072552, 28.711945>,  <26.062130, 31.936375, 28.181089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.437857, 32.072552, 28.711945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.351198, 32.448761, 28.607273>,  <26.299202, 32.674488, 28.544470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.351198, 32.448761, 28.607273>,  <26.437857, 32.072552, 28.711945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351198, 32.448761, 28.607273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232173, 0.210714, 0.949576,
		0.948240, 0.266477, 0.172715,
		-0.216647, 0.940526, -0.261676,
		26.286203, 32.730919, 28.528770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888271, 32.503483, 29.158003>,  <26.437857, 32.072552, 28.711945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.888271, 32.503483, 29.158003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.591105, 32.740055, 29.032606>,  <26.412804, 32.882000, 28.957369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.591105, 32.740055, 29.032606>,  <26.888271, 32.503483, 29.158003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.591105, 32.740055, 29.032606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183056, 0.270968, 0.945022,
		0.643865, 0.759461, -0.093042,
		-0.742919, 0.591435, -0.313491,
		26.368229, 32.917484, 28.938559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934847, 33.084339, 29.591230>,  <26.888271, 32.503483, 29.158003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934847, 33.084339, 29.591230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.564610, 33.099403, 29.440573>,  <26.342468, 33.108444, 29.350178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.564610, 33.099403, 29.440573>,  <26.934847, 33.084339, 29.591230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.564610, 33.099403, 29.440573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355455, 0.255573, 0.899074,
		0.130123, 0.966056, -0.223168,
		-0.925592, 0.037664, -0.376645,
		26.286932, 33.110703, 29.327579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.733240, 33.774277, 29.696150>,  <26.934847, 33.084339, 29.591230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.733240, 33.774277, 29.696150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.412125, 33.536255, 29.680931>,  <26.219456, 33.393444, 29.671799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.412125, 33.536255, 29.680931>,  <26.733240, 33.774277, 29.696150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.412125, 33.536255, 29.680931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363844, 0.438310, 0.821889,
		-0.472389, 0.673645, -0.568375,
		-0.802787, -0.595051, -0.038049,
		26.171289, 33.357738, 29.669516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.186716, 34.221504, 30.004129>,  <26.733240, 33.774277, 29.696150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.186716, 34.221504, 30.004129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.090652, 33.833492, 30.018904>,  <26.033014, 33.600685, 30.027769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.090652, 33.833492, 30.018904>,  <26.186716, 34.221504, 30.004129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.090652, 33.833492, 30.018904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179711, 0.081822, 0.980311,
		-0.953954, 0.228790, -0.193975,
		-0.240157, -0.970031, 0.036938,
		26.018606, 33.542484, 30.029985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.528984, 34.193298, 30.504137>,  <26.186716, 34.221504, 30.004129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.528984, 34.193298, 30.504137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.691563, 33.828625, 30.480040>,  <25.789110, 33.609821, 30.465582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.691563, 33.828625, 30.480040>,  <25.528984, 34.193298, 30.504137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.691563, 33.828625, 30.480040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080712, -0.101503, 0.991556,
		-0.910102, -0.398153, -0.114839,
		0.406447, -0.911686, -0.060242,
		25.813498, 33.555119, 30.461967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.187204, 33.862213, 30.964764>,  <25.528984, 34.193298, 30.504137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.187204, 33.862213, 30.964764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.522226, 33.647209, 30.925604>,  <25.723240, 33.518208, 30.902109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.522226, 33.647209, 30.925604>,  <25.187204, 33.862213, 30.964764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.522226, 33.647209, 30.925604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018025, -0.151903, 0.988231,
		-0.546053, -0.829464, -0.117538,
		0.837557, -0.537508, -0.097898,
		25.773493, 33.485958, 30.896235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.024382, 33.227921, 31.283291>,  <25.187204, 33.862213, 30.964764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.024382, 33.227921, 31.283291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.418499, 33.295288, 31.271765>,  <25.654970, 33.335709, 31.264849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.418499, 33.295288, 31.271765>,  <25.024382, 33.227921, 31.283291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.418499, 33.295288, 31.271765> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054701, -0.151161, 0.986995,
		0.161872, -0.974056, -0.158150,
		0.985294, 0.168418, -0.028813,
		25.714087, 33.345814, 31.263121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.197224, 32.850094, 31.961666>,  <25.024382, 33.227921, 31.283291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.197224, 32.850094, 31.961666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.529205, 33.046463, 31.855707>,  <25.728394, 33.164284, 31.792131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.529205, 33.046463, 31.855707>,  <25.197224, 32.850094, 31.961666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.529205, 33.046463, 31.855707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236861, 0.119799, 0.964129,
		0.505049, -0.862926, -0.016853,
		0.829953, 0.490925, -0.264898,
		25.778191, 33.193741, 31.776237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.632025, 32.598965, 32.319412>,  <25.197224, 32.850094, 31.961666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.632025, 32.598965, 32.319412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.812002, 32.946732, 32.237759>,  <25.919989, 33.155392, 32.188766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.812002, 32.946732, 32.237759>,  <25.632025, 32.598965, 32.319412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.812002, 32.946732, 32.237759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220469, 0.113371, 0.968783,
		0.865417, -0.480901, -0.140669,
		0.449941, 0.869414, -0.204138,
		25.946985, 33.207558, 32.176517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.335659, 32.506596, 32.627747>,  <25.632025, 32.598965, 32.319412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.335659, 32.506596, 32.627747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.204947, 32.882347, 32.586201>,  <26.126520, 33.107796, 32.561275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.204947, 32.882347, 32.586201>,  <26.335659, 32.506596, 32.627747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.204947, 32.882347, 32.586201> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282371, 0.201918, 0.937814,
		0.901932, 0.277131, -0.331235,
		-0.326780, 0.939376, -0.103862,
		26.106913, 33.164162, 32.555042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064615, 33.007355, 32.723492>,  <26.335659, 32.506596, 32.627747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.064615, 33.007355, 32.723492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.112181, 32.945351, 32.331200>,  <27.140720, 32.908150, 32.095825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.112181, 32.945351, 32.331200>,  <27.064615, 33.007355, 32.723492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.112181, 32.945351, 32.331200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689427, -0.697920, 0.193904,
		-0.714528, -0.699199, 0.023876,
		0.118914, -0.155010, -0.980730,
		27.147856, 32.898849, 32.036980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433422, 32.386269, 32.626194>,  <27.064615, 33.007355, 32.723492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433422, 32.386269, 32.626194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.727055, 32.126553, 32.705738>,  <27.903234, 31.970722, 32.753464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.727055, 32.126553, 32.705738>,  <27.433422, 32.386269, 32.626194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727055, 32.126553, 32.705738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209434, -0.495050, -0.843245,
		0.645958, 0.577362, -0.499391,
		0.734081, -0.649291, 0.198862,
		27.947279, 31.931765, 32.765396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824131, 32.440567, 32.033016>,  <27.433422, 32.386269, 32.626194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.824131, 32.440567, 32.033016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.887878, 32.092342, 32.219227>,  <27.926126, 31.883408, 32.330956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.887878, 32.092342, 32.219227>,  <27.824131, 32.440567, 32.033016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.887878, 32.092342, 32.219227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067722, -0.480088, -0.874602,
		0.984893, 0.107858, -0.135468,
		0.159370, -0.870564, 0.465531,
		27.935690, 31.831173, 32.358887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.339314, 32.099316, 31.637535>,  <27.824131, 32.440567, 32.033016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.339314, 32.099316, 31.637535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.136797, 31.827345, 31.849710>,  <28.015287, 31.664162, 31.977016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.136797, 31.827345, 31.849710>,  <28.339314, 32.099316, 31.637535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.136797, 31.827345, 31.849710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115379, -0.556160, -0.823027,
		0.854610, -0.477891, 0.203128,
		-0.506289, -0.679931, 0.530439,
		27.984911, 31.623365, 32.008842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474073, 31.437490, 31.199717>,  <28.339314, 32.099316, 31.637535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474073, 31.437490, 31.199717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.187347, 31.289316, 31.436005>,  <28.015312, 31.200411, 31.577778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.187347, 31.289316, 31.436005>,  <28.474073, 31.437490, 31.199717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.187347, 31.289316, 31.436005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152830, -0.743128, -0.651463,
		0.680308, -0.557259, 0.476071,
		-0.716815, -0.370438, 0.590722,
		27.972303, 31.178185, 31.613220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.557241, 30.659615, 31.179394>,  <28.474073, 31.437490, 31.199717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.557241, 30.659615, 31.179394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.186182, 30.739777, 31.305445>,  <27.963547, 30.787874, 31.381075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.186182, 30.739777, 31.305445>,  <28.557241, 30.659615, 31.179394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.186182, 30.739777, 31.305445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342523, -0.792810, -0.504114,
		0.148808, -0.575579, 0.804093,
		-0.927650, 0.200404, 0.315125,
		27.907887, 30.799898, 31.399982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435263, 30.009972, 31.491774>,  <28.557241, 30.659615, 31.179394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.435263, 30.009972, 31.491774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.090792, 30.190855, 31.398924>,  <27.884109, 30.299385, 31.343214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.090792, 30.190855, 31.398924>,  <28.435263, 30.009972, 31.491774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.090792, 30.190855, 31.398924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280785, -0.803875, -0.524351,
		-0.423717, -0.386381, 0.819252,
		-0.861176, 0.452210, -0.232125,
		27.832439, 30.326519, 31.329287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.923185, 29.444345, 31.510054>,  <28.435263, 30.009972, 31.491774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.923185, 29.444345, 31.510054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.724144, 29.734324, 31.319542>,  <27.604719, 29.908310, 31.205235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.724144, 29.734324, 31.319542>,  <27.923185, 29.444345, 31.510054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.724144, 29.734324, 31.319542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317166, -0.663131, -0.677984,
		-0.807339, -0.186307, 0.559905,
		-0.497604, 0.724946, -0.476281,
		27.574863, 29.951807, 31.176657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.350172, 29.111649, 31.274748>,  <27.923185, 29.444345, 31.510054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.350172, 29.111649, 31.274748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.369757, 29.439651, 31.046646>,  <27.381508, 29.636454, 30.909784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.369757, 29.439651, 31.046646>,  <27.350172, 29.111649, 31.274748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.369757, 29.439651, 31.046646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259926, -0.540807, -0.799979,
		-0.964387, 0.187391, 0.186664,
		0.048960, 0.820008, -0.570255,
		27.384445, 29.685654, 30.875570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777182, 29.127022, 30.755938>,  <27.350172, 29.111649, 31.274748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777182, 29.127022, 30.755938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.033453, 29.387775, 30.593662>,  <27.187216, 29.544228, 30.496298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.033453, 29.387775, 30.593662>,  <26.777182, 29.127022, 30.755938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033453, 29.387775, 30.593662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296416, -0.277416, -0.913881,
		-0.708287, 0.705754, 0.015495,
		0.640677, 0.651883, -0.405687,
		27.225657, 29.583340, 30.471956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.410027, 29.611309, 30.248287>,  <26.777182, 29.127022, 30.755938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.410027, 29.611309, 30.248287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.795843, 29.629057, 30.144215>,  <27.027332, 29.639706, 30.081772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.795843, 29.629057, 30.144215>,  <26.410027, 29.611309, 30.248287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.795843, 29.629057, 30.144215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262396, 0.054877, -0.963399,
		-0.028467, 0.997507, 0.064573,
		0.964540, 0.044369, -0.260179,
		27.085205, 29.642368, 30.066160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.452063, 30.112175, 29.773804>,  <26.410027, 29.611309, 30.248287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.452063, 30.112175, 29.773804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.784267, 29.900644, 29.703844>,  <26.983591, 29.773726, 29.661869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.784267, 29.900644, 29.703844>,  <26.452063, 30.112175, 29.773804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.784267, 29.900644, 29.703844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124011, 0.130567, -0.983653,
		0.543021, 0.838625, 0.042857,
		0.830512, -0.528829, -0.174900,
		27.033421, 29.741995, 29.651375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.689001, 30.404234, 29.174532>,  <26.452063, 30.112175, 29.773804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.689001, 30.404234, 29.174532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.920710, 30.078600, 29.191084>,  <27.059734, 29.883219, 29.201015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.920710, 30.078600, 29.191084>,  <26.689001, 30.404234, 29.174532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.920710, 30.078600, 29.191084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106762, 0.025444, -0.993959,
		0.808115, 0.580188, 0.101652,
		0.579269, -0.814085, 0.041380,
		27.094490, 29.834373, 29.203499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.426184, 30.629732, 28.957279>,  <26.689001, 30.404234, 29.174532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.426184, 30.629732, 28.957279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.315580, 30.249472, 28.900980>,  <27.249218, 30.021317, 28.867201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.315580, 30.249472, 28.900980>,  <27.426184, 30.629732, 28.957279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.315580, 30.249472, 28.900980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373793, 0.028538, -0.927073,
		0.885338, -0.308953, 0.347455,
		-0.276506, -0.950649, -0.140750,
		27.232628, 29.964277, 28.858755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891287, 30.517479, 28.469875>,  <27.426184, 30.629732, 28.957279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.891287, 30.517479, 28.469875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.641937, 30.205431, 28.448662>,  <27.492327, 30.018202, 28.435934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.641937, 30.205431, 28.448662>,  <27.891287, 30.517479, 28.469875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.641937, 30.205431, 28.448662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210361, -0.101995, -0.972289,
		0.753095, -0.617257, 0.227688,
		-0.623375, -0.780122, -0.053035,
		27.454926, 29.971394, 28.432751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.094843, 30.193020, 27.943655>,  <27.891287, 30.517479, 28.469875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.094843, 30.193020, 27.943655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.763664, 29.969473, 27.962303>,  <27.564957, 29.835344, 27.973492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.763664, 29.969473, 27.962303>,  <28.094843, 30.193020, 27.943655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.763664, 29.969473, 27.962303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161321, -0.316961, -0.934618,
		0.537103, -0.766293, 0.352584,
		-0.827947, -0.558866, 0.046621,
		27.515280, 29.801813, 27.976290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236891, 29.564009, 27.635698>,  <28.094843, 30.193020, 27.943655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.236891, 29.564009, 27.635698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.837135, 29.572941, 27.624916>,  <27.597282, 29.578300, 27.618446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.837135, 29.572941, 27.624916>,  <28.236891, 29.564009, 27.635698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837135, 29.572941, 27.624916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015312, -0.413593, -0.910333,
		-0.031476, -0.910188, 0.412997,
		-0.999387, 0.022330, -0.026955,
		27.537319, 29.579639, 27.616829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079317, 29.075397, 27.127398>,  <28.236891, 29.564009, 27.635698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.079317, 29.075397, 27.127398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.728369, 29.263176, 27.167080>,  <27.517799, 29.375843, 27.190889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.728369, 29.263176, 27.167080>,  <28.079317, 29.075397, 27.127398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.728369, 29.263176, 27.167080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193717, -0.157414, -0.968346,
		-0.438969, -0.868817, 0.229050,
		-0.877371, 0.469445, 0.099204,
		27.465158, 29.404009, 27.196840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583805, 28.639702, 26.870913>,  <28.079317, 29.075397, 27.127398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583805, 28.639702, 26.870913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.454151, 29.015800, 26.829203>,  <27.376360, 29.241459, 26.804176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.454151, 29.015800, 26.829203>,  <27.583805, 28.639702, 26.870913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.454151, 29.015800, 26.829203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040370, -0.123873, -0.991476,
		-0.945150, -0.317160, 0.078109,
		-0.324133, 0.940247, -0.104275,
		27.356911, 29.297874, 26.797920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.198980, 28.587397, 26.296587>,  <27.583805, 28.639702, 26.870913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.198980, 28.587397, 26.296587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.258568, 28.980679, 26.338768>,  <27.294319, 29.216648, 26.364077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.258568, 28.980679, 26.338768>,  <27.198980, 28.587397, 26.296587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258568, 28.980679, 26.338768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114165, 0.088829, -0.989482,
		-0.982230, 0.159440, -0.099015,
		0.148968, 0.983203, 0.105453,
		27.303259, 29.275639, 26.370403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.765814, 28.935156, 25.820330>,  <27.198980, 28.587397, 26.296587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.765814, 28.935156, 25.820330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.080685, 29.167131, 25.904259>,  <27.269608, 29.306316, 25.954617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.080685, 29.167131, 25.904259>,  <26.765814, 28.935156, 25.820330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.080685, 29.167131, 25.904259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113634, 0.198009, -0.973591,
		-0.606169, 0.790231, 0.089968,
		0.787176, 0.579937, 0.209824,
		27.316837, 29.341112, 25.967205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.535225, 29.608345, 25.567062>,  <26.765814, 28.935156, 25.820330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.535225, 29.608345, 25.567062> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.933056, 29.573580, 25.589914>,  <27.171755, 29.552721, 25.603624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.933056, 29.573580, 25.589914>,  <26.535225, 29.608345, 25.567062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.933056, 29.573580, 25.589914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096498, 0.566214, -0.818590,
		0.038799, 0.819663, 0.571530,
		0.994577, -0.086912, 0.057128,
		27.231428, 29.547506, 25.607052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.046967, 29.780973, 26.194262>,  <26.535225, 29.608345, 25.567062>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.046967, 29.780973, 26.194262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.401863, 29.695807, 26.357952>,  <26.614801, 29.644707, 26.456167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.401863, 29.695807, 26.357952>,  <26.046967, 29.780973, 26.194262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.401863, 29.695807, 26.357952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374539, -0.185386, -0.908489,
		0.269296, 0.959322, -0.084737,
		0.887243, -0.212916, 0.409227,
		26.668036, 29.631931, 26.480721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.706596, 34.524597, 42.357658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.521847, 34.169853, 42.362480>,  <40.410995, 33.957005, 42.365372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.521847, 34.169853, 42.362480>,  <40.706596, 34.524597, 42.357658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.521847, 34.169853, 42.362480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152095, -0.065807, 0.986173,
		-0.873806, 0.457325, 0.165282,
		-0.461878, -0.886862, 0.012054,
		40.383282, 33.903793, 42.366096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265285, 34.542145, 42.905334>,  <40.706596, 34.524597, 42.357658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265285, 34.542145, 42.905334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.339146, 34.155888, 42.832191>,  <40.383461, 33.924133, 42.788307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.339146, 34.155888, 42.832191>,  <40.265285, 34.542145, 42.905334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339146, 34.155888, 42.832191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105168, -0.165576, 0.980574,
		-0.977161, -0.200295, 0.070981,
		0.184651, -0.965643, -0.182859,
		40.394543, 33.866196, 42.777332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904587, 34.295959, 43.516891>,  <40.265285, 34.542145, 42.905334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904587, 34.295959, 43.516891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.114101, 33.985664, 43.376110>,  <40.239811, 33.799488, 43.291641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.114101, 33.985664, 43.376110>,  <39.904587, 34.295959, 43.516891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114101, 33.985664, 43.376110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229955, -0.269061, 0.935268,
		-0.820223, -0.570816, 0.037455,
		0.523789, -0.775742, -0.351952,
		40.271236, 33.752941, 43.270523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707176, 33.703449, 43.844219>,  <39.904587, 34.295959, 43.516891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707176, 33.703449, 43.844219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.079239, 33.630630, 43.716679>,  <40.302475, 33.586941, 43.640156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.079239, 33.630630, 43.716679>,  <39.707176, 33.703449, 43.844219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.079239, 33.630630, 43.716679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264351, -0.270616, 0.925681,
		-0.254797, -0.945319, -0.203593,
		0.930160, -0.182041, -0.318849,
		40.358288, 33.576015, 43.621025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898643, 33.159321, 44.239742>,  <39.707176, 33.703449, 43.844219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898643, 33.159321, 44.239742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.239033, 33.293831, 44.078369>,  <40.443268, 33.374535, 43.981544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.239033, 33.293831, 44.078369>,  <39.898643, 33.159321, 44.239742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239033, 33.293831, 44.078369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506823, -0.324340, 0.798708,
		0.137733, -0.884152, -0.446436,
		0.850976, 0.336272, -0.403436,
		40.494324, 33.394714, 43.957336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453247, 32.503071, 44.169346>,  <39.898643, 33.159321, 44.239742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453247, 32.503071, 44.169346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.625446, 32.864109, 44.169155>,  <40.728764, 33.080730, 44.169041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.625446, 32.864109, 44.169155>,  <40.453247, 32.503071, 44.169346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.625446, 32.864109, 44.169155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563486, -0.268344, 0.781329,
		0.705094, -0.336627, -0.624119,
		0.430495, 0.902593, -0.000477,
		40.754597, 33.134888, 44.169014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220718, 32.327679, 44.453083>,  <40.453247, 32.503071, 44.169346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.220718, 32.327679, 44.453083> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.226326, 32.725105, 44.408119>,  <41.229691, 32.963562, 44.381142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.226326, 32.725105, 44.408119>,  <41.220718, 32.327679, 44.453083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226326, 32.725105, 44.408119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580323, 0.083461, 0.810098,
		0.814265, -0.076590, -0.575418,
		0.014020, 0.993563, -0.112406,
		41.230534, 33.023174, 44.374397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947144, 32.563782, 44.357513>,  <41.220718, 32.327679, 44.453083>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947144, 32.563782, 44.357513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.732643, 32.856701, 44.525406>,  <41.603943, 33.032452, 44.626144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.732643, 32.856701, 44.525406>,  <41.947144, 32.563782, 44.357513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.732643, 32.856701, 44.525406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636498, 0.024236, 0.770897,
		0.554353, 0.680554, -0.479102,
		-0.536249, 0.732297, 0.419736,
		41.571770, 33.076389, 44.651325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444954, 33.222984, 44.443153>,  <41.947144, 32.563782, 44.357513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444954, 33.222984, 44.443153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.142662, 33.240864, 44.704494>,  <41.961285, 33.251591, 44.861298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.142662, 33.240864, 44.704494>,  <42.444954, 33.222984, 44.443153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.142662, 33.240864, 44.704494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652457, 0.137156, 0.745311,
		-0.056294, 0.989540, -0.132820,
		-0.755732, 0.044703, 0.653354,
		41.915943, 33.254276, 44.900501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727818, 33.686855, 45.004452>,  <42.444954, 33.222984, 44.443153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.727818, 33.686855, 45.004452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.416676, 33.505821, 45.178856>,  <42.229992, 33.397202, 45.283497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.416676, 33.505821, 45.178856>,  <42.727818, 33.686855, 45.004452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416676, 33.505821, 45.178856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358162, 0.250822, 0.899338,
		-0.516391, 0.855717, -0.033003,
		-0.777856, -0.452589, 0.436007,
		42.183319, 33.370045, 45.309658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.484123, 34.175411, 45.524372>,  <42.727818, 33.686855, 45.004452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.484123, 34.175411, 45.524372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.373192, 33.806271, 45.631275>,  <42.306633, 33.584785, 45.695419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.373192, 33.806271, 45.631275>,  <42.484123, 34.175411, 45.524372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373192, 33.806271, 45.631275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246930, 0.200365, 0.948093,
		-0.928502, 0.328925, 0.172314,
		-0.277326, -0.922855, 0.267260,
		42.289993, 33.529415, 45.711452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068951, 34.240475, 46.184284>,  <42.484123, 34.175411, 45.524372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068951, 34.240475, 46.184284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.254177, 33.886051, 46.175659>,  <42.365314, 33.673397, 46.170486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.254177, 33.886051, 46.175659>,  <42.068951, 34.240475, 46.184284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254177, 33.886051, 46.175659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412055, 0.193684, 0.890336,
		-0.784715, -0.421171, 0.454794,
		0.463070, -0.886060, -0.021559,
		42.393097, 33.620232, 46.169193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.727730, 33.888916, 46.730923>,  <42.068951, 34.240475, 46.184284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.727730, 33.888916, 46.730923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.107414, 33.823242, 46.623554>,  <42.335224, 33.783836, 46.559135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.107414, 33.823242, 46.623554>,  <41.727730, 33.888916, 46.730923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.107414, 33.823242, 46.623554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295326, 0.170531, 0.940054,
		-0.108571, -0.971577, 0.210357,
		0.949208, -0.164186, -0.268417,
		42.392178, 33.773987, 46.543030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939095, 33.457260, 47.178020>,  <41.727730, 33.888916, 46.730923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939095, 33.457260, 47.178020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.246849, 33.661701, 47.024757>,  <42.431503, 33.784367, 46.932800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.246849, 33.661701, 47.024757>,  <41.939095, 33.457260, 47.178020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246849, 33.661701, 47.024757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364522, 0.141267, 0.920417,
		0.524559, -0.847829, -0.077620,
		0.769391, 0.511107, -0.383155,
		42.477665, 33.815033, 46.909809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247742, 33.518803, 47.332123>,  <41.939095, 33.457260, 47.178020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247742, 33.518803, 47.332123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.052937, 33.766190, 47.578800>,  <40.936054, 33.914623, 47.726807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.052937, 33.766190, 47.578800>,  <41.247742, 33.518803, 47.332123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052937, 33.766190, 47.578800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505190, 0.376507, -0.776547,
		-0.712460, -0.689739, 0.129080,
		-0.487015, 0.618469, 0.616695,
		40.906834, 33.951729, 47.763809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661377, 33.620037, 47.029984>,  <41.247742, 33.518803, 47.332123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661377, 33.620037, 47.029984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.627762, 33.931385, 47.278843>,  <40.607594, 34.118195, 47.428158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.627762, 33.931385, 47.278843>,  <40.661377, 33.620037, 47.029984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.627762, 33.931385, 47.278843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548230, 0.485252, -0.681156,
		-0.832094, -0.398326, 0.385947,
		-0.084041, 0.778374, 0.622150,
		40.602551, 34.164898, 47.465488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956474, 33.710423, 47.135513>,  <40.661377, 33.620037, 47.029984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956474, 33.710423, 47.135513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.138443, 34.061245, 47.197250>,  <40.247623, 34.271736, 47.234291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.138443, 34.061245, 47.197250>,  <39.956474, 33.710423, 47.135513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138443, 34.061245, 47.197250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641720, 0.443024, -0.626038,
		-0.617446, 0.185757, 0.764366,
		0.454924, 0.877054, 0.154339,
		40.274921, 34.324360, 47.243553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350578, 34.280590, 47.301369>,  <39.956474, 33.710423, 47.135513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350578, 34.280590, 47.301369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.685287, 34.480713, 47.212372>,  <39.886112, 34.600784, 47.158974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.685287, 34.480713, 47.212372>,  <39.350578, 34.280590, 47.301369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685287, 34.480713, 47.212372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514247, 0.578543, -0.633118,
		-0.188029, 0.644194, 0.741390,
		0.836777, 0.500302, -0.222492,
		39.936321, 34.630802, 47.145626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196377, 35.028473, 47.187210>,  <39.350578, 34.280590, 47.301369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.196377, 35.028473, 47.187210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.540211, 34.949532, 46.998672>,  <39.746510, 34.902168, 46.885551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.540211, 34.949532, 46.998672>,  <39.196377, 35.028473, 47.187210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540211, 34.949532, 46.998672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344714, 0.456954, -0.819979,
		0.377209, 0.867320, 0.324760,
		0.859585, -0.197354, -0.471344,
		39.798084, 34.890324, 46.857269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404003, 35.692303, 46.910412>,  <39.196377, 35.028473, 47.187210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404003, 35.692303, 46.910412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.571526, 35.399887, 46.694935>,  <39.672039, 35.224438, 46.565651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.571526, 35.399887, 46.694935>,  <39.404003, 35.692303, 46.910412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571526, 35.399887, 46.694935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309564, 0.442749, -0.841513,
		0.853682, 0.519188, -0.040878,
		0.418804, -0.731039, -0.538688,
		39.697166, 35.180576, 46.533329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559040, 36.101475, 46.389820>,  <39.404003, 35.692303, 46.910412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559040, 36.101475, 46.389820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.628075, 35.735798, 46.243145>,  <39.669495, 35.516392, 46.155140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.628075, 35.735798, 46.243145>,  <39.559040, 36.101475, 46.389820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628075, 35.735798, 46.243145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100189, 0.354055, -0.929843,
		0.979886, 0.197213, -0.030488,
		0.172582, -0.914195, -0.366692,
		39.679848, 35.461540, 46.133137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004314, 36.176029, 45.775112>,  <39.559040, 36.101475, 46.389820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004314, 36.176029, 45.775112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.804344, 35.831089, 45.743046>,  <39.684364, 35.624123, 45.723808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.804344, 35.831089, 45.743046>,  <40.004314, 36.176029, 45.775112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804344, 35.831089, 45.743046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240694, 0.227252, -0.943622,
		0.831953, -0.452442, -0.321171,
		-0.499921, -0.862353, -0.080163,
		39.654369, 35.572384, 45.718998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097908, 35.942554, 45.111084>,  <40.004314, 36.176029, 45.775112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097908, 35.942554, 45.111084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.787373, 35.725353, 45.239113>,  <39.601051, 35.595032, 45.315929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.787373, 35.725353, 45.239113>,  <40.097908, 35.942554, 45.111084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.787373, 35.725353, 45.239113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515242, 0.254198, -0.818480,
		0.363075, -0.800332, -0.477121,
		-0.776339, -0.543002, 0.320072,
		39.554470, 35.562454, 45.335136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914757, 35.588486, 44.528786>,  <40.097908, 35.942554, 45.111084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914757, 35.588486, 44.528786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.608120, 35.504353, 44.771469>,  <39.424137, 35.453873, 44.917080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.608120, 35.504353, 44.771469>,  <39.914757, 35.588486, 44.528786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608120, 35.504353, 44.771469> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638367, 0.147501, -0.755467,
		0.069409, -0.966439, -0.247342,
		-0.766596, -0.210332, 0.606705,
		39.378139, 35.441254, 44.953480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617161, 35.009064, 44.307087>,  <39.914757, 35.588486, 44.528786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617161, 35.009064, 44.307087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.336494, 35.222092, 44.496418>,  <39.168095, 35.349907, 44.610016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.336494, 35.222092, 44.496418>,  <39.617161, 35.009064, 44.307087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336494, 35.222092, 44.496418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441343, 0.196662, -0.875523,
		-0.559359, -0.823224, 0.097054,
		-0.701665, 0.532566, 0.473329,
		39.125996, 35.381863, 44.638416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052303, 34.788673, 43.973782>,  <39.617161, 35.009064, 44.307087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052303, 34.788673, 43.973782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.954254, 35.131207, 44.155594>,  <38.895424, 35.336727, 44.264683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.954254, 35.131207, 44.155594>,  <39.052303, 34.788673, 43.973782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954254, 35.131207, 44.155594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496435, 0.291839, -0.817546,
		-0.832746, -0.426047, 0.353579,
		-0.245125, 0.856337, 0.454532,
		38.880718, 35.388107, 44.291954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297825, 34.859051, 43.845913>,  <39.052303, 34.788673, 43.973782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297825, 34.859051, 43.845913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.425312, 35.227165, 43.936676>,  <38.501804, 35.448036, 43.991135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.425312, 35.227165, 43.936676>,  <38.297825, 34.859051, 43.845913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425312, 35.227165, 43.936676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552237, 0.374858, -0.744658,
		-0.770360, 0.112025, 0.627691,
		0.318716, 0.920289, 0.226911,
		38.520927, 35.503250, 44.004749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782055, 35.278797, 43.731548>,  <38.297825, 34.859051, 43.845913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782055, 35.278797, 43.731548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.076176, 35.549591, 43.744400>,  <38.252647, 35.712067, 43.752110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.076176, 35.549591, 43.744400>,  <37.782055, 35.278797, 43.731548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076176, 35.549591, 43.744400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379097, 0.450122, -0.808502,
		-0.561803, 0.582310, 0.587615,
		0.735298, 0.676982, 0.032128,
		38.296764, 35.752686, 43.754040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055798, 35.456676, 44.030060>,  <37.782055, 35.278797, 43.731548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055798, 35.456676, 44.030060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.753483, 35.216228, 43.926186>,  <36.572094, 35.071960, 43.863861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.753483, 35.216228, 43.926186>,  <37.055798, 35.456676, 44.030060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753483, 35.216228, 43.926186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166259, -0.559744, 0.811816,
		-0.633358, 0.570386, 0.522990,
		-0.755788, -0.601121, -0.259687,
		36.526745, 35.035892, 43.848278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564678, 35.325100, 44.631756>,  <37.055798, 35.456676, 44.030060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564678, 35.325100, 44.631756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.491783, 35.002808, 44.406334>,  <36.448048, 34.809433, 44.271080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.491783, 35.002808, 44.406334>,  <36.564678, 35.325100, 44.631756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491783, 35.002808, 44.406334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037272, -0.578400, 0.814901,
		-0.982548, 0.127501, 0.135438,
		-0.182238, -0.805727, -0.563553,
		36.437111, 34.761089, 44.237267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070541, 34.936234, 45.042213>,  <36.564678, 35.325100, 44.631756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070541, 34.936234, 45.042213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.244694, 34.681557, 44.787636>,  <36.349186, 34.528751, 44.634888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.244694, 34.681557, 44.787636>,  <36.070541, 34.936234, 45.042213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244694, 34.681557, 44.787636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339587, -0.538590, 0.771104,
		-0.833739, -0.551855, -0.018281,
		0.435384, -0.636692, -0.636447,
		36.375309, 34.490551, 44.596703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865475, 34.325485, 45.232594>,  <36.070541, 34.936234, 45.042213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865475, 34.325485, 45.232594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.175198, 34.223125, 45.001087>,  <36.361031, 34.161709, 44.862183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.175198, 34.223125, 45.001087>,  <35.865475, 34.325485, 45.232594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175198, 34.223125, 45.001087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316859, -0.634904, 0.704626,
		-0.547774, -0.728981, -0.410524,
		0.774303, -0.255898, -0.578768,
		36.407490, 34.146355, 44.827457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879715, 33.645332, 45.350117>,  <35.865475, 34.325485, 45.232594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879715, 33.645332, 45.350117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.233727, 33.782059, 45.223701>,  <36.446133, 33.864094, 45.147854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.233727, 33.782059, 45.223701>,  <35.879715, 33.645332, 45.350117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233727, 33.782059, 45.223701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463327, -0.580807, 0.669322,
		0.045229, -0.738800, -0.672405,
		0.885033, 0.341817, -0.316036,
		36.499237, 33.884605, 45.128891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272213, 33.083172, 45.560120>,  <35.879715, 33.645332, 45.350117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272213, 33.083172, 45.560120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.531948, 33.378780, 45.488335>,  <36.687790, 33.556145, 45.445263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.531948, 33.378780, 45.488335>,  <36.272213, 33.083172, 45.560120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531948, 33.378780, 45.488335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574412, -0.321947, 0.752596,
		0.498409, -0.591773, -0.633556,
		0.649337, 0.739023, -0.179460,
		36.726749, 33.600487, 45.434498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895794, 32.787571, 45.635860>,  <36.272213, 33.083172, 45.560120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895794, 32.787571, 45.635860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.965279, 33.177677, 45.690540>,  <37.006969, 33.411739, 45.723347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.965279, 33.177677, 45.690540>,  <36.895794, 32.787571, 45.635860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965279, 33.177677, 45.690540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751139, -0.220983, 0.622058,
		0.636878, -0.005381, -0.770946,
		0.173713, 0.975263, 0.136698,
		37.017391, 33.470257, 45.731548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220585, 32.342529, 45.118031>,  <36.895794, 32.787571, 45.635860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220585, 32.342529, 45.118031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.052704, 31.989340, 45.202133>,  <36.951973, 31.777428, 45.252594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.052704, 31.989340, 45.202133>,  <37.220585, 32.342529, 45.118031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052704, 31.989340, 45.202133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668827, 0.144251, -0.729288,
		0.613610, -0.446714, -0.651098,
		-0.419705, -0.882971, 0.210261,
		36.926792, 31.724449, 45.265213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178177, 31.909506, 44.479153>,  <37.220585, 32.342529, 45.118031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178177, 31.909506, 44.479153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.903885, 31.757847, 44.727676>,  <36.739311, 31.666851, 44.876789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.903885, 31.757847, 44.727676>,  <37.178177, 31.909506, 44.479153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903885, 31.757847, 44.727676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635392, -0.104549, -0.765080,
		0.355035, -0.919411, -0.169214,
		-0.685731, -0.379148, 0.621305,
		36.698166, 31.644102, 44.914066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779675, 31.379465, 44.085194>,  <37.178177, 31.909506, 44.479153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779675, 31.379465, 44.085194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.543446, 31.489552, 44.388634>,  <36.401707, 31.555603, 44.570698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.543446, 31.489552, 44.388634>,  <36.779675, 31.379465, 44.085194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543446, 31.489552, 44.388634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758011, 0.133297, -0.638475,
		-0.276837, -0.952097, 0.129893,
		-0.590576, 0.275214, 0.758602,
		36.366272, 31.572117, 44.616215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184891, 31.091969, 44.053799>,  <36.779675, 31.379465, 44.085194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184891, 31.091969, 44.053799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.054974, 31.386736, 44.290936>,  <35.977024, 31.563597, 44.433216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.054974, 31.386736, 44.290936>,  <36.184891, 31.091969, 44.053799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054974, 31.386736, 44.290936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735551, 0.197222, -0.648127,
		-0.594538, -0.646573, 0.477983,
		-0.324793, 0.736917, 0.592843,
		35.957535, 31.607811, 44.468788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412067, 30.932989, 44.097507>,  <36.184891, 31.091969, 44.053799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412067, 30.932989, 44.097507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.469852, 31.312075, 44.211330>,  <35.504524, 31.539526, 44.279625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.469852, 31.312075, 44.211330>,  <35.412067, 30.932989, 44.097507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469852, 31.312075, 44.211330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723543, 0.297340, -0.622957,
		-0.674993, -0.115891, 0.728666,
		0.144466, 0.947712, 0.284555,
		35.513191, 31.596388, 44.296696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730389, 31.201120, 43.997555>,  <35.412067, 30.932989, 44.097507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730389, 31.201120, 43.997555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.979988, 31.513237, 44.014381>,  <35.129749, 31.700508, 44.024475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.979988, 31.513237, 44.014381>,  <34.730389, 31.201120, 43.997555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979988, 31.513237, 44.014381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333313, 0.314463, -0.888828,
		-0.706773, 0.540608, 0.456306,
		0.623999, 0.780292, 0.042063,
		35.167187, 31.747324, 44.027000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365700, 31.756439, 43.796734>,  <34.730389, 31.201120, 43.997555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365700, 31.756439, 43.796734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.750618, 31.858017, 43.757759>,  <34.981571, 31.918964, 43.734375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.750618, 31.858017, 43.757759>,  <34.365700, 31.756439, 43.796734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750618, 31.858017, 43.757759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172038, 0.290776, -0.941197,
		-0.210678, 0.922476, 0.323502,
		0.962298, 0.253944, -0.097441,
		35.039307, 31.934200, 43.728527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<42.988823, 29.766800, 44.659184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.874954, 30.129911, 44.782410>,  <42.806633, 30.347778, 44.856346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.874954, 30.129911, 44.782410>,  <42.988823, 29.766800, 44.659184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.874954, 30.129911, 44.782410> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503002, 0.132118, -0.854128,
		-0.816059, -0.398101, 0.419003,
		-0.284672, 0.907778, 0.308062,
		42.789551, 30.402245, 44.874828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277988, 29.872900, 44.566975>,  <42.988823, 29.766800, 44.659184>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277988, 29.872900, 44.566975> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.433025, 30.238472, 44.518795>,  <42.526047, 30.457815, 44.489887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.433025, 30.238472, 44.518795>,  <42.277988, 29.872900, 44.566975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.433025, 30.238472, 44.518795> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283780, -0.006024, -0.958870,
		-0.877064, 0.405831, 0.257020,
		0.387591, 0.913928, -0.120451,
		42.549301, 30.512650, 44.482658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.736912, 30.388315, 44.286297>,  <42.277988, 29.872900, 44.566975>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.736912, 30.388315, 44.286297> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.094059, 30.533190, 44.179264>,  <42.308350, 30.620115, 44.115044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.094059, 30.533190, 44.179264>,  <41.736912, 30.388315, 44.286297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.094059, 30.533190, 44.179264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361057, 0.220709, -0.906049,
		-0.269103, 0.905598, 0.327836,
		0.892872, 0.362188, -0.267579,
		42.361919, 30.641846, 44.098991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541332, 30.967058, 43.955772>,  <41.736912, 30.388315, 44.286297>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541332, 30.967058, 43.955772> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.926399, 30.908556, 43.864658>,  <42.157440, 30.873455, 43.809990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.926399, 30.908556, 43.864658>,  <41.541332, 30.967058, 43.955772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926399, 30.908556, 43.864658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160291, 0.370102, -0.915058,
		0.218137, 0.917406, 0.332840,
		0.962665, -0.146256, -0.227785,
		42.215199, 30.864679, 43.796322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692234, 31.667963, 43.582386>,  <41.541332, 30.967058, 43.955772>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692234, 31.667963, 43.582386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.979340, 31.412586, 43.471237>,  <42.151604, 31.259359, 43.404549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.979340, 31.412586, 43.471237>,  <41.692234, 31.667963, 43.582386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979340, 31.412586, 43.471237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045047, 0.355655, -0.933531,
		0.694832, 0.682568, 0.226514,
		0.717760, -0.638444, -0.277868,
		42.194668, 31.221052, 43.387878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.119171, 32.034332, 43.020206>,  <41.692234, 31.667963, 43.582386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.119171, 32.034332, 43.020206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.183289, 31.642950, 42.968159>,  <42.221760, 31.408121, 42.936932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.183289, 31.642950, 42.968159>,  <42.119171, 32.034332, 43.020206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183289, 31.642950, 42.968159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203492, 0.096236, -0.974335,
		0.965867, 0.182654, -0.183683,
		0.160290, -0.978456, -0.130120,
		42.231377, 31.349413, 42.929123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543915, 32.011372, 42.433239>,  <42.119171, 32.034332, 43.020206>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.543915, 32.011372, 42.433239> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.366047, 31.655872, 42.477764>,  <42.259327, 31.442572, 42.504478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.366047, 31.655872, 42.477764>,  <42.543915, 32.011372, 42.433239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.366047, 31.655872, 42.477764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041105, -0.144394, -0.988666,
		0.894750, -0.435056, 0.100740,
		-0.444671, -0.888750, 0.111314,
		42.232647, 31.389248, 42.511158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.941448, 31.634449, 42.030903>,  <42.543915, 32.011372, 42.433239>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.941448, 31.634449, 42.030903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.599384, 31.431513, 42.073452>,  <42.394146, 31.309752, 42.098980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.599384, 31.431513, 42.073452>,  <42.941448, 31.634449, 42.030903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599384, 31.431513, 42.073452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098958, -0.041657, -0.994219,
		0.508838, -0.860739, -0.014582,
		-0.855156, -0.507340, 0.106374,
		42.342838, 31.279310, 42.105366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.981476, 31.266628, 41.390720>,  <42.941448, 31.634449, 42.030903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.981476, 31.266628, 41.390720> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.607166, 31.252520, 41.531055>,  <42.382580, 31.244055, 41.615257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.607166, 31.252520, 41.531055>,  <42.981476, 31.266628, 41.390720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.607166, 31.252520, 41.531055> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351372, 0.010066, -0.936182,
		0.029504, -0.999327, -0.021819,
		-0.935771, -0.035287, 0.350838,
		42.326435, 31.241938, 41.636307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.586826, 30.666656, 41.169460>,  <42.981476, 31.266628, 41.390720>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.586826, 30.666656, 41.169460> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.290192, 30.913036, 41.275784>,  <42.112209, 31.060863, 41.339577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<42.290192, 30.913036, 41.275784>,  <42.586826, 30.666656, 41.169460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<42.290192, 30.913036, 41.275784> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386533, -0.068483, -0.919729,
		-0.548303, -0.784804, 0.288871,
		-0.741590, 0.615949, 0.265803,
		42.067715, 31.097820, 41.355526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864979, 30.306519, 41.179070>,  <42.586826, 30.666656, 41.169460>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864979, 30.306519, 41.179070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.849396, 30.699295, 41.105019>,  <41.840046, 30.934961, 41.060589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.849396, 30.699295, 41.105019>,  <41.864979, 30.306519, 41.179070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849396, 30.699295, 41.105019> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458671, -0.182170, -0.869733,
		-0.887752, 0.051027, 0.457486,
		-0.038960, 0.981942, -0.185126,
		41.837708, 30.993877, 41.049480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243618, 30.372164, 40.699242>,  <41.864979, 30.306519, 41.179070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243618, 30.372164, 40.699242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.422054, 30.729349, 40.675167>,  <41.529114, 30.943661, 40.660721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.422054, 30.729349, 40.675167>,  <41.243618, 30.372164, 40.699242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422054, 30.729349, 40.675167> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411608, 0.144977, -0.899756,
		-0.794723, 0.426144, 0.432223,
		0.446088, 0.892963, -0.060187,
		41.555882, 30.997238, 40.657112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745865, 30.387907, 41.406986>,  <41.243618, 30.372164, 40.699242>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745865, 30.387907, 41.406986> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.372860, 30.243456, 41.406040>,  <40.149055, 30.156786, 41.405472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.372860, 30.243456, 41.406040>,  <40.745865, 30.387907, 41.406986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372860, 30.243456, 41.406040> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019854, -0.057805, 0.998131,
		-0.360587, 0.930724, 0.061074,
		-0.932514, -0.361126, -0.002365,
		40.093105, 30.135118, 41.405331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399296, 30.742418, 41.894997>,  <40.745865, 30.387907, 41.406986>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399296, 30.742418, 41.894997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.188576, 30.405434, 41.849861>,  <40.062141, 30.203243, 41.822781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.188576, 30.405434, 41.849861>,  <40.399296, 30.742418, 41.894997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188576, 30.405434, 41.849861> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092415, -0.188736, 0.977670,
		-0.844948, 0.504613, 0.177283,
		-0.526804, -0.842464, -0.112838,
		40.030533, 30.152695, 41.816010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929562, 30.788944, 42.366173>,  <40.399296, 30.742418, 41.894997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929562, 30.788944, 42.366173> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.947533, 30.396286, 42.292034>,  <39.958317, 30.160690, 42.247551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.947533, 30.396286, 42.292034>,  <39.929562, 30.788944, 42.366173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947533, 30.396286, 42.292034> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105763, -0.189169, 0.976232,
		-0.993376, -0.024258, -0.112321,
		0.044929, -0.981645, -0.185350,
		39.961010, 30.101793, 42.236427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458183, 30.513655, 42.832832>,  <39.929562, 30.788944, 42.366173>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.458183, 30.513655, 42.832832> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.675861, 30.199900, 42.713779>,  <39.806469, 30.011646, 42.642345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.675861, 30.199900, 42.713779>,  <39.458183, 30.513655, 42.832832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675861, 30.199900, 42.713779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070858, -0.396472, 0.915308,
		-0.835962, -0.477016, -0.271338,
		0.544194, -0.784389, -0.297635,
		39.839119, 29.964582, 42.624489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093472, 30.002499, 43.112835>,  <39.458183, 30.513655, 42.832832>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093472, 30.002499, 43.112835> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.444138, 29.824266, 43.040260>,  <39.654537, 29.717327, 42.996716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.444138, 29.824266, 43.040260>,  <39.093472, 30.002499, 43.112835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444138, 29.824266, 43.040260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094616, -0.529447, 0.843050,
		-0.471708, -0.721905, -0.506306,
		0.876663, -0.445578, -0.181440,
		39.707138, 29.690592, 42.985828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987137, 29.231083, 43.133492>,  <39.093472, 30.002499, 43.112835>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987137, 29.231083, 43.133492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.363243, 29.343018, 43.211052>,  <39.588905, 29.410179, 43.257587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.363243, 29.343018, 43.211052>,  <38.987137, 29.231083, 43.133492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363243, 29.343018, 43.211052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053833, -0.440159, 0.896305,
		0.336166, -0.853200, -0.398801,
		0.940263, 0.279839, 0.193896,
		39.645321, 29.426970, 43.269222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284889, 28.631781, 43.413040>,  <38.987137, 29.231083, 43.133492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284889, 28.631781, 43.413040> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.536663, 28.921251, 43.526253>,  <39.687729, 29.094934, 43.594181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.536663, 28.921251, 43.526253>,  <39.284889, 28.631781, 43.413040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536663, 28.921251, 43.526253> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041155, -0.394768, 0.917859,
		0.775963, -0.566083, -0.278263,
		0.629434, 0.723677, 0.283029,
		39.725494, 29.138353, 43.611160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935867, 28.334730, 43.614304>,  <39.284889, 28.631781, 43.413040>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935867, 28.334730, 43.614304> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.893875, 28.685085, 43.802685>,  <39.868679, 28.895298, 43.915714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.893875, 28.685085, 43.802685>,  <39.935867, 28.334730, 43.614304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893875, 28.685085, 43.802685> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244656, -0.436266, 0.865919,
		0.963910, 0.206129, -0.168491,
		-0.104985, 0.875890, 0.470952,
		39.862381, 28.947853, 43.943970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344559, 28.282167, 44.235222>,  <39.935867, 28.334730, 43.614304>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344559, 28.282167, 44.235222> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.153385, 28.630188, 44.283550>,  <40.038681, 28.839001, 44.312546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.153385, 28.630188, 44.283550>,  <40.344559, 28.282167, 44.235222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153385, 28.630188, 44.283550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265458, -0.274176, 0.924316,
		0.837326, 0.409686, 0.361998,
		-0.477930, 0.870049, 0.120820,
		40.010006, 28.891203, 44.319798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661049, 28.557392, 44.938545>,  <40.344559, 28.282167, 44.235222>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661049, 28.557392, 44.938545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.333256, 28.775663, 44.868481>,  <40.136581, 28.906626, 44.826443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.333256, 28.775663, 44.868481>,  <40.661049, 28.557392, 44.938545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333256, 28.775663, 44.868481> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331948, -0.202786, 0.921243,
		0.467181, 0.813089, 0.347316,
		-0.819483, 0.545678, -0.175166,
		40.087410, 28.939367, 44.815929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435341, 29.044428, 45.587490>,  <40.661049, 28.557392, 44.938545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435341, 29.044428, 45.587490> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.125954, 28.926310, 45.363148>,  <39.940323, 28.855438, 45.228542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.125954, 28.926310, 45.363148>,  <40.435341, 29.044428, 45.587490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125954, 28.926310, 45.363148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476804, -0.311943, 0.821796,
		-0.417626, 0.903046, 0.100479,
		-0.773464, -0.295294, -0.560852,
		39.893913, 28.837721, 45.194893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876045, 29.276461, 46.027893>,  <40.435341, 29.044428, 45.587490>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876045, 29.276461, 46.027893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.699574, 29.038862, 45.758812>,  <39.593693, 28.896303, 45.597363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.699574, 29.038862, 45.758812>,  <39.876045, 29.276461, 46.027893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699574, 29.038862, 45.758812> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552168, -0.411243, 0.725252,
		-0.707441, 0.691411, -0.146554,
		-0.441178, -0.593995, -0.672705,
		39.567219, 28.860664, 45.556999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205830, 29.388494, 46.158863>,  <39.876045, 29.276461, 46.027893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205830, 29.388494, 46.158863> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.220562, 29.026394, 45.989552>,  <39.229401, 28.809134, 45.887966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.220562, 29.026394, 45.989552>,  <39.205830, 29.388494, 46.158863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.220562, 29.026394, 45.989552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643038, -0.345695, 0.683372,
		-0.764948, 0.247018, -0.594842,
		0.036829, -0.905250, -0.423280,
		39.231609, 28.754818, 45.862568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589985, 29.209881, 46.168156>,  <39.205830, 29.388494, 46.158863>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589985, 29.209881, 46.168156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.804131, 28.873070, 46.141693>,  <38.932617, 28.670984, 46.125816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.804131, 28.873070, 46.141693>,  <38.589985, 29.209881, 46.168156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804131, 28.873070, 46.141693> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406552, -0.325559, 0.853655,
		-0.740339, -0.430119, -0.516620,
		0.535364, -0.842027, -0.066158,
		38.964741, 28.620462, 46.121845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634438, 29.835918, 46.678043>,  <38.589985, 29.209881, 46.168156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634438, 29.835918, 46.678043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.573467, 30.153034, 46.914097>,  <38.536884, 30.343304, 47.055729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.573467, 30.153034, 46.914097>,  <38.634438, 29.835918, 46.678043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573467, 30.153034, 46.914097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719509, 0.320342, -0.616189,
		-0.677551, -0.518524, 0.521591,
		-0.152421, 0.792789, 0.590130,
		38.527740, 30.390871, 47.091137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930210, 29.870565, 46.843731>,  <38.634438, 29.835918, 46.678043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930210, 29.870565, 46.843731> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.046497, 30.246803, 46.913887>,  <38.116268, 30.472546, 46.955982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.046497, 30.246803, 46.913887>,  <37.930210, 29.870565, 46.843731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046497, 30.246803, 46.913887> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742727, 0.337409, -0.578369,
		-0.603190, 0.037875, 0.796697,
		0.290719, 0.940596, 0.175391,
		38.133713, 30.528982, 46.966503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283211, 30.251854, 46.898964>,  <37.930210, 29.870565, 46.843731>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283211, 30.251854, 46.898964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.563477, 30.534531, 46.859646>,  <37.731636, 30.704136, 46.836056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.563477, 30.534531, 46.859646>,  <37.283211, 30.251854, 46.898964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563477, 30.534531, 46.859646> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551634, 0.449171, -0.702813,
		-0.452518, 0.546658, 0.704551,
		0.700662, 0.706690, -0.098298,
		37.773674, 30.746538, 46.830158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794006, 30.801916, 46.916306>,  <37.283211, 30.251854, 46.898964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794006, 30.801916, 46.916306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.148762, 30.915676, 46.770679>,  <37.361614, 30.983932, 46.683304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.148762, 30.915676, 46.770679>,  <36.794006, 30.801916, 46.916306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148762, 30.915676, 46.770679> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460195, 0.474587, -0.750325,
		-0.040608, 0.832997, 0.551785,
		0.886889, 0.284398, -0.364069,
		37.414829, 31.000996, 46.661457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726131, 31.519697, 46.763454>,  <36.794006, 30.801916, 46.916306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726131, 31.519697, 46.763454> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.051781, 31.417433, 46.554901>,  <37.247169, 31.356073, 46.429768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.051781, 31.417433, 46.554901>,  <36.726131, 31.519697, 46.763454>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051781, 31.417433, 46.554901> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396003, 0.412271, -0.820496,
		0.424721, 0.874454, 0.234397,
		0.814122, -0.255660, -0.521387,
		37.296017, 31.340734, 46.398483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077656, 32.115063, 46.417652>,  <36.726131, 31.519697, 46.763454>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077656, 32.115063, 46.417652> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.185905, 31.789780, 46.211563>,  <37.250854, 31.594610, 46.087910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.185905, 31.789780, 46.211563>,  <37.077656, 32.115063, 46.417652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185905, 31.789780, 46.211563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498484, 0.339483, -0.797662,
		0.823576, 0.472695, -0.313500,
		0.270623, -0.813210, -0.515221,
		37.267094, 31.545816, 46.056995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460953, 32.305145, 45.797554>,  <37.077656, 32.115063, 46.417652>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460953, 32.305145, 45.797554> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.303970, 31.943827, 45.728237>,  <37.209782, 31.727036, 45.686646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.303970, 31.943827, 45.728237>,  <37.460953, 32.305145, 45.797554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.303970, 31.943827, 45.728237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519285, 0.373114, -0.768849,
		0.759159, -0.211749, -0.615500,
		-0.392455, -0.903298, -0.173295,
		37.186234, 31.672836, 45.676250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790199, 32.922894, 45.661633>,  <37.460953, 32.305145, 45.797554>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790199, 32.922894, 45.661633> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.608509, 33.229488, 45.843262>,  <37.499496, 33.413445, 45.952240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.608509, 33.229488, 45.843262>,  <37.790199, 32.922894, 45.661633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608509, 33.229488, 45.843262> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538085, -0.170178, 0.825533,
		0.710034, 0.619302, -0.335137,
		-0.454221, 0.766488, 0.454070,
		37.472244, 33.459435, 45.979481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359406, 33.253624, 46.120464>,  <37.790199, 32.922894, 45.661633>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359406, 33.253624, 46.120464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.011532, 33.384735, 46.268085>,  <37.802807, 33.463402, 46.356659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.011532, 33.384735, 46.268085>,  <38.359406, 33.253624, 46.120464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011532, 33.384735, 46.268085> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444370, 0.194425, 0.874491,
		0.214887, 0.924532, -0.314745,
		-0.869689, 0.327780, 0.369055,
		37.750626, 33.483070, 46.378803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523117, 33.761845, 46.408661>,  <38.359406, 33.253624, 46.120464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523117, 33.761845, 46.408661> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.192307, 33.658489, 46.608368>,  <37.993820, 33.596474, 46.728191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.192307, 33.658489, 46.608368>,  <38.523117, 33.761845, 46.408661>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192307, 33.658489, 46.608368> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499548, 0.069559, 0.863489,
		-0.257848, 0.963532, 0.071553,
		-0.827022, -0.258393, 0.499266,
		37.944199, 33.580971, 46.758148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630745, 34.119251, 47.015076>,  <38.523117, 33.761845, 46.408661>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630745, 34.119251, 47.015076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.329277, 33.874157, 47.110184>,  <38.148396, 33.727100, 47.167248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.329277, 33.874157, 47.110184>,  <38.630745, 34.119251, 47.015076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329277, 33.874157, 47.110184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461414, -0.235647, 0.855317,
		-0.468054, 0.754338, 0.460325,
		-0.753672, -0.612736, 0.237767,
		38.103176, 33.690338, 47.181515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499451, 34.246998, 47.748386>,  <38.630745, 34.119251, 47.015076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499451, 34.246998, 47.748386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.292240, 33.906963, 47.710426>,  <38.167915, 33.702942, 47.687653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.292240, 33.906963, 47.710426>,  <38.499451, 34.246998, 47.748386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292240, 33.906963, 47.710426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274465, -0.270271, 0.922834,
		-0.810135, 0.452006, 0.373326,
		-0.518026, -0.850085, -0.094896,
		38.136833, 33.651939, 47.681957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023842, 34.130981, 48.247921>,  <38.499451, 34.246998, 47.748386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023842, 34.130981, 48.247921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.079460, 33.748589, 48.144569>,  <38.112831, 33.519154, 48.082558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.079460, 33.748589, 48.144569>,  <38.023842, 34.130981, 48.247921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079460, 33.748589, 48.144569> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131083, -0.240847, 0.961671,
		-0.981572, -0.167584, 0.091825,
		0.139045, -0.955986, -0.258376,
		38.121174, 33.461792, 48.067055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753876, 33.653057, 48.764084>,  <38.023842, 34.130981, 48.247921>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753876, 33.653057, 48.764084> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.018028, 33.408741, 48.589344>,  <38.176517, 33.262150, 48.484501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.018028, 33.408741, 48.589344>,  <37.753876, 33.653057, 48.764084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018028, 33.408741, 48.589344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160312, -0.453658, 0.876638,
		-0.733621, -0.648945, -0.201669,
		0.660379, -0.610790, -0.436847,
		38.216141, 33.225506, 48.458290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702648, 33.028038, 49.120338>,  <37.753876, 33.653057, 48.764084>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702648, 33.028038, 49.120338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.053848, 32.974796, 48.936424>,  <38.264568, 32.942852, 48.826077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.053848, 32.974796, 48.936424>,  <37.702648, 33.028038, 49.120338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053848, 32.974796, 48.936424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301131, -0.593067, 0.746721,
		-0.372073, -0.794075, -0.480631,
		0.877998, -0.133102, -0.459785,
		38.317249, 32.934864, 48.798489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811874, 32.312145, 49.053535>,  <37.702648, 33.028038, 49.120338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811874, 32.312145, 49.053535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.178753, 32.470894, 49.039398>,  <38.398880, 32.566143, 49.030914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.178753, 32.470894, 49.039398>,  <37.811874, 32.312145, 49.053535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178753, 32.470894, 49.039398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346327, -0.750219, 0.563231,
		0.197015, -0.528832, -0.825543,
		0.917193, 0.396873, -0.035345,
		38.453911, 32.589954, 49.028793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.004192, 37.213772, 33.855446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286060, 37.440247, 34.026501>,  <35.455181, 37.576130, 34.129135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.286060, 37.440247, 34.026501>,  <35.004192, 37.213772, 33.855446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286060, 37.440247, 34.026501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094127, -0.522779, 0.847256,
		0.703263, -0.637289, -0.315094,
		0.704671, 0.566185, 0.427637,
		35.497463, 37.610104, 34.154793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541050, 36.693184, 34.057899>,  <35.004192, 37.213772, 33.855446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541050, 36.693184, 34.057899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.510937, 37.023075, 34.282101>,  <35.492870, 37.221008, 34.416622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.510937, 37.023075, 34.282101>,  <35.541050, 36.693184, 34.057899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510937, 37.023075, 34.282101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068737, -0.565051, 0.822187,
		0.994790, 0.023370, 0.099229,
		-0.075284, 0.824725, 0.560501,
		35.488350, 37.270493, 34.450253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013237, 36.628773, 34.537556>,  <35.541050, 36.693184, 34.057899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013237, 36.628773, 34.537556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734268, 36.872852, 34.687893>,  <35.566887, 37.019299, 34.778095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734268, 36.872852, 34.687893>,  <36.013237, 36.628773, 34.537556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734268, 36.872852, 34.687893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189936, -0.663067, 0.724062,
		0.691032, 0.433592, 0.578337,
		-0.697424, 0.610197, 0.375846,
		35.525040, 37.055912, 34.800648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863453, 36.408562, 35.151733>,  <36.013237, 36.628773, 34.537556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863453, 36.408562, 35.151733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560108, 36.669254, 35.147144>,  <35.378101, 36.825672, 35.144390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560108, 36.669254, 35.147144>,  <35.863453, 36.408562, 35.151733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560108, 36.669254, 35.147144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346716, -0.388414, 0.853770,
		0.551978, 0.651440, 0.520525,
		-0.758359, 0.651736, -0.011468,
		35.332600, 36.864777, 35.143703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896847, 36.657333, 35.866489>,  <35.863453, 36.408562, 35.151733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896847, 36.657333, 35.866489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540684, 36.732292, 35.700565>,  <35.326988, 36.777267, 35.601013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540684, 36.732292, 35.700565>,  <35.896847, 36.657333, 35.866489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540684, 36.732292, 35.700565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443218, -0.149480, 0.883863,
		0.103624, 0.970845, 0.216153,
		-0.890404, 0.187392, -0.414807,
		35.273563, 36.788509, 35.576122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575859, 37.159611, 36.298550>,  <35.896847, 36.657333, 35.866489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575859, 37.159611, 36.298550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299553, 36.959450, 36.089767>,  <35.133770, 36.839355, 35.964497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299553, 36.959450, 36.089767>,  <35.575859, 37.159611, 36.298550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299553, 36.959450, 36.089767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477976, -0.225647, 0.848895,
		-0.542565, 0.835873, -0.083309,
		-0.690769, -0.500400, -0.521956,
		35.092323, 36.809330, 35.933182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.878212, 37.417995, 36.547554>,  <35.575859, 37.159611, 36.298550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.878212, 37.417995, 36.547554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818718, 37.059273, 36.380886>,  <34.783024, 36.844040, 36.280888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818718, 37.059273, 36.380886>,  <34.878212, 37.417995, 36.547554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818718, 37.059273, 36.380886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422093, -0.323467, 0.846880,
		-0.894268, 0.301832, -0.330427,
		-0.148734, -0.896809, -0.416667,
		34.774097, 36.790230, 36.255886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230515, 37.317715, 36.829063>,  <34.878212, 37.417995, 36.547554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230515, 37.317715, 36.829063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381050, 36.964996, 36.715359>,  <34.471371, 36.753365, 36.647137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381050, 36.964996, 36.715359>,  <34.230515, 37.317715, 36.829063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381050, 36.964996, 36.715359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314042, -0.410064, 0.856286,
		-0.871637, -0.232980, -0.431243,
		0.376334, -0.881798, -0.284262,
		34.493950, 36.700459, 36.630081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723751, 36.834843, 36.956978>,  <34.230515, 37.317715, 36.829063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723751, 36.834843, 36.956978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070621, 36.635864, 36.947613>,  <34.278744, 36.516479, 36.941994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070621, 36.635864, 36.947613>,  <33.723751, 36.834843, 36.956978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070621, 36.635864, 36.947613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254655, -0.483353, 0.837569,
		-0.427957, -0.720362, -0.545830,
		0.867181, -0.497442, -0.023410,
		34.330776, 36.486629, 36.940590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570938, 36.109653, 37.158096>,  <33.723751, 36.834843, 36.956978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570938, 36.109653, 37.158096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967693, 36.155766, 37.179512>,  <34.205746, 36.183434, 37.192360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.967693, 36.155766, 37.179512>,  <33.570938, 36.109653, 37.158096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967693, 36.155766, 37.179512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008350, -0.479393, 0.877560,
		0.126832, -0.869996, -0.476468,
		0.991889, 0.115281, 0.053538,
		34.265259, 36.190350, 37.195572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803520, 35.605583, 37.491890>,  <33.570938, 36.109653, 37.158096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803520, 35.605583, 37.491890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155510, 35.786545, 37.549828>,  <34.366703, 35.895123, 37.584591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155510, 35.786545, 37.549828>,  <33.803520, 35.605583, 37.491890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155510, 35.786545, 37.549828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020204, -0.340281, 0.940106,
		0.474594, -0.824342, -0.308579,
		0.879973, 0.452404, 0.144840,
		34.419502, 35.922264, 37.593281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193291, 35.135246, 37.797039>,  <33.803520, 35.605583, 37.491890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193291, 35.135246, 37.797039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373081, 35.480751, 37.888153>,  <34.480953, 35.688053, 37.942822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373081, 35.480751, 37.888153>,  <34.193291, 35.135246, 37.797039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373081, 35.480751, 37.888153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070512, -0.288505, 0.954878,
		0.890507, -0.413130, -0.190581,
		0.449472, 0.863764, 0.227786,
		34.507923, 35.739880, 37.956490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388458, 34.375340, 37.924107>,  <34.193291, 35.135246, 37.797039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388458, 34.375340, 37.924107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041954, 34.197880, 38.015991>,  <33.834053, 34.091404, 38.071121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041954, 34.197880, 38.015991>,  <34.388458, 34.375340, 37.924107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041954, 34.197880, 38.015991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193205, -0.126521, -0.972967,
		0.460722, -0.887223, 0.023884,
		-0.866260, -0.443652, 0.229707,
		33.782074, 34.064785, 38.084904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322231, 33.845818, 37.444466>,  <34.388458, 34.375340, 37.924107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322231, 33.845818, 37.444466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949661, 33.912479, 37.573883>,  <33.726120, 33.952477, 37.651531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949661, 33.912479, 37.573883>,  <34.322231, 33.845818, 37.444466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949661, 33.912479, 37.573883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334158, -0.039406, -0.941693,
		-0.144189, -0.985228, 0.092393,
		-0.931422, 0.166655, 0.323540,
		33.670235, 33.962475, 37.670944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902702, 33.236332, 37.170231>,  <34.322231, 33.845818, 37.444466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902702, 33.236332, 37.170231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674721, 33.559368, 37.230824>,  <33.537930, 33.753189, 37.267178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674721, 33.559368, 37.230824>,  <33.902702, 33.236332, 37.170231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674721, 33.559368, 37.230824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379322, -0.095074, -0.920367,
		-0.728879, -0.582028, 0.360525,
		-0.569956, 0.807591, 0.151478,
		33.503735, 33.801647, 37.276268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392845, 33.042713, 36.815872>,  <33.902702, 33.236332, 37.170231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392845, 33.042713, 36.815872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340496, 33.435696, 36.869011>,  <33.309086, 33.671486, 36.900894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340496, 33.435696, 36.869011>,  <33.392845, 33.042713, 36.815872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340496, 33.435696, 36.869011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656923, 0.014424, -0.753820,
		-0.742512, -0.185924, 0.643512,
		-0.130872, 0.982458, 0.132848,
		33.301235, 33.730434, 36.908867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743076, 33.175476, 36.498619>,  <33.392845, 33.042713, 36.815872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743076, 33.175476, 36.498619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867443, 33.550728, 36.559608>,  <32.942062, 33.775879, 36.596203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867443, 33.550728, 36.559608>,  <32.743076, 33.175476, 36.498619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867443, 33.550728, 36.559608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627321, 0.323078, -0.708582,
		-0.714001, 0.124660, 0.688957,
		0.310919, 0.938126, 0.152477,
		32.960720, 33.832165, 36.605350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184738, 33.589478, 36.714676>,  <32.743076, 33.175476, 36.498619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184738, 33.589478, 36.714676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457031, 33.823864, 36.538837>,  <32.620407, 33.964497, 36.433334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457031, 33.823864, 36.538837>,  <32.184738, 33.589478, 36.714676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457031, 33.823864, 36.538837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654321, 0.216591, -0.724536,
		-0.329337, 0.780856, 0.530849,
		0.680736, 0.585962, -0.439599,
		32.661251, 33.999653, 36.406960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957321, 34.330460, 36.673313>,  <32.184738, 33.589478, 36.714676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957321, 34.330460, 36.673313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239338, 34.283997, 36.393478>,  <32.408546, 34.256119, 36.225578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239338, 34.283997, 36.393478>,  <31.957321, 34.330460, 36.673313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239338, 34.283997, 36.393478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672700, 0.202726, -0.711601,
		0.224480, 0.972322, 0.064794,
		0.705041, -0.116153, -0.699589,
		32.450851, 34.249149, 36.183601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757080, 34.721600, 36.157288>,  <31.957321, 34.330460, 36.673313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757080, 34.721600, 36.157288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025948, 34.508121, 35.952011>,  <32.187267, 34.380035, 35.828846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025948, 34.508121, 35.952011>,  <31.757080, 34.721600, 36.157288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025948, 34.508121, 35.952011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570136, 0.069119, -0.818637,
		0.472372, 0.842849, -0.257818,
		0.672167, -0.533693, -0.513189,
		32.227596, 34.348015, 35.798054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701159, 34.999470, 35.445393>,  <31.757080, 34.721600, 36.157288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701159, 34.999470, 35.445393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877420, 34.642693, 35.404888>,  <31.983177, 34.428627, 35.380585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.877420, 34.642693, 35.404888>,  <31.701159, 34.999470, 35.445393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877420, 34.642693, 35.404888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536133, -0.171028, -0.826626,
		0.719989, 0.418544, -0.553567,
		0.440655, -0.891947, -0.101257,
		32.009617, 34.375107, 35.374512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218472, 34.930874, 34.776207>,  <31.701159, 34.999470, 35.445393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218472, 34.930874, 34.776207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066013, 34.578594, 34.888699>,  <31.974537, 34.367226, 34.956196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066013, 34.578594, 34.888699>,  <32.218472, 34.930874, 34.776207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066013, 34.578594, 34.888699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433020, -0.098703, -0.895964,
		0.816835, -0.463274, -0.343741,
		-0.381148, -0.880701, 0.281231,
		31.951668, 34.314384, 34.973068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441544, 34.390263, 34.204536>,  <32.218472, 34.930874, 34.776207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441544, 34.390263, 34.204536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125755, 34.259792, 34.412514>,  <31.936281, 34.181511, 34.537300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125755, 34.259792, 34.412514>,  <32.441544, 34.390263, 34.204536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125755, 34.259792, 34.412514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555048, 0.017774, -0.831629,
		0.262015, -0.945142, -0.195075,
		-0.789474, -0.326175, 0.519942,
		31.888912, 34.161942, 34.568497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199608, 34.080097, 33.692066>,  <32.441544, 34.390263, 34.204536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199608, 34.080097, 33.692066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901663, 34.019493, 33.951981>,  <31.722895, 33.983131, 34.107929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.901663, 34.019493, 33.951981>,  <32.199608, 34.080097, 33.692066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.901663, 34.019493, 33.951981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617603, -0.211938, -0.757396,
		0.252468, -0.965467, 0.064292,
		-0.744867, -0.151511, 0.649783,
		31.678204, 33.974041, 34.146915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758461, 33.446999, 33.508461>,  <32.199608, 34.080097, 33.692066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758461, 33.446999, 33.508461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549397, 33.728737, 33.700600>,  <31.423958, 33.897778, 33.815884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549397, 33.728737, 33.700600>,  <31.758461, 33.446999, 33.508461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549397, 33.728737, 33.700600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716279, -0.057232, -0.695463,
		-0.462353, -0.707550, 0.534418,
		-0.522661, 0.704342, 0.480342,
		31.392599, 33.940041, 33.844704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318874, 33.265263, 33.029510>,  <31.758461, 33.446999, 33.508461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318874, 33.265263, 33.029510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540340, 33.281769, 33.362198>,  <32.673218, 33.291672, 33.561810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540340, 33.281769, 33.362198>,  <32.318874, 33.265263, 33.029510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540340, 33.281769, 33.362198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141463, -0.988916, -0.045100,
		0.820637, 0.142627, -0.553365,
		0.553663, 0.041270, 0.831717,
		32.706440, 33.294151, 33.611713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001129, 32.984676, 32.990395>,  <32.318874, 33.265263, 33.029510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001129, 32.984676, 32.990395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896496, 32.934410, 33.373180>,  <32.833717, 32.904251, 33.602852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896496, 32.934410, 33.373180>,  <33.001129, 32.984676, 32.990395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896496, 32.934410, 33.373180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151823, -0.984502, -0.087783,
		0.953166, 0.122327, 0.276607,
		-0.261582, -0.125667, 0.956966,
		32.818020, 32.896709, 33.660271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588230, 32.717995, 32.583935>,  <33.001129, 32.984676, 32.990395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588230, 32.717995, 32.583935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570225, 33.115517, 32.624565>,  <33.559422, 33.354031, 32.648945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.570225, 33.115517, 32.624565>,  <33.588230, 32.717995, 32.583935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570225, 33.115517, 32.624565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073786, -0.098098, 0.992437,
		0.996258, 0.052166, -0.068914,
		-0.045011, 0.993809, 0.101580,
		33.556721, 33.413658, 32.655041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711899, 33.116547, 33.161057>,  <33.588230, 32.717995, 32.583935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711899, 33.116547, 33.161057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063206, 33.188068, 32.983665>,  <34.273991, 33.230984, 32.877232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063206, 33.188068, 32.983665>,  <33.711899, 33.116547, 33.161057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063206, 33.188068, 32.983665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474464, -0.441109, 0.761779,
		-0.059410, -0.879460, -0.472250,
		0.878268, 0.178808, -0.443478,
		34.326687, 33.241711, 32.850620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127960, 32.529552, 33.241581>,  <33.711899, 33.116547, 33.161057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127960, 32.529552, 33.241581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422115, 32.791759, 33.172874>,  <34.598610, 32.949085, 33.131653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422115, 32.791759, 33.172874>,  <34.127960, 32.529552, 33.241581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422115, 32.791759, 33.172874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552247, -0.432837, 0.712513,
		0.392720, -0.618828, -0.680310,
		0.735387, 0.655518, -0.171762,
		34.642731, 32.988415, 33.121346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.760639, 32.151314, 33.208935>,  <34.127960, 32.529552, 33.241581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.760639, 32.151314, 33.208935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857807, 32.530571, 33.290928>,  <34.916107, 32.758125, 33.340122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857807, 32.530571, 33.290928>,  <34.760639, 32.151314, 33.208935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857807, 32.530571, 33.290928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611949, -0.313744, 0.726005,
		0.752668, -0.050921, -0.656428,
		0.242919, 0.948141, 0.204984,
		34.930683, 32.815014, 33.352425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395065, 32.104939, 33.225376>,  <34.760639, 32.151314, 33.208935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395065, 32.104939, 33.225376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324467, 32.449772, 33.415390>,  <35.282108, 32.656673, 33.529400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324467, 32.449772, 33.415390>,  <35.395065, 32.104939, 33.225376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324467, 32.449772, 33.415390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621494, -0.276637, 0.732951,
		0.763278, 0.424597, -0.486954,
		-0.176500, 0.862085, 0.475035,
		35.271519, 32.708397, 33.557899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040749, 32.364449, 33.399376>,  <35.395065, 32.104939, 33.225376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040749, 32.364449, 33.399376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776413, 32.535728, 33.645935>,  <35.617813, 32.638496, 33.793869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776413, 32.535728, 33.645935>,  <36.040749, 32.364449, 33.399376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776413, 32.535728, 33.645935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492701, -0.372028, 0.786664,
		0.566162, 0.823556, 0.034878,
		-0.660838, 0.428195, 0.616395,
		35.578163, 32.664188, 33.830853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404579, 32.730255, 33.910133>,  <36.040749, 32.364449, 33.399376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404579, 32.730255, 33.910133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055786, 32.668411, 34.095924>,  <35.846512, 32.631306, 34.207401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055786, 32.668411, 34.095924>,  <36.404579, 32.730255, 33.910133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055786, 32.668411, 34.095924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487401, -0.362763, 0.794256,
		0.045695, 0.918966, 0.391681,
		-0.871982, -0.154612, 0.464481,
		35.794193, 32.622028, 34.235268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561443, 32.915966, 34.626495>,  <36.404579, 32.730255, 33.910133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561443, 32.915966, 34.626495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208347, 32.731144, 34.660603>,  <35.996490, 32.620251, 34.681068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208347, 32.731144, 34.660603>,  <36.561443, 32.915966, 34.626495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208347, 32.731144, 34.660603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244672, -0.297103, 0.922966,
		-0.401129, 0.835603, 0.375317,
		-0.882741, -0.462058, 0.085272,
		35.943523, 32.592525, 34.686184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128727, 33.209869, 35.234390>,  <36.561443, 32.915966, 34.626495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128727, 33.209869, 35.234390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005882, 32.836937, 35.158028>,  <35.932175, 32.613178, 35.112209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005882, 32.836937, 35.158028>,  <36.128727, 33.209869, 35.234390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005882, 32.836937, 35.158028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207981, -0.261504, 0.942528,
		-0.928670, 0.249756, 0.274217,
		-0.307111, -0.932329, -0.190907,
		35.913750, 32.557240, 35.100754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770138, 33.023270, 35.839207>,  <36.128727, 33.209869, 35.234390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770138, 33.023270, 35.839207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881077, 32.689537, 35.648643>,  <35.947639, 32.489296, 35.534306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.881077, 32.689537, 35.648643>,  <35.770138, 33.023270, 35.839207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881077, 32.689537, 35.648643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291610, -0.399370, 0.869176,
		-0.915447, -0.379987, 0.132537,
		0.277344, -0.834334, -0.476410,
		35.964279, 32.439236, 35.505722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539139, 32.564831, 36.258366>,  <35.770138, 33.023270, 35.839207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539139, 32.564831, 36.258366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839443, 32.383736, 36.065956>,  <36.019627, 32.275078, 35.950508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.839443, 32.383736, 36.065956>,  <35.539139, 32.564831, 36.258366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839443, 32.383736, 36.065956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310169, -0.401327, 0.861819,
		-0.583223, -0.796222, -0.160878,
		0.750763, -0.452733, -0.481026,
		36.064671, 32.247917, 35.921650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644688, 31.943260, 36.646912>,  <35.539139, 32.564831, 36.258366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644688, 31.943260, 36.646912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989388, 31.920979, 36.445206>,  <36.196209, 31.907610, 36.324181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.989388, 31.920979, 36.445206>,  <35.644688, 31.943260, 36.646912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989388, 31.920979, 36.445206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396546, -0.546012, 0.737985,
		-0.316442, -0.835924, -0.448437,
		0.861751, -0.055704, -0.504263,
		36.247913, 31.904266, 36.293926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880505, 31.189428, 36.621582>,  <35.644688, 31.943260, 36.646912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880505, 31.189428, 36.621582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193211, 31.431932, 36.563221>,  <36.380836, 31.577435, 36.528206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193211, 31.431932, 36.563221>,  <35.880505, 31.189428, 36.621582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193211, 31.431932, 36.563221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501321, -0.471916, 0.725239,
		0.370833, -0.640111, -0.672861,
		0.781767, 0.606262, -0.145899,
		36.427742, 31.613811, 36.519451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453701, 30.780685, 36.626038>,  <35.880505, 31.189428, 36.621582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453701, 30.780685, 36.626038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638241, 31.128702, 36.695530>,  <36.748966, 31.337513, 36.737225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.638241, 31.128702, 36.695530>,  <36.453701, 30.780685, 36.626038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638241, 31.128702, 36.695530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503042, -0.417812, 0.756559,
		0.730824, -0.261647, -0.630426,
		0.461351, 0.870043, 0.173728,
		36.776646, 31.389715, 36.747650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090160, 30.695425, 36.781143>,  <36.453701, 30.780685, 36.626038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090160, 30.695425, 36.781143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075367, 31.061268, 36.942204>,  <37.066490, 31.280773, 37.038837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075367, 31.061268, 36.942204>,  <37.090160, 30.695425, 36.781143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075367, 31.061268, 36.942204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543337, -0.319760, 0.776233,
		0.838700, 0.247477, -0.485116,
		-0.036979, 0.914608, 0.402646,
		37.064274, 31.335649, 37.062996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840916, 30.899988, 36.839657>,  <37.090160, 30.695425, 36.781143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840916, 30.899988, 36.839657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614357, 31.108271, 37.095177>,  <37.478424, 31.233240, 37.248489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.614357, 31.108271, 37.095177>,  <37.840916, 30.899988, 36.839657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614357, 31.108271, 37.095177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554355, -0.332843, 0.762828,
		0.609829, 0.786182, -0.100135,
		-0.566392, 0.520705, 0.638801,
		37.444439, 31.264482, 37.286816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365528, 31.386347, 37.242233>,  <37.840916, 30.899988, 36.839657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365528, 31.386347, 37.242233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033459, 31.337755, 37.459877>,  <37.834217, 31.308599, 37.590462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.033459, 31.337755, 37.459877>,  <38.365528, 31.386347, 37.242233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033459, 31.337755, 37.459877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546791, 0.012988, 0.837168,
		-0.108767, 0.992509, 0.055642,
		-0.830174, -0.121481, 0.544108,
		37.784405, 31.301311, 37.623108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495995, 31.855116, 37.893318>,  <38.365528, 31.386347, 37.242233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495995, 31.855116, 37.893318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190029, 31.614735, 37.986065>,  <38.006451, 31.470505, 38.041714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190029, 31.614735, 37.986065>,  <38.495995, 31.855116, 37.893318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190029, 31.614735, 37.986065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417269, -0.188058, 0.889112,
		-0.490712, 0.776844, 0.394607,
		-0.764911, -0.600955, 0.231871,
		37.960556, 31.434448, 38.055626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277805, 32.131737, 38.494522>,  <38.495995, 31.855116, 37.893318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277805, 32.131737, 38.494522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132740, 31.759819, 38.519703>,  <38.045700, 31.536669, 38.534809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132740, 31.759819, 38.519703>,  <38.277805, 32.131737, 38.494522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132740, 31.759819, 38.519703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435745, -0.109476, 0.893387,
		-0.823775, 0.351424, 0.444855,
		-0.362659, -0.929794, 0.062947,
		38.023941, 31.480881, 38.538586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067120, 32.061321, 39.202221>,  <38.277805, 32.131737, 38.494522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067120, 32.061321, 39.202221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094818, 31.688892, 39.058941>,  <38.111439, 31.465435, 38.972973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094818, 31.688892, 39.058941>,  <38.067120, 32.061321, 39.202221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094818, 31.688892, 39.058941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366037, -0.310305, 0.877341,
		-0.928020, -0.191870, 0.319319,
		0.069249, -0.931073, -0.358201,
		38.115593, 31.409571, 38.951481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838848, 31.606447, 39.742577>,  <38.067120, 32.061321, 39.202221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838848, 31.606447, 39.742577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059097, 31.374907, 39.501995>,  <38.191246, 31.235981, 39.357647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059097, 31.374907, 39.501995>,  <37.838848, 31.606447, 39.742577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059097, 31.374907, 39.501995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475581, -0.374612, 0.795920,
		-0.686033, -0.724289, 0.069023,
		0.550619, -0.578853, -0.601454,
		38.224281, 31.201250, 39.321560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802605, 30.951141, 40.116222>,  <37.838848, 31.606447, 39.742577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802605, 30.951141, 40.116222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113857, 30.936756, 39.865395>,  <38.300610, 30.928125, 39.714897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113857, 30.936756, 39.865395>,  <37.802605, 30.951141, 40.116222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113857, 30.936756, 39.865395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590970, -0.296251, 0.750327,
		-0.212751, -0.954433, -0.209271,
		0.778133, -0.035960, -0.627069,
		38.347298, 30.925968, 39.677273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268024, 30.345913, 40.223682>,  <37.802605, 30.951141, 40.116222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268024, 30.345913, 40.223682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564964, 30.540106, 40.038979>,  <38.743130, 30.656622, 39.928158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564964, 30.540106, 40.038979>,  <38.268024, 30.345913, 40.223682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564964, 30.540106, 40.038979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640781, -0.313101, 0.700975,
		0.195732, -0.816258, -0.543518,
		0.742353, 0.485480, -0.461759,
		38.787670, 30.685749, 39.900452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792950, 29.813591, 40.039883>,  <38.268024, 30.345913, 40.223682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792950, 29.813591, 40.039883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976295, 30.167326, 40.075317>,  <39.086304, 30.379568, 40.096577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.976295, 30.167326, 40.075317>,  <38.792950, 29.813591, 40.039883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976295, 30.167326, 40.075317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602856, -0.382602, 0.700129,
		0.653044, -0.267510, -0.708500,
		0.458365, 0.884338, 0.088586,
		39.113804, 30.432627, 40.101894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480644, 29.647095, 39.879036>,  <38.792950, 29.813591, 40.039883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480644, 29.647095, 39.879036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448151, 29.988281, 40.085278>,  <39.428654, 30.192993, 40.209023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.448151, 29.988281, 40.085278>,  <39.480644, 29.647095, 39.879036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448151, 29.988281, 40.085278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526954, -0.402350, 0.748622,
		0.846003, 0.332512, -0.416790,
		-0.081230, 0.852965, 0.515608,
		39.423782, 30.244171, 40.239960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035156, 29.713602, 40.202293>,  <39.480644, 29.647095, 39.879036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035156, 29.713602, 40.202293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.837124, 29.992840, 40.409199>,  <39.718304, 30.160383, 40.533340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.837124, 29.992840, 40.409199>,  <40.035156, 29.713602, 40.202293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837124, 29.992840, 40.409199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495978, -0.261735, 0.827950,
		0.713372, 0.666453, -0.216659,
		-0.495082, 0.698094, 0.517261,
		39.688599, 30.202269, 40.564377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560417, 30.078915, 40.611721>,  <40.035156, 29.713602, 40.202293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560417, 30.078915, 40.611721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201401, 30.123224, 40.782436>,  <39.985992, 30.149809, 40.884865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.201401, 30.123224, 40.782436>,  <40.560417, 30.078915, 40.611721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201401, 30.123224, 40.782436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366770, -0.349699, 0.862085,
		0.244742, 0.930290, 0.273241,
		-0.897542, 0.110772, 0.426789,
		39.932137, 30.156456, 40.910473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.720337, 30.774910, 40.329887>,  <40.560417, 30.078915, 40.611721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.720337, 30.774910, 40.329887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050507, 30.999998, 40.311905>,  <41.248608, 31.135052, 40.301117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050507, 30.999998, 40.311905>,  <40.720337, 30.774910, 40.329887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050507, 30.999998, 40.311905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284189, 0.345414, -0.894385,
		-0.487763, 0.751021, 0.445032,
		0.825423, 0.562722, -0.044952,
		41.298134, 31.168814, 40.298420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437443, 31.411116, 39.992798>,  <40.720337, 30.774910, 40.329887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437443, 31.411116, 39.992798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.829021, 31.445395, 39.918705>,  <41.063969, 31.465961, 39.874249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.829021, 31.445395, 39.918705>,  <40.437443, 31.411116, 39.992798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829021, 31.445395, 39.918705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203586, 0.474175, -0.856569,
		0.014427, 0.876250, 0.481641,
		0.978951, 0.085698, -0.185234,
		41.122707, 31.471104, 39.863136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469017, 32.076614, 39.739521>,  <40.437443, 31.411116, 39.992798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469017, 32.076614, 39.739521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807632, 31.896734, 39.625572>,  <41.010799, 31.788807, 39.557205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807632, 31.896734, 39.625572>,  <40.469017, 32.076614, 39.739521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807632, 31.896734, 39.625572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082470, 0.417885, -0.904749,
		0.525906, 0.789395, 0.316668,
		0.846535, -0.449698, -0.284870,
		41.061592, 31.761826, 39.540112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942818, 32.691013, 39.491077>,  <40.469017, 32.076614, 39.739521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942818, 32.691013, 39.491077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.020157, 32.337036, 39.321613>,  <41.066559, 32.124649, 39.219933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.020157, 32.337036, 39.321613>,  <40.942818, 32.691013, 39.491077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.020157, 32.337036, 39.321613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233110, 0.378014, -0.895972,
		0.953036, 0.271993, -0.133202,
		0.193346, -0.884944, -0.423665,
		41.078159, 32.071552, 39.194515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239658, 32.831505, 38.881969>,  <40.942818, 32.691013, 39.491077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.239658, 32.831505, 38.881969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149712, 32.448837, 38.807972>,  <41.095741, 32.219238, 38.763573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149712, 32.448837, 38.807972>,  <41.239658, 32.831505, 38.881969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149712, 32.448837, 38.807972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150155, 0.221613, -0.963505,
		0.962750, -0.188886, -0.193482,
		-0.224870, -0.956666, -0.184996,
		41.082249, 32.161839, 38.752472>
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
