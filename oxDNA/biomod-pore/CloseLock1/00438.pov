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
	<24.189545, 35.364086, 35.474037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.280334, 35.237438, 35.105637>,  <24.334808, 35.161449, 34.884598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.280334, 35.237438, 35.105637>,  <24.189545, 35.364086, 35.474037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.280334, 35.237438, 35.105637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638292, 0.665894, -0.386223,
		0.735571, 0.675529, -0.050952,
		0.226976, -0.316617, -0.920997,
		24.348427, 35.142452, 34.829338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.570158, 35.746971, 35.083157>,  <24.189545, 35.364086, 35.474037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.570158, 35.746971, 35.083157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.282877, 35.551956, 34.884563>,  <24.110508, 35.434948, 34.765408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.282877, 35.551956, 34.884563>,  <24.570158, 35.746971, 35.083157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.282877, 35.551956, 34.884563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529814, 0.845693, -0.064036,
		0.451091, 0.217052, -0.865682,
		-0.718202, -0.487537, -0.496481,
		24.067417, 35.405697, 34.735619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.275591, 35.440872, 35.019524>,  <24.570158, 35.746971, 35.083157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.275591, 35.440872, 35.019524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.540203, 35.218761, 34.817913>,  <25.698971, 35.085495, 34.696945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.540203, 35.218761, 34.817913>,  <25.275591, 35.440872, 35.019524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.540203, 35.218761, 34.817913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165044, -0.763433, 0.624444,
		-0.731525, -0.329908, -0.596684,
		0.661538, -0.555276, -0.504021,
		25.738663, 35.052177, 34.666706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.052555, 34.704098, 35.135475>,  <25.275591, 35.440872, 35.019524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.052555, 34.704098, 35.135475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.434910, 34.697403, 35.018173>,  <25.664322, 34.693386, 34.947792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.434910, 34.697403, 35.018173>,  <25.052555, 34.704098, 35.135475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.434910, 34.697403, 35.018173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159995, -0.807599, 0.567614,
		-0.246335, -0.589494, -0.769296,
		0.955887, -0.016740, -0.293256,
		25.721676, 34.692383, 34.930195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.197323, 34.073490, 34.848690>,  <25.052555, 34.704098, 35.135475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.197323, 34.073490, 34.848690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.544668, 34.237869, 34.959740>,  <25.753075, 34.336494, 35.026367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.544668, 34.237869, 34.959740>,  <25.197323, 34.073490, 34.848690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.544668, 34.237869, 34.959740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153093, -0.754580, 0.638099,
		0.471710, -0.511599, -0.718161,
		0.868361, 0.410944, 0.277621,
		25.805176, 34.361153, 35.043026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.771891, 33.635159, 34.654324>,  <25.197323, 34.073490, 34.848690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.771891, 33.635159, 34.654324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.843876, 33.830997, 34.995594>,  <25.887068, 33.948502, 35.200356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.843876, 33.830997, 34.995594>,  <25.771891, 33.635159, 34.654324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.843876, 33.830997, 34.995594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115518, -0.871855, 0.475945,
		0.976866, 0.012904, -0.213460,
		0.179965, 0.489593, 0.853177,
		25.897865, 33.977875, 35.251549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.274458, 33.227558, 34.907818>,  <25.771891, 33.635159, 34.654324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.274458, 33.227558, 34.907818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.126886, 33.413155, 35.229961>,  <26.038343, 33.524513, 35.423248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.126886, 33.413155, 35.229961>,  <26.274458, 33.227558, 34.907818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.126886, 33.413155, 35.229961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130332, -0.832097, 0.539100,
		0.920275, 0.303853, 0.246511,
		-0.368928, 0.463992, 0.805359,
		26.016209, 33.552353, 35.471569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.788971, 33.172615, 35.467422>,  <26.274458, 33.227558, 34.907818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.788971, 33.172615, 35.467422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.470078, 33.277477, 35.684933>,  <26.278742, 33.340397, 35.815437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.470078, 33.277477, 35.684933>,  <26.788971, 33.172615, 35.467422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.470078, 33.277477, 35.684933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149965, -0.786537, 0.599058,
		0.584748, 0.559136, 0.587739,
		-0.797233, 0.262158, 0.543776,
		26.230907, 33.356125, 35.848064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.954565, 33.076115, 36.184017>,  <26.788971, 33.172615, 35.467422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.954565, 33.076115, 36.184017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.556379, 33.052967, 36.153805>,  <26.317469, 33.039078, 36.135677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.556379, 33.052967, 36.153805>,  <26.954565, 33.076115, 36.184017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.556379, 33.052967, 36.153805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006981, -0.836075, 0.548571,
		-0.094898, 0.545554, 0.832685,
		-0.995462, -0.057872, -0.075533,
		26.257740, 33.035606, 36.131145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.770105, 32.763107, 36.829208>,  <26.954565, 33.076115, 36.184017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.770105, 32.763107, 36.829208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419430, 32.723225, 36.640965>,  <26.209024, 32.699295, 36.528019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419430, 32.723225, 36.640965>,  <26.770105, 32.763107, 36.829208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.419430, 32.723225, 36.640965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184292, -0.834039, 0.520015,
		-0.444357, 0.542621, 0.712818,
		-0.876689, -0.099705, -0.470611,
		26.156424, 32.693314, 36.499783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.365589, 32.654510, 37.413116>,  <26.770105, 32.763107, 36.829208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.365589, 32.654510, 37.413116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236656, 32.499504, 37.067646>,  <26.159296, 32.406502, 36.860363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236656, 32.499504, 37.067646>,  <26.365589, 32.654510, 37.413116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.236656, 32.499504, 37.067646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082282, -0.920388, 0.382249,
		-0.943044, 0.052146, 0.328556,
		-0.322332, -0.387512, -0.863676,
		26.139957, 32.383251, 36.808544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.950991, 32.129307, 37.652431>,  <26.365589, 32.654510, 37.413116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.950991, 32.129307, 37.652431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011129, 32.054459, 37.264126>,  <26.047213, 32.009548, 37.031143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.011129, 32.054459, 37.264126>,  <25.950991, 32.129307, 37.652431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.011129, 32.054459, 37.264126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102655, -0.973663, 0.203577,
		-0.983290, -0.130261, -0.127176,
		0.150345, -0.187120, -0.970764,
		26.056232, 31.998323, 36.972897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.631035, 31.369757, 37.509243>,  <25.950991, 32.129307, 37.652431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.631035, 31.369757, 37.509243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861746, 31.445965, 37.191494>,  <26.000172, 31.491690, 37.000843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861746, 31.445965, 37.191494>,  <25.631035, 31.369757, 37.509243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.861746, 31.445965, 37.191494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469040, -0.873394, 0.131091,
		-0.668826, -0.448204, -0.593115,
		0.576778, 0.190518, -0.794374,
		26.034779, 31.503120, 36.953182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.631836, 30.775518, 37.104626>,  <25.631035, 31.369757, 37.509243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.631836, 30.775518, 37.104626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.969324, 30.969280, 37.012112>,  <26.171816, 31.085537, 36.956604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.969324, 30.969280, 37.012112>,  <25.631836, 30.775518, 37.104626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.969324, 30.969280, 37.012112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513195, -0.854253, 0.082966,
		-0.157386, -0.188694, -0.969342,
		0.843718, 0.484403, -0.231285,
		26.222439, 31.114601, 36.942726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.992165, 30.372183, 36.674568>,  <25.631836, 30.775518, 37.104626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.992165, 30.372183, 36.674568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274511, 30.627529, 36.797363>,  <26.443918, 30.780737, 36.871040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274511, 30.627529, 36.797363>,  <25.992165, 30.372183, 36.674568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.274511, 30.627529, 36.797363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569343, -0.769143, 0.290288,
		0.421430, -0.030122, -0.906361,
		0.705865, 0.638366, 0.306990,
		26.486271, 30.819038, 36.889462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.617308, 30.063938, 36.422310>,  <25.992165, 30.372183, 36.674568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.617308, 30.063938, 36.422310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.725662, 30.315454, 36.713856>,  <26.790674, 30.466364, 36.888783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.725662, 30.315454, 36.713856>,  <26.617308, 30.063938, 36.422310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.725662, 30.315454, 36.713856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442811, -0.753702, 0.485647,
		0.854716, 0.191193, -0.482603,
		0.270887, 0.628792, 0.728863,
		26.806929, 30.504091, 36.932514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.399206, 30.021614, 36.458260>,  <26.617308, 30.063938, 36.422310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.399206, 30.021614, 36.458260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.301743, 30.196949, 36.804321>,  <27.243263, 30.302151, 37.011959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.301743, 30.196949, 36.804321>,  <27.399206, 30.021614, 36.458260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.301743, 30.196949, 36.804321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718364, -0.517747, 0.464640,
		0.651600, 0.734710, -0.188731,
		-0.243660, 0.438337, 0.865153,
		27.228645, 30.328449, 37.063866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.067207, 30.341181, 36.783268>,  <27.399206, 30.021614, 36.458260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.067207, 30.341181, 36.783268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777586, 30.235374, 37.038071>,  <27.603813, 30.171890, 37.190952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777586, 30.235374, 37.038071>,  <28.067207, 30.341181, 36.783268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.777586, 30.235374, 37.038071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633957, -0.619074, 0.463515,
		0.271746, 0.739445, 0.615935,
		-0.724053, -0.264518, 0.637007,
		27.560369, 30.156019, 37.229172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.452818, 30.233269, 37.342503>,  <28.067207, 30.341181, 36.783268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.452818, 30.233269, 37.342503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099440, 30.065811, 37.426659>,  <27.887413, 29.965336, 37.477150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.099440, 30.065811, 37.426659>,  <28.452818, 30.233269, 37.342503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099440, 30.065811, 37.426659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467831, -0.763565, 0.445087,
		-0.025688, 0.491635, 0.870422,
		-0.883444, -0.418644, 0.210387,
		27.834406, 29.940218, 37.489777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.594660, 30.003788, 38.008904>,  <28.452818, 30.233269, 37.342503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.594660, 30.003788, 38.008904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.255232, 29.803442, 37.940712>,  <28.051575, 29.683235, 37.899796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.255232, 29.803442, 37.940712>,  <28.594660, 30.003788, 38.008904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.255232, 29.803442, 37.940712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378022, -0.799398, 0.466972,
		-0.370170, 0.331813, 0.867683,
		-0.848571, -0.500863, -0.170480,
		28.000660, 29.653183, 37.889568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328718, 29.663406, 38.697544>,  <28.594660, 30.003788, 38.008904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328718, 29.663406, 38.697544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147236, 29.442970, 38.417416>,  <28.038347, 29.310709, 38.249340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147236, 29.442970, 38.417416>,  <28.328718, 29.663406, 38.697544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147236, 29.442970, 38.417416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378252, -0.830648, 0.408595,
		-0.806894, -0.079517, 0.585320,
		-0.453704, -0.551091, -0.700322,
		28.011126, 29.277643, 38.207317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.169455, 29.100542, 39.055271>,  <28.328718, 29.663406, 38.697544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.169455, 29.100542, 39.055271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.152246, 28.983776, 38.673080>,  <28.141922, 28.913717, 38.443768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.152246, 28.983776, 38.673080>,  <28.169455, 29.100542, 39.055271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.152246, 28.983776, 38.673080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574011, -0.789980, 0.215506,
		-0.817716, -0.539184, 0.201546,
		-0.043020, -0.291913, -0.955477,
		28.139341, 28.896202, 38.386436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.766270, 28.549929, 38.984200>,  <28.169455, 29.100542, 39.055271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.766270, 28.549929, 38.984200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.021723, 28.509697, 38.679035>,  <28.174995, 28.485558, 38.495937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.021723, 28.509697, 38.679035>,  <27.766270, 28.549929, 38.984200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.021723, 28.509697, 38.679035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316006, -0.869688, 0.379188,
		-0.701632, -0.483246, -0.523628,
		0.638634, -0.100581, -0.762909,
		28.213312, 28.479523, 38.450161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874405, 27.858585, 39.125301>,  <27.766270, 28.549929, 38.984200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874405, 27.858585, 39.125301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.113873, 27.969147, 38.824585>,  <28.257553, 28.035484, 38.644154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.113873, 27.969147, 38.824585>,  <27.874405, 27.858585, 39.125301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.113873, 27.969147, 38.824585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488291, -0.869950, 0.068991,
		-0.634954, -0.408397, -0.655778,
		0.598669, 0.276404, -0.751795,
		28.293474, 28.052069, 38.599045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897881, 27.355803, 38.595425>,  <27.874405, 27.858585, 39.125301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897881, 27.355803, 38.595425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253803, 27.537756, 38.609966>,  <28.467358, 27.646929, 38.618690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253803, 27.537756, 38.609966>,  <27.897881, 27.355803, 38.595425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253803, 27.537756, 38.609966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424730, -0.854679, 0.298543,
		0.166873, -0.250206, -0.953704,
		0.889808, 0.454886, 0.036353,
		28.520746, 27.674221, 38.620872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.256586, 26.787802, 38.384499>,  <27.897881, 27.355803, 38.595425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.256586, 26.787802, 38.384499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.498306, 27.072739, 38.527264>,  <28.643337, 27.243702, 38.612923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.498306, 27.072739, 38.527264>,  <28.256586, 26.787802, 38.384499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.498306, 27.072739, 38.527264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552986, -0.697477, 0.455777,
		0.573612, -0.078055, -0.815400,
		0.604299, 0.712344, 0.356917,
		28.679596, 27.286442, 38.634338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820498, 26.291016, 38.386909>,  <28.256586, 26.787802, 38.384499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.820498, 26.291016, 38.386909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993013, 26.650871, 38.414150>,  <29.096523, 26.866785, 38.430492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993013, 26.650871, 38.414150>,  <28.820498, 26.291016, 38.386909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.993013, 26.650871, 38.414150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864743, -0.390673, -0.315585,
		-0.257308, 0.194998, -0.946450,
		0.431291, 0.899639, 0.068099,
		29.122400, 26.920763, 38.434582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145666, 26.382074, 37.612576>,  <28.820498, 26.291016, 38.386909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145666, 26.382074, 37.612576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276970, 26.599108, 37.921860>,  <29.355751, 26.729328, 38.107430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276970, 26.599108, 37.921860>,  <29.145666, 26.382074, 37.612576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276970, 26.599108, 37.921860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944189, -0.164681, -0.285286,
		-0.027459, 0.823700, -0.566360,
		0.328259, 0.542585, 0.773207,
		29.375448, 26.761883, 38.153820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.588676, 26.931408, 37.492916>,  <29.145666, 26.382074, 37.612576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.588676, 26.931408, 37.492916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.689611, 26.808704, 37.860008>,  <29.750174, 26.735083, 38.080261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.689611, 26.808704, 37.860008>,  <29.588676, 26.931408, 37.492916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.689611, 26.808704, 37.860008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947763, -0.112887, -0.298332,
		0.195116, 0.945068, 0.262251,
		0.252339, -0.306761, 0.917727,
		29.765314, 26.716677, 38.135326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.274103, 26.867207, 37.344948>,  <29.588676, 26.931408, 37.492916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.274103, 26.867207, 37.344948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250681, 26.719114, 37.715786>,  <30.236628, 26.630259, 37.938290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250681, 26.719114, 37.715786>,  <30.274103, 26.867207, 37.344948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250681, 26.719114, 37.715786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872840, -0.469690, -0.132441,
		0.484480, 0.801448, 0.350656,
		-0.058555, -0.370232, 0.927092,
		30.233114, 26.608046, 37.993912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894480, 26.468885, 37.333202>,  <30.274103, 26.867207, 37.344948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894480, 26.468885, 37.333202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719549, 26.404627, 37.687138>,  <30.614592, 26.366072, 37.899498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.719549, 26.404627, 37.687138>,  <30.894480, 26.468885, 37.333202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.719549, 26.404627, 37.687138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735025, -0.630756, 0.248765,
		0.518155, 0.759170, 0.393923,
		-0.437325, -0.160645, 0.884839,
		30.588352, 26.356434, 37.952591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780380, 26.688082, 36.583500>,  <30.894480, 26.468885, 37.333202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780380, 26.688082, 36.583500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.170038, 26.778290, 36.588963>,  <31.403833, 26.832415, 36.592239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.170038, 26.778290, 36.588963>,  <30.780380, 26.688082, 36.583500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170038, 26.778290, 36.588963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208149, 0.919328, -0.333932,
		-0.087860, 0.322456, 0.942498,
		0.974143, 0.225519, 0.013653,
		31.462280, 26.845945, 36.593060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024723, 27.295256, 36.927265>,  <30.780380, 26.688082, 36.583500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024723, 27.295256, 36.927265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.295437, 27.283215, 36.633038>,  <31.457865, 27.275990, 36.456501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.295437, 27.283215, 36.633038>,  <31.024723, 27.295256, 36.927265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295437, 27.283215, 36.633038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215143, 0.947457, -0.236724,
		0.704044, 0.318463, 0.634747,
		0.676784, -0.030102, -0.735566,
		31.498472, 27.274183, 36.412369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128538, 27.954487, 37.033871>,  <31.024723, 27.295256, 36.927265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128538, 27.954487, 37.033871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.283377, 27.833263, 36.685547>,  <31.376280, 27.760530, 36.476551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.283377, 27.833263, 36.685547>,  <31.128538, 27.954487, 37.033871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283377, 27.833263, 36.685547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308846, 0.847265, -0.432152,
		0.868775, 0.436232, 0.234377,
		0.387098, -0.303057, -0.870811,
		31.399506, 27.742346, 36.424305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713968, 28.399752, 36.805672>,  <31.128538, 27.954487, 37.033871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713968, 28.399752, 36.805672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461832, 28.209305, 36.560402>,  <31.310551, 28.095037, 36.413239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461832, 28.209305, 36.560402>,  <31.713968, 28.399752, 36.805672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461832, 28.209305, 36.560402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277832, 0.875888, -0.394499,
		0.724900, -0.078309, -0.684389,
		-0.630341, -0.476117, -0.613174,
		31.272730, 28.066469, 36.376450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978380, 28.453671, 36.031120>,  <31.713968, 28.399752, 36.805672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978380, 28.453671, 36.031120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586149, 28.436766, 36.107731>,  <31.350811, 28.426622, 36.153698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.586149, 28.436766, 36.107731>,  <31.978380, 28.453671, 36.031120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586149, 28.436766, 36.107731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123269, 0.892333, -0.434219,
		-0.152554, -0.449394, -0.880211,
		-0.980577, -0.042261, 0.191526,
		31.291977, 28.424088, 36.165188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663813, 28.860155, 35.495697>,  <31.978380, 28.453671, 36.031120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663813, 28.860155, 35.495697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340517, 28.823088, 35.728306>,  <31.146540, 28.800846, 35.867870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340517, 28.823088, 35.728306>,  <31.663813, 28.860155, 35.495697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340517, 28.823088, 35.728306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370374, 0.847743, -0.379676,
		-0.457795, -0.522248, -0.719500,
		-0.808236, -0.092670, 0.581520,
		31.098045, 28.795286, 35.902763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.140533, 28.942867, 35.035137>,  <31.663813, 28.860155, 35.495697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.140533, 28.942867, 35.035137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.003288, 29.002087, 35.406158>,  <30.920942, 29.037619, 35.628773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.003288, 29.002087, 35.406158>,  <31.140533, 28.942867, 35.035137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003288, 29.002087, 35.406158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477319, 0.823011, -0.307929,
		-0.808976, -0.548392, -0.211718,
		-0.343112, 0.148050, 0.927554,
		30.900354, 29.046501, 35.684425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.380205, 29.005192, 35.053085>,  <31.140533, 28.942867, 35.035137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.380205, 29.005192, 35.053085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.499138, 29.179707, 35.392792>,  <30.570498, 29.284416, 35.596615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.499138, 29.179707, 35.392792>,  <30.380205, 29.005192, 35.053085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.499138, 29.179707, 35.392792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517673, 0.821064, -0.240561,
		-0.802252, -0.368113, 0.469984,
		0.297333, 0.436288, 0.849262,
		30.588337, 29.310593, 35.647572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774221, 29.487507, 35.246468>,  <30.380205, 29.005192, 35.053085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774221, 29.487507, 35.246468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093040, 29.609976, 35.454689>,  <30.284332, 29.683456, 35.579620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.093040, 29.609976, 35.454689>,  <29.774221, 29.487507, 35.246468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093040, 29.609976, 35.454689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322192, 0.944624, -0.062269,
		-0.510790, -0.118086, 0.851557,
		0.797048, 0.306171, 0.520551,
		30.332155, 29.701828, 35.610855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593273, 29.818964, 35.930714>,  <29.774221, 29.487507, 35.246468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.593273, 29.818964, 35.930714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952030, 29.953871, 35.816284>,  <30.167284, 30.034815, 35.747627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952030, 29.953871, 35.816284>,  <29.593273, 29.818964, 35.930714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952030, 29.953871, 35.816284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326958, 0.941244, 0.084611,
		0.297798, 0.017646, 0.954466,
		0.896891, 0.337267, -0.286070,
		30.221098, 30.055052, 35.730461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871115, 30.239933, 36.429798>,  <29.593273, 29.818964, 35.930714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871115, 30.239933, 36.429798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.082165, 30.343540, 36.106190>,  <30.208796, 30.405704, 35.912025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.082165, 30.343540, 36.106190>,  <29.871115, 30.239933, 36.429798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082165, 30.343540, 36.106190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180250, 0.964830, 0.191345,
		0.830132, 0.044868, 0.555759,
		0.527627, 0.259017, -0.809024,
		30.240454, 30.421246, 35.863483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383154, 30.645630, 36.591160>,  <29.871115, 30.239933, 36.429798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383154, 30.645630, 36.591160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384649, 30.764709, 36.209297>,  <30.385546, 30.836157, 35.980179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384649, 30.764709, 36.209297>,  <30.383154, 30.645630, 36.591160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384649, 30.764709, 36.209297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262103, 0.921575, 0.286357,
		0.965033, 0.249147, 0.081471,
		0.003736, 0.297698, -0.954653,
		30.385771, 30.854019, 35.922901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591747, 31.351799, 36.658978>,  <30.383154, 30.645630, 36.591160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591747, 31.351799, 36.658978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443239, 31.311375, 36.289772>,  <30.354136, 31.287121, 36.068249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.443239, 31.311375, 36.289772>,  <30.591747, 31.351799, 36.658978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.443239, 31.311375, 36.289772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223760, 0.974501, -0.016693,
		0.901161, 0.200335, -0.384416,
		-0.371269, -0.101059, -0.923009,
		30.331858, 31.281057, 36.012871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889118, 31.910229, 36.309978>,  <30.591747, 31.351799, 36.658978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889118, 31.910229, 36.309978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574127, 31.795948, 36.091530>,  <30.385132, 31.727381, 35.960461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574127, 31.795948, 36.091530>,  <30.889118, 31.910229, 36.309978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574127, 31.795948, 36.091530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251912, 0.957880, -0.137865,
		0.562510, 0.029010, -0.826281,
		-0.787479, -0.285700, -0.546124,
		30.337883, 31.710238, 35.927692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806093, 32.469723, 35.852806>,  <30.889118, 31.910229, 36.309978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806093, 32.469723, 35.852806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.479448, 32.251095, 35.778614>,  <30.283461, 32.119919, 35.734097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.479448, 32.251095, 35.778614>,  <30.806093, 32.469723, 35.852806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479448, 32.251095, 35.778614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413976, 0.778568, -0.471652,
		0.402203, -0.308371, -0.862056,
		-0.816613, -0.546570, -0.185484,
		30.234465, 32.087124, 35.722969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452339, 32.491367, 35.048332>,  <30.806093, 32.469723, 35.852806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452339, 32.491367, 35.048332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188860, 32.427944, 35.342537>,  <30.030771, 32.389889, 35.519058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188860, 32.427944, 35.342537>,  <30.452339, 32.491367, 35.048332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188860, 32.427944, 35.342537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559730, 0.756526, -0.338187,
		-0.502810, -0.634450, -0.587073,
		-0.658699, -0.158558, 0.735510,
		29.991251, 32.380375, 35.563190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828718, 32.713921, 34.695965>,  <30.452339, 32.491367, 35.048332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828718, 32.713921, 34.695965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.724968, 32.693401, 35.081730>,  <29.662718, 32.681091, 35.313190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.724968, 32.693401, 35.081730>,  <29.828718, 32.713921, 34.695965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.724968, 32.693401, 35.081730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630472, 0.765443, -0.128851,
		-0.731594, -0.641457, -0.230877,
		-0.259376, -0.051295, 0.964414,
		29.647156, 32.678013, 35.371056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.275068, 33.200611, 34.733524>,  <29.828718, 32.713921, 34.695965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.275068, 33.200611, 34.733524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.313370, 33.107780, 35.120712>,  <29.336351, 33.052082, 35.353027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.313370, 33.107780, 35.120712>,  <29.275068, 33.200611, 34.733524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.313370, 33.107780, 35.120712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653377, 0.718974, 0.237014,
		-0.750953, -0.655145, -0.082791,
		0.095754, -0.232080, 0.967972,
		29.342096, 33.038155, 35.411102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.595577, 32.860672, 35.008072>,  <29.275068, 33.200611, 34.733524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.595577, 32.860672, 35.008072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.827480, 33.047050, 35.275436>,  <28.966623, 33.158878, 35.435856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.827480, 33.047050, 35.275436>,  <28.595577, 32.860672, 35.008072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.827480, 33.047050, 35.275436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802406, 0.468975, 0.369061,
		-0.141503, -0.750302, 0.645774,
		0.579759, 0.465950, 0.668409,
		29.001408, 33.186836, 35.475960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249542, 32.850101, 35.616138>,  <28.595577, 32.860672, 35.008072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.249542, 32.850101, 35.616138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.489693, 33.166229, 35.665039>,  <28.633783, 33.355907, 35.694378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.489693, 33.166229, 35.665039>,  <28.249542, 32.850101, 35.616138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.489693, 33.166229, 35.665039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771143, 0.531620, 0.350313,
		0.211867, -0.304594, 0.928620,
		0.600376, 0.790318, 0.122252,
		28.669806, 33.403324, 35.701714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.867142, 33.092022, 36.152531>,  <28.249542, 32.850101, 35.616138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.867142, 33.092022, 36.152531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095654, 33.389259, 36.013134>,  <28.232761, 33.567600, 35.929497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.095654, 33.389259, 36.013134>,  <27.867142, 33.092022, 36.152531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095654, 33.389259, 36.013134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738075, 0.650847, 0.177886,
		0.359002, 0.155592, 0.920276,
		0.571281, 0.743095, -0.348494,
		28.267038, 33.612186, 35.908585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.910189, 33.605526, 36.727962>,  <27.867142, 33.092022, 36.152531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.910189, 33.605526, 36.727962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.002148, 33.794674, 36.387718>,  <28.057323, 33.908161, 36.183571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.002148, 33.794674, 36.387718>,  <27.910189, 33.605526, 36.727962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.002148, 33.794674, 36.387718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637165, 0.733796, 0.235720,
		0.735639, 0.487785, 0.470002,
		0.229905, 0.472873, -0.850608,
		28.071117, 33.936535, 36.132534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.885656, 34.355236, 36.838871>,  <27.910189, 33.605526, 36.727962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.885656, 34.355236, 36.838871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.870190, 34.321415, 36.440605>,  <27.860909, 34.301125, 36.201645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.870190, 34.321415, 36.440605>,  <27.885656, 34.355236, 36.838871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.870190, 34.321415, 36.440605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469855, 0.880930, -0.056558,
		0.881896, 0.465633, -0.073787,
		-0.038666, -0.084548, -0.995669,
		27.858589, 34.296051, 36.141903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059748, 35.036232, 36.513081>,  <27.885656, 34.355236, 36.838871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.059748, 35.036232, 36.513081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.852837, 34.840141, 36.232479>,  <27.728689, 34.722488, 36.064117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.852837, 34.840141, 36.232479>,  <28.059748, 35.036232, 36.513081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.852837, 34.840141, 36.232479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503899, 0.837000, -0.213346,
		0.691743, 0.243126, -0.679986,
		-0.517279, -0.490225, -0.701500,
		27.697653, 34.693073, 36.022030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126814, 35.447933, 35.920124>,  <28.059748, 35.036232, 36.513081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.126814, 35.447933, 35.920124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.804028, 35.225285, 35.841152>,  <27.610355, 35.091694, 35.793770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.804028, 35.225285, 35.841152>,  <28.126814, 35.447933, 35.920124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.804028, 35.225285, 35.841152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518153, 0.827668, -0.215600,
		0.283418, -0.071680, -0.956314,
		-0.806964, -0.556622, -0.197434,
		27.561937, 35.058296, 35.781921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.749882, 35.775448, 35.379448>,  <28.126814, 35.447933, 35.920124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.749882, 35.775448, 35.379448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.462933, 35.529415, 35.510319>,  <27.290762, 35.381794, 35.588840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.462933, 35.529415, 35.510319>,  <27.749882, 35.775448, 35.379448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.462933, 35.529415, 35.510319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696373, 0.618974, -0.363229,
		0.020905, -0.488406, -0.872366,
		-0.717375, -0.615086, 0.327173,
		27.247721, 35.344891, 35.608471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.229862, 35.721924, 34.906559>,  <27.749882, 35.775448, 35.379448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.229862, 35.721924, 34.906559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.036068, 35.660168, 35.250984>,  <26.919790, 35.623116, 35.457642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.036068, 35.660168, 35.250984>,  <27.229862, 35.721924, 34.906559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.036068, 35.660168, 35.250984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657204, 0.713879, -0.241783,
		-0.577369, -0.683038, -0.447330,
		-0.484487, -0.154389, 0.861067,
		26.890722, 35.613850, 35.509304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.122875, 35.362789, 34.207569>,  <27.229862, 35.721924, 34.906559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.122875, 35.362789, 34.207569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.966261, 35.004211, 34.124535>,  <26.872293, 34.789066, 34.074715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.966261, 35.004211, 34.124535>,  <27.122875, 35.362789, 34.207569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.966261, 35.004211, 34.124535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249775, 0.320668, -0.913665,
		0.885615, -0.305881, -0.349461,
		-0.391534, -0.896442, -0.207587,
		26.848801, 34.735279, 34.062260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.537901, 35.054146, 33.617695>,  <27.122875, 35.362789, 34.207569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.537901, 35.054146, 33.617695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.155718, 34.945148, 33.663040>,  <26.926409, 34.879749, 33.690247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.155718, 34.945148, 33.663040>,  <27.537901, 35.054146, 33.617695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.155718, 34.945148, 33.663040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178396, 0.227239, -0.957359,
		0.235144, -0.934930, -0.265732,
		-0.955448, -0.272523, 0.113354,
		26.869081, 34.863400, 33.697048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079046, 35.619102, 33.433250>,  <27.537901, 35.054146, 33.617695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.079046, 35.619102, 33.433250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265591, 35.910221, 33.634377>,  <28.377518, 36.084892, 33.755051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.265591, 35.910221, 33.634377>,  <28.079046, 35.619102, 33.433250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265591, 35.910221, 33.634377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879409, -0.442905, -0.174573,
		0.095645, 0.523592, -0.846583,
		0.466361, 0.727796, 0.502813,
		28.405499, 36.128559, 33.785221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724771, 35.948345, 33.149242>,  <28.079046, 35.619102, 33.433250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724771, 35.948345, 33.149242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.734148, 35.988091, 33.547153>,  <28.739775, 36.011936, 33.785900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.734148, 35.988091, 33.547153>,  <28.724771, 35.948345, 33.149242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.734148, 35.988091, 33.547153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922966, -0.384521, 0.016659,
		0.384167, 0.917753, -0.100723,
		0.023442, 0.099364, 0.994775,
		28.741180, 36.017899, 33.845585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.373739, 35.928020, 33.222458>,  <28.724771, 35.948345, 33.149242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.373739, 35.928020, 33.222458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235607, 35.871342, 33.593548>,  <29.152729, 35.837334, 33.816200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235607, 35.871342, 33.593548>,  <29.373739, 35.928020, 33.222458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235607, 35.871342, 33.593548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774605, -0.601140, 0.196514,
		0.529845, 0.786481, 0.317353,
		-0.345328, -0.141701, 0.927723,
		29.132010, 35.828831, 33.871864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971054, 35.902355, 33.639835>,  <29.373739, 35.928020, 33.222458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.971054, 35.902355, 33.639835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676958, 35.743084, 33.859241>,  <29.500500, 35.647522, 33.990887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.676958, 35.743084, 33.859241>,  <29.971054, 35.902355, 33.639835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676958, 35.743084, 33.859241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646156, -0.656154, 0.389800,
		0.204702, 0.641026, 0.739718,
		-0.735241, -0.398181, 0.548519,
		29.456387, 35.623631, 34.023796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166130, 36.511932, 33.995365>,  <29.971054, 35.902355, 33.639835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166130, 36.511932, 33.995365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.544897, 36.488934, 33.868851>,  <30.772158, 36.475136, 33.792942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.544897, 36.488934, 33.868851>,  <30.166130, 36.511932, 33.995365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.544897, 36.488934, 33.868851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318525, 0.034902, 0.947272,
		-0.043425, -0.997735, 0.051364,
		0.946919, -0.057496, -0.316288,
		30.828974, 36.471687, 33.773964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500620, 36.064034, 34.448067>,  <30.166130, 36.511932, 33.995365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500620, 36.064034, 34.448067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813774, 36.246841, 34.279202>,  <31.001667, 36.356525, 34.177883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813774, 36.246841, 34.279202>,  <30.500620, 36.064034, 34.448067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813774, 36.246841, 34.279202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382596, 0.181437, 0.905926,
		0.490623, -0.870754, -0.032810,
		0.782885, 0.457021, -0.422164,
		31.048639, 36.383949, 34.152554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060104, 35.769531, 34.630806>,  <30.500620, 36.064034, 34.448067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060104, 35.769531, 34.630806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212864, 36.128681, 34.543194>,  <31.304520, 36.344170, 34.490627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212864, 36.128681, 34.543194>,  <31.060104, 35.769531, 34.630806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212864, 36.128681, 34.543194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246126, 0.129627, 0.960530,
		0.890828, -0.420734, -0.171486,
		0.381898, 0.897875, -0.219029,
		31.327433, 36.398045, 34.477486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763849, 35.864075, 34.913139>,  <31.060104, 35.769531, 34.630806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763849, 35.864075, 34.913139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651777, 36.244434, 34.860538>,  <31.584534, 36.472649, 34.828979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651777, 36.244434, 34.860538>,  <31.763849, 35.864075, 34.913139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651777, 36.244434, 34.860538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481115, 0.257640, 0.837944,
		0.830679, 0.171509, -0.529676,
		-0.280181, 0.950898, -0.131501,
		31.567722, 36.529705, 34.821087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387543, 36.337372, 35.075878>,  <31.763849, 35.864075, 34.913139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387543, 36.337372, 35.075878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074104, 36.585377, 35.091648>,  <31.886040, 36.734180, 35.101109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.074104, 36.585377, 35.091648>,  <32.387543, 36.337372, 35.075878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074104, 36.585377, 35.091648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243406, 0.248009, 0.937681,
		0.571597, 0.744363, -0.345255,
		-0.783601, 0.620013, 0.039421,
		31.839024, 36.771381, 35.103474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653740, 36.946445, 35.455448>,  <32.387543, 36.337372, 35.075878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653740, 36.946445, 35.455448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254391, 36.945488, 35.478249>,  <32.014782, 36.944912, 35.491928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254391, 36.945488, 35.478249>,  <32.653740, 36.946445, 35.455448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254391, 36.945488, 35.478249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052908, 0.334966, 0.940743,
		-0.021346, 0.942227, -0.334294,
		-0.998371, -0.002394, 0.057001,
		31.954880, 36.944771, 35.495350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479263, 37.544380, 35.763809>,  <32.653740, 36.946445, 35.455448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479263, 37.544380, 35.763809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200165, 37.260864, 35.805321>,  <32.032703, 37.090755, 35.830227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200165, 37.260864, 35.805321>,  <32.479263, 37.544380, 35.763809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200165, 37.260864, 35.805321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032829, 0.113085, 0.993043,
		-0.715591, 0.696301, -0.055636,
		-0.697748, -0.708785, 0.103782,
		31.990841, 37.048229, 35.836456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207340, 37.816666, 36.399132>,  <32.479263, 37.544380, 35.763809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207340, 37.816666, 36.399132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041599, 37.454132, 36.365971>,  <31.942154, 37.236610, 36.346073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.041599, 37.454132, 36.365971>,  <32.207340, 37.816666, 36.399132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041599, 37.454132, 36.365971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141428, -0.154103, 0.977880,
		-0.899060, 0.393464, 0.192034,
		-0.414353, -0.906332, -0.082901,
		31.917294, 37.182232, 36.341099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768202, 37.809170, 36.937767>,  <32.207340, 37.816666, 36.399132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768202, 37.809170, 36.937767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832006, 37.425934, 36.842583>,  <31.870289, 37.195992, 36.785473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.832006, 37.425934, 36.842583>,  <31.768202, 37.809170, 36.937767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.832006, 37.425934, 36.842583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110105, -0.222277, 0.968747,
		-0.981037, -0.180727, 0.070034,
		0.159511, -0.958087, -0.237961,
		31.879860, 37.138508, 36.771194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591660, 37.459911, 37.576447>,  <31.768202, 37.809170, 36.937767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591660, 37.459911, 37.576447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814592, 37.189629, 37.383450>,  <31.948353, 37.027458, 37.267651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814592, 37.189629, 37.383450>,  <31.591660, 37.459911, 37.576447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814592, 37.189629, 37.383450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042272, -0.557265, 0.829258,
		-0.829212, -0.482569, -0.282018,
		0.557333, -0.675710, -0.482490,
		31.981792, 36.986916, 37.238701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248213, 36.801025, 37.743984>,  <31.591660, 37.459911, 37.576447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248213, 36.801025, 37.743984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609659, 36.705025, 37.602066>,  <31.826527, 36.647423, 37.516914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.609659, 36.705025, 37.602066>,  <31.248213, 36.801025, 37.743984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609659, 36.705025, 37.602066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104872, -0.679127, 0.726491,
		-0.415311, -0.693676, -0.588499,
		0.903614, -0.240003, -0.354796,
		31.880743, 36.633022, 37.495628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294271, 36.018856, 37.731091>,  <31.248213, 36.801025, 37.743984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294271, 36.018856, 37.731091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673012, 36.147308, 37.738571>,  <31.900255, 36.224380, 37.743057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673012, 36.147308, 37.738571>,  <31.294271, 36.018856, 37.731091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673012, 36.147308, 37.738571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208919, -0.658111, 0.723356,
		0.244598, -0.681003, -0.690223,
		0.946850, 0.321132, 0.018698,
		31.957067, 36.243649, 37.744179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643879, 35.457767, 37.551537>,  <31.294271, 36.018856, 37.731091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643879, 35.457767, 37.551537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899084, 35.698875, 37.743206>,  <32.052208, 35.843540, 37.858208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899084, 35.698875, 37.743206>,  <31.643879, 35.457767, 37.551537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899084, 35.698875, 37.743206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182754, -0.723033, 0.666202,
		0.748024, -0.337475, -0.571463,
		0.638013, 0.602772, 0.479171,
		32.090488, 35.879707, 37.886959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214859, 35.090267, 37.630615>,  <31.643879, 35.457767, 37.551537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214859, 35.090267, 37.630615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234837, 35.362965, 37.922569>,  <32.246822, 35.526585, 38.097740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234837, 35.362965, 37.922569>,  <32.214859, 35.090267, 37.630615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234837, 35.362965, 37.922569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098107, -0.730607, 0.675713,
		0.993922, 0.037861, -0.103371,
		0.049941, 0.681747, 0.729881,
		32.249821, 35.567490, 38.141533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709377, 34.806557, 38.167492>,  <32.214859, 35.090267, 37.630615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709377, 34.806557, 38.167492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511066, 35.094395, 38.361969>,  <32.392078, 35.267097, 38.478657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.511066, 35.094395, 38.361969>,  <32.709377, 34.806557, 38.167492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511066, 35.094395, 38.361969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087732, -0.515477, 0.852401,
		0.864004, 0.465259, 0.192432,
		-0.495781, 0.719596, 0.486192,
		32.362331, 35.310272, 38.507828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053963, 34.889229, 38.826401>,  <32.709377, 34.806557, 38.167492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053963, 34.889229, 38.826401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715778, 35.068527, 38.942516>,  <32.512867, 35.176105, 39.012184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715778, 35.068527, 38.942516>,  <33.053963, 34.889229, 38.826401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715778, 35.068527, 38.942516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099510, -0.401817, 0.910297,
		0.524678, 0.798511, 0.295117,
		-0.845465, 0.448245, 0.290285,
		32.462139, 35.202999, 39.029602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.092720, 35.152809, 39.493164>,  <33.053963, 34.889229, 38.826401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.092720, 35.152809, 39.493164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695751, 35.108677, 39.471561>,  <32.457569, 35.082199, 39.458599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.695751, 35.108677, 39.471561>,  <33.092720, 35.152809, 39.493164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695751, 35.108677, 39.471561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000825, -0.433682, 0.901066,
		-0.122836, 0.894286, 0.430307,
		-0.992427, -0.110328, -0.054010,
		32.398022, 35.075577, 39.455360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876385, 35.377605, 40.189121>,  <33.092720, 35.152809, 39.493164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876385, 35.377605, 40.189121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589802, 35.169533, 40.003174>,  <32.417850, 35.044689, 39.891605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589802, 35.169533, 40.003174>,  <32.876385, 35.377605, 40.189121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589802, 35.169533, 40.003174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303715, -0.367318, 0.879110,
		-0.628050, 0.771032, 0.105181,
		-0.716457, -0.520180, -0.464868,
		32.374866, 35.013477, 39.863712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322083, 35.419724, 40.618538>,  <32.876385, 35.377605, 40.189121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322083, 35.419724, 40.618538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216240, 35.110142, 40.388416>,  <32.152733, 34.924393, 40.250343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216240, 35.110142, 40.388416>,  <32.322083, 35.419724, 40.618538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216240, 35.110142, 40.388416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413504, -0.447883, 0.792727,
		-0.871205, 0.447651, -0.201522,
		-0.264606, -0.773958, -0.575303,
		32.136860, 34.877953, 40.215824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698406, 35.265606, 40.856457>,  <32.322083, 35.419724, 40.618538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698406, 35.265606, 40.856457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801582, 34.934528, 40.657101>,  <31.863487, 34.735882, 40.537487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801582, 34.934528, 40.657101>,  <31.698406, 35.265606, 40.856457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801582, 34.934528, 40.657101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326309, -0.560163, 0.761406,
		-0.909390, -0.033767, -0.414571,
		0.257938, -0.827694, -0.498389,
		31.878963, 34.686222, 40.507584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100046, 34.793613, 40.879837>,  <31.698406, 35.265606, 40.856457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100046, 34.793613, 40.879837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413345, 34.555782, 40.807178>,  <31.601324, 34.413082, 40.763584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.413345, 34.555782, 40.807178>,  <31.100046, 34.793613, 40.879837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413345, 34.555782, 40.807178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234050, -0.552674, 0.799858,
		-0.575977, -0.583969, -0.572041,
		0.783244, -0.594586, -0.181650,
		31.648319, 34.377407, 40.752686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968132, 34.254368, 41.107780>,  <31.100046, 34.793613, 40.879837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968132, 34.254368, 41.107780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349667, 34.144901, 41.058296>,  <31.578587, 34.079220, 41.028606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.349667, 34.144901, 41.058296>,  <30.968132, 34.254368, 41.107780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349667, 34.144901, 41.058296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081205, -0.631585, 0.771042,
		-0.289144, -0.725401, -0.624651,
		0.953835, -0.273667, -0.123713,
		31.635817, 34.062801, 41.021183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900505, 33.488098, 41.132187>,  <30.968132, 34.254368, 41.107780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900505, 33.488098, 41.132187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278313, 33.596588, 41.206287>,  <31.504997, 33.661682, 41.250748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278313, 33.596588, 41.206287>,  <30.900505, 33.488098, 41.132187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278313, 33.596588, 41.206287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024252, -0.620050, 0.784187,
		0.327556, -0.736188, -0.592228,
		0.944520, 0.271228, 0.185247,
		31.561668, 33.677956, 41.261860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271368, 32.909981, 41.160999>,  <30.900505, 33.488098, 41.132187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271368, 32.909981, 41.160999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481770, 33.177704, 41.370895>,  <31.608011, 33.338337, 41.496834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.481770, 33.177704, 41.370895>,  <31.271368, 32.909981, 41.160999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481770, 33.177704, 41.370895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050003, -0.640261, 0.766528,
		0.849010, -0.376960, -0.370248,
		0.526005, 0.669304, 0.524739,
		31.639572, 33.378494, 41.528316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777830, 32.526833, 41.417427>,  <31.271368, 32.909981, 41.160999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777830, 32.526833, 41.417427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.769672, 32.861820, 41.635868>,  <31.764778, 33.062813, 41.766933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.769672, 32.861820, 41.635868>,  <31.777830, 32.526833, 41.417427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769672, 32.861820, 41.635868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022540, -0.546465, 0.837179,
		0.999538, 0.004765, 0.030022,
		-0.020395, 0.837469, 0.546105,
		31.763554, 33.113060, 41.799698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192204, 32.350834, 41.963997>,  <31.777830, 32.526833, 41.417427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192204, 32.350834, 41.963997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987465, 32.659946, 42.114101>,  <31.864620, 32.845413, 42.204163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987465, 32.659946, 42.114101>,  <32.192204, 32.350834, 41.963997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987465, 32.659946, 42.114101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244212, -0.549689, 0.798876,
		0.823632, 0.317262, 0.470081,
		-0.511851, 0.772779, 0.375262,
		31.833910, 32.891781, 42.226681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409100, 32.440674, 42.663704>,  <32.192204, 32.350834, 41.963997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409100, 32.440674, 42.663704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049149, 32.612518, 42.633610>,  <31.833179, 32.715626, 42.615551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049149, 32.612518, 42.633610>,  <32.409100, 32.440674, 42.663704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049149, 32.612518, 42.633610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264706, -0.400853, 0.877068,
		0.346640, 0.809166, 0.474437,
		-0.899873, 0.429613, -0.075239,
		31.779186, 32.741402, 42.611038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281013, 32.781376, 43.321297>,  <32.409100, 32.440674, 42.663704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281013, 32.781376, 43.321297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931946, 32.749149, 43.128651>,  <31.722506, 32.729813, 43.013062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931946, 32.749149, 43.128651>,  <32.281013, 32.781376, 43.321297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931946, 32.749149, 43.128651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432358, -0.330947, 0.838773,
		-0.226963, 0.940204, 0.253976,
		-0.872671, -0.080562, -0.481618,
		31.670145, 32.724979, 42.984165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771988, 33.035328, 43.689854>,  <32.281013, 32.781376, 43.321297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771988, 33.035328, 43.689854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578222, 32.769188, 43.462643>,  <31.461962, 32.609505, 43.326317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578222, 32.769188, 43.462643>,  <31.771988, 33.035328, 43.689854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578222, 32.769188, 43.462643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318069, -0.470914, 0.822844,
		-0.814968, 0.579271, 0.016493,
		-0.484416, -0.665346, -0.568028,
		31.432898, 32.569584, 43.292233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225681, 32.845028, 44.119328>,  <31.771988, 33.035328, 43.689854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225681, 32.845028, 44.119328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209942, 32.565460, 43.833679>,  <31.200499, 32.397720, 43.662289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209942, 32.565460, 43.833679>,  <31.225681, 32.845028, 44.119328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209942, 32.565460, 43.833679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385226, -0.648818, 0.656229,
		-0.921983, 0.300920, -0.243710,
		-0.039349, -0.698915, -0.714121,
		31.198137, 32.355785, 43.619442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574280, 32.543880, 44.246017>,  <31.225681, 32.845028, 44.119328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574280, 32.543880, 44.246017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813122, 32.288883, 44.051258>,  <30.956427, 32.135883, 43.934402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813122, 32.288883, 44.051258>,  <30.574280, 32.543880, 44.246017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813122, 32.288883, 44.051258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146284, -0.683334, 0.715301,
		-0.788712, -0.355884, -0.501277,
		0.597105, -0.637495, -0.486894,
		30.992254, 32.097633, 43.905190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.321831, 31.875942, 44.286556>,  <30.574280, 32.543880, 44.246017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.321831, 31.875942, 44.286556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689064, 31.759127, 44.179344>,  <30.909403, 31.689037, 44.115017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689064, 31.759127, 44.179344>,  <30.321831, 31.875942, 44.286556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689064, 31.759127, 44.179344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050924, -0.757465, 0.650887,
		-0.393107, -0.583918, -0.710286,
		0.918082, -0.292039, -0.268029,
		30.964489, 31.671515, 44.098934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265003, 31.258911, 44.341648>,  <30.321831, 31.875942, 44.286556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265003, 31.258911, 44.341648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659597, 31.324409, 44.339226>,  <30.896353, 31.363708, 44.337772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659597, 31.324409, 44.339226>,  <30.265003, 31.258911, 44.341648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659597, 31.324409, 44.339226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128965, -0.753064, 0.645185,
		0.101085, -0.637245, -0.764003,
		0.986483, 0.163748, -0.006059,
		30.955542, 31.373533, 44.337406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806757, 30.787720, 43.964470>,  <30.265003, 31.258911, 44.341648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806757, 30.787720, 43.964470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974831, 30.954453, 44.286884>,  <31.075674, 31.054493, 44.480331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974831, 30.954453, 44.286884>,  <30.806757, 30.787720, 43.964470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974831, 30.954453, 44.286884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194415, -0.908981, 0.368721,
		0.886368, 0.001775, -0.462978,
		0.420184, 0.416833, 0.806037,
		31.100885, 31.079502, 44.528694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090315, 30.111004, 44.212349>,  <30.806757, 30.787720, 43.964470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090315, 30.111004, 44.212349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166910, 30.396463, 44.481880>,  <31.212868, 30.567739, 44.643597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166910, 30.396463, 44.481880>,  <31.090315, 30.111004, 44.212349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166910, 30.396463, 44.481880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323549, -0.694053, 0.643123,
		0.926632, 0.094863, -0.363804,
		0.191491, 0.713647, 0.673825,
		31.224358, 30.610558, 44.684029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.703775, 29.916292, 44.473534>,  <31.090315, 30.111004, 44.212349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.703775, 29.916292, 44.473534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537266, 30.146761, 44.754887>,  <31.437359, 30.285042, 44.923698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.537266, 30.146761, 44.754887>,  <31.703775, 29.916292, 44.473534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537266, 30.146761, 44.754887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121520, -0.731396, 0.671039,
		0.901082, 0.364811, 0.234445,
		-0.416275, 0.576171, 0.703380,
		31.412384, 30.319613, 44.965900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141357, 29.930061, 45.102379>,  <31.703775, 29.916292, 44.473534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141357, 29.930061, 45.102379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771723, 30.019453, 45.226391>,  <31.549942, 30.073088, 45.300797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.771723, 30.019453, 45.226391>,  <32.141357, 29.930061, 45.102379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771723, 30.019453, 45.226391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161486, -0.506906, 0.846740,
		0.346384, 0.832528, 0.432337,
		-0.924089, 0.223482, 0.310026,
		31.494495, 30.086498, 45.319397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142544, 29.967299, 45.838127>,  <32.141357, 29.930061, 45.102379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142544, 29.967299, 45.838127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751146, 29.935715, 45.761902>,  <31.516308, 29.916763, 45.716167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.751146, 29.935715, 45.761902>,  <32.142544, 29.967299, 45.838127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.751146, 29.935715, 45.761902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103995, -0.608997, 0.786325,
		-0.178143, 0.789232, 0.587689,
		-0.978494, -0.078961, -0.190565,
		31.457598, 29.912025, 45.704731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940245, 30.121197, 46.477245>,  <32.142544, 29.967299, 45.838127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940245, 30.121197, 46.477245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630629, 29.956959, 46.284466>,  <31.444859, 29.858416, 46.168797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630629, 29.956959, 46.284466>,  <31.940245, 30.121197, 46.477245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630629, 29.956959, 46.284466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144354, -0.626711, 0.765765,
		-0.616463, 0.662303, 0.425827,
		-0.774039, -0.410595, -0.481950,
		31.398417, 29.833780, 46.139881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344398, 30.095781, 46.998795>,  <31.940245, 30.121197, 46.477245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344398, 30.095781, 46.998795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230869, 29.855150, 46.700119>,  <31.162752, 29.710772, 46.520912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.230869, 29.855150, 46.700119>,  <31.344398, 30.095781, 46.998795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230869, 29.855150, 46.700119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219506, -0.717273, 0.661314,
		-0.933415, 0.351598, 0.071527,
		-0.283821, -0.601580, -0.746691,
		31.145723, 29.674677, 46.476112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563637, 29.891935, 47.126678>,  <31.344398, 30.095781, 46.998795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563637, 29.891935, 47.126678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805014, 29.634001, 46.939045>,  <30.949841, 29.479240, 46.826466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.805014, 29.634001, 46.939045>,  <30.563637, 29.891935, 47.126678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.805014, 29.634001, 46.939045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228863, -0.703573, 0.672761,
		-0.763857, -0.298617, -0.572145,
		0.603443, -0.644836, -0.469087,
		30.986048, 29.440550, 46.798321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.253712, 29.276993, 47.209373>,  <30.563637, 29.891935, 47.126678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.253712, 29.276993, 47.209373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629868, 29.198608, 47.098186>,  <30.855560, 29.151579, 47.031475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.629868, 29.198608, 47.098186>,  <30.253712, 29.276993, 47.209373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629868, 29.198608, 47.098186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084383, -0.657329, 0.748865,
		-0.329464, -0.727681, -0.601610,
		0.940390, -0.195958, -0.277970,
		30.911985, 29.139820, 47.014797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500244, 28.695189, 47.525379>,  <30.253712, 29.276993, 47.209373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500244, 28.695189, 47.525379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851484, 28.755276, 47.343666>,  <31.062229, 28.791328, 47.234638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851484, 28.755276, 47.343666>,  <30.500244, 28.695189, 47.525379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851484, 28.755276, 47.343666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348969, -0.850628, 0.393260,
		-0.327349, -0.503852, -0.799360,
		0.878102, 0.150219, -0.454281,
		31.114916, 28.800341, 47.207382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688259, 28.182299, 47.029022>,  <30.500244, 28.695189, 47.525379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688259, 28.182299, 47.029022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996403, 28.333860, 47.234146>,  <31.181290, 28.424797, 47.357220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.996403, 28.333860, 47.234146>,  <30.688259, 28.182299, 47.029022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996403, 28.333860, 47.234146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059612, -0.843553, 0.533727,
		0.634816, -0.380592, -0.672428,
		0.770361, 0.378903, 0.512813,
		31.227510, 28.447531, 47.387989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311481, 27.860781, 47.123222>,  <30.688259, 28.182299, 47.029022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311481, 27.860781, 47.123222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276989, 28.042751, 47.477760>,  <31.256292, 28.151934, 47.690483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276989, 28.042751, 47.477760>,  <31.311481, 27.860781, 47.123222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276989, 28.042751, 47.477760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046017, -0.886889, 0.459686,
		0.995212, 0.080427, 0.055544,
		-0.086233, 0.454929, 0.886343,
		31.251120, 28.179230, 47.743664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904459, 27.691669, 47.750816>,  <31.311481, 27.860781, 47.123222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904459, 27.691669, 47.750816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518305, 27.764610, 47.825417>,  <31.286613, 27.808374, 47.870178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518305, 27.764610, 47.825417>,  <31.904459, 27.691669, 47.750816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518305, 27.764610, 47.825417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076856, -0.882134, 0.464685,
		0.249254, 0.434266, 0.865613,
		-0.965384, 0.182352, 0.186499,
		31.228689, 27.819317, 47.881367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678366, 27.665287, 48.499474>,  <31.904459, 27.691669, 47.750816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678366, 27.665287, 48.499474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381887, 27.565113, 48.250343>,  <31.204000, 27.505009, 48.100864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381887, 27.565113, 48.250343>,  <31.678366, 27.665287, 48.499474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381887, 27.565113, 48.250343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013515, -0.933183, 0.359147,
		-0.671152, 0.257782, 0.695057,
		-0.741197, -0.250436, -0.622824,
		31.159529, 27.489983, 48.063496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232613, 27.183249, 48.223133>,  <31.678366, 27.665287, 48.499474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232613, 27.183249, 48.223133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516613, 26.948849, 48.066925>,  <32.687012, 26.808208, 47.973202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516613, 26.948849, 48.066925>,  <32.232613, 27.183249, 48.223133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516613, 26.948849, 48.066925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329607, 0.213522, -0.919656,
		0.622303, 0.781673, -0.041549,
		0.709999, -0.586000, -0.390520,
		32.729614, 26.773048, 47.949768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726795, 27.495602, 47.702271>,  <32.232613, 27.183249, 48.223133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726795, 27.495602, 47.702271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705738, 27.110424, 47.596466>,  <32.693104, 26.879318, 47.532982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705738, 27.110424, 47.596466>,  <32.726795, 27.495602, 47.702271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705738, 27.110424, 47.596466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007752, 0.265269, -0.964143,
		0.998583, -0.048703, -0.021429,
		-0.052641, -0.962943, -0.264516,
		32.689945, 26.821541, 47.517113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261147, 27.259882, 47.133274>,  <32.726795, 27.495602, 47.702271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261147, 27.259882, 47.133274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932175, 27.033934, 47.106342>,  <32.734791, 26.898365, 47.090183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932175, 27.033934, 47.106342>,  <33.261147, 27.259882, 47.133274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932175, 27.033934, 47.106342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052152, 0.192720, -0.979867,
		0.566475, -0.802358, -0.187957,
		-0.822427, -0.564872, -0.067326,
		32.685448, 26.864471, 47.086143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279976, 26.719046, 46.589390>,  <33.261147, 27.259882, 47.133274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279976, 26.719046, 46.589390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892597, 26.804197, 46.641220>,  <32.660172, 26.855289, 46.672318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892597, 26.804197, 46.641220>,  <33.279976, 26.719046, 46.589390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892597, 26.804197, 46.641220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123065, 0.043614, -0.991440,
		-0.216711, -0.976104, -0.016040,
		-0.968448, 0.212882, 0.129576,
		32.602062, 26.868061, 46.680092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846012, 26.213266, 46.198803>,  <33.279976, 26.719046, 46.589390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846012, 26.213266, 46.198803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646114, 26.556486, 46.246140>,  <32.526176, 26.762419, 46.274544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646114, 26.556486, 46.246140>,  <32.846012, 26.213266, 46.198803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646114, 26.556486, 46.246140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262661, -0.019926, -0.964682,
		-0.825388, -0.513178, 0.235334,
		-0.499743, 0.858050, 0.118346,
		32.496193, 26.813902, 46.281643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962349, 26.226168, 46.002769>,  <32.846012, 26.213266, 46.198803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962349, 26.226168, 46.002769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111172, 26.597113, 45.986912>,  <32.200466, 26.819679, 45.977398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111172, 26.597113, 45.986912>,  <31.962349, 26.226168, 46.002769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111172, 26.597113, 45.986912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152530, 0.018950, -0.988117,
		-0.915591, 0.373685, 0.148501,
		0.372058, 0.927362, -0.039648,
		32.222790, 26.875320, 45.975018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513454, 26.636564, 45.611858>,  <31.962349, 26.226168, 46.002769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513454, 26.636564, 45.611858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868002, 26.814848, 45.561749>,  <32.080730, 26.921818, 45.531681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.868002, 26.814848, 45.561749>,  <31.513454, 26.636564, 45.611858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.868002, 26.814848, 45.561749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255018, 0.244182, -0.935596,
		-0.386417, 0.861230, 0.330100,
		0.886368, 0.445712, -0.125273,
		32.133911, 26.948561, 45.524166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370153, 27.267309, 45.273663>,  <31.513454, 26.636564, 45.611858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370153, 27.267309, 45.273663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759878, 27.248360, 45.185600>,  <31.993713, 27.236990, 45.132763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759878, 27.248360, 45.185600>,  <31.370153, 27.267309, 45.273663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759878, 27.248360, 45.185600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192288, 0.333833, -0.922812,
		0.117215, 0.941441, 0.316148,
		0.974313, -0.047376, -0.220158,
		32.052174, 27.234146, 45.119553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522480, 27.788162, 44.812778>,  <31.370153, 27.267309, 45.273663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522480, 27.788162, 44.812778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864576, 27.588860, 44.755783>,  <32.069836, 27.469278, 44.721584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.864576, 27.588860, 44.755783>,  <31.522480, 27.788162, 44.812778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864576, 27.588860, 44.755783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029998, 0.322089, -0.946234,
		0.517363, 0.804983, 0.290410,
		0.855240, -0.498258, -0.142490,
		32.121147, 27.439383, 44.713036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842464, 28.241230, 44.476406>,  <31.522480, 27.788162, 44.812778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842464, 28.241230, 44.476406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031956, 27.893990, 44.417107>,  <32.145653, 27.685646, 44.381527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031956, 27.893990, 44.417107>,  <31.842464, 28.241230, 44.476406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031956, 27.893990, 44.417107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222584, 0.280898, -0.933570,
		0.852077, 0.409262, 0.326295,
		0.473731, -0.868102, -0.148252,
		32.174076, 27.633558, 44.372631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534149, 28.380400, 44.300629>,  <31.842464, 28.241230, 44.476406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534149, 28.380400, 44.300629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457626, 28.021019, 44.142548>,  <32.411713, 27.805391, 44.047699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457626, 28.021019, 44.142548>,  <32.534149, 28.380400, 44.300629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457626, 28.021019, 44.142548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185378, 0.362322, -0.913432,
		0.963866, -0.248005, 0.097240,
		-0.191303, -0.898452, -0.395204,
		32.400234, 27.751484, 44.023987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027969, 28.325768, 43.763699>,  <32.534149, 28.380400, 44.300629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027969, 28.325768, 43.763699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774242, 28.039661, 43.646370>,  <32.622005, 27.867998, 43.575974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774242, 28.039661, 43.646370>,  <33.027969, 28.325768, 43.763699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774242, 28.039661, 43.646370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108660, 0.293160, -0.949868,
		0.765398, -0.634390, -0.108236,
		-0.634318, -0.715266, -0.293317,
		32.583946, 27.825081, 43.558376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365944, 28.059299, 43.243614>,  <33.027969, 28.325768, 43.763699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365944, 28.059299, 43.243614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986557, 27.943909, 43.191185>,  <32.758923, 27.874674, 43.159725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986557, 27.943909, 43.191185>,  <33.365944, 28.059299, 43.243614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986557, 27.943909, 43.191185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060610, 0.240859, -0.968666,
		0.311010, -0.926697, -0.210963,
		-0.948472, -0.288478, -0.131076,
		32.702015, 27.857365, 43.151863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416134, 27.687784, 42.663460>,  <33.365944, 28.059299, 43.243614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416134, 27.687784, 42.663460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028984, 27.787441, 42.677055>,  <32.796696, 27.847235, 42.685211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028984, 27.787441, 42.677055>,  <33.416134, 27.687784, 42.663460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028984, 27.787441, 42.677055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035357, 0.268667, -0.962584,
		-0.248953, -0.930454, -0.268843,
		-0.967870, 0.249144, 0.033987,
		32.738625, 27.862185, 42.687252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141769, 27.466892, 41.957466>,  <33.416134, 27.687784, 42.663460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141769, 27.466892, 41.957466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893921, 27.736158, 42.118919>,  <32.745213, 27.897718, 42.215794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893921, 27.736158, 42.118919>,  <33.141769, 27.466892, 41.957466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893921, 27.736158, 42.118919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128659, 0.420188, -0.898270,
		-0.774287, -0.608516, -0.173747,
		-0.619618, 0.673165, 0.403637,
		32.708035, 27.938108, 42.240009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752068, 27.652254, 41.408062>,  <33.141769, 27.466892, 41.957466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752068, 27.652254, 41.408062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671612, 27.952276, 41.660080>,  <32.623337, 28.132290, 41.811291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.671612, 27.952276, 41.660080>,  <32.752068, 27.652254, 41.408062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671612, 27.952276, 41.660080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168398, 0.607140, -0.776546,
		-0.964979, -0.262294, 0.004186,
		-0.201141, 0.750055, 0.630047,
		32.611271, 28.177292, 41.849094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186729, 27.424728, 40.941662>,  <32.752068, 27.652254, 41.408062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186729, 27.424728, 40.941662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814102, 27.360218, 41.071999>,  <31.590527, 27.321512, 41.150200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814102, 27.360218, 41.071999>,  <32.186729, 27.424728, 40.941662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814102, 27.360218, 41.071999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344250, 0.103022, -0.933209,
		0.116962, -0.981513, -0.151501,
		-0.931565, -0.161304, 0.325836,
		31.534632, 27.311834, 41.169750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.009796, 28.093128, 41.141296>,  <32.186729, 27.424728, 40.941662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.009796, 28.093128, 41.141296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228645, 28.315449, 41.391655>,  <32.359955, 28.448841, 41.541870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228645, 28.315449, 41.391655>,  <32.009796, 28.093128, 41.141296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228645, 28.315449, 41.391655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005625, 0.750159, -0.661233,
		-0.837032, 0.358257, 0.413557,
		0.547125, 0.555800, 0.625892,
		32.392784, 28.482189, 41.579422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657665, 28.740583, 41.120945>,  <32.009796, 28.093128, 41.141296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657665, 28.740583, 41.120945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030594, 28.812441, 41.246487>,  <32.254353, 28.855555, 41.321812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.030594, 28.812441, 41.246487>,  <31.657665, 28.740583, 41.120945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030594, 28.812441, 41.246487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094861, 0.716007, -0.691618,
		-0.348967, 0.674583, 0.650508,
		0.932322, 0.179643, 0.313854,
		32.310291, 28.866333, 41.340645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708191, 29.476402, 41.159260>,  <31.657665, 28.740583, 41.120945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708191, 29.476402, 41.159260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081470, 29.333799, 41.141205>,  <32.305439, 29.248238, 41.130371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081470, 29.333799, 41.141205>,  <31.708191, 29.476402, 41.159260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081470, 29.333799, 41.141205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286578, 0.814095, -0.505096,
		0.216816, 0.458421, 0.861882,
		0.933201, -0.356509, -0.045135,
		32.361431, 29.226847, 41.127663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141357, 30.056316, 41.327450>,  <31.708191, 29.476402, 41.159260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141357, 30.056316, 41.327450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344357, 29.787060, 41.112293>,  <32.466156, 29.625505, 40.983200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344357, 29.787060, 41.112293>,  <32.141357, 30.056316, 41.327450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344357, 29.787060, 41.112293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316094, 0.726175, -0.610537,
		0.801583, 0.139819, 0.581305,
		0.507494, -0.673143, -0.537893,
		32.496605, 29.585117, 40.950924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773808, 30.461742, 41.155937>,  <32.141357, 30.056316, 41.327450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773808, 30.461742, 41.155937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735603, 30.158417, 40.897995>,  <32.712681, 29.976421, 40.743229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735603, 30.158417, 40.897995>,  <32.773808, 30.461742, 41.155937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735603, 30.158417, 40.897995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160565, 0.627594, -0.761804,
		0.982393, -0.176302, 0.061816,
		-0.095512, -0.758316, -0.644852,
		32.706951, 29.930922, 40.704540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376183, 30.383390, 40.669209>,  <32.773808, 30.461742, 41.155937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376183, 30.383390, 40.669209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094685, 30.187578, 40.463253>,  <32.925785, 30.070091, 40.339680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.094685, 30.187578, 40.463253>,  <33.376183, 30.383390, 40.669209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094685, 30.187578, 40.463253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375815, 0.358528, -0.854529,
		0.602919, -0.794870, -0.068339,
		-0.703742, -0.489529, -0.514888,
		32.883560, 30.040720, 40.308788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668774, 30.050262, 40.014210>,  <33.376183, 30.383390, 40.669209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668774, 30.050262, 40.014210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272942, 30.064217, 39.958332>,  <33.035442, 30.072588, 39.924805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272942, 30.064217, 39.958332>,  <33.668774, 30.050262, 40.014210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272942, 30.064217, 39.958332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140953, 0.432675, -0.890463,
		0.029378, -0.900875, -0.433083,
		-0.989580, 0.034885, -0.139692,
		32.976067, 30.074682, 39.916424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533943, 29.670111, 39.399475>,  <33.668774, 30.050262, 40.014210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533943, 29.670111, 39.399475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221432, 29.911774, 39.462215>,  <33.033924, 30.056770, 39.499859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221432, 29.911774, 39.462215>,  <33.533943, 29.670111, 39.399475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221432, 29.911774, 39.462215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087868, 0.355236, -0.930638,
		-0.617969, -0.713304, -0.330623,
		-0.781277, 0.604157, 0.156848,
		32.987049, 30.093021, 39.509270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152042, 29.506277, 38.875336>,  <33.533943, 29.670111, 39.399475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152042, 29.506277, 38.875336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032970, 29.873569, 38.979824>,  <32.961525, 30.093945, 39.042515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.032970, 29.873569, 38.979824>,  <33.152042, 29.506277, 38.875336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032970, 29.873569, 38.979824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038374, 0.261893, -0.964334,
		-0.953893, -0.297091, -0.042725,
		-0.297684, 0.918231, 0.261218,
		32.943665, 30.149038, 39.058189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637901, 29.727018, 38.323715>,  <33.152042, 29.506277, 38.875336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637901, 29.727018, 38.323715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734070, 30.076113, 38.493668>,  <32.791771, 30.285570, 38.595638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734070, 30.076113, 38.493668>,  <32.637901, 29.727018, 38.323715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734070, 30.076113, 38.493668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221409, 0.475492, -0.851402,
		-0.945080, 0.110623, 0.307550,
		0.240422, 0.872737, 0.424885,
		32.806198, 30.337934, 38.621132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162197, 30.147682, 38.076656>,  <32.637901, 29.727018, 38.323715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162197, 30.147682, 38.076656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427769, 30.412601, 38.215546>,  <32.587112, 30.571554, 38.298878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427769, 30.412601, 38.215546>,  <32.162197, 30.147682, 38.076656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427769, 30.412601, 38.215546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199600, 0.604429, -0.771249,
		-0.720669, 0.442746, 0.533491,
		0.663925, 0.662300, 0.347222,
		32.626945, 30.611292, 38.319714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795202, 30.818714, 38.077076>,  <32.162197, 30.147682, 38.076656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795202, 30.818714, 38.077076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191895, 30.866686, 38.058811>,  <32.429909, 30.895468, 38.047852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191895, 30.866686, 38.058811>,  <31.795202, 30.818714, 38.077076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191895, 30.866686, 38.058811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111555, 0.629849, -0.768665,
		-0.063425, 0.767403, 0.638020,
		0.991732, 0.119927, -0.045660,
		32.489414, 30.902664, 38.045113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985334, 31.509521, 37.990314>,  <31.795202, 30.818714, 38.077076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985334, 31.509521, 37.990314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333622, 31.356642, 37.866524>,  <32.542595, 31.264914, 37.792252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333622, 31.356642, 37.866524>,  <31.985334, 31.509521, 37.990314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333622, 31.356642, 37.866524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085475, 0.502097, -0.860577,
		0.484298, 0.775772, 0.404516,
		0.870717, -0.382200, -0.309474,
		32.594837, 31.241982, 37.773682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262749, 32.007660, 37.718498>,  <31.985334, 31.509521, 37.990314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262749, 32.007660, 37.718498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501583, 31.727331, 37.562382>,  <32.644882, 31.559134, 37.468712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501583, 31.727331, 37.562382>,  <32.262749, 32.007660, 37.718498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501583, 31.727331, 37.562382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099641, 0.547573, -0.830804,
		0.795964, 0.457172, 0.396780,
		0.597086, -0.700826, -0.390296,
		32.680710, 31.517084, 37.445293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.529327, 32.464294, 37.341175>,  <32.262749, 32.007660, 37.718498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.529327, 32.464294, 37.341175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628860, 32.104591, 37.197273>,  <32.688580, 31.888771, 37.110931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628860, 32.104591, 37.197273>,  <32.529327, 32.464294, 37.341175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628860, 32.104591, 37.197273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091684, 0.391637, -0.915540,
		0.964196, 0.194837, 0.179901,
		0.248837, -0.899255, -0.359752,
		32.703510, 31.834814, 37.089348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132717, 32.523891, 36.930336>,  <32.529327, 32.464294, 37.341175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132717, 32.523891, 36.930336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970531, 32.177509, 36.813225>,  <32.873219, 31.969679, 36.742958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.970531, 32.177509, 36.813225>,  <33.132717, 32.523891, 36.930336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970531, 32.177509, 36.813225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157287, 0.249414, -0.955538,
		0.900477, -0.433487, 0.035075,
		-0.405465, -0.865957, -0.292774,
		32.848892, 31.917723, 36.725391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577541, 32.152538, 36.521946>,  <33.132717, 32.523891, 36.930336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577541, 32.152538, 36.521946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205303, 32.042599, 36.425236>,  <32.981960, 31.976635, 36.367210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205303, 32.042599, 36.425236>,  <33.577541, 32.152538, 36.521946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205303, 32.042599, 36.425236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157305, 0.296120, -0.942108,
		0.330539, -0.914749, -0.232331,
		-0.930591, -0.274856, -0.241774,
		32.926125, 31.960144, 36.352703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665092, 32.078136, 35.701828>,  <33.577541, 32.152538, 36.521946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665092, 32.078136, 35.701828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272503, 32.063873, 35.777130>,  <33.036949, 32.055317, 35.822311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.272503, 32.063873, 35.777130>,  <33.665092, 32.078136, 35.701828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272503, 32.063873, 35.777130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166497, 0.644969, -0.745851,
		-0.094826, -0.763376, -0.638956,
		-0.981472, -0.035658, 0.188260,
		32.978062, 32.053177, 35.833607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238644, 31.850889, 35.044708>,  <33.665092, 32.078136, 35.701828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238644, 31.850889, 35.044708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989628, 32.060104, 35.277561>,  <32.840218, 32.185635, 35.417271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989628, 32.060104, 35.277561>,  <33.238644, 31.850889, 35.044708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989628, 32.060104, 35.277561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334991, 0.494154, -0.802242,
		-0.707264, -0.694437, -0.132418,
		-0.622542, 0.523038, 0.582128,
		32.802864, 32.217014, 35.452198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594913, 31.879683, 34.701618>,  <33.238644, 31.850889, 35.044708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594913, 31.879683, 34.701618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592815, 32.183750, 34.961502>,  <32.591557, 32.366192, 35.117432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592815, 32.183750, 34.961502>,  <32.594913, 31.879683, 34.701618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592815, 32.183750, 34.961502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172640, 0.639272, -0.749351,
		-0.984971, -0.116095, 0.127883,
		-0.005244, 0.760167, 0.649707,
		32.591244, 32.411800, 35.156414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.053497, 32.299999, 34.468948>,  <32.594913, 31.879683, 34.701618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.053497, 32.299999, 34.468948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254906, 32.547596, 34.710052>,  <32.375751, 32.696156, 34.854713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.254906, 32.547596, 34.710052>,  <32.053497, 32.299999, 34.468948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254906, 32.547596, 34.710052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468966, 0.781741, -0.411038,
		-0.725629, -0.075706, 0.683909,
		0.503522, 0.618991, 0.602757,
		32.405964, 32.733292, 34.890881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618650, 32.778328, 34.667679>,  <32.053497, 32.299999, 34.468948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618650, 32.778328, 34.667679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964025, 32.965496, 34.743073>,  <32.171249, 33.077797, 34.788307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964025, 32.965496, 34.743073>,  <31.618650, 32.778328, 34.667679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964025, 32.965496, 34.743073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273874, 0.748596, -0.603819,
		-0.423638, 0.469739, 0.774517,
		0.863437, 0.467920, 0.188485,
		32.223057, 33.105873, 34.799618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433521, 33.493065, 34.598518>,  <31.618650, 32.778328, 34.667679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433521, 33.493065, 34.598518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833082, 33.510372, 34.591358>,  <32.072819, 33.520756, 34.587063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833082, 33.510372, 34.591358>,  <31.433521, 33.493065, 34.598518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833082, 33.510372, 34.591358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045639, 0.814266, -0.578695,
		-0.010464, 0.578877, 0.815347,
		0.998903, 0.043267, -0.017899,
		32.132751, 33.523354, 34.585987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644203, 34.174007, 34.757366>,  <31.433521, 33.493065, 34.598518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644203, 34.174007, 34.757366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951204, 34.018623, 34.553391>,  <32.135406, 33.925392, 34.431004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951204, 34.018623, 34.553391>,  <31.644203, 34.174007, 34.757366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951204, 34.018623, 34.553391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019956, 0.809572, -0.586681,
		0.640735, 0.440104, 0.629101,
		0.767503, -0.388461, -0.509938,
		32.181454, 33.902084, 34.400410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917788, 34.756378, 34.505409>,  <31.644203, 34.174007, 34.757366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917788, 34.756378, 34.505409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093300, 34.496506, 34.257092>,  <32.198608, 34.340584, 34.108101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.093300, 34.496506, 34.257092>,  <31.917788, 34.756378, 34.505409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093300, 34.496506, 34.257092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011198, 0.694755, -0.719159,
		0.898525, 0.308600, 0.312119,
		0.438779, -0.649678, -0.620799,
		32.224934, 34.301601, 34.070850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600021, 35.087543, 34.094944>,  <31.917788, 34.756378, 34.505409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600021, 35.087543, 34.094944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483055, 34.783722, 33.862541>,  <32.412876, 34.601429, 33.723099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483055, 34.783722, 33.862541>,  <32.600021, 35.087543, 34.094944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483055, 34.783722, 33.862541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047742, 0.618402, -0.784410,
		0.955098, -0.201637, -0.217095,
		-0.292418, -0.759554, -0.581008,
		32.395329, 34.555855, 33.688240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063202, 34.986916, 33.546864>,  <32.600021, 35.087543, 34.094944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063202, 34.986916, 33.546864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691509, 34.872002, 33.453911>,  <32.468494, 34.803055, 33.398140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691509, 34.872002, 33.453911>,  <33.063202, 34.986916, 33.546864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691509, 34.872002, 33.453911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040366, 0.704060, -0.708992,
		0.367291, -0.649436, -0.665830,
		-0.929230, -0.287283, -0.232380,
		32.412739, 34.785816, 33.384197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461014, 34.702991, 34.068008>,  <33.063202, 34.986916, 33.546864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461014, 34.702991, 34.068008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759418, 34.884560, 33.873100>,  <33.938461, 34.993500, 33.756157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759418, 34.884560, 33.873100>,  <33.461014, 34.702991, 34.068008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759418, 34.884560, 33.873100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624015, -0.731995, 0.273475,
		-0.232543, -0.508077, -0.829326,
		0.746009, 0.453917, -0.487268,
		33.983223, 35.020733, 33.726921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775379, 34.169598, 33.635048>,  <33.461014, 34.702991, 34.068008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775379, 34.169598, 33.635048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036549, 34.459789, 33.722115>,  <34.193249, 34.633904, 33.774353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.036549, 34.459789, 33.722115>,  <33.775379, 34.169598, 33.635048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.036549, 34.459789, 33.722115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614049, -0.675244, 0.408643,
		0.443439, -0.133153, -0.886359,
		0.652921, 0.725476, 0.217667,
		34.232426, 34.677433, 33.787415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449673, 33.826935, 33.562138>,  <33.775379, 34.169598, 33.635048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449673, 33.826935, 33.562138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535519, 34.163944, 33.759762>,  <34.587029, 34.366150, 33.878338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535519, 34.163944, 33.759762>,  <34.449673, 33.826935, 33.562138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535519, 34.163944, 33.759762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791006, -0.446668, 0.418088,
		0.572930, 0.301079, -0.762301,
		0.214618, 0.842519, 0.494065,
		34.599903, 34.416698, 33.907982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262150, 33.991116, 33.465950>,  <34.449673, 33.826935, 33.562138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262150, 33.991116, 33.465950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116077, 34.154861, 33.800388>,  <35.028435, 34.253109, 34.001053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116077, 34.154861, 33.800388>,  <35.262150, 33.991116, 33.465950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116077, 34.154861, 33.800388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783247, -0.350315, 0.513619,
		0.503155, 0.842437, -0.192705,
		-0.365184, 0.409366, 0.836098,
		35.006523, 34.277672, 34.051216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747375, 33.958557, 33.855122>,  <35.262150, 33.991116, 33.465950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747375, 33.958557, 33.855122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501095, 34.083885, 34.144325>,  <35.353329, 34.159084, 34.317848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501095, 34.083885, 34.144325>,  <35.747375, 33.958557, 33.855122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501095, 34.083885, 34.144325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596360, -0.414448, 0.687450,
		0.515044, 0.854437, 0.068322,
		-0.615698, 0.313323, 0.723011,
		35.316387, 34.177883, 34.361229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125847, 34.283970, 34.388718>,  <35.747375, 33.958557, 33.855122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125847, 34.283970, 34.388718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778160, 34.159775, 34.542629>,  <35.569546, 34.085258, 34.634975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778160, 34.159775, 34.542629>,  <36.125847, 34.283970, 34.388718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778160, 34.159775, 34.542629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486597, -0.399256, 0.777057,
		-0.087642, 0.862665, 0.498124,
		-0.869219, -0.310489, 0.384779,
		35.517395, 34.066628, 34.658062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129868, 34.475868, 35.144146>,  <36.125847, 34.283970, 34.388718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129868, 34.475868, 35.144146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846790, 34.194866, 35.114075>,  <35.676945, 34.026264, 35.096031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846790, 34.194866, 35.114075>,  <36.129868, 34.475868, 35.144146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846790, 34.194866, 35.114075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356282, -0.446733, 0.820666,
		-0.610109, 0.553995, 0.566441,
		-0.707693, -0.702509, -0.075177,
		35.634483, 33.984112, 35.091522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.724499, 34.587360, 35.708633>,  <36.129868, 34.475868, 35.144146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.724499, 34.587360, 35.708633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700500, 34.203728, 35.597950>,  <35.686104, 33.973549, 35.531540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.700500, 34.203728, 35.597950>,  <35.724499, 34.587360, 35.708633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700500, 34.203728, 35.597950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336344, -0.280418, 0.899020,
		-0.939826, -0.039135, 0.339404,
		-0.059992, -0.959080, -0.276708,
		35.682503, 33.916004, 35.514938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647472, 34.252789, 36.344303>,  <35.724499, 34.587360, 35.708633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647472, 34.252789, 36.344303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693298, 33.921650, 36.124653>,  <35.720795, 33.722965, 35.992863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693298, 33.921650, 36.124653>,  <35.647472, 34.252789, 36.344303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693298, 33.921650, 36.124653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149495, -0.532106, 0.833375,
		-0.982103, -0.177565, 0.062800,
		0.114562, -0.827849, -0.549128,
		35.727669, 33.673294, 35.959915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072834, 33.714020, 36.404739>,  <35.647472, 34.252789, 36.344303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072834, 33.714020, 36.404739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412365, 33.526360, 36.307251>,  <35.616081, 33.413765, 36.248756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412365, 33.526360, 36.307251>,  <35.072834, 33.714020, 36.404739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412365, 33.526360, 36.307251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006193, -0.469795, 0.882754,
		-0.528645, -0.747790, -0.401677,
		0.848820, -0.469151, -0.243723,
		35.667011, 33.385616, 36.234135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024559, 32.955650, 36.642002>,  <35.072834, 33.714020, 36.404739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024559, 32.955650, 36.642002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416103, 33.032272, 36.613338>,  <35.651031, 33.078247, 36.596142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.416103, 33.032272, 36.613338>,  <35.024559, 32.955650, 36.642002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416103, 33.032272, 36.613338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176892, -0.617092, 0.766751,
		0.102660, -0.763219, -0.637933,
		0.978862, 0.191560, -0.071656,
		35.709763, 33.089741, 36.591843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305080, 32.309708, 36.562195>,  <35.024559, 32.955650, 36.642002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305080, 32.309708, 36.562195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616161, 32.532616, 36.678558>,  <35.802811, 32.666363, 36.748375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616161, 32.532616, 36.678558>,  <35.305080, 32.309708, 36.562195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616161, 32.532616, 36.678558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185178, -0.645309, 0.741138,
		0.600740, -0.522515, -0.605053,
		0.777702, 0.557274, 0.290905,
		35.849472, 32.699799, 36.765831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889378, 31.827892, 36.560795>,  <35.305080, 32.309708, 36.562195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889378, 31.827892, 36.560795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948181, 32.143887, 36.798889>,  <35.983463, 32.333485, 36.941746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.948181, 32.143887, 36.798889>,  <35.889378, 31.827892, 36.560795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948181, 32.143887, 36.798889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389310, -0.599417, 0.699384,
		0.909300, 0.128918, -0.395668,
		0.147007, 0.789987, 0.595239,
		35.992283, 32.380882, 36.977459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466854, 31.593147, 37.006142>,  <35.889378, 31.827892, 36.560795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466854, 31.593147, 37.006142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346653, 31.919977, 37.202950>,  <36.274532, 32.116074, 37.321033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.346653, 31.919977, 37.202950>,  <36.466854, 31.593147, 37.006142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346653, 31.919977, 37.202950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266884, -0.423222, 0.865827,
		0.915679, 0.391499, -0.090883,
		-0.300507, 0.817075, 0.492021,
		36.256500, 32.165100, 37.350555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016563, 31.819231, 37.451153>,  <36.466854, 31.593147, 37.006142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016563, 31.819231, 37.451153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639973, 31.902279, 37.557369>,  <36.414017, 31.952108, 37.621101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639973, 31.902279, 37.557369>,  <37.016563, 31.819231, 37.451153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639973, 31.902279, 37.557369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101651, -0.576234, 0.810938,
		0.321383, 0.790473, 0.521407,
		-0.941478, 0.207620, 0.265544,
		36.357529, 31.964565, 37.637032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038616, 31.761745, 38.170414>,  <37.016563, 31.819231, 37.451153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038616, 31.761745, 38.170414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642075, 31.782438, 38.122181>,  <36.404148, 31.794855, 38.093243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.642075, 31.782438, 38.122181>,  <37.038616, 31.761745, 38.170414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642075, 31.782438, 38.122181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127935, -0.585167, 0.800757,
		-0.029133, 0.809261, 0.586727,
		-0.991355, 0.051734, -0.120581,
		36.344669, 31.797958, 38.086006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773563, 31.878643, 38.807648>,  <37.038616, 31.761745, 38.170414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773563, 31.878643, 38.807648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443150, 31.741446, 38.628754>,  <36.244900, 31.659126, 38.521416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443150, 31.741446, 38.628754>,  <36.773563, 31.878643, 38.807648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443150, 31.741446, 38.628754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243820, -0.497955, 0.832221,
		-0.508151, 0.796489, 0.327700,
		-0.826035, -0.342994, -0.447237,
		36.195339, 31.638548, 38.494583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231071, 32.098854, 39.259781>,  <36.773563, 31.878643, 38.807648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231071, 32.098854, 39.259781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137604, 31.784063, 39.031368>,  <36.081524, 31.595190, 38.894321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137604, 31.784063, 39.031368>,  <36.231071, 32.098854, 39.259781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137604, 31.784063, 39.031368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261761, -0.514688, 0.816442,
		-0.936419, 0.340249, -0.085733,
		-0.233668, -0.786973, -0.571027,
		36.067505, 31.547972, 38.860062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671543, 31.797995, 39.526432>,  <36.231071, 32.098854, 39.259781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671543, 31.797995, 39.526432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755592, 31.483875, 39.293484>,  <35.806023, 31.295404, 39.153717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755592, 31.483875, 39.293484>,  <35.671543, 31.797995, 39.526432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755592, 31.483875, 39.293484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443643, -0.607397, 0.658976,
		-0.871222, 0.119895, -0.476022,
		0.210127, -0.785299, -0.582368,
		35.818630, 31.248285, 39.118774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066231, 31.391104, 39.520748>,  <35.671543, 31.797995, 39.526432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066231, 31.391104, 39.520748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364113, 31.140928, 39.427597>,  <35.542843, 30.990822, 39.371708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364113, 31.140928, 39.427597>,  <35.066231, 31.391104, 39.520748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364113, 31.140928, 39.427597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412157, -0.705446, 0.576604,
		-0.524913, -0.333421, -0.783133,
		0.744709, -0.625441, -0.232876,
		35.587524, 30.953297, 39.357735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629589, 30.852009, 39.456024>,  <35.066231, 31.391104, 39.520748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629589, 30.852009, 39.456024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009960, 30.752222, 39.529247>,  <35.238182, 30.692350, 39.573181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009960, 30.752222, 39.529247>,  <34.629589, 30.852009, 39.456024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009960, 30.752222, 39.529247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308633, -0.722391, 0.618786,
		-0.022125, -0.644917, -0.763932,
		0.950924, -0.249466, 0.183060,
		35.295238, 30.677382, 39.584164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587563, 30.223942, 39.502247>,  <34.629589, 30.852009, 39.456024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587563, 30.223942, 39.502247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946075, 30.286911, 39.668087>,  <35.161182, 30.324692, 39.767593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946075, 30.286911, 39.668087>,  <34.587563, 30.223942, 39.502247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946075, 30.286911, 39.668087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178422, -0.727882, 0.662083,
		0.406010, -0.667387, -0.624300,
		0.896282, 0.157423, 0.414604,
		35.214962, 30.334137, 39.792469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888657, 29.540791, 39.643559>,  <34.587563, 30.223942, 39.502247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888657, 29.540791, 39.643559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096001, 29.793400, 39.874203>,  <35.220409, 29.944965, 40.012589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096001, 29.793400, 39.874203>,  <34.888657, 29.540791, 39.643559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096001, 29.793400, 39.874203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149016, -0.597249, 0.788091,
		0.842076, -0.494443, -0.215486,
		0.518365, 0.631522, 0.576609,
		35.251511, 29.982857, 40.047184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229412, 29.149641, 40.088467>,  <34.888657, 29.540791, 39.643559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229412, 29.149641, 40.088467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262695, 29.498409, 40.281475>,  <35.282665, 29.707670, 40.397282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262695, 29.498409, 40.281475>,  <35.229412, 29.149641, 40.088467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262695, 29.498409, 40.281475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122776, -0.471543, 0.873254,
		0.988940, -0.131905, 0.067814,
		0.083210, 0.871922, 0.482523,
		35.287659, 29.759985, 40.426231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788113, 29.102554, 40.613583>,  <35.229412, 29.149641, 40.088467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788113, 29.102554, 40.613583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543247, 29.392130, 40.740814>,  <35.396328, 29.565874, 40.817154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.543247, 29.392130, 40.740814>,  <35.788113, 29.102554, 40.613583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.543247, 29.392130, 40.740814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028340, -0.422085, 0.906113,
		0.790225, 0.545673, 0.278900,
		-0.612161, 0.723938, 0.318078,
		35.359600, 29.609312, 40.836239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043961, 29.209921, 41.210247>,  <35.788113, 29.102554, 40.613583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043961, 29.209921, 41.210247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679646, 29.374960, 41.204174>,  <35.461056, 29.473984, 41.200531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679646, 29.374960, 41.204174>,  <36.043961, 29.209921, 41.210247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679646, 29.374960, 41.204174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145039, -0.285314, 0.947396,
		0.386562, 0.865078, 0.319703,
		-0.910788, 0.412596, -0.015178,
		35.406410, 29.498739, 41.199619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040298, 29.627371, 41.787323>,  <36.043961, 29.209921, 41.210247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040298, 29.627371, 41.787323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654243, 29.593750, 41.688168>,  <35.422611, 29.573578, 41.628674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654243, 29.593750, 41.688168>,  <36.040298, 29.627371, 41.787323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654243, 29.593750, 41.688168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247897, -0.010522, 0.968729,
		-0.084031, 0.996406, -0.010680,
		-0.965135, -0.084051, -0.247890,
		35.364704, 29.568535, 41.613800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797985, 29.956228, 42.304398>,  <36.040298, 29.627371, 41.787323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797985, 29.956228, 42.304398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501968, 29.738609, 42.146233>,  <35.324360, 29.608038, 42.051334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501968, 29.738609, 42.146233>,  <35.797985, 29.956228, 42.304398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501968, 29.738609, 42.146233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296617, -0.263648, 0.917882,
		-0.603620, 0.796557, 0.033737,
		-0.740041, -0.544046, -0.395416,
		35.279957, 29.575396, 42.027607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091969, 30.100542, 42.596127>,  <35.797985, 29.956228, 42.304398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091969, 30.100542, 42.596127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093891, 29.724371, 42.460144>,  <35.095047, 29.498669, 42.378555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093891, 29.724371, 42.460144>,  <35.091969, 30.100542, 42.596127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093891, 29.724371, 42.460144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097741, -0.338775, 0.935777,
		-0.995200, 0.028725, -0.093548,
		0.004811, -0.940429, -0.339957,
		35.095333, 29.442242, 42.358158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620148, 29.750408, 42.963486>,  <35.091969, 30.100542, 42.596127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620148, 29.750408, 42.963486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834560, 29.449005, 42.811230>,  <34.963207, 29.268162, 42.719875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.834560, 29.449005, 42.811230>,  <34.620148, 29.750408, 42.963486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834560, 29.449005, 42.811230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013901, -0.442954, 0.896437,
		-0.844081, -0.485813, -0.226965,
		0.536035, -0.753510, -0.380642,
		34.995373, 29.222952, 42.697037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316719, 29.087418, 43.235950>,  <34.620148, 29.750408, 42.963486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316719, 29.087418, 43.235950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686470, 28.983583, 43.124138>,  <34.908321, 28.921282, 43.057053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686470, 28.983583, 43.124138>,  <34.316719, 29.087418, 43.235950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686470, 28.983583, 43.124138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073168, -0.598507, 0.797769,
		-0.374390, -0.757894, -0.534255,
		0.924380, -0.259586, -0.279529,
		34.963783, 28.905706, 43.040279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382092, 28.528975, 43.635185>,  <34.316719, 29.087418, 43.235950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382092, 28.528975, 43.635185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756874, 28.623444, 43.532158>,  <34.981743, 28.680126, 43.470341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756874, 28.623444, 43.532158>,  <34.382092, 28.528975, 43.635185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756874, 28.623444, 43.532158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327044, -0.332924, 0.884423,
		0.123128, -0.912898, -0.389174,
		0.936953, 0.236174, -0.257565,
		35.037960, 28.694296, 43.454887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757378, 27.915607, 43.662979>,  <34.382092, 28.528975, 43.635185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757378, 27.915607, 43.662979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015724, 28.216740, 43.713726>,  <35.170734, 28.397419, 43.744175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.015724, 28.216740, 43.713726>,  <34.757378, 27.915607, 43.662979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015724, 28.216740, 43.713726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429585, -0.495744, 0.754781,
		0.631117, -0.432990, -0.643592,
		0.645870, 0.752833, 0.126866,
		35.209484, 28.442589, 43.751785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300941, 27.575886, 44.009171>,  <34.757378, 27.915607, 43.662979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300941, 27.575886, 44.009171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364323, 27.965122, 44.076080>,  <35.402351, 28.198664, 44.116226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.364323, 27.965122, 44.076080>,  <35.300941, 27.575886, 44.009171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364323, 27.965122, 44.076080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249050, -0.203331, 0.946906,
		0.955440, -0.108381, -0.274568,
		0.158455, 0.973093, 0.167279,
		35.411858, 28.257050, 44.126263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885006, 27.657480, 44.345432>,  <35.300941, 27.575886, 44.009171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885006, 27.657480, 44.345432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665546, 27.978142, 44.440372>,  <35.533871, 28.170540, 44.497337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665546, 27.978142, 44.440372>,  <35.885006, 27.657480, 44.345432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665546, 27.978142, 44.440372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231026, -0.127467, 0.964562,
		0.803499, 0.584039, -0.115268,
		-0.548649, 0.801655, 0.237348,
		35.500950, 28.218637, 44.511578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361038, 28.017439, 44.693344>,  <35.885006, 27.657480, 44.345432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361038, 28.017439, 44.693344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999115, 28.156990, 44.790997>,  <35.781960, 28.240721, 44.849586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999115, 28.156990, 44.790997>,  <36.361038, 28.017439, 44.693344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999115, 28.156990, 44.790997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263789, 0.009198, 0.964537,
		0.334262, 0.937123, -0.100353,
		-0.904812, 0.348880, 0.244128,
		35.727673, 28.261654, 44.864235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411465, 28.602543, 45.156940>,  <36.361038, 28.017439, 44.693344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411465, 28.602543, 45.156940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034698, 28.505207, 45.249527>,  <35.808640, 28.446806, 45.305077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.034698, 28.505207, 45.249527>,  <36.411465, 28.602543, 45.156940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034698, 28.505207, 45.249527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154390, 0.298311, 0.941899,
		-0.298250, 0.922928, -0.243416,
		-0.941919, -0.243340, 0.231462,
		35.752121, 28.432205, 45.318966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186859, 29.053183, 45.681553>,  <36.411465, 28.602543, 45.156940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186859, 29.053183, 45.681553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911949, 28.763603, 45.705387>,  <35.747002, 28.589855, 45.719688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911949, 28.763603, 45.705387>,  <36.186859, 29.053183, 45.681553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911949, 28.763603, 45.705387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076837, 0.154024, 0.985075,
		-0.722321, 0.672440, -0.161483,
		-0.687276, -0.723948, 0.059586,
		35.705765, 28.546419, 45.723263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861118, 29.010397, 46.368317>,  <36.186859, 29.053183, 45.681553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861118, 29.010397, 46.368317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048473, 29.281948, 46.594498>,  <36.160889, 29.444880, 46.730206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048473, 29.281948, 46.594498>,  <35.861118, 29.010397, 46.368317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048473, 29.281948, 46.594498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111197, 0.680202, -0.724542,
		-0.876495, 0.276494, 0.394090,
		0.468392, 0.678879, 0.565448,
		36.188992, 29.485611, 46.764133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436409, 29.625870, 46.549229>,  <35.861118, 29.010397, 46.368317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436409, 29.625870, 46.549229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827454, 29.709850, 46.554829>,  <36.062080, 29.760239, 46.558189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827454, 29.709850, 46.554829>,  <35.436409, 29.625870, 46.549229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827454, 29.709850, 46.554829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149230, 0.738691, -0.657317,
		-0.148343, 0.640512, 0.753484,
		0.977612, 0.209951, 0.013996,
		36.120739, 29.772835, 46.559029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525875, 30.363163, 46.647884>,  <35.436409, 29.625870, 46.549229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525875, 30.363163, 46.647884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871307, 30.239443, 46.488602>,  <36.078568, 30.165211, 46.393032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871307, 30.239443, 46.488602>,  <35.525875, 30.363163, 46.647884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871307, 30.239443, 46.488602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024798, 0.814848, -0.579144,
		0.503605, 0.490261, 0.711355,
		0.863578, -0.309299, -0.398204,
		36.130383, 30.146652, 46.369141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953350, 30.986128, 46.610912>,  <35.525875, 30.363163, 46.647884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953350, 30.986128, 46.610912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164795, 30.737484, 46.379681>,  <36.291660, 30.588297, 46.240944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.164795, 30.737484, 46.379681>,  <35.953350, 30.986128, 46.610912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164795, 30.737484, 46.379681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177515, 0.746892, -0.640813,
		0.830095, 0.236125, 0.505161,
		0.528612, -0.621609, -0.578075,
		36.323380, 30.551001, 46.206257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512604, 31.384727, 46.239563>,  <35.953350, 30.986128, 46.610912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512604, 31.384727, 46.239563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506355, 31.049501, 46.021423>,  <36.502605, 30.848366, 45.890541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506355, 31.049501, 46.021423>,  <36.512604, 31.384727, 46.239563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506355, 31.049501, 46.021423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105325, 0.540998, -0.834402,
		0.994315, -0.070476, 0.079816,
		-0.015625, -0.838065, -0.545346,
		36.501667, 30.798082, 45.857819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055672, 31.439716, 45.741615>,  <36.512604, 31.384727, 46.239563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055672, 31.439716, 45.741615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807610, 31.164810, 45.590313>,  <36.658772, 30.999866, 45.499531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.807610, 31.164810, 45.590313>,  <37.055672, 31.439716, 45.741615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807610, 31.164810, 45.590313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004303, 0.485144, -0.874423,
		0.784469, -0.540648, -0.303821,
		-0.620153, -0.687266, -0.378255,
		36.621563, 30.958630, 45.476837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268536, 31.252602, 45.092636>,  <37.055672, 31.439716, 45.741615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268536, 31.252602, 45.092636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884892, 31.139868, 45.082279>,  <36.654705, 31.072227, 45.076065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.884892, 31.139868, 45.082279>,  <37.268536, 31.252602, 45.092636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884892, 31.139868, 45.082279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087254, 0.381466, -0.920256,
		0.269234, -0.880371, -0.390460,
		-0.959114, -0.281833, -0.025888,
		36.597157, 31.055317, 45.074512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158928, 30.753780, 44.617985>,  <37.268536, 31.252602, 45.092636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158928, 30.753780, 44.617985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830265, 30.976656, 44.666019>,  <36.633068, 31.110382, 44.694839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.830265, 30.976656, 44.666019>,  <37.158928, 30.753780, 44.617985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830265, 30.976656, 44.666019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070607, 0.308556, -0.948582,
		-0.565593, -0.770930, -0.292869,
		-0.821657, 0.557190, 0.120084,
		36.583767, 31.143812, 44.702045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919167, 30.854931, 44.034027>,  <37.158928, 30.753780, 44.617985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919167, 30.854931, 44.034027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.691971, 31.129946, 44.214996>,  <36.555653, 31.294954, 44.323578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.691971, 31.129946, 44.214996>,  <36.919167, 30.854931, 44.034027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691971, 31.129946, 44.214996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151580, 0.452907, -0.878578,
		-0.808957, -0.567600, -0.153030,
		-0.567989, 0.687535, 0.452419,
		36.521572, 31.336206, 44.350723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364655, 30.966551, 43.557362>,  <36.919167, 30.854931, 44.034027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364655, 30.966551, 43.557362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367561, 31.294136, 43.786880>,  <36.369305, 31.490688, 43.924591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367561, 31.294136, 43.786880>,  <36.364655, 30.966551, 43.557362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367561, 31.294136, 43.786880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025204, 0.573781, -0.818621,
		-0.999656, -0.008513, 0.024811,
		0.007268, 0.818964, 0.573798,
		36.369743, 31.539825, 43.959019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894360, 31.409847, 43.186337>,  <36.364655, 30.966551, 43.557362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894360, 31.409847, 43.186337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089893, 31.667143, 43.422062>,  <36.207214, 31.821520, 43.563496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089893, 31.667143, 43.422062>,  <35.894360, 31.409847, 43.186337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089893, 31.667143, 43.422062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251025, 0.543236, -0.801175,
		-0.835479, 0.539575, 0.104085,
		0.488837, 0.643237, 0.589309,
		36.236546, 31.860113, 43.598854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584442, 32.003872, 43.077950>,  <35.894360, 31.409847, 43.186337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584442, 32.003872, 43.077950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958614, 32.065300, 43.205318>,  <36.183117, 32.102158, 43.281738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958614, 32.065300, 43.205318>,  <35.584442, 32.003872, 43.077950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958614, 32.065300, 43.205318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200362, 0.511781, -0.835425,
		-0.291258, 0.845279, 0.447964,
		0.935427, 0.153569, 0.318422,
		36.239243, 32.111370, 43.300846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680916, 32.610149, 42.711906>,  <35.584442, 32.003872, 43.077950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680916, 32.610149, 42.711906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050617, 32.493984, 42.811043>,  <36.272438, 32.424286, 42.870525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050617, 32.493984, 42.811043>,  <35.680916, 32.610149, 42.711906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050617, 32.493984, 42.811043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379373, 0.625677, -0.681619,
		0.042885, 0.724009, 0.688456,
		0.924249, -0.290413, 0.247837,
		36.327892, 32.406860, 42.885395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161163, 33.196480, 42.821812>,  <35.680916, 32.610149, 42.711906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161163, 33.196480, 42.821812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410957, 32.895344, 42.738625>,  <36.560833, 32.714661, 42.688713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410957, 32.895344, 42.738625>,  <36.161163, 33.196480, 42.821812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410957, 32.895344, 42.738625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386853, 0.529460, -0.754995,
		0.678502, 0.391028, 0.621878,
		0.624484, -0.752840, -0.207970,
		36.598301, 32.669491, 42.676235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762543, 33.510956, 42.525620>,  <36.161163, 33.196480, 42.821812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762543, 33.510956, 42.525620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857716, 33.138199, 42.416096>,  <36.914818, 32.914547, 42.350380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857716, 33.138199, 42.416096>,  <36.762543, 33.510956, 42.525620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857716, 33.138199, 42.416096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404495, 0.351368, -0.844348,
		0.883047, 0.090140, 0.460546,
		0.237931, -0.931888, -0.273814,
		36.929096, 32.858631, 42.333950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558235, 33.486977, 42.389118>,  <36.762543, 33.510956, 42.525620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558235, 33.486977, 42.389118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329838, 33.221706, 42.195553>,  <37.192799, 33.062546, 42.079414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329838, 33.221706, 42.195553>,  <37.558235, 33.486977, 42.389118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329838, 33.221706, 42.195553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506529, 0.179289, -0.843376,
		0.646064, -0.726677, 0.233543,
		-0.570990, -0.663172, -0.483915,
		37.158543, 33.022755, 42.050377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032272, 33.173523, 42.036118>,  <37.558235, 33.486977, 42.389118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032272, 33.173523, 42.036118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700645, 33.061832, 41.842342>,  <37.501671, 32.994820, 41.726078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.700645, 33.061832, 41.842342>,  <38.032272, 33.173523, 42.036118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700645, 33.061832, 41.842342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407590, 0.291314, -0.865451,
		0.382781, -0.914969, -0.127709,
		-0.829065, -0.279225, -0.484442,
		37.451927, 32.978065, 41.697010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259388, 32.790485, 41.485489>,  <38.032272, 33.173523, 42.036118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259388, 32.790485, 41.485489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892517, 32.910934, 41.381092>,  <37.672394, 32.983204, 41.318455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.892517, 32.910934, 41.381092>,  <38.259388, 32.790485, 41.485489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892517, 32.910934, 41.381092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342753, 0.262053, -0.902135,
		-0.203257, -0.916872, -0.343559,
		-0.917173, 0.301121, -0.260996,
		37.617367, 33.001270, 41.302792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200714, 32.525429, 40.814697>,  <38.259388, 32.790485, 41.485489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200714, 32.525429, 40.814697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906422, 32.794441, 40.846703>,  <37.729847, 32.955849, 40.865906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906422, 32.794441, 40.846703>,  <38.200714, 32.525429, 40.814697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906422, 32.794441, 40.846703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249786, 0.379262, -0.890936,
		-0.629526, -0.635505, -0.447024,
		-0.735734, 0.672528, 0.080016,
		37.685703, 32.996201, 40.870708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818043, 32.453835, 40.250168>,  <38.200714, 32.525429, 40.814697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818043, 32.453835, 40.250168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705727, 32.812061, 40.388226>,  <37.638336, 33.026997, 40.471062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705727, 32.812061, 40.388226>,  <37.818043, 32.453835, 40.250168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705727, 32.812061, 40.388226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034857, 0.349859, -0.936154,
		-0.959137, -0.274891, -0.067019,
		-0.280788, 0.895563, 0.345145,
		37.621490, 33.080730, 40.491768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202953, 32.703297, 39.931160>,  <37.818043, 32.453835, 40.250168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202953, 32.703297, 39.931160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363895, 33.056782, 40.026794>,  <37.460461, 33.268871, 40.084175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363895, 33.056782, 40.026794>,  <37.202953, 32.703297, 39.931160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363895, 33.056782, 40.026794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149031, 0.320903, -0.935313,
		-0.903272, 0.340695, 0.260817,
		0.402354, 0.883712, 0.239089,
		37.484600, 33.321896, 40.098522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710148, 33.210114, 39.648739>,  <37.202953, 32.703297, 39.931160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710148, 33.210114, 39.648739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046947, 33.419491, 39.700974>,  <37.249027, 33.545116, 39.732315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.046947, 33.419491, 39.700974>,  <36.710148, 33.210114, 39.648739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046947, 33.419491, 39.700974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120692, 0.418687, -0.900075,
		-0.525812, 0.742098, 0.415708,
		0.841995, 0.523442, 0.130585,
		37.299545, 33.576523, 39.740150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451374, 33.885269, 39.455231>,  <36.710148, 33.210114, 39.648739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451374, 33.885269, 39.455231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850731, 33.903725, 39.442093>,  <37.090347, 33.914799, 39.434208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.850731, 33.903725, 39.442093>,  <36.451374, 33.885269, 39.455231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850731, 33.903725, 39.442093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048193, 0.387354, -0.920671,
		-0.029759, 0.920776, 0.388956,
		0.998395, 0.046144, -0.032848,
		37.150249, 33.917568, 39.432240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685612, 34.519669, 39.182716>,  <36.451374, 33.885269, 39.455231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685612, 34.519669, 39.182716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.994373, 34.276436, 39.108513>,  <37.179630, 34.130497, 39.063992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.994373, 34.276436, 39.108513>,  <36.685612, 34.519669, 39.182716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994373, 34.276436, 39.108513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060885, 0.361159, -0.930514,
		0.632822, 0.706969, 0.315802,
		0.771899, -0.608078, -0.185506,
		37.225945, 34.094013, 39.052860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232170, 34.932556, 38.971130>,  <36.685612, 34.519669, 39.182716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232170, 34.932556, 38.971130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304020, 34.566830, 38.825939>,  <37.347130, 34.347393, 38.738827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304020, 34.566830, 38.825939>,  <37.232170, 34.932556, 38.971130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304020, 34.566830, 38.825939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326963, 0.403492, -0.854570,
		0.927808, 0.034826, 0.371428,
		0.179629, -0.914320, -0.362976,
		37.357910, 34.292534, 38.717045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997143, 34.814434, 38.938114>,  <37.232170, 34.932556, 38.971130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997143, 34.814434, 38.938114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776165, 34.594620, 38.687412>,  <37.643578, 34.462730, 38.536991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776165, 34.594620, 38.687412>,  <37.997143, 34.814434, 38.938114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776165, 34.594620, 38.687412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599685, 0.260225, -0.756743,
		0.578953, -0.793912, 0.185787,
		-0.552441, -0.549533, -0.626756,
		37.610432, 34.429760, 38.499386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460686, 34.606316, 38.487667>,  <37.997143, 34.814434, 38.938114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460686, 34.606316, 38.487667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129032, 34.511803, 38.285000>,  <37.930042, 34.455093, 38.163399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129032, 34.511803, 38.285000>,  <38.460686, 34.606316, 38.487667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129032, 34.511803, 38.285000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492464, 0.120283, -0.861981,
		0.264619, -0.964210, 0.016633,
		-0.829130, -0.236288, -0.506668,
		37.880295, 34.440918, 38.132999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636097, 34.206200, 37.926022>,  <38.460686, 34.606316, 38.487667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636097, 34.206200, 37.926022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284447, 34.375313, 37.838028>,  <38.073456, 34.476780, 37.785233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284447, 34.375313, 37.838028>,  <38.636097, 34.206200, 37.926022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284447, 34.375313, 37.838028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365218, 0.301082, -0.880889,
		-0.306194, -0.854753, -0.419097,
		-0.879125, 0.422784, -0.219981,
		38.020710, 34.502148, 37.772034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702091, 34.157555, 37.272396>,  <38.636097, 34.206200, 37.926022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702091, 34.157555, 37.272396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366322, 34.368282, 37.325809>,  <38.164860, 34.494717, 37.357857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366322, 34.368282, 37.325809>,  <38.702091, 34.157555, 37.272396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366322, 34.368282, 37.325809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174274, 0.493657, -0.852016,
		-0.514777, -0.691931, -0.506198,
		-0.839424, 0.526816, 0.133538,
		38.114494, 34.526325, 37.365871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239346, 34.096947, 36.680367>,  <38.702091, 34.157555, 37.272396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239346, 34.096947, 36.680367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214462, 34.453552, 36.859844>,  <38.199532, 34.667515, 36.967529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214462, 34.453552, 36.859844>,  <38.239346, 34.096947, 36.680367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214462, 34.453552, 36.859844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095964, 0.452824, -0.886420,
		-0.993439, -0.012084, -0.113722,
		-0.062207, 0.891518, 0.448694,
		38.195801, 34.721008, 36.994453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078407, 34.401264, 36.095867>,  <38.239346, 34.096947, 36.680367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078407, 34.401264, 36.095867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116344, 34.715019, 36.341057>,  <38.139107, 34.903275, 36.488171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.116344, 34.715019, 36.341057>,  <38.078407, 34.401264, 36.095867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116344, 34.715019, 36.341057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149361, 0.597567, -0.787785,
		-0.984224, 0.166269, -0.060483,
		0.094842, 0.784391, 0.612973,
		38.144798, 34.950336, 36.524948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639557, 34.891926, 35.799557>,  <38.078407, 34.401264, 36.095867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639557, 34.891926, 35.799557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935448, 35.051384, 36.016399>,  <38.112984, 35.147060, 36.146503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935448, 35.051384, 36.016399>,  <37.639557, 34.891926, 35.799557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935448, 35.051384, 36.016399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226874, 0.610700, -0.758666,
		-0.633503, 0.684199, 0.361311,
		0.739731, 0.398645, 0.542107,
		38.157368, 35.170979, 36.179031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650085, 35.569210, 35.574902>,  <37.639557, 34.891926, 35.799557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650085, 35.569210, 35.574902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008083, 35.515507, 35.745060>,  <38.222881, 35.483284, 35.847157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.008083, 35.515507, 35.745060>,  <37.650085, 35.569210, 35.574902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.008083, 35.515507, 35.745060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433542, 0.486292, -0.758658,
		-0.105012, 0.863421, 0.493434,
		0.894994, -0.134257, 0.425395,
		38.276581, 35.475231, 35.872677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954330, 36.235931, 35.363239>,  <37.650085, 35.569210, 35.574902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954330, 36.235931, 35.363239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251011, 36.011818, 35.510727>,  <38.429020, 35.877350, 35.599220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251011, 36.011818, 35.510727>,  <37.954330, 36.235931, 35.363239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251011, 36.011818, 35.510727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614410, 0.347064, -0.708553,
		0.269022, 0.752082, 0.601664,
		0.741706, -0.560284, 0.368719,
		38.473522, 35.843731, 35.621342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516830, 36.621452, 35.618034>,  <37.954330, 36.235931, 35.363239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516830, 36.621452, 35.618034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644989, 36.260902, 35.501511>,  <38.721886, 36.044571, 35.431595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644989, 36.260902, 35.501511>,  <38.516830, 36.621452, 35.618034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644989, 36.260902, 35.501511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593961, 0.430725, -0.679475,
		0.737939, 0.044674, 0.673387,
		0.320400, -0.901377, -0.291314,
		38.741108, 35.990490, 35.414116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177567, 36.724483, 35.507408>,  <38.516830, 36.621452, 35.618034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177567, 36.724483, 35.507408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122768, 36.377018, 35.316975>,  <39.089890, 36.168537, 35.202717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122768, 36.377018, 35.316975>,  <39.177567, 36.724483, 35.507408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122768, 36.377018, 35.316975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560539, 0.328280, -0.760281,
		0.816718, -0.371014, 0.441950,
		-0.136992, -0.868666, -0.476080,
		39.081673, 36.116417, 35.174152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783081, 36.565636, 35.355873>,  <39.177567, 36.724483, 35.507408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783081, 36.565636, 35.355873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595257, 36.320354, 35.101788>,  <39.482563, 36.173183, 34.949337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595257, 36.320354, 35.101788>,  <39.783081, 36.565636, 35.355873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595257, 36.320354, 35.101788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435522, 0.464961, -0.770800,
		0.768006, -0.638585, 0.048737,
		-0.469561, -0.613205, -0.635211,
		39.454388, 36.136395, 34.911224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372341, 36.274658, 34.963848>,  <39.783081, 36.565636, 35.355873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372341, 36.274658, 34.963848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030579, 36.268082, 34.756111>,  <39.825520, 36.264137, 34.631470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030579, 36.268082, 34.756111>,  <40.372341, 36.274658, 34.963848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030579, 36.268082, 34.756111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419161, 0.568859, -0.707604,
		0.307064, -0.822271, -0.479148,
		-0.854410, -0.016439, -0.519340,
		39.774258, 36.263149, 34.600307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601509, 36.020760, 34.239487>,  <40.372341, 36.274658, 34.963848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601509, 36.020760, 34.239487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253746, 36.218307, 34.233578>,  <40.045086, 36.336838, 34.230034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253746, 36.218307, 34.233578>,  <40.601509, 36.020760, 34.239487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253746, 36.218307, 34.233578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342853, 0.581493, -0.737779,
		-0.355778, -0.646497, -0.674881,
		-0.869410, 0.493870, -0.014771,
		39.992924, 36.366470, 34.229145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266850, 35.985065, 34.514721>,  <40.601509, 36.020760, 34.239487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266850, 35.985065, 34.514721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461063, 35.840366, 34.196377>,  <41.577591, 35.753548, 34.005371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461063, 35.840366, 34.196377>,  <41.266850, 35.985065, 34.514721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461063, 35.840366, 34.196377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046214, -0.898475, 0.436585,
		-0.872993, -0.248759, -0.419526,
		0.485538, -0.361748, -0.795859,
		41.606724, 35.731842, 33.957619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.914921, 35.386753, 34.223804>,  <41.266850, 35.985065, 34.514721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.914921, 35.386753, 34.223804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.294548, 35.356968, 34.101345>,  <41.522324, 35.339096, 34.027870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.294548, 35.356968, 34.101345>,  <40.914921, 35.386753, 34.223804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.294548, 35.356968, 34.101345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043736, -0.931135, 0.362043,
		-0.312025, -0.356992, -0.880453,
		0.949067, -0.074459, -0.306150,
		41.579269, 35.334629, 34.009499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124241, 34.947559, 33.683289>,  <40.914921, 35.386753, 34.223804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124241, 34.947559, 33.683289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.383400, 34.999355, 33.983543>,  <41.538895, 35.030434, 34.163696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.383400, 34.999355, 33.983543>,  <41.124241, 34.947559, 33.683289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.383400, 34.999355, 33.983543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023558, -0.981567, 0.189661,
		0.761361, -0.140565, -0.632906,
		0.647900, 0.129491, 0.750639,
		41.577770, 35.038204, 34.208736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676003, 34.503620, 33.500500>,  <41.124241, 34.947559, 33.683289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676003, 34.503620, 33.500500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721176, 34.566319, 33.892963>,  <41.748280, 34.603939, 34.128441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.721176, 34.566319, 33.892963>,  <41.676003, 34.503620, 33.500500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.721176, 34.566319, 33.892963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253619, -0.959315, 0.124067,
		0.960689, 0.234830, -0.148093,
		0.112933, 0.156749, 0.981160,
		41.755054, 34.613342, 34.187313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375221, 34.126720, 33.670349>,  <41.676003, 34.503620, 33.500500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375221, 34.126720, 33.670349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.132957, 34.216557, 33.975697>,  <41.987598, 34.270458, 34.158905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.132957, 34.216557, 33.975697>,  <42.375221, 34.126720, 33.670349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.132957, 34.216557, 33.975697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118211, -0.923303, 0.365428,
		0.786894, 0.311564, 0.532659,
		-0.605660, 0.224587, 0.763372,
		41.951260, 34.283932, 34.204708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.531242, 33.735008, 34.238403>,  <42.375221, 34.126720, 33.670349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.531242, 33.735008, 34.238403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.187965, 33.840237, 34.414722>,  <41.981998, 33.903374, 34.520515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.187965, 33.840237, 34.414722>,  <42.531242, 33.735008, 34.238403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.187965, 33.840237, 34.414722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009738, -0.866888, 0.498407,
		0.513243, 0.423435, 0.746515,
		-0.858188, 0.263073, 0.440801,
		41.930508, 33.919159, 34.546963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.517319, 33.678177, 34.997784>,  <42.531242, 33.735008, 34.238403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.517319, 33.678177, 34.997784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.152275, 33.633438, 34.840485>,  <41.933250, 33.606594, 34.746105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.152275, 33.633438, 34.840485>,  <42.517319, 33.678177, 34.997784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.152275, 33.633438, 34.840485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030757, -0.940345, 0.338828,
		-0.407685, 0.321311, 0.854723,
		-0.912604, -0.111847, -0.393247,
		41.878494, 33.599884, 34.722511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.071434, 33.414845, 35.495823>,  <42.517319, 33.678177, 34.997784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.071434, 33.414845, 35.495823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.983059, 33.778946, 35.355755>,  <42.930035, 33.997406, 35.271713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.983059, 33.778946, 35.355755>,  <43.071434, 33.414845, 35.495823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.983059, 33.778946, 35.355755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034934, 0.366198, 0.929881,
		0.974663, 0.193210, -0.112704,
		-0.220935, 0.910258, -0.350170,
		42.916779, 34.052025, 35.250706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.517376, 33.034752, 36.079166>,  <43.071434, 33.414845, 35.495823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.517376, 33.034752, 36.079166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.882221, 32.879219, 36.131111>,  <44.101128, 32.785900, 36.162277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.882221, 32.879219, 36.131111>,  <43.517376, 33.034752, 36.079166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.882221, 32.879219, 36.131111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338313, -0.892869, -0.297202,
		0.231511, 0.227148, -0.945942,
		0.912111, -0.388830, 0.129862,
		44.155853, 32.762569, 36.170071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484226, 32.563995, 35.543209>,  <43.517376, 33.034752, 36.079166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.484226, 32.563995, 35.543209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.788166, 32.471664, 35.786304>,  <43.970531, 32.416267, 35.932163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.788166, 32.471664, 35.786304>,  <43.484226, 32.563995, 35.543209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.788166, 32.471664, 35.786304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207129, -0.972083, -0.110237,
		0.616219, -0.042117, -0.786448,
		0.759850, -0.230826, 0.607739,
		44.016121, 32.402416, 35.968628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.001945, 32.025734, 35.256649>,  <43.484226, 32.563995, 35.543209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.001945, 32.025734, 35.256649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.997978, 31.996592, 35.655567>,  <43.995598, 31.979105, 35.894917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.997978, 31.996592, 35.655567>,  <44.001945, 32.025734, 35.256649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.997978, 31.996592, 35.655567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338591, -0.938182, -0.071907,
		0.940881, -0.338387, -0.015367,
		-0.009916, -0.072859, 0.997293,
		43.995003, 31.974733, 35.954754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.279701, 31.350348, 35.458138>,  <44.001945, 32.025734, 35.256649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.279701, 31.350348, 35.458138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.060135, 31.459204, 35.774273>,  <43.928394, 31.524517, 35.963955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.060135, 31.459204, 35.774273>,  <44.279701, 31.350348, 35.458138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.060135, 31.459204, 35.774273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447947, -0.894054, -0.003259,
		0.705716, -0.355818, 0.612665,
		-0.548915, 0.272141, 0.790336,
		43.895462, 31.540846, 36.011375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.232105, 30.754116, 35.782024>,  <44.279701, 31.350348, 35.458138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.232105, 30.754116, 35.782024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.939907, 30.935961, 35.985870>,  <43.764587, 31.045069, 36.108177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.939907, 30.935961, 35.985870>,  <44.232105, 30.754116, 35.782024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.939907, 30.935961, 35.985870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550177, -0.833846, -0.044786,
		0.404578, -0.313093, 0.859238,
		-0.730494, 0.454613, 0.509613,
		43.720760, 31.072344, 36.138756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.934452, 30.264883, 36.298061>,  <44.232105, 30.754116, 35.782024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.934452, 30.264883, 36.298061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657497, 30.551540, 36.264553>,  <43.491325, 30.723536, 36.244446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.657497, 30.551540, 36.264553>,  <43.934452, 30.264883, 36.298061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.657497, 30.551540, 36.264553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717517, -0.696108, -0.024576,
		-0.075927, 0.043093, 0.996182,
		-0.692391, 0.716643, -0.083773,
		43.449780, 30.766533, 36.239422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.476051, 30.089931, 36.790154>,  <43.934452, 30.264883, 36.298061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.476051, 30.089931, 36.790154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.278454, 30.349146, 36.558285>,  <43.159893, 30.504675, 36.419163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.278454, 30.349146, 36.558285>,  <43.476051, 30.089931, 36.790154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.278454, 30.349146, 36.558285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675080, -0.706028, -0.213989,
		-0.547936, 0.285614, 0.786251,
		-0.493997, 0.648035, -0.579670,
		43.130253, 30.543556, 36.384384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.909691, 30.055288, 37.055157>,  <43.476051, 30.089931, 36.790154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.909691, 30.055288, 37.055157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.847824, 30.179739, 36.680077>,  <42.810703, 30.254410, 36.455029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.847824, 30.179739, 36.680077>,  <42.909691, 30.055288, 37.055157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.847824, 30.179739, 36.680077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649737, -0.747026, -0.140689,
		-0.744256, 0.587497, 0.317695,
		-0.154672, 0.311127, -0.937697,
		42.801422, 30.273077, 36.398766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.195602, 30.100813, 36.899776>,  <42.909691, 30.055288, 37.055157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.195602, 30.100813, 36.899776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.358025, 30.100031, 36.534237>,  <42.455479, 30.099562, 36.314915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.358025, 30.100031, 36.534237>,  <42.195602, 30.100813, 36.899776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.358025, 30.100031, 36.534237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808841, -0.466184, -0.358396,
		-0.425322, 0.884685, -0.190875,
		0.406051, -0.001954, -0.913848,
		42.479839, 30.099445, 36.260082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616371, 30.103985, 36.366096>,  <42.195602, 30.100813, 36.899776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616371, 30.103985, 36.366096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934956, 30.016537, 36.140583>,  <42.126106, 29.964067, 36.005276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.934956, 30.016537, 36.140583>,  <41.616371, 30.103985, 36.366096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934956, 30.016537, 36.140583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575861, -0.558683, -0.596874,
		-0.184489, 0.800049, -0.570864,
		0.796460, -0.218621, -0.563787,
		42.173893, 29.950951, 35.971447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352196, 30.175489, 35.663013>,  <41.616371, 30.103985, 36.366096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352196, 30.175489, 35.663013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666138, 29.929304, 35.634148>,  <41.854504, 29.781593, 35.616829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666138, 29.929304, 35.634148>,  <41.352196, 30.175489, 35.663013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.666138, 29.929304, 35.634148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589097, -0.704909, -0.395054,
		0.192270, 0.352574, -0.915819,
		0.784855, -0.615463, -0.072167,
		41.901592, 29.744665, 35.612499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283623, 29.900156, 34.975475>,  <41.352196, 30.175489, 35.663013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283623, 29.900156, 34.975475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530357, 29.644608, 35.159370>,  <41.678398, 29.491278, 35.269707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.530357, 29.644608, 35.159370>,  <41.283623, 29.900156, 34.975475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530357, 29.644608, 35.159370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609350, -0.757326, -0.234840,
		0.498201, -0.135281, -0.856443,
		0.616837, -0.638871, 0.459734,
		41.715408, 29.452946, 35.297291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.359795, 29.358234, 34.445221>,  <41.283623, 29.900156, 34.975475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.359795, 29.358234, 34.445221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438805, 29.224731, 34.813915>,  <41.486210, 29.144630, 35.035130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.438805, 29.224731, 34.813915>,  <41.359795, 29.358234, 34.445221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.438805, 29.224731, 34.813915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557467, -0.811665, -0.174440,
		0.806359, -0.479380, -0.346382,
		0.197523, -0.333758, 0.921732,
		41.498062, 29.124603, 35.090435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761852, 28.774988, 34.422318>,  <41.359795, 29.358234, 34.445221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761852, 28.774988, 34.422318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.562969, 28.759544, 34.769028>,  <41.443638, 28.750278, 34.977055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.562969, 28.759544, 34.769028>,  <41.761852, 28.774988, 34.422318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.562969, 28.759544, 34.769028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326935, -0.917034, -0.228389,
		0.803677, -0.396935, 0.443334,
		-0.497208, -0.038610, 0.866772,
		41.413807, 28.747961, 35.029060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839123, 28.148781, 34.695374>,  <41.761852, 28.774988, 34.422318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839123, 28.148781, 34.695374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536900, 28.248800, 34.937569>,  <41.355568, 28.308811, 35.082886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.536900, 28.248800, 34.937569>,  <41.839123, 28.148781, 34.695374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536900, 28.248800, 34.937569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352310, -0.934337, -0.053777,
		0.552282, -0.253950, 0.794036,
		-0.755554, 0.250047, 0.605487,
		41.310234, 28.323814, 35.119213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449951, 27.606859, 34.684750>,  <41.839123, 28.148781, 34.695374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.449951, 27.606859, 34.684750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180836, 27.804565, 34.904953>,  <41.019367, 27.923189, 35.037075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.180836, 27.804565, 34.904953>,  <41.449951, 27.606859, 34.684750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.180836, 27.804565, 34.904953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656322, -0.742165, -0.135766,
		0.341462, -0.452650, 0.823718,
		-0.672789, 0.494266, 0.550505,
		40.979000, 27.952845, 35.070103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128788, 27.119692, 35.207588>,  <41.449951, 27.606859, 34.684750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128788, 27.119692, 35.207588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.863251, 27.411945, 35.143730>,  <40.703926, 27.587297, 35.105415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.863251, 27.411945, 35.143730>,  <41.128788, 27.119692, 35.207588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863251, 27.411945, 35.143730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729169, -0.679766, -0.078942,
		-0.166197, 0.064002, 0.984013,
		-0.663846, 0.730632, -0.159643,
		40.664097, 27.631134, 35.095837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480186, 26.941677, 35.591930>,  <41.128788, 27.119692, 35.207588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480186, 26.941677, 35.591930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402012, 27.200527, 35.297169>,  <40.355106, 27.355837, 35.120312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402012, 27.200527, 35.297169>,  <40.480186, 26.941677, 35.591930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402012, 27.200527, 35.297169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763579, -0.571930, -0.299738,
		-0.615428, 0.504109, 0.605906,
		-0.195434, 0.647125, -0.736909,
		40.343380, 27.394665, 35.076096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724564, 27.046980, 35.555477>,  <40.480186, 26.941677, 35.591930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724564, 27.046980, 35.555477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812984, 27.228861, 35.210365>,  <39.866035, 27.337990, 35.003300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812984, 27.228861, 35.210365>,  <39.724564, 27.046980, 35.555477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812984, 27.228861, 35.210365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775694, -0.454245, -0.438133,
		-0.591132, 0.766099, 0.252299,
		0.221048, 0.454702, -0.862777,
		39.879299, 27.365271, 34.951530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072319, 27.300982, 35.251881>,  <39.724564, 27.046980, 35.555477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072319, 27.300982, 35.251881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325897, 27.275993, 34.943539>,  <39.478043, 27.261000, 34.758533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.325897, 27.275993, 34.943539>,  <39.072319, 27.300982, 35.251881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325897, 27.275993, 34.943539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706879, -0.451168, -0.544766,
		-0.313752, 0.890249, -0.330174,
		0.633942, -0.062472, -0.770854,
		39.516079, 27.257252, 34.712284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563747, 27.364443, 34.715981>,  <39.072319, 27.300982, 35.251881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563747, 27.364443, 34.715981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872162, 27.187191, 34.533054>,  <39.057209, 27.080839, 34.423298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872162, 27.187191, 34.533054>,  <38.563747, 27.364443, 34.715981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872162, 27.187191, 34.533054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636150, -0.503814, -0.584366,
		0.028549, 0.741489, -0.670358,
		0.771037, -0.443132, -0.457315,
		39.103474, 27.054251, 34.395859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391121, 27.498724, 34.004002>,  <38.563747, 27.364443, 34.715981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391121, 27.498724, 34.004002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649708, 27.199495, 34.063957>,  <38.804859, 27.019958, 34.099930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649708, 27.199495, 34.063957>,  <38.391121, 27.498724, 34.004002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649708, 27.199495, 34.063957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613517, -0.626509, -0.480711,
		0.453511, 0.218807, -0.863974,
		0.646470, -0.748071, 0.149888,
		38.843647, 26.975075, 34.108925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759922, 26.970015, 33.496826>,  <38.391121, 27.498724, 34.004002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759922, 26.970015, 33.496826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872303, 27.142904, 33.154072>,  <38.939732, 27.246637, 32.948421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.872303, 27.142904, 33.154072>,  <38.759922, 26.970015, 33.496826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872303, 27.142904, 33.154072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871353, -0.489106, 0.038987,
		-0.402255, -0.757601, -0.514034,
		0.280954, 0.432222, -0.856883,
		38.956589, 27.272572, 32.897007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096024, 27.365589, 33.270779>,  <38.759922, 26.970015, 33.496826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096024, 27.365589, 33.270779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921265, 27.702820, 33.396217>,  <37.816410, 27.905157, 33.471481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921265, 27.702820, 33.396217>,  <38.096024, 27.365589, 33.270779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921265, 27.702820, 33.396217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429155, 0.501760, -0.751041,
		-0.790535, -0.193546, -0.581028,
		-0.436898, 0.843076, 0.313598,
		37.790195, 27.955742, 33.490295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598358, 27.808784, 32.770748>,  <38.096024, 27.365589, 33.270779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598358, 27.808784, 32.770748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824924, 28.033464, 33.011967>,  <37.960865, 28.168272, 33.156696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824924, 28.033464, 33.011967>,  <37.598358, 27.808784, 32.770748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824924, 28.033464, 33.011967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477435, 0.372787, -0.795667,
		-0.671733, 0.738595, -0.057022,
		0.566418, 0.561700, 0.603045,
		37.994850, 28.201975, 33.192879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.813866, 28.385897, 32.411697>,  <37.598358, 27.808784, 32.770748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.813866, 28.385897, 32.411697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069847, 28.369843, 32.718643>,  <38.223434, 28.360210, 32.902809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069847, 28.369843, 32.718643>,  <37.813866, 28.385897, 32.411697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069847, 28.369843, 32.718643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686222, 0.479218, -0.547219,
		-0.345771, 0.876778, 0.334220,
		0.639954, -0.040137, 0.767364,
		38.261833, 28.357801, 32.948853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080269, 29.116510, 32.570248>,  <37.813866, 28.385897, 32.411697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080269, 29.116510, 32.570248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323067, 28.808081, 32.647198>,  <38.468746, 28.623022, 32.693367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323067, 28.808081, 32.647198>,  <38.080269, 29.116510, 32.570248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323067, 28.808081, 32.647198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675525, 0.373110, -0.635968,
		0.418602, 0.515979, 0.747354,
		0.606991, -0.771074, 0.192372,
		38.505165, 28.576759, 32.704910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204880, 29.007698, 31.792065>,  <38.080269, 29.116510, 32.570248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.204880, 29.007698, 31.792065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379292, 29.020977, 31.432337>,  <38.483936, 29.028944, 31.216499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379292, 29.020977, 31.432337>,  <38.204880, 29.007698, 31.792065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379292, 29.020977, 31.432337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654029, 0.674743, 0.342006,
		0.618164, -0.737306, 0.272495,
		0.436027, 0.033196, -0.899322,
		38.510098, 29.030935, 31.162540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953465, 28.604427, 31.723734>,  <38.204880, 29.007698, 31.792065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953465, 28.604427, 31.723734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875572, 28.941706, 31.523294>,  <38.828838, 29.144072, 31.403030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875572, 28.941706, 31.523294>,  <38.953465, 28.604427, 31.723734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875572, 28.941706, 31.523294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695543, 0.478924, 0.535586,
		0.691592, -0.244242, -0.679740,
		-0.194731, 0.843195, -0.501101,
		38.817154, 29.194664, 31.372965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572651, 28.926174, 31.304665>,  <38.953465, 28.604427, 31.723734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572651, 28.926174, 31.304665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314594, 29.174665, 31.482595>,  <39.159760, 29.323761, 31.589354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314594, 29.174665, 31.482595>,  <39.572651, 28.926174, 31.304665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314594, 29.174665, 31.482595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755927, 0.434201, 0.489943,
		0.111222, 0.652339, -0.749723,
		-0.645139, 0.621228, 0.444828,
		39.121052, 29.361034, 31.616043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806057, 29.635389, 31.114817>,  <39.572651, 28.926174, 31.304665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806057, 29.635389, 31.114817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584785, 29.616035, 31.447479>,  <39.452023, 29.604424, 31.647078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.584785, 29.616035, 31.447479>,  <39.806057, 29.635389, 31.114817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.584785, 29.616035, 31.447479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621486, 0.640822, 0.450668,
		-0.554750, 0.766163, -0.324418,
		-0.553179, -0.048387, 0.831656,
		39.418831, 29.601519, 31.696976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614700, 30.349712, 31.293745>,  <39.806057, 29.635389, 31.114817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614700, 30.349712, 31.293745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645943, 30.082666, 31.589905>,  <39.664688, 29.922438, 31.767601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645943, 30.082666, 31.589905>,  <39.614700, 30.349712, 31.293745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645943, 30.082666, 31.589905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700555, 0.565151, 0.435691,
		-0.709311, 0.484658, 0.511845,
		0.078108, -0.667616, 0.740397,
		39.669376, 29.882381, 31.812023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669971, 30.742756, 31.918411>,  <39.614700, 30.349712, 31.293745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669971, 30.742756, 31.918411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821194, 30.389936, 32.030888>,  <39.911926, 30.178246, 32.098373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821194, 30.389936, 32.030888>,  <39.669971, 30.742756, 31.918411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821194, 30.389936, 32.030888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657759, 0.469652, 0.588881,
		-0.651482, -0.037675, 0.757728,
		0.378054, -0.882048, 0.281189,
		39.934608, 30.125322, 32.115246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673676, 30.756905, 32.630882>,  <39.669971, 30.742756, 31.918411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673676, 30.756905, 32.630882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946690, 30.479824, 32.537663>,  <40.110497, 30.313576, 32.481731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946690, 30.479824, 32.537663>,  <39.673676, 30.756905, 32.630882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946690, 30.479824, 32.537663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644089, 0.419410, 0.639722,
		-0.345393, -0.586737, 0.732423,
		0.682534, -0.692701, -0.233050,
		40.151451, 30.272015, 32.467747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068085, 30.636108, 33.245087>,  <39.673676, 30.756905, 32.630882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068085, 30.636108, 33.245087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302124, 30.473976, 32.964127>,  <40.442547, 30.376698, 32.795551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302124, 30.473976, 32.964127>,  <40.068085, 30.636108, 33.245087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302124, 30.473976, 32.964127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807287, 0.373485, 0.456942,
		0.077124, -0.834396, 0.545742,
		0.585098, -0.405329, -0.702402,
		40.477654, 30.352377, 32.753407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699326, 30.195980, 33.548752>,  <40.068085, 30.636108, 33.245087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699326, 30.195980, 33.548752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791206, 30.349770, 33.191109>,  <40.846333, 30.442043, 32.976524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791206, 30.349770, 33.191109>,  <40.699326, 30.195980, 33.548752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791206, 30.349770, 33.191109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778610, 0.478608, 0.405832,
		0.583956, -0.789377, -0.189418,
		0.229698, 0.384471, -0.894103,
		40.860115, 30.465111, 32.922878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.378750, 29.999788, 33.397499>,  <40.699326, 30.195980, 33.548752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.378750, 29.999788, 33.397499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339252, 30.314600, 33.153912>,  <41.315556, 30.503487, 33.007759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.339252, 30.314600, 33.153912>,  <41.378750, 29.999788, 33.397499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.339252, 30.314600, 33.153912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911219, 0.317443, 0.262508,
		0.399912, -0.528979, -0.748500,
		-0.098744, 0.787027, -0.608964,
		41.309628, 30.550709, 32.971222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.999672, 30.114824, 33.074059>,  <41.378750, 29.999788, 33.397499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.999672, 30.114824, 33.074059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.824745, 30.466265, 32.997311>,  <41.719791, 30.677130, 32.951263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.824745, 30.466265, 32.997311>,  <41.999672, 30.114824, 33.074059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.824745, 30.466265, 32.997311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828311, 0.476601, 0.294538,
		0.350226, -0.030119, -0.936181,
		-0.437314, 0.878603, -0.191866,
		41.693550, 30.729845, 32.939751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.522778, 30.556715, 32.742195>,  <41.999672, 30.114824, 33.074059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.522778, 30.556715, 32.742195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.248646, 30.805422, 32.893841>,  <42.084167, 30.954647, 32.984829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.248646, 30.805422, 32.893841>,  <42.522778, 30.556715, 32.742195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.248646, 30.805422, 32.893841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718968, 0.494920, 0.487995,
		0.115789, 0.607007, -0.786215,
		-0.685331, 0.621768, 0.379112,
		42.043045, 30.991953, 33.007576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.768097, 31.194723, 32.534439>,  <42.522778, 30.556715, 32.742195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.768097, 31.194723, 32.534439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534470, 31.239002, 32.856087>,  <42.394295, 31.265570, 33.049076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534470, 31.239002, 32.856087>,  <42.768097, 31.194723, 32.534439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.534470, 31.239002, 32.856087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708240, 0.553487, 0.438233,
		-0.396560, 0.825468, -0.401674,
		-0.584069, 0.110696, 0.804121,
		42.359249, 31.272211, 33.097324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.572556, 31.923038, 32.475666>,  <42.768097, 31.194723, 32.534439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.572556, 31.923038, 32.475666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.507328, 31.830160, 32.859226>,  <42.468193, 31.774433, 33.089363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.507328, 31.830160, 32.859226>,  <42.572556, 31.923038, 32.475666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.507328, 31.830160, 32.859226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707218, 0.650172, 0.277704,
		-0.687933, 0.723438, 0.058190,
		-0.163068, -0.232195, 0.958903,
		42.458408, 31.760502, 33.146896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.690159, 32.522465, 32.798267>,  <42.572556, 31.923038, 32.475666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.690159, 32.522465, 32.798267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.710663, 32.266514, 33.104973>,  <42.722965, 32.112946, 33.288998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.710663, 32.266514, 33.104973>,  <42.690159, 32.522465, 32.798267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.710663, 32.266514, 33.104973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804057, 0.481825, 0.348335,
		-0.592338, 0.598668, 0.539195,
		0.051261, -0.639876, 0.766767,
		42.726040, 32.074551, 33.335003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.877651, 33.033516, 33.321678>,  <42.690159, 32.522465, 32.798267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.877651, 33.033516, 33.321678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955959, 32.664581, 33.454926>,  <43.002945, 32.443218, 33.534874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955959, 32.664581, 33.454926>,  <42.877651, 33.033516, 33.321678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955959, 32.664581, 33.454926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868650, 0.320745, 0.377586,
		-0.455107, 0.215440, 0.863981,
		0.195770, -0.922339, 0.333115,
		43.014690, 32.387878, 33.554859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.180912, 33.219013, 33.912300>,  <42.877651, 33.033516, 33.321678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.180912, 33.219013, 33.912300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.304768, 32.846180, 33.837097>,  <43.379082, 32.622478, 33.791977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.304768, 32.846180, 33.837097>,  <43.180912, 33.219013, 33.912300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.304768, 32.846180, 33.837097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897956, 0.221609, 0.380216,
		-0.312730, -0.286547, 0.905589,
		0.309637, -0.932084, -0.188003,
		43.397659, 32.566555, 33.780697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.407860, 32.953362, 34.511833>,  <43.180912, 33.219013, 33.912300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.407860, 32.953362, 34.511833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.611080, 32.751759, 34.232445>,  <43.733013, 32.630798, 34.064812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.611080, 32.751759, 34.232445>,  <43.407860, 32.953362, 34.511833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.611080, 32.751759, 34.232445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857754, 0.222262, 0.463527,
		-0.078374, -0.834614, 0.545232,
		0.508050, -0.504003, -0.698474,
		43.763496, 32.600559, 34.022903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.013168, 32.782230, 34.848209>,  <43.407860, 32.953362, 34.511833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.013168, 32.782230, 34.848209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.101910, 32.704338, 34.466034>,  <44.155155, 32.657604, 34.236729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.101910, 32.704338, 34.466034>,  <44.013168, 32.782230, 34.848209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.101910, 32.704338, 34.466034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970472, 0.139255, 0.196960,
		0.094696, -0.970922, 0.219873,
		0.221851, -0.194729, -0.955438,
		44.168465, 32.645920, 34.179401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.628468, 32.293056, 34.786396>,  <44.013168, 32.782230, 34.848209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.628468, 32.293056, 34.786396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.605087, 32.478973, 34.433002>,  <44.591057, 32.590523, 34.220966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.605087, 32.478973, 34.433002>,  <44.628468, 32.293056, 34.786396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.605087, 32.478973, 34.433002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968147, 0.242227, 0.063380,
		0.243463, -0.851640, -0.464149,
		-0.058453, 0.464795, -0.883487,
		44.587551, 32.618412, 34.167957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.114487, 31.972591, 34.373558>,  <44.628468, 32.293056, 34.786396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.114487, 31.972591, 34.373558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.049683, 32.338078, 34.224491>,  <45.010799, 32.557369, 34.135052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.049683, 32.338078, 34.224491>,  <45.114487, 31.972591, 34.373558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.049683, 32.338078, 34.224491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973027, 0.210770, 0.093774,
		0.164228, -0.347419, -0.923217,
		-0.162008, 0.913716, -0.372662,
		45.001080, 32.612194, 34.112694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.642704, 32.123112, 33.813614>,  <45.114487, 31.972591, 34.373558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.642704, 32.123112, 33.813614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.506691, 32.467648, 33.964592>,  <45.425083, 32.674370, 34.055180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.506691, 32.467648, 33.964592>,  <45.642704, 32.123112, 33.813614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.506691, 32.467648, 33.964592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930170, 0.367130, 0.000176,
		-0.138420, 0.351148, -0.926032,
		-0.340036, 0.861342, 0.377445,
		45.404682, 32.726051, 34.077824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.987953, 32.668007, 33.416855>,  <45.642704, 32.123112, 33.813614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.987953, 32.668007, 33.416855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.848534, 32.831974, 33.754013>,  <45.764881, 32.930355, 33.956310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.848534, 32.831974, 33.754013>,  <45.987953, 32.668007, 33.416855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.848534, 32.831974, 33.754013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924344, 0.299287, 0.236676,
		-0.155250, 0.861621, -0.483225,
		-0.348548, 0.409922, 0.842899,
		45.743969, 32.954952, 34.006882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.522598, 33.132980, 33.589146>,  <45.987953, 32.668007, 33.416855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.522598, 33.132980, 33.589146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.317513, 33.146114, 33.932316>,  <46.194462, 33.153996, 34.138218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.317513, 33.146114, 33.932316>,  <46.522598, 33.132980, 33.589146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.317513, 33.146114, 33.932316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794380, 0.397227, 0.459533,
		-0.325703, 0.917133, -0.229751,
		-0.512716, 0.032838, 0.857930,
		46.163696, 33.155968, 34.189693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.399204, 33.820747, 33.829628>,  <46.522598, 33.132980, 33.589146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.399204, 33.820747, 33.829628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.439339, 33.577187, 34.144379>,  <46.463421, 33.431049, 34.333229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.439339, 33.577187, 34.144379>,  <46.399204, 33.820747, 33.829628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.439339, 33.577187, 34.144379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727317, 0.584553, 0.359593,
		-0.678927, 0.536228, 0.501516,
		0.100339, -0.608899, 0.786876,
		46.469440, 33.394516, 34.380440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.407181, 34.204006, 34.518044>,  <46.399204, 33.820747, 33.829628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.407181, 34.204006, 34.518044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.643719, 33.881458, 34.514523>,  <46.785641, 33.687931, 34.512409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.643719, 33.881458, 34.514523>,  <46.407181, 34.204006, 34.518044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.643719, 33.881458, 34.514523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772825, 0.563561, 0.291789,
		-0.230329, -0.179350, 0.956442,
		0.591346, -0.806370, -0.008802,
		46.821121, 33.639545, 34.511883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.771900, 34.115326, 35.182396>,  <46.407181, 34.204006, 34.518044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.771900, 34.115326, 35.182396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.989597, 33.990822, 34.870773>,  <47.120216, 33.916119, 34.683800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.989597, 33.990822, 34.870773>,  <46.771900, 34.115326, 35.182396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.989597, 33.990822, 34.870773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761332, 0.573308, 0.302805,
		0.352387, -0.757916, 0.548987,
		0.544240, -0.311257, -0.779052,
		47.152870, 33.897446, 34.637058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.961155, 34.782825, 34.870739>,  <46.771900, 34.115326, 35.182396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.961155, 34.782825, 34.870739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.703369, 34.981525, 34.638222>,  <46.548698, 35.100746, 34.498711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.703369, 34.981525, 34.638222>,  <46.961155, 34.782825, 34.870739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.703369, 34.981525, 34.638222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744561, -0.234645, 0.624956,
		0.174051, 0.835571, 0.521083,
		-0.644465, 0.496753, -0.581294,
		46.510029, 35.130550, 34.463833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.478180, 34.982674, 35.251926>,  <46.961155, 34.782825, 34.870739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.478180, 34.982674, 35.251926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.805267, 35.132175, 35.076813>,  <48.001518, 35.221874, 34.971745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.805267, 35.132175, 35.076813>,  <47.478180, 34.982674, 35.251926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.805267, 35.132175, 35.076813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565202, 0.377275, -0.733628,
		-0.109029, 0.847333, 0.519748,
		0.817716, 0.373750, -0.437780,
		48.050583, 35.244301, 34.945480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.816074, 36.146774, 43.125080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.439743, 36.038345, 43.043728>,  <33.213943, 35.973286, 42.994919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.439743, 36.038345, 43.043728>,  <33.816074, 36.146774, 43.125080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439743, 36.038345, 43.043728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070038, 0.431645, -0.899321,
		0.331571, -0.860350, -0.387117,
		-0.940827, -0.271076, -0.203378,
		33.157494, 35.957024, 42.982716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746964, 35.766346, 42.497707>,  <33.816074, 36.146774, 43.125080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746964, 35.766346, 42.497707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.384403, 35.930595, 42.537373>,  <33.166866, 36.029144, 42.561172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.384403, 35.930595, 42.537373>,  <33.746964, 35.766346, 42.497707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384403, 35.930595, 42.537373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091987, 0.420983, -0.902392,
		-0.412288, -0.808804, -0.419350,
		-0.906398, 0.410621, 0.099167,
		33.112484, 36.053783, 42.567123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477417, 35.644302, 41.921551>,  <33.746964, 35.766346, 42.497707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477417, 35.644302, 41.921551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.246273, 35.930016, 42.079479>,  <33.107586, 36.101444, 42.174236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.246273, 35.930016, 42.079479>,  <33.477417, 35.644302, 41.921551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246273, 35.930016, 42.079479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054554, 0.448883, -0.891924,
		-0.814313, -0.536943, -0.220422,
		-0.577856, 0.714281, 0.394824,
		33.072918, 36.144299, 42.197926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919014, 35.639545, 41.524609>,  <33.477417, 35.644302, 41.921551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919014, 35.639545, 41.524609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.972569, 36.001053, 41.687229>,  <33.004700, 36.217957, 41.784801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.972569, 36.001053, 41.687229>,  <32.919014, 35.639545, 41.524609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972569, 36.001053, 41.687229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105627, 0.420920, -0.900927,
		-0.985352, 0.077677, 0.151817,
		0.133884, 0.903765, 0.406550,
		33.012733, 36.272182, 41.809193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533806, 36.086628, 41.101105>,  <32.919014, 35.639545, 41.524609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533806, 36.086628, 41.101105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.760986, 36.349754, 41.298981>,  <32.897293, 36.507629, 41.417706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.760986, 36.349754, 41.298981>,  <32.533806, 36.086628, 41.101105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760986, 36.349754, 41.298981> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063926, 0.563964, -0.823321,
		-0.820579, 0.499227, 0.278250,
		0.567947, 0.657813, 0.494690,
		32.931370, 36.547100, 41.447388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260124, 36.799622, 40.983658>,  <32.533806, 36.086628, 41.101105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260124, 36.799622, 40.983658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.644039, 36.833969, 41.090561>,  <32.874390, 36.854580, 41.154705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.644039, 36.833969, 41.090561>,  <32.260124, 36.799622, 40.983658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644039, 36.833969, 41.090561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159268, 0.617416, -0.770345,
		-0.231163, 0.781936, 0.578913,
		0.959790, 0.085873, 0.267261,
		32.931976, 36.859730, 41.170738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411022, 37.417248, 40.809982>,  <32.260124, 36.799622, 40.983658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411022, 37.417248, 40.809982> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.786903, 37.290066, 40.860355>,  <33.012432, 37.213757, 40.890579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.786903, 37.290066, 40.860355>,  <32.411022, 37.417248, 40.809982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786903, 37.290066, 40.860355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267890, 0.455493, -0.848977,
		0.212577, 0.831523, 0.513206,
		0.939705, -0.317956, 0.125929,
		33.068813, 37.194679, 40.898132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.868279, 37.946426, 40.581398>,  <32.411022, 37.417248, 40.809982>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.868279, 37.946426, 40.581398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.116379, 37.633301, 40.561420>,  <33.265240, 37.445427, 40.549435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.116379, 37.633301, 40.561420>,  <32.868279, 37.946426, 40.581398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116379, 37.633301, 40.561420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373901, 0.351026, -0.858474,
		0.689559, 0.513791, 0.510419,
		0.620247, -0.782815, -0.049946,
		33.302452, 37.398457, 40.546436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558521, 38.185341, 40.331703>,  <32.868279, 37.946426, 40.581398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558521, 38.185341, 40.331703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.544586, 37.794746, 40.246605>,  <33.536224, 37.560390, 40.195545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.544586, 37.794746, 40.246605>,  <33.558521, 38.185341, 40.331703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544586, 37.794746, 40.246605> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452644, 0.174370, -0.874476,
		0.891011, -0.126757, 0.435927,
		-0.034833, -0.976488, -0.212741,
		33.534138, 37.501801, 40.182781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184898, 38.088428, 40.159767>,  <33.558521, 38.185341, 40.331703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184898, 38.088428, 40.159767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.971127, 37.790462, 40.000019>,  <33.842865, 37.611683, 39.904171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.971127, 37.790462, 40.000019>,  <34.184898, 38.088428, 40.159767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971127, 37.790462, 40.000019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559661, 0.042204, -0.827647,
		0.633378, -0.665827, 0.394343,
		-0.534427, -0.744912, -0.399368,
		33.810799, 37.566990, 39.880207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764294, 37.651260, 39.885311>,  <34.184898, 38.088428, 40.159767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764294, 37.651260, 39.885311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.435196, 37.567299, 39.674019>,  <34.237736, 37.516922, 39.547245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.435196, 37.567299, 39.674019>,  <34.764294, 37.651260, 39.885311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435196, 37.567299, 39.674019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523736, 0.081162, -0.848006,
		0.220875, -0.974347, 0.043160,
		-0.822749, -0.209908, -0.528227,
		34.188370, 37.504326, 39.515553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105881, 37.365761, 39.347130>,  <34.764294, 37.651260, 39.885311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105881, 37.365761, 39.347130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.732540, 37.426365, 39.216957>,  <34.508537, 37.462727, 39.138851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.732540, 37.426365, 39.216957>,  <35.105881, 37.365761, 39.347130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732540, 37.426365, 39.216957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345265, 0.130743, -0.929354,
		-0.098259, -0.979771, -0.174340,
		-0.933347, 0.151511, -0.325434,
		34.452538, 37.471817, 39.119328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107231, 37.172203, 38.654743>,  <35.105881, 37.365761, 39.347130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107231, 37.172203, 38.654743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.801136, 37.429562, 38.663185>,  <34.617477, 37.583977, 38.668251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.801136, 37.429562, 38.663185>,  <35.107231, 37.172203, 38.654743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801136, 37.429562, 38.663185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317118, 0.405289, -0.857424,
		-0.560218, -0.649444, -0.514177,
		-0.765240, 0.643400, 0.021100,
		34.571564, 37.622581, 38.669514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734879, 37.128113, 37.993969>,  <35.107231, 37.172203, 38.654743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734879, 37.128113, 37.993969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.635269, 37.488358, 38.136448>,  <34.575504, 37.704506, 38.221935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.635269, 37.488358, 38.136448>,  <34.734879, 37.128113, 37.993969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635269, 37.488358, 38.136448> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045057, 0.378162, -0.924642,
		-0.967449, -0.214209, -0.134750,
		-0.249024, 0.900615, 0.356201,
		34.560562, 37.758541, 38.243309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287811, 37.387676, 37.571976>,  <34.734879, 37.128113, 37.993969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287811, 37.387676, 37.571976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.443726, 37.707424, 37.754875>,  <34.537273, 37.899273, 37.864613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.443726, 37.707424, 37.754875>,  <34.287811, 37.387676, 37.571976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443726, 37.707424, 37.754875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096849, 0.458182, -0.883566,
		-0.915800, 0.388683, 0.101173,
		0.389783, 0.799371, 0.457246,
		34.560661, 37.947235, 37.892048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.934582, 37.849152, 37.173553>,  <34.287811, 37.387676, 37.571976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.934582, 37.849152, 37.173553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.222782, 38.066288, 37.346157>,  <34.395702, 38.196571, 37.449718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.222782, 38.066288, 37.346157>,  <33.934582, 37.849152, 37.173553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.222782, 38.066288, 37.346157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173181, 0.461686, -0.869974,
		-0.671479, 0.701548, 0.238636,
		0.720503, 0.542841, 0.431507,
		34.438934, 38.229141, 37.475609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933609, 38.562172, 36.911755>,  <33.934582, 37.849152, 37.173553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933609, 38.562172, 36.911755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.300926, 38.479771, 37.046986>,  <34.521317, 38.430332, 37.128124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.300926, 38.479771, 37.046986>,  <33.933609, 38.562172, 36.911755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300926, 38.479771, 37.046986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394100, 0.394365, -0.830157,
		0.037685, 0.895567, 0.443328,
		0.918295, -0.206000, 0.338081,
		34.576416, 38.417969, 37.148411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255894, 39.167061, 36.601189>,  <33.933609, 38.562172, 36.911755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255894, 39.167061, 36.601189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.525543, 38.888500, 36.699646>,  <34.687332, 38.721363, 36.758720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.525543, 38.888500, 36.699646>,  <34.255894, 39.167061, 36.601189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525543, 38.888500, 36.699646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478933, 0.158426, -0.863438,
		0.562300, 0.699951, 0.440326,
		0.674123, -0.696398, 0.246147,
		34.727779, 38.679581, 36.773491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843544, 39.503082, 36.395958>,  <34.255894, 39.167061, 36.601189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843544, 39.503082, 36.395958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.942135, 39.116524, 36.425129>,  <35.001289, 38.884586, 36.442631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.942135, 39.116524, 36.425129>,  <34.843544, 39.503082, 36.395958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942135, 39.116524, 36.425129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567172, 0.082820, -0.819425,
		0.785852, 0.243337, 0.568528,
		0.246482, -0.966400, 0.072930,
		35.016079, 38.826603, 36.447006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508919, 39.558952, 36.265720>,  <34.843544, 39.503082, 36.395958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508919, 39.558952, 36.265720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.422787, 39.171555, 36.215672>,  <35.371109, 38.939117, 36.185642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.422787, 39.171555, 36.215672>,  <35.508919, 39.558952, 36.265720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422787, 39.171555, 36.215672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589991, -0.026920, -0.806961,
		0.778167, -0.247585, 0.577198,
		-0.215329, -0.968492, -0.125125,
		35.358189, 38.881008, 36.178135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166191, 39.187859, 36.138985>,  <35.508919, 39.558952, 36.265720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166191, 39.187859, 36.138985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.882668, 38.940807, 36.002674>,  <35.712555, 38.792576, 35.920887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.882668, 38.940807, 36.002674>,  <36.166191, 39.187859, 36.138985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882668, 38.940807, 36.002674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535339, -0.156403, -0.830030,
		0.459350, -0.770764, 0.441499,
		-0.708809, -0.617626, -0.340776,
		35.670025, 38.755520, 35.900440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386505, 38.477654, 35.986691>,  <36.166191, 39.187859, 36.138985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386505, 38.477654, 35.986691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.092342, 38.567974, 35.731133>,  <35.915844, 38.622166, 35.577797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.092342, 38.567974, 35.731133>,  <36.386505, 38.477654, 35.986691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092342, 38.567974, 35.731133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607791, -0.197057, -0.769258,
		-0.299600, -0.954034, 0.007676,
		-0.735411, 0.225804, -0.638892,
		35.871719, 38.635715, 35.539467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710152, 38.062443, 35.466743>,  <36.386505, 38.477654, 35.986691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710152, 38.062443, 35.466743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.106422, 38.015522, 35.439049>,  <37.344185, 37.987370, 35.422432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.106422, 38.015522, 35.439049>,  <36.710152, 38.062443, 35.466743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106422, 38.015522, 35.439049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007684, -0.459357, 0.888219,
		-0.135997, -0.880472, -0.454174,
		0.990680, -0.117305, -0.069236,
		37.403625, 37.980331, 35.418278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714039, 37.439415, 35.791134>,  <36.710152, 38.062443, 35.466743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714039, 37.439415, 35.791134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.081036, 37.598427, 35.796486>,  <37.301235, 37.693836, 35.799698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.081036, 37.598427, 35.796486>,  <36.714039, 37.439415, 35.791134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081036, 37.598427, 35.796486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099162, -0.261172, 0.960185,
		0.385199, -0.879634, -0.279043,
		0.917490, 0.397533, 0.013377,
		37.356281, 37.717686, 35.800499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091389, 36.974384, 36.218891>,  <36.714039, 37.439415, 35.791134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091389, 36.974384, 36.218891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.309650, 37.309437, 36.208843>,  <37.440609, 37.510468, 36.202816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.309650, 37.309437, 36.208843>,  <37.091389, 36.974384, 36.218891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309650, 37.309437, 36.208843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154191, -0.070889, 0.985495,
		0.823702, -0.541614, -0.167836,
		0.545655, 0.837633, -0.025121,
		37.473347, 37.560726, 36.201305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769192, 36.864384, 36.414650>,  <37.091389, 36.974384, 36.218891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769192, 36.864384, 36.414650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.698330, 37.252548, 36.480282>,  <37.655811, 37.485447, 36.519661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.698330, 37.252548, 36.480282>,  <37.769192, 36.864384, 36.414650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698330, 37.252548, 36.480282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381223, -0.086040, 0.920471,
		0.907350, 0.225621, -0.354699,
		-0.177159, 0.970408, 0.164080,
		37.645184, 37.543671, 36.529507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341915, 37.132568, 36.875557>,  <37.769192, 36.864384, 36.414650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341915, 37.132568, 36.875557> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.043549, 37.395405, 36.919079>,  <37.864529, 37.553108, 36.945190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.043549, 37.395405, 36.919079>,  <38.341915, 37.132568, 36.875557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043549, 37.395405, 36.919079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123917, -0.023594, 0.992012,
		0.654409, 0.753442, -0.063826,
		-0.745917, 0.657091, 0.108805,
		37.819775, 37.592533, 36.951721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.426491, 37.518753, 37.525379>,  <38.341915, 37.132568, 36.875557>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.426491, 37.518753, 37.525379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.061947, 37.646194, 37.421143>,  <37.843220, 37.722660, 37.358601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.061947, 37.646194, 37.421143>,  <38.426491, 37.518753, 37.525379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061947, 37.646194, 37.421143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255407, 0.058743, 0.965047,
		0.322778, 0.946065, 0.027838,
		-0.911362, 0.318606, -0.260592,
		37.788540, 37.741776, 37.342964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299713, 38.092602, 37.973255>,  <38.426491, 37.518753, 37.525379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299713, 38.092602, 37.973255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.962749, 37.908989, 37.860371>,  <37.760571, 37.798820, 37.792641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.962749, 37.908989, 37.860371>,  <38.299713, 38.092602, 37.973255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962749, 37.908989, 37.860371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317565, -0.000185, 0.948236,
		-0.435321, 0.888421, -0.145616,
		-0.842406, -0.459030, -0.282212,
		37.710026, 37.771278, 37.775707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678665, 38.364140, 38.320530>,  <38.299713, 38.092602, 37.973255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678665, 38.364140, 38.320530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.517662, 38.022923, 38.187683>,  <37.421059, 37.818192, 38.107975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.517662, 38.022923, 38.187683>,  <37.678665, 38.364140, 38.320530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517662, 38.022923, 38.187683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430367, -0.143871, 0.891115,
		-0.807941, 0.501616, -0.309212,
		-0.402511, -0.853043, -0.332118,
		37.396908, 37.767010, 38.088047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080288, 38.359203, 38.582069>,  <37.678665, 38.364140, 38.320530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080288, 38.359203, 38.582069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.093868, 37.973480, 38.477028>,  <37.102016, 37.742046, 38.414001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.093868, 37.973480, 38.477028>,  <37.080288, 38.359203, 38.582069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093868, 37.973480, 38.477028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472574, -0.247016, 0.845966,
		-0.880637, 0.095376, -0.464093,
		0.033953, -0.964306, -0.262603,
		37.104053, 37.684189, 38.398247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399063, 38.071049, 38.630398>,  <37.080288, 38.359203, 38.582069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399063, 38.071049, 38.630398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.656040, 37.766602, 38.666107>,  <36.810226, 37.583935, 38.687534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.656040, 37.766602, 38.666107>,  <36.399063, 38.071049, 38.630398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656040, 37.766602, 38.666107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405708, -0.238978, 0.882208,
		-0.650126, -0.602989, -0.462320,
		0.642446, -0.761113, 0.089272,
		36.848774, 37.538269, 38.692890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952911, 37.504997, 38.726654>,  <36.399063, 38.071049, 38.630398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952911, 37.504997, 38.726654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.316956, 37.435825, 38.877274>,  <36.535381, 37.394321, 38.967648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.316956, 37.435825, 38.877274>,  <35.952911, 37.504997, 38.726654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316956, 37.435825, 38.877274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413537, -0.321797, 0.851724,
		-0.026112, -0.930883, -0.364383,
		0.910113, -0.172926, 0.376552,
		36.589989, 37.383949, 38.990238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924000, 36.880249, 39.136848>,  <35.952911, 37.504997, 38.726654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924000, 36.880249, 39.136848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.264439, 37.028137, 39.285946>,  <36.468700, 37.116871, 39.375404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.264439, 37.028137, 39.285946>,  <35.924000, 36.880249, 39.136848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264439, 37.028137, 39.285946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170749, -0.476455, 0.862459,
		0.496466, -0.797683, -0.342380,
		0.851097, 0.369720, 0.372747,
		36.519768, 37.139053, 39.397770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364666, 36.317425, 39.303135>,  <35.924000, 36.880249, 39.136848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364666, 36.317425, 39.303135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.473255, 36.622055, 39.538525>,  <36.538410, 36.804832, 39.679760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.473255, 36.622055, 39.538525>,  <36.364666, 36.317425, 39.303135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473255, 36.622055, 39.538525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122866, -0.579014, 0.806007,
		0.954570, -0.291116, -0.063617,
		0.271476, 0.761574, 0.588478,
		36.554699, 36.850529, 39.715069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651028, 35.979050, 39.917316>,  <36.364666, 36.317425, 39.303135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651028, 35.979050, 39.917316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.621128, 36.359486, 40.037212>,  <36.603188, 36.587746, 40.109150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.621128, 36.359486, 40.037212>,  <36.651028, 35.979050, 39.917316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621128, 36.359486, 40.037212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057359, -0.304179, 0.950886,
		0.995551, 0.053886, 0.077291,
		-0.074750, 0.951090, 0.299735,
		36.598701, 36.644814, 40.127132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134460, 36.101723, 40.495167>,  <36.651028, 35.979050, 39.917316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134460, 36.101723, 40.495167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.841454, 36.371689, 40.530754>,  <36.665649, 36.533669, 40.552109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.841454, 36.371689, 40.530754>,  <37.134460, 36.101723, 40.495167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841454, 36.371689, 40.530754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092794, -0.228468, 0.969119,
		0.674398, 0.701638, 0.229984,
		-0.732514, 0.674913, 0.088971,
		36.621700, 36.574162, 40.557446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421791, 36.661758, 41.036411>,  <37.134460, 36.101723, 40.495167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421791, 36.661758, 41.036411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.022224, 36.650375, 41.021683>,  <36.782486, 36.643547, 41.012844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.022224, 36.650375, 41.021683>,  <37.421791, 36.661758, 41.036411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022224, 36.650375, 41.021683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037054, 0.007538, 0.999285,
		-0.028158, 0.999566, -0.008585,
		-0.998916, -0.028456, -0.036826,
		36.722549, 36.641838, 41.010635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185623, 37.039009, 41.615395>,  <37.421791, 36.661758, 41.036411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185623, 37.039009, 41.615395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.839729, 36.856850, 41.530689>,  <36.632191, 36.747555, 41.479866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.839729, 36.856850, 41.530689>,  <37.185623, 37.039009, 41.615395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839729, 36.856850, 41.530689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193496, -0.087010, 0.977235,
		-0.463453, 0.886028, -0.012876,
		-0.864737, -0.455394, -0.211768,
		36.580307, 36.720230, 41.467159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824856, 37.263012, 42.192684>,  <37.185623, 37.039009, 41.615395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824856, 37.263012, 42.192684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.609764, 36.953556, 42.058624>,  <36.480709, 36.767883, 41.978188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.609764, 36.953556, 42.058624>,  <36.824856, 37.263012, 42.192684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609764, 36.953556, 42.058624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385657, -0.127787, 0.913750,
		-0.749743, 0.620604, -0.229645,
		-0.537731, -0.773642, -0.335148,
		36.448444, 36.721462, 41.958080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.146404, 37.402573, 42.401466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.168510, 37.014767, 42.305977>,  <36.181774, 36.782082, 42.248684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.168510, 37.014767, 42.305977>,  <36.146404, 37.402573, 42.401466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168510, 37.014767, 42.305977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425305, -0.239173, 0.872875,
		-0.903361, 0.053291, -0.425557,
		0.055266, -0.969513, -0.238725,
		36.185089, 36.723911, 42.234360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606270, 37.180775, 42.697155>,  <36.146404, 37.402573, 42.401466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606270, 37.180775, 42.697155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.805641, 36.836987, 42.651756>,  <35.925266, 36.630714, 42.624519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.805641, 36.836987, 42.651756>,  <35.606270, 37.180775, 42.697155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805641, 36.836987, 42.651756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499625, -0.391770, 0.772587,
		-0.708477, -0.328379, -0.624682,
		0.498433, -0.859467, -0.113494,
		35.955170, 36.579147, 42.617706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135715, 36.563919, 42.493507>,  <35.606270, 37.180775, 42.697155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135715, 36.563919, 42.493507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.466061, 36.439232, 42.681458>,  <35.664268, 36.364418, 42.794228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.466061, 36.439232, 42.681458>,  <35.135715, 36.563919, 42.493507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466061, 36.439232, 42.681458> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561812, -0.526035, 0.638478,
		0.048146, -0.791277, -0.609560,
		0.825863, -0.311718, 0.469875,
		35.713818, 36.345718, 42.822418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029903, 35.830429, 42.741882>,  <35.135715, 36.563919, 42.493507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029903, 35.830429, 42.741882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.376667, 35.918015, 42.921005>,  <35.584724, 35.970566, 43.028477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.376667, 35.918015, 42.921005>,  <35.029903, 35.830429, 42.741882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376667, 35.918015, 42.921005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172399, -0.711215, 0.681507,
		0.467710, -0.668004, -0.578808,
		0.866906, 0.218962, 0.447805,
		35.636738, 35.983704, 43.055347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308830, 35.222683, 42.767414>,  <35.029903, 35.830429, 42.741882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308830, 35.222683, 42.767414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.434010, 35.454590, 43.068329>,  <35.509117, 35.593735, 43.248878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.434010, 35.454590, 43.068329>,  <35.308830, 35.222683, 42.767414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434010, 35.454590, 43.068329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360395, -0.660345, 0.658832,
		0.878736, -0.477302, 0.002290,
		0.312950, 0.579765, 0.752286,
		35.527893, 35.628521, 43.294014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674652, 34.809814, 43.146900>,  <35.308830, 35.222683, 42.767414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674652, 34.809814, 43.146900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.586391, 35.107368, 43.399235>,  <35.533436, 35.285900, 43.550636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.586391, 35.107368, 43.399235>,  <35.674652, 34.809814, 43.146900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586391, 35.107368, 43.399235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083445, -0.658804, 0.747672,
		0.971777, 0.112334, 0.207438,
		-0.220650, 0.743880, 0.630837,
		35.520195, 35.330532, 43.588486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972729, 34.584026, 43.754120>,  <35.674652, 34.809814, 43.146900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972729, 34.584026, 43.754120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.725723, 34.857506, 43.909672>,  <35.577518, 35.021595, 44.003002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.725723, 34.857506, 43.909672>,  <35.972729, 34.584026, 43.754120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725723, 34.857506, 43.909672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066571, -0.447200, 0.891953,
		0.783735, 0.576684, 0.230639,
		-0.617517, 0.683702, 0.388877,
		35.540470, 35.062614, 44.026337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277122, 34.860188, 44.258335>,  <35.972729, 34.584026, 43.754120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277122, 34.860188, 44.258335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.887321, 34.906658, 44.335114>,  <35.653439, 34.934540, 44.381180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.887321, 34.906658, 44.335114>,  <36.277122, 34.860188, 44.258335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887321, 34.906658, 44.335114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122310, -0.442137, 0.888569,
		0.188093, 0.889392, 0.416656,
		-0.974505, 0.116172, 0.191945,
		35.594971, 34.941509, 44.392696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215385, 35.159889, 44.932377>,  <36.277122, 34.860188, 44.258335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215385, 35.159889, 44.932377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.853748, 35.009731, 44.850708>,  <35.636765, 34.919636, 44.801708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.853748, 35.009731, 44.850708>,  <36.215385, 35.159889, 44.932377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853748, 35.009731, 44.850708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005859, -0.488627, 0.872473,
		-0.427287, 0.787604, 0.443966,
		-0.904097, -0.375397, -0.204170,
		35.582520, 34.897114, 44.789455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869503, 35.157921, 45.581181>,  <36.215385, 35.159889, 44.932377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869503, 35.157921, 45.581181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.622120, 34.917507, 45.378689>,  <35.473690, 34.773258, 45.257195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.622120, 34.917507, 45.378689>,  <35.869503, 35.157921, 45.581181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622120, 34.917507, 45.378689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070771, -0.598993, 0.797621,
		-0.782626, 0.529120, 0.327915,
		-0.618456, -0.601032, -0.506234,
		35.436584, 34.737198, 45.226818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168335, 35.010952, 45.902245>,  <35.869503, 35.157921, 45.581181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168335, 35.010952, 45.902245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.232090, 34.683643, 45.681332>,  <35.270344, 34.487259, 45.548782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.232090, 34.683643, 45.681332>,  <35.168335, 35.010952, 45.902245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232090, 34.683643, 45.681332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120377, -0.571374, 0.811814,
		-0.979849, -0.062912, -0.189572,
		0.159389, -0.818275, -0.552287,
		35.279907, 34.438160, 45.515644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877270, 34.468647, 46.414230>,  <35.168335, 35.010952, 45.902245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877270, 34.468647, 46.414230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.055889, 34.273972, 46.113903>,  <35.163059, 34.157166, 45.933704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.055889, 34.273972, 46.113903>,  <34.877270, 34.468647, 46.414230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055889, 34.273972, 46.113903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046051, -0.825516, 0.562497,
		-0.893576, -0.285756, -0.346216,
		0.446544, -0.486690, -0.750820,
		35.189854, 34.127964, 45.888657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434444, 33.811886, 46.316647>,  <34.877270, 34.468647, 46.414230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434444, 33.811886, 46.316647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.801292, 33.765877, 46.163986>,  <35.021400, 33.738270, 46.072392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.801292, 33.765877, 46.163986>,  <34.434444, 33.811886, 46.316647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801292, 33.765877, 46.163986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030583, -0.934333, 0.355087,
		-0.397432, -0.337330, -0.853379,
		0.917122, -0.115024, -0.381650,
		35.076427, 33.731369, 46.049492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441765, 33.141727, 46.052719>,  <34.434444, 33.811886, 46.316647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441765, 33.141727, 46.052719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.824512, 33.248917, 46.097607>,  <35.054161, 33.313229, 46.124538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.824512, 33.248917, 46.097607>,  <34.441765, 33.141727, 46.052719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824512, 33.248917, 46.097607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207364, -0.900513, 0.382199,
		0.203475, -0.342444, -0.917241,
		0.956869, 0.267970, 0.112221,
		35.111572, 33.329308, 46.131271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826973, 32.610142, 45.876427>,  <34.441765, 33.141727, 46.052719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826973, 32.610142, 45.876427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.059235, 32.822418, 46.123394>,  <35.198589, 32.949783, 46.271576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.059235, 32.822418, 46.123394>,  <34.826973, 32.610142, 45.876427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059235, 32.822418, 46.123394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304848, -0.844911, 0.439538,
		0.754925, -0.067000, -0.652380,
		0.580652, 0.530695, 0.617419,
		35.233429, 32.981628, 46.308620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478706, 32.336552, 45.863171>,  <34.826973, 32.610142, 45.876427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478706, 32.336552, 45.863171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.466885, 32.524429, 46.216106>,  <35.459793, 32.637157, 46.427868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.466885, 32.524429, 46.216106>,  <35.478706, 32.336552, 45.863171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466885, 32.524429, 46.216106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173605, -0.866893, 0.467288,
		0.984372, 0.166986, -0.055925,
		-0.029550, 0.469693, 0.882335,
		35.458019, 32.665337, 46.480808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941029, 31.933641, 46.389275>,  <35.478706, 32.336552, 45.863171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941029, 31.933641, 46.389275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.716370, 32.156868, 46.633610>,  <35.581573, 32.290802, 46.780209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.716370, 32.156868, 46.633610>,  <35.941029, 31.933641, 46.389275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716370, 32.156868, 46.633610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054873, -0.711528, 0.700512,
		0.825558, 0.426956, 0.369002,
		-0.561643, 0.558065, 0.610836,
		35.547878, 32.324287, 46.816860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302658, 31.909168, 47.037560>,  <35.941029, 31.933641, 46.389275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302658, 31.909168, 47.037560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.933876, 32.021317, 47.144436>,  <35.712608, 32.088604, 47.208561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.933876, 32.021317, 47.144436>,  <36.302658, 31.909168, 47.037560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933876, 32.021317, 47.144436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062352, -0.573444, 0.816869,
		0.382247, 0.769776, 0.511207,
		-0.921954, 0.280371, 0.267194,
		35.657291, 32.105427, 47.224594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317883, 31.932470, 47.697865>,  <36.302658, 31.909168, 47.037560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317883, 31.932470, 47.697865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.929512, 31.897043, 47.608902>,  <35.696491, 31.875788, 47.555527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.929512, 31.897043, 47.608902>,  <36.317883, 31.932470, 47.697865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929512, 31.897043, 47.608902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118290, -0.630197, 0.767372,
		-0.208122, 0.771367, 0.601396,
		-0.970924, -0.088568, -0.222403,
		35.638233, 31.870472, 47.542183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962280, 31.861681, 48.426010>,  <36.317883, 31.932470, 47.697865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962280, 31.861681, 48.426010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.711357, 31.736546, 48.140739>,  <35.560802, 31.661465, 47.969578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.711357, 31.736546, 48.140739>,  <35.962280, 31.861681, 48.426010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711357, 31.736546, 48.140739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311059, -0.738896, 0.597724,
		-0.713955, 0.596795, 0.366201,
		-0.627304, -0.312838, -0.713178,
		35.523167, 31.642694, 47.926785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395580, 31.797386, 48.811756>,  <35.962280, 31.861681, 48.426010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395580, 31.797386, 48.811756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.387451, 31.583025, 48.474140>,  <35.382576, 31.454409, 48.271572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.387451, 31.583025, 48.474140>,  <35.395580, 31.797386, 48.811756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387451, 31.583025, 48.474140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279074, -0.807615, 0.519496,
		-0.960055, 0.246104, -0.133146,
		-0.020319, -0.535902, -0.844036,
		35.381355, 31.422255, 48.220928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674999, 31.385256, 48.744656>,  <35.395580, 31.797386, 48.811756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674999, 31.385256, 48.744656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.984749, 31.221498, 48.551682>,  <35.170597, 31.123245, 48.435898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.984749, 31.221498, 48.551682>,  <34.674999, 31.385256, 48.744656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984749, 31.221498, 48.551682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093653, -0.828229, 0.552508,
		-0.625756, -0.382669, -0.679702,
		0.774376, -0.409391, -0.482432,
		35.217060, 31.098680, 48.406952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050488, 31.116821, 48.871399>,  <34.674999, 31.385256, 48.744656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050488, 31.116821, 48.871399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.330624, 30.924839, 49.082745>,  <34.498707, 30.809650, 49.209553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.330624, 30.924839, 49.082745>,  <34.050488, 31.116821, 48.871399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330624, 30.924839, 49.082745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397630, -0.877035, -0.269630,
		0.592802, -0.021260, -0.805067,
		0.700340, -0.479956, 0.528362,
		34.540726, 30.780851, 49.241253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861267, 30.497862, 48.632523>,  <34.050488, 31.116821, 48.871399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861267, 30.497862, 48.632523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.140831, 30.396011, 48.899864>,  <34.308567, 30.334902, 49.060268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.140831, 30.396011, 48.899864>,  <33.861267, 30.497862, 48.632523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140831, 30.396011, 48.899864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251308, -0.962323, -0.103823,
		0.669606, -0.095399, -0.736564,
		0.698908, -0.254625, 0.668351,
		34.350502, 30.319624, 49.100368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499722, 29.798006, 48.602818>,  <33.861267, 30.497862, 48.632523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499722, 29.798006, 48.602818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.116093, 29.911039, 48.595554>,  <32.885914, 29.978859, 48.591194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.116093, 29.911039, 48.595554>,  <33.499722, 29.798006, 48.602818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116093, 29.911039, 48.595554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201749, 0.636907, -0.744075,
		-0.198695, -0.717285, -0.667849,
		-0.959071, 0.282582, -0.018161,
		32.828373, 29.995813, 48.590107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219311, 29.695286, 47.945793>,  <33.499722, 29.798006, 48.602818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219311, 29.695286, 47.945793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.948254, 29.939171, 48.110256>,  <32.785618, 30.085503, 48.208935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.948254, 29.939171, 48.110256>,  <33.219311, 29.695286, 47.945793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.948254, 29.939171, 48.110256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041930, 0.526157, -0.849353,
		-0.734196, -0.592797, -0.330981,
		-0.677642, 0.609713, 0.411158,
		32.744961, 30.122086, 48.233604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803162, 30.025480, 47.334583>,  <33.219311, 29.695286, 47.945793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803162, 30.025480, 47.334583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.747070, 30.239658, 47.667721>,  <32.713413, 30.368166, 47.867603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.747070, 30.239658, 47.667721>,  <32.803162, 30.025480, 47.334583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747070, 30.239658, 47.667721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204461, 0.807368, -0.553491,
		-0.968778, -0.247902, -0.003741,
		-0.140231, 0.535445, 0.832846,
		32.705002, 30.400291, 47.917576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217278, 30.437775, 47.123814>,  <32.803162, 30.025480, 47.334583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217278, 30.437775, 47.123814> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.420567, 30.626356, 47.412106>,  <32.542538, 30.739504, 47.585079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.420567, 30.626356, 47.412106>,  <32.217278, 30.437775, 47.123814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.420567, 30.626356, 47.412106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117128, 0.866920, -0.484491,
		-0.853225, 0.161811, 0.495807,
		0.508220, 0.471452, 0.720725,
		32.573032, 30.767792, 47.628323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766008, 30.929094, 47.310192>,  <32.217278, 30.437775, 47.123814>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766008, 30.929094, 47.310192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.132076, 31.046316, 47.420891>,  <32.351715, 31.116650, 47.487309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.132076, 31.046316, 47.420891>,  <31.766008, 30.929094, 47.310192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132076, 31.046316, 47.420891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095639, 0.824853, -0.557198,
		-0.391562, 0.483463, 0.782907,
		0.915168, 0.293054, 0.276744,
		32.406628, 31.134232, 47.503914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653000, 31.689459, 47.564571>,  <31.766008, 30.929094, 47.310192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653000, 31.689459, 47.564571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.035896, 31.641283, 47.459358>,  <32.265633, 31.612377, 47.396229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.035896, 31.641283, 47.459358>,  <31.653000, 31.689459, 47.564571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035896, 31.641283, 47.459358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004284, 0.903217, -0.429162,
		0.289268, 0.411938, 0.864078,
		0.957239, -0.120441, -0.263036,
		32.323067, 31.605150, 47.380447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033669, 32.332939, 47.553032>,  <31.653000, 31.689459, 47.564571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033669, 32.332939, 47.553032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.275867, 32.117966, 47.318245>,  <32.421188, 31.988981, 47.177372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.275867, 32.117966, 47.318245>,  <32.033669, 32.332939, 47.553032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275867, 32.117966, 47.318245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165452, 0.806437, -0.567702,
		0.778456, 0.246629, 0.577218,
		0.605502, -0.537433, -0.586970,
		32.457520, 31.956736, 47.142155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.484596, 32.730328, 47.354733>,  <32.033669, 32.332939, 47.553032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.484596, 32.730328, 47.354733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.553963, 32.440567, 47.087849>,  <32.595581, 32.266708, 46.927719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.553963, 32.440567, 47.087849>,  <32.484596, 32.730328, 47.354733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553963, 32.440567, 47.087849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154969, 0.689104, -0.707899,
		0.972580, 0.019362, 0.231759,
		0.173413, -0.724404, -0.667208,
		32.605988, 32.223248, 46.887688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064701, 33.025131, 47.057827>,  <32.484596, 32.730328, 47.354733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064701, 33.025131, 47.057827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.915943, 32.745972, 46.812996>,  <32.826687, 32.578476, 46.666100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.915943, 32.745972, 46.812996>,  <33.064701, 33.025131, 47.057827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915943, 32.745972, 46.812996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043839, 0.645427, -0.762563,
		0.927239, -0.310427, -0.209436,
		-0.371895, -0.697897, -0.612074,
		32.804375, 32.536602, 46.629375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596283, 32.888863, 46.542770>,  <33.064701, 33.025131, 47.057827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596283, 32.888863, 46.542770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.225700, 32.802910, 46.419151>,  <33.003349, 32.751339, 46.344982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.225700, 32.802910, 46.419151>,  <33.596283, 32.888863, 46.542770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225700, 32.802910, 46.419151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130947, 0.585760, -0.799836,
		0.352893, -0.781480, -0.514543,
		-0.926455, -0.214879, -0.309043,
		32.947765, 32.738445, 46.326439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665760, 32.826210, 45.875751>,  <33.596283, 32.888863, 46.542770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665760, 32.826210, 45.875751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.268364, 32.871685, 45.878452>,  <33.029926, 32.898968, 45.880074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.268364, 32.871685, 45.878452>,  <33.665760, 32.826210, 45.875751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268364, 32.871685, 45.878452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063587, 0.602949, -0.795242,
		-0.094478, -0.789639, -0.606255,
		-0.993494, 0.113683, 0.006755,
		32.970314, 32.905788, 45.880478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523777, 32.833767, 45.202030>,  <33.665760, 32.826210, 45.875751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523777, 32.833767, 45.202030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.172779, 32.962803, 45.343983>,  <32.962181, 33.040222, 45.429153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.172779, 32.962803, 45.343983>,  <33.523777, 32.833767, 45.202030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172779, 32.962803, 45.343983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097006, 0.605289, -0.790073,
		-0.469672, -0.727711, -0.499845,
		-0.877495, 0.322587, 0.354880,
		32.909531, 33.059578, 45.450447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.062263, 32.883858, 44.608696>,  <33.523777, 32.833767, 45.202030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.062263, 32.883858, 44.608696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.939785, 33.134247, 44.895584>,  <32.866299, 33.284481, 45.067715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.939785, 33.134247, 44.895584>,  <33.062263, 32.883858, 44.608696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939785, 33.134247, 44.895584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120271, 0.721929, -0.681435,
		-0.944340, -0.294914, -0.145767,
		-0.306198, 0.625975, 0.717216,
		32.847927, 33.322041, 45.110748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628922, 33.312195, 44.209560>,  <33.062263, 32.883858, 44.608696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628922, 33.312195, 44.209560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.680912, 33.519211, 44.547852>,  <32.712105, 33.643421, 44.750828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.680912, 33.519211, 44.547852>,  <32.628922, 33.312195, 44.209560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680912, 33.519211, 44.547852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140595, 0.853965, -0.500976,
		-0.981499, -0.053792, 0.183756,
		0.129973, 0.517542, 0.845729,
		32.719902, 33.674473, 44.801571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107788, 33.779587, 44.232216>,  <32.628922, 33.312195, 44.209560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107788, 33.779587, 44.232216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.395969, 33.950630, 44.450607>,  <32.568878, 34.053257, 44.581642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.395969, 33.950630, 44.450607>,  <32.107788, 33.779587, 44.232216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395969, 33.950630, 44.450607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152556, 0.865721, -0.476711,
		-0.676511, 0.260158, 0.688949,
		0.720457, 0.427604, 0.545981,
		32.612106, 34.078911, 44.614403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900499, 34.464218, 44.314941>,  <32.107788, 33.779587, 44.232216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900499, 34.464218, 44.314941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.275181, 34.528679, 44.439274>,  <32.499989, 34.567356, 44.513874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.275181, 34.528679, 44.439274>,  <31.900499, 34.464218, 44.314941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.275181, 34.528679, 44.439274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023337, 0.857071, -0.514669,
		-0.349341, 0.489347, 0.799062,
		0.936705, 0.161147, 0.310830,
		32.556190, 34.577023, 44.532524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.906084, 35.162785, 44.613716>,  <31.900499, 34.464218, 44.314941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.906084, 35.162785, 44.613716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.276100, 35.080929, 44.485703>,  <32.498112, 35.031815, 44.408894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.276100, 35.080929, 44.485703>,  <31.906084, 35.162785, 44.613716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276100, 35.080929, 44.485703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039003, 0.786879, -0.615874,
		0.377860, 0.582191, 0.719913,
		0.925041, -0.204635, -0.320038,
		32.553612, 35.019539, 44.389690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150661, 35.825600, 44.489395>,  <31.906084, 35.162785, 44.613716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150661, 35.825600, 44.489395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.435280, 35.618637, 44.299240>,  <32.606049, 35.494461, 44.185146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.435280, 35.618637, 44.299240>,  <32.150661, 35.825600, 44.489395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.435280, 35.618637, 44.299240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070368, 0.620703, -0.780882,
		0.699109, 0.589084, 0.405249,
		0.711544, -0.517405, -0.475391,
		32.648743, 35.463417, 44.156624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587303, 36.236748, 44.201199>,  <32.150661, 35.825600, 44.489395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587303, 36.236748, 44.201199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.692680, 35.921753, 43.978325>,  <32.755905, 35.732754, 43.844601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.692680, 35.921753, 43.978325>,  <32.587303, 36.236748, 44.201199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692680, 35.921753, 43.978325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464297, 0.609794, -0.642323,
		0.845593, -0.089486, 0.526275,
		0.263440, -0.787491, -0.557186,
		32.771713, 35.685505, 43.811169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300304, 36.334496, 43.875175>,  <32.587303, 36.236748, 44.201199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300304, 36.334496, 43.875175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.104683, 36.080002, 43.636501>,  <32.987312, 35.927307, 43.493298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.104683, 36.080002, 43.636501>,  <33.300304, 36.334496, 43.875175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104683, 36.080002, 43.636501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119352, 0.628832, -0.768326,
		0.864051, -0.446967, -0.231596,
		-0.489051, -0.636232, -0.596690,
		32.957966, 35.889133, 43.457493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.005630, 26.520157, 33.634911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.744965, 26.714769, 33.867676>,  <39.588566, 26.831537, 34.007336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.744965, 26.714769, 33.867676>,  <40.005630, 26.520157, 33.634911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744965, 26.714769, 33.867676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725543, 0.176108, 0.665262,
		0.221192, 0.855729, -0.467762,
		-0.651661, 0.486532, 0.581914,
		39.549465, 26.860729, 34.042252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271088, 27.114338, 33.687969>,  <40.005630, 26.520157, 33.634911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271088, 27.114338, 33.687969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.019066, 27.209908, 33.983524>,  <39.867851, 27.267248, 34.160858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.019066, 27.209908, 33.983524>,  <40.271088, 27.114338, 33.687969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.019066, 27.209908, 33.983524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749027, 0.438059, 0.497054,
		-0.204918, 0.866614, -0.454959,
		-0.630053, 0.238922, 0.738884,
		39.830051, 27.281584, 34.205189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304558, 27.844139, 33.878738>,  <40.271088, 27.114338, 33.687969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304558, 27.844139, 33.878738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.153481, 27.678480, 34.209995>,  <40.062832, 27.579084, 34.408752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.153481, 27.678480, 34.209995>,  <40.304558, 27.844139, 33.878738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153481, 27.678480, 34.209995> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593541, 0.578178, 0.559839,
		-0.710672, 0.702988, 0.027438,
		-0.377696, -0.414148, 0.828147,
		40.040173, 27.554235, 34.458439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836929, 28.414000, 34.359585>,  <40.304558, 27.844139, 33.878738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836929, 28.414000, 34.359585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.007835, 28.111399, 34.557632>,  <40.110378, 27.929838, 34.676460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.007835, 28.111399, 34.557632>,  <39.836929, 28.414000, 34.359585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007835, 28.111399, 34.557632> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382008, 0.647395, 0.659507,
		-0.819457, -0.092647, 0.565602,
		0.427269, -0.756503, 0.495121,
		40.136017, 27.884447, 34.706169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879639, 28.642220, 34.964153>,  <39.836929, 28.414000, 34.359585>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879639, 28.642220, 34.964153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.129967, 28.332382, 35.000729>,  <40.280163, 28.146481, 35.022675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.129967, 28.332382, 35.000729>,  <39.879639, 28.642220, 34.964153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129967, 28.332382, 35.000729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653150, 0.584525, 0.481379,
		-0.426318, -0.241536, 0.871730,
		0.625818, -0.774591, 0.091434,
		40.317711, 28.100004, 35.028160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.015568, 28.540947, 35.696518>,  <39.879639, 28.642220, 34.964153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.015568, 28.540947, 35.696518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.311745, 28.373707, 35.486023>,  <40.489452, 28.273363, 35.359726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.311745, 28.373707, 35.486023>,  <40.015568, 28.540947, 35.696518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311745, 28.373707, 35.486023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661948, 0.589308, 0.463185,
		0.116461, -0.691309, 0.713112,
		0.740447, -0.418100, -0.526242,
		40.533878, 28.248278, 35.328152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521954, 28.587782, 36.106747>,  <40.015568, 28.540947, 35.696518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521954, 28.587782, 36.106747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.764061, 28.487062, 35.804688>,  <40.909325, 28.426632, 35.623451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.764061, 28.487062, 35.804688>,  <40.521954, 28.587782, 36.106747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.764061, 28.487062, 35.804688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695509, 0.628712, 0.347833,
		0.387185, -0.735744, 0.555670,
		0.605272, -0.251797, -0.755145,
		40.945644, 28.411524, 35.578144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177444, 28.439341, 36.319153>,  <40.521954, 28.587782, 36.106747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177444, 28.439341, 36.319153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.239780, 28.564205, 35.944290>,  <41.277180, 28.639124, 35.719372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.239780, 28.564205, 35.944290>,  <41.177444, 28.439341, 36.319153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239780, 28.564205, 35.944290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744336, 0.586598, 0.319164,
		0.649368, -0.747300, -0.140941,
		0.155836, 0.312162, -0.937160,
		41.286530, 28.657854, 35.663143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.837418, 28.663155, 36.315517>,  <41.177444, 28.439341, 36.319153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.837418, 28.663155, 36.315517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.736893, 28.801456, 35.953899>,  <41.676579, 28.884438, 35.736931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.736893, 28.801456, 35.953899>,  <41.837418, 28.663155, 36.315517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.736893, 28.801456, 35.953899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739436, 0.671279, 0.051177,
		0.624559, -0.655621, -0.424366,
		-0.251316, 0.345755, -0.904043,
		41.661499, 28.905182, 35.682686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.467045, 28.593311, 35.898499>,  <41.837418, 28.663155, 36.315517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.467045, 28.593311, 35.898499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.233028, 28.858589, 35.711777>,  <42.092621, 29.017756, 35.599743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.233028, 28.858589, 35.711777>,  <42.467045, 28.593311, 35.898499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233028, 28.858589, 35.711777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701340, 0.702750, 0.119435,
		0.407253, -0.257512, -0.876261,
		-0.585036, 0.663197, -0.466800,
		42.057518, 29.057549, 35.571735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.917240, 28.936016, 35.614235>,  <42.467045, 28.593311, 35.898499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.917240, 28.936016, 35.614235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.603657, 29.183323, 35.591785>,  <42.415504, 29.331707, 35.578316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.603657, 29.183323, 35.591785>,  <42.917240, 28.936016, 35.614235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.603657, 29.183323, 35.591785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575238, 0.757436, 0.308856,
		0.233464, 0.209848, -0.949452,
		-0.783961, 0.618268, -0.056122,
		42.368469, 29.368803, 35.574947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.165569, 29.559958, 35.241234>,  <42.917240, 28.936016, 35.614235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.165569, 29.559958, 35.241234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.866959, 29.655123, 35.489777>,  <42.687790, 29.712223, 35.638905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.866959, 29.655123, 35.489777>,  <43.165569, 29.559958, 35.241234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.866959, 29.655123, 35.489777> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538827, 0.764047, 0.354821,
		-0.390332, 0.599691, -0.698578,
		-0.746530, 0.237914, 0.621362,
		42.643002, 29.726498, 35.676186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.015774, 30.216690, 35.057682>,  <43.165569, 29.559958, 35.241234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.015774, 30.216690, 35.057682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.870609, 30.171202, 35.427624>,  <42.783512, 30.143908, 35.649590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.870609, 30.171202, 35.427624>,  <43.015774, 30.216690, 35.057682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.870609, 30.171202, 35.427624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374000, 0.891295, 0.256352,
		-0.853475, 0.438930, -0.280928,
		-0.362911, -0.113723, 0.924858,
		42.761738, 30.137085, 35.705082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.619602, 30.791817, 35.213387>,  <43.015774, 30.216690, 35.057682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.619602, 30.791817, 35.213387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.664043, 30.634830, 35.578598>,  <42.690708, 30.540640, 35.797726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.664043, 30.634830, 35.578598>,  <42.619602, 30.791817, 35.213387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.664043, 30.634830, 35.578598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308500, 0.886955, 0.343713,
		-0.944713, 0.243482, 0.219622,
		0.111107, -0.392463, 0.913032,
		42.697376, 30.517092, 35.852509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.428947, 31.353107, 35.573456>,  <42.619602, 30.791817, 35.213387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.428947, 31.353107, 35.573456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.641350, 31.116037, 35.815701>,  <42.768791, 30.973795, 35.961048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.641350, 31.116037, 35.815701>,  <42.428947, 31.353107, 35.573456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.641350, 31.116037, 35.815701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423546, 0.804656, 0.416098,
		-0.733923, 0.035556, 0.678302,
		0.531005, -0.592675, 0.605615,
		42.800652, 30.938234, 35.997383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557121, 31.729218, 36.171154>,  <42.428947, 31.353107, 35.573456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.557121, 31.729218, 36.171154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.826035, 31.436365, 36.215008>,  <42.987381, 31.260653, 36.241322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.826035, 31.436365, 36.215008>,  <42.557121, 31.729218, 36.171154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.826035, 31.436365, 36.215008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645565, 0.652274, 0.397222,
		-0.362331, -0.196268, 0.911151,
		0.672282, -0.732132, 0.109635,
		43.027718, 31.216726, 36.247898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.869038, 31.778803, 36.873817>,  <42.557121, 31.729218, 36.171154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.869038, 31.778803, 36.873817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.120495, 31.564714, 36.648129>,  <43.271370, 31.436260, 36.512714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.120495, 31.564714, 36.648129>,  <42.869038, 31.778803, 36.873817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.120495, 31.564714, 36.648129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738665, 0.637878, 0.217910,
		0.243274, -0.553758, 0.796348,
		0.628643, -0.535223, -0.564221,
		43.309086, 31.404148, 36.478863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.483013, 31.707396, 37.252289>,  <42.869038, 31.778803, 36.873817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.483013, 31.707396, 37.252289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.608154, 31.662277, 36.875057>,  <43.683239, 31.635206, 36.648720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.608154, 31.662277, 36.875057>,  <43.483013, 31.707396, 37.252289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.608154, 31.662277, 36.875057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706463, 0.691307, 0.151675,
		0.634849, -0.713703, 0.295964,
		0.312853, -0.112796, -0.943080,
		43.702011, 31.628439, 36.592133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.139542, 32.003944, 37.264999>,  <43.483013, 31.707396, 37.252289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.139542, 32.003944, 37.264999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.113781, 31.963675, 36.867867>,  <44.098324, 31.939514, 36.629585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.113781, 31.963675, 36.867867>,  <44.139542, 32.003944, 37.264999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.113781, 31.963675, 36.867867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582071, 0.804336, -0.119313,
		0.810584, -0.585583, 0.006799,
		-0.064399, -0.100670, -0.992833,
		44.094460, 31.933474, 36.570015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.817570, 31.937273, 37.014832>,  <44.139542, 32.003944, 37.264999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.817570, 31.937273, 37.014832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.599697, 32.066956, 36.705456>,  <44.468975, 32.144764, 36.519829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.599697, 32.066956, 36.705456>,  <44.817570, 31.937273, 37.014832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.599697, 32.066956, 36.705456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650200, 0.745741, -0.145296,
		0.529682, -0.582032, -0.616990,
		-0.544681, 0.324206, -0.773442,
		44.436295, 32.164219, 36.473423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.250679, 32.157715, 36.441128>,  <44.817570, 31.937273, 37.014832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.250679, 32.157715, 36.441128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.911041, 32.353779, 36.362354>,  <44.707260, 32.471416, 36.315090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.911041, 32.353779, 36.362354>,  <45.250679, 32.157715, 36.441128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.911041, 32.353779, 36.362354> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508133, 0.859771, -0.050936,
		0.144354, -0.143320, -0.979092,
		-0.849095, 0.490156, -0.196937,
		44.656311, 32.500824, 36.303272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.370941, 32.585381, 35.835934>,  <45.250679, 32.157715, 36.441128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.370941, 32.585381, 35.835934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.113758, 32.731022, 36.105461>,  <44.959446, 32.818409, 36.267178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.113758, 32.731022, 36.105461>,  <45.370941, 32.585381, 35.835934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.113758, 32.731022, 36.105461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540705, 0.838876, 0.062646,
		-0.542437, 0.404614, -0.736240,
		-0.642962, 0.364107, 0.673814,
		44.920868, 32.840256, 36.307606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.418224, 33.115234, 35.281231>,  <45.370941, 32.585381, 35.835934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.418224, 33.115234, 35.281231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.646549, 33.156532, 34.955402>,  <45.783543, 33.181309, 34.759907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.646549, 33.156532, 34.955402>,  <45.418224, 33.115234, 35.281231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.646549, 33.156532, 34.955402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814489, 0.196675, -0.545826,
		0.103853, 0.975018, 0.196353,
		0.570808, 0.103241, -0.814567,
		45.817791, 33.187504, 34.711033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.265026, 33.709694, 34.978603>,  <45.418224, 33.115234, 35.281231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.265026, 33.709694, 34.978603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.411785, 33.471653, 34.692596>,  <45.499840, 33.328831, 34.520992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.411785, 33.471653, 34.692596>,  <45.265026, 33.709694, 34.978603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.411785, 33.471653, 34.692596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889780, -0.000219, -0.456391,
		0.271441, 0.803653, -0.529586,
		0.366896, -0.595098, -0.715015,
		45.521854, 33.293125, 34.478092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.888126, 33.909985, 34.365715>,  <45.265026, 33.709694, 34.978603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.888126, 33.909985, 34.365715> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.042194, 33.547207, 34.297489>,  <45.134636, 33.329540, 34.256554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.042194, 33.547207, 34.297489>,  <44.888126, 33.909985, 34.365715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.042194, 33.547207, 34.297489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890378, -0.316628, -0.327069,
		0.242630, 0.277842, -0.929481,
		0.385173, -0.906945, -0.170561,
		45.157745, 33.275124, 34.246323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.826996, 33.782402, 33.594074>,  <44.888126, 33.909985, 34.365715>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.826996, 33.782402, 33.594074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.876514, 33.422470, 33.761395>,  <44.906227, 33.206509, 33.861786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.876514, 33.422470, 33.761395>,  <44.826996, 33.782402, 33.594074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.876514, 33.422470, 33.761395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896372, -0.282235, -0.341849,
		0.425665, -0.332631, -0.841526,
		0.123798, -0.899833, 0.418299,
		44.913654, 33.152519, 33.886883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.576180, 33.253887, 33.028084>,  <44.826996, 33.782402, 33.594074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.576180, 33.253887, 33.028084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.587952, 33.063549, 33.379700>,  <44.595016, 32.949345, 33.590668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.587952, 33.063549, 33.379700>,  <44.576180, 33.253887, 33.028084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.587952, 33.063549, 33.379700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813591, -0.522296, -0.255492,
		0.580692, -0.707655, -0.402519,
		0.029434, -0.475847, 0.879035,
		44.596783, 32.920795, 33.643410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.476906, 32.480000, 32.894512>,  <44.576180, 33.253887, 33.028084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.476906, 32.480000, 32.894512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.375671, 32.532269, 33.277943>,  <44.314930, 32.563629, 33.508003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.375671, 32.532269, 33.277943>,  <44.476906, 32.480000, 32.894512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.375671, 32.532269, 33.277943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789072, -0.601160, -0.126380,
		0.559745, -0.788372, 0.255254,
		-0.253083, 0.130673, 0.958578,
		44.299747, 32.571472, 33.565517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.250004, 31.830332, 33.173038>,  <44.476906, 32.480000, 32.894512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.250004, 31.830332, 33.173038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.079453, 32.112019, 33.400116>,  <43.977123, 32.281033, 33.536362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.079453, 32.112019, 33.400116>,  <44.250004, 31.830332, 33.173038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.079453, 32.112019, 33.400116> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844450, -0.534837, 0.029218,
		0.324200, -0.466932, 0.822720,
		-0.426378, 0.704218, 0.567695,
		43.951538, 32.323284, 33.570423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.823036, 31.380281, 33.464794>,  <44.250004, 31.830332, 33.173038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.823036, 31.380281, 33.464794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.692146, 31.741488, 33.576141>,  <43.613613, 31.958212, 33.642948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.692146, 31.741488, 33.576141>,  <43.823036, 31.380281, 33.464794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.692146, 31.741488, 33.576141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941955, -0.335135, -0.020113,
		0.075128, -0.268789, 0.960265,
		-0.327224, 0.903016, 0.278366,
		43.593979, 32.012394, 33.659653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.432404, 31.243347, 34.069893>,  <43.823036, 31.380281, 33.464794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.432404, 31.243347, 34.069893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.296741, 31.580589, 33.902966>,  <43.215343, 31.782934, 33.802811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.296741, 31.580589, 33.902966>,  <43.432404, 31.243347, 34.069893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.296741, 31.580589, 33.902966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939389, -0.327206, 0.102391,
		-0.050222, 0.426748, 0.902975,
		-0.339154, 0.843103, -0.417315,
		43.194996, 31.833521, 33.777771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.820724, 31.357990, 34.424702>,  <43.432404, 31.243347, 34.069893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.820724, 31.357990, 34.424702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.798096, 31.575722, 34.089916>,  <42.784519, 31.706360, 33.889046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.798096, 31.575722, 34.089916>,  <42.820724, 31.357990, 34.424702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.798096, 31.575722, 34.089916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978916, -0.195043, -0.060678,
		-0.196272, 0.815886, 0.543882,
		-0.056574, 0.544324, -0.836966,
		42.781124, 31.739019, 33.838829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.202232, 31.548750, 34.433956>,  <42.820724, 31.357990, 34.424702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.202232, 31.548750, 34.433956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.282734, 31.586630, 34.043976>,  <42.331036, 31.609358, 33.809986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.282734, 31.586630, 34.043976>,  <42.202232, 31.548750, 34.433956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282734, 31.586630, 34.043976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898480, -0.378603, -0.222244,
		-0.390166, 0.920702, 0.008891,
		0.201254, 0.094700, -0.974951,
		42.343109, 31.615040, 33.751492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526188, 31.550636, 34.070446>,  <42.202232, 31.548750, 34.433956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526188, 31.550636, 34.070446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.788330, 31.456573, 33.783333>,  <41.945618, 31.400135, 33.611065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.788330, 31.456573, 33.783333>,  <41.526188, 31.550636, 34.070446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.788330, 31.456573, 33.783333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720072, -0.481424, -0.499728,
		-0.228042, 0.844353, -0.484835,
		0.655358, -0.235157, -0.717780,
		41.984936, 31.386026, 33.568001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148987, 31.863167, 33.423599>,  <41.526188, 31.550636, 34.070446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148987, 31.863167, 33.423599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.421745, 31.590019, 33.318752>,  <41.585400, 31.426130, 33.255844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.421745, 31.590019, 33.318752>,  <41.148987, 31.863167, 33.423599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421745, 31.590019, 33.318752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664852, -0.429262, -0.611314,
		0.304932, 0.591121, -0.746721,
		0.681900, -0.682868, -0.262113,
		41.626316, 31.385159, 33.240120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069393, 31.832672, 32.641808>,  <41.148987, 31.863167, 33.423599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069393, 31.832672, 32.641808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.251896, 31.490437, 32.739620>,  <41.361397, 31.285095, 32.798309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.251896, 31.490437, 32.739620>,  <41.069393, 31.832672, 32.641808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251896, 31.490437, 32.739620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709778, -0.515664, -0.479902,
		0.536697, 0.045393, -0.842553,
		0.456258, -0.855588, 0.244537,
		41.388775, 31.233761, 32.812981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144806, 31.365196, 31.979460>,  <41.069393, 31.832672, 32.641808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144806, 31.365196, 31.979460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.195580, 31.131004, 32.299736>,  <41.226044, 30.990490, 32.491901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.195580, 31.131004, 32.299736>,  <41.144806, 31.365196, 31.979460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195580, 31.131004, 32.299736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744661, -0.589501, -0.312999,
		0.655261, -0.556510, -0.510813,
		0.126938, -0.585478, 0.800688,
		41.233662, 30.955360, 32.539944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247807, 30.618044, 31.698107>,  <41.144806, 31.365196, 31.979460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247807, 30.618044, 31.698107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.117550, 30.582708, 32.074650>,  <41.039398, 30.561506, 32.300575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.117550, 30.582708, 32.074650>,  <41.247807, 30.618044, 31.698107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.117550, 30.582708, 32.074650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689813, -0.658706, -0.300440,
		0.646619, -0.747196, 0.153562,
		-0.325640, -0.088341, 0.941358,
		41.019859, 30.556206, 32.357056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.187859, 29.912966, 31.746693>,  <41.247807, 30.618044, 31.698107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.187859, 29.912966, 31.746693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.956974, 30.050949, 32.042755>,  <40.818443, 30.133739, 32.220390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.956974, 30.050949, 32.042755>,  <41.187859, 29.912966, 31.746693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956974, 30.050949, 32.042755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710067, -0.659649, -0.246310,
		0.403274, -0.667732, 0.625702,
		-0.577213, 0.344960, 0.740154,
		40.783810, 30.154438, 32.264801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020016, 29.361954, 32.226162>,  <41.187859, 29.912966, 31.746693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.020016, 29.361954, 32.226162> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.751358, 29.650965, 32.291706>,  <40.590164, 29.824371, 32.331032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.751358, 29.650965, 32.291706>,  <41.020016, 29.361954, 32.226162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751358, 29.650965, 32.291706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740254, -0.645427, -0.188276,
		-0.030275, -0.247753, 0.968350,
		-0.671645, 0.722525, 0.163860,
		40.549866, 29.867722, 32.340862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465244, 29.028004, 32.493267>,  <41.020016, 29.361954, 32.226162>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465244, 29.028004, 32.493267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.291515, 29.373003, 32.389378>,  <40.187279, 29.580004, 32.327042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.291515, 29.373003, 32.389378>,  <40.465244, 29.028004, 32.493267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291515, 29.373003, 32.389378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868672, -0.477335, -0.132515,
		-0.238271, 0.168064, 0.956547,
		-0.434322, 0.862500, -0.259728,
		40.161217, 29.631752, 32.311459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861042, 29.103794, 32.804737>,  <40.465244, 29.028004, 32.493267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861042, 29.103794, 32.804737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.798058, 29.349562, 32.495495>,  <39.760265, 29.497023, 32.309948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.798058, 29.349562, 32.495495>,  <39.861042, 29.103794, 32.804737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798058, 29.349562, 32.495495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879341, -0.443510, -0.173377,
		-0.449408, 0.652530, 0.610113,
		-0.157457, 0.614414, -0.773112,
		39.750820, 29.533888, 32.263561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.646725, 37.540268, 39.936646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314129, 37.398003, 39.765938>,  <37.114571, 37.312641, 39.663513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314129, 37.398003, 39.765938>,  <37.646725, 37.540268, 39.936646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314129, 37.398003, 39.765938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371390, 0.215436, -0.903137,
		0.413158, -0.909443, -0.047041,
		-0.831487, -0.355668, -0.426768,
		37.064682, 37.291302, 39.637909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779850, 37.010925, 39.373444>,  <37.646725, 37.540268, 39.936646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779850, 37.010925, 39.373444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414478, 37.140476, 39.274849>,  <37.195255, 37.218208, 39.215691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414478, 37.140476, 39.274849>,  <37.779850, 37.010925, 39.373444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.414478, 37.140476, 39.274849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260001, -0.001599, -0.965607,
		-0.313136, -0.946096, -0.082749,
		-0.913425, 0.323881, -0.246487,
		37.140450, 37.237640, 39.200901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640121, 36.588608, 38.806522>,  <37.779850, 37.010925, 39.373444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640121, 36.588608, 38.806522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363045, 36.865726, 38.726315>,  <37.196800, 37.031998, 38.678188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363045, 36.865726, 38.726315>,  <37.640121, 36.588608, 38.806522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363045, 36.865726, 38.726315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368315, 0.100752, -0.924225,
		-0.620101, -0.714056, -0.324959,
		-0.692689, 0.692801, -0.200521,
		37.155239, 37.073566, 38.666157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261608, 36.454800, 38.189037>,  <37.640121, 36.588608, 38.806522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261608, 36.454800, 38.189037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245728, 36.849792, 38.250103>,  <37.236198, 37.086788, 38.286743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245728, 36.849792, 38.250103>,  <37.261608, 36.454800, 38.189037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245728, 36.849792, 38.250103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221395, 0.157677, -0.962352,
		-0.974376, -0.004407, -0.224883,
		-0.039699, 0.987481, 0.152661,
		37.233818, 37.146038, 38.295902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033676, 36.678459, 37.497025>,  <37.261608, 36.454800, 38.189037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033676, 36.678459, 37.497025> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148354, 37.007061, 37.694180>,  <37.217159, 37.204220, 37.812473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148354, 37.007061, 37.694180>,  <37.033676, 36.678459, 37.497025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.148354, 37.007061, 37.694180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351015, 0.388633, -0.851911,
		-0.891399, 0.417253, -0.176939,
		0.286697, 0.821501, 0.492890,
		37.234364, 37.253510, 37.842045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657543, 37.237316, 37.183910>,  <37.033676, 36.678459, 37.497025>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657543, 37.237316, 37.183910> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978123, 37.384052, 37.372852>,  <37.170471, 37.472092, 37.486217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978123, 37.384052, 37.372852>,  <36.657543, 37.237316, 37.183910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978123, 37.384052, 37.372852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275327, 0.474822, -0.835906,
		-0.530925, 0.799984, 0.279543,
		0.801445, 0.366838, 0.472352,
		37.218555, 37.494102, 37.514557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533127, 38.009369, 37.110264>,  <36.657543, 37.237316, 37.183910>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533127, 38.009369, 37.110264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923252, 37.957905, 37.182053>,  <37.157326, 37.927025, 37.225124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923252, 37.957905, 37.182053>,  <36.533127, 38.009369, 37.110264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923252, 37.957905, 37.182053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205287, 0.228822, -0.951576,
		0.081367, 0.964928, 0.249586,
		0.975313, -0.128664, 0.179469,
		37.215847, 37.919304, 37.235893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920494, 38.534992, 36.855972>,  <36.533127, 38.009369, 37.110264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920494, 38.534992, 36.855972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208199, 38.262646, 36.911224>,  <37.380821, 38.099236, 36.944374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208199, 38.262646, 36.911224>,  <36.920494, 38.534992, 36.855972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208199, 38.262646, 36.911224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211431, 0.025133, -0.977070,
		0.661786, 0.731973, 0.162034,
		0.719261, -0.680870, 0.138129,
		37.423977, 38.058384, 36.952663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507164, 38.841949, 36.543743>,  <36.920494, 38.534992, 36.855972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507164, 38.841949, 36.543743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565609, 38.446278, 36.549065>,  <37.600677, 38.208874, 36.552258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565609, 38.446278, 36.549065>,  <37.507164, 38.841949, 36.543743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565609, 38.446278, 36.549065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067397, -0.003466, -0.997720,
		0.986970, 0.146676, 0.066162,
		0.146112, -0.989179, 0.013307,
		37.609444, 38.149525, 36.553055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220013, 38.700340, 36.291389>,  <37.507164, 38.841949, 36.543743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220013, 38.700340, 36.291389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991966, 38.373417, 36.257996>,  <37.855137, 38.177261, 36.237957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991966, 38.373417, 36.257996>,  <38.220013, 38.700340, 36.291389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991966, 38.373417, 36.257996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208369, -0.045549, -0.976989,
		0.794700, -0.574396, 0.196270,
		-0.570118, -0.817310, -0.083488,
		37.820930, 38.128223, 36.232948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578140, 38.332970, 35.809792>,  <38.220013, 38.700340, 36.291389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578140, 38.332970, 35.809792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225529, 38.144138, 35.807285>,  <38.013962, 38.030838, 35.805782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225529, 38.144138, 35.807285>,  <38.578140, 38.332970, 35.809792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225529, 38.144138, 35.807285> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046775, -0.074129, -0.996151,
		0.469800, -0.878433, 0.087429,
		-0.881533, -0.472082, -0.006263,
		37.961067, 38.002514, 35.805405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678066, 37.750969, 35.450214>,  <38.578140, 38.332970, 35.809792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678066, 37.750969, 35.450214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291767, 37.854431, 35.441944>,  <38.059986, 37.916508, 35.436981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291767, 37.854431, 35.441944>,  <38.678066, 37.750969, 35.450214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291767, 37.854431, 35.441944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058572, 0.139687, -0.988462,
		-0.252781, -0.955817, -0.150053,
		-0.965749, 0.258653, -0.020673,
		38.002041, 37.932026, 35.435741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477154, 37.390514, 34.853382>,  <38.678066, 37.750969, 35.450214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477154, 37.390514, 34.853382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220253, 37.685173, 34.938114>,  <38.066113, 37.861969, 34.988953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220253, 37.685173, 34.938114>,  <38.477154, 37.390514, 34.853382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220253, 37.685173, 34.938114> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025333, 0.255812, -0.966395,
		-0.766077, -0.626032, -0.145634,
		-0.642249, 0.736644, 0.211830,
		38.027576, 37.906166, 35.001663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191692, 37.392414, 34.960842>,  <38.477154, 37.390514, 34.853382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191692, 37.392414, 34.960842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355862, 37.756817, 34.976955>,  <39.454365, 37.975456, 34.986622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355862, 37.756817, 34.976955>,  <39.191692, 37.392414, 34.960842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355862, 37.756817, 34.976955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569393, 0.290528, -0.769016,
		-0.712279, 0.292688, 0.637960,
		0.410426, 0.911004, 0.040282,
		39.478989, 38.030117, 34.989040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245041, 37.429554, 34.148663>,  <39.191692, 37.392414, 34.960842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245041, 37.429554, 34.148663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446514, 37.107182, 34.024223>,  <39.567398, 36.913757, 33.949558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446514, 37.107182, 34.024223>,  <39.245041, 37.429554, 34.148663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446514, 37.107182, 34.024223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245513, -0.478805, 0.842893,
		-0.828269, -0.348169, -0.439031,
		0.503680, -0.805930, -0.311100,
		39.597618, 36.865402, 33.930893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739670, 36.870117, 34.080585>,  <39.245041, 37.429554, 34.148663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739670, 36.870117, 34.080585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105598, 36.710938, 34.108109>,  <39.325157, 36.615429, 34.124622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105598, 36.710938, 34.108109>,  <38.739670, 36.870117, 34.080585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105598, 36.710938, 34.108109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359666, -0.725333, 0.586969,
		-0.183673, -0.561722, -0.806680,
		0.914825, -0.397946, 0.068808,
		39.380047, 36.591553, 34.128750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698341, 36.165108, 33.906170>,  <38.739670, 36.870117, 34.080585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698341, 36.165108, 33.906170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021622, 36.215355, 34.136311>,  <39.215591, 36.245502, 34.274395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021622, 36.215355, 34.136311>,  <38.698341, 36.165108, 33.906170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021622, 36.215355, 34.136311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330158, -0.712357, 0.619309,
		0.487647, -0.690484, -0.534258,
		0.808205, 0.125615, 0.575348,
		39.264084, 36.253040, 34.308914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.739311, 35.516682, 34.085056>,  <38.698341, 36.165108, 33.906170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.739311, 35.516682, 34.085056> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978031, 35.686939, 34.357132>,  <39.121265, 35.789093, 34.520378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978031, 35.686939, 34.357132>,  <38.739311, 35.516682, 34.085056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978031, 35.686939, 34.357132> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410086, -0.566825, 0.714520,
		0.689678, -0.705362, -0.163732,
		0.596803, 0.425644, 0.680186,
		39.157070, 35.814632, 34.561188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920815, 35.003231, 34.524662>,  <38.739311, 35.516682, 34.085056>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920815, 35.003231, 34.524662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990299, 35.335979, 34.735497>,  <39.031990, 35.535629, 34.861996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990299, 35.335979, 34.735497>,  <38.920815, 35.003231, 34.524662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990299, 35.335979, 34.735497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441135, -0.412791, 0.796871,
		0.880468, -0.370939, 0.295262,
		0.173709, 0.831870, 0.527083,
		39.042412, 35.585541, 34.893623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172508, 34.774887, 35.148994>,  <38.920815, 35.003231, 34.524662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172508, 34.774887, 35.148994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032860, 35.146214, 35.200146>,  <38.949070, 35.369007, 35.230839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032860, 35.146214, 35.200146>,  <39.172508, 34.774887, 35.148994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032860, 35.146214, 35.200146> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388927, -0.267702, 0.881517,
		0.852557, 0.258017, 0.454505,
		-0.349118, 0.928312, 0.127881,
		38.928123, 35.424706, 35.238510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474678, 35.041000, 35.807312>,  <39.172508, 34.774887, 35.148994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474678, 35.041000, 35.807312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153103, 35.275311, 35.766235>,  <38.960159, 35.415897, 35.741589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153103, 35.275311, 35.766235>,  <39.474678, 35.041000, 35.807312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.153103, 35.275311, 35.766235> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313016, -0.269958, 0.910573,
		0.505671, 0.764190, 0.400387,
		-0.803939, 0.585778, -0.102694,
		38.911922, 35.451042, 35.735428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431507, 35.494129, 36.420582>,  <39.474678, 35.041000, 35.807312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431507, 35.494129, 36.420582> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065762, 35.513237, 36.259758>,  <38.846313, 35.524700, 36.163261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065762, 35.513237, 36.259758>,  <39.431507, 35.494129, 36.420582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065762, 35.513237, 36.259758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404118, -0.168917, 0.898975,
		-0.024973, 0.984472, 0.173756,
		-0.914366, 0.047768, -0.402061,
		38.791451, 35.527569, 36.139141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099480, 35.696865, 36.966084>,  <39.431507, 35.494129, 36.420582>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099480, 35.696865, 36.966084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799641, 35.582043, 36.727520>,  <38.619736, 35.513149, 36.584381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799641, 35.582043, 36.727520>,  <39.099480, 35.696865, 36.966084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799641, 35.582043, 36.727520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414727, -0.498557, 0.761211,
		-0.515852, 0.817949, 0.254668,
		-0.749598, -0.287055, -0.596408,
		38.574760, 35.495926, 36.548599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411114, 35.935738, 37.280674>,  <39.099480, 35.696865, 36.966084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411114, 35.935738, 37.280674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318855, 35.614552, 37.060841>,  <38.263500, 35.421841, 36.928940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318855, 35.614552, 37.060841>,  <38.411114, 35.935738, 37.280674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318855, 35.614552, 37.060841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477446, -0.398755, 0.782969,
		-0.847848, 0.442990, -0.291400,
		-0.230650, -0.802966, -0.549588,
		38.249660, 35.373661, 36.895966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737659, 35.787361, 37.526657>,  <38.411114, 35.935738, 37.280674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737659, 35.787361, 37.526657> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859543, 35.458847, 37.333725>,  <37.932674, 35.261738, 37.217968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859543, 35.458847, 37.333725>,  <37.737659, 35.787361, 37.526657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859543, 35.458847, 37.333725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492883, -0.569302, 0.657998,
		-0.814995, 0.037232, -0.578271,
		0.304712, -0.821285, -0.482329,
		37.950958, 35.212463, 37.189026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080330, 35.375824, 37.503044>,  <37.737659, 35.787361, 37.526657>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080330, 35.375824, 37.503044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370438, 35.109154, 37.434303>,  <37.544502, 34.949150, 37.393059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370438, 35.109154, 37.434303>,  <37.080330, 35.375824, 37.503044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370438, 35.109154, 37.434303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454247, -0.650952, 0.608211,
		-0.517350, -0.363049, -0.774948,
		0.725265, -0.666676, -0.171856,
		37.588017, 34.909149, 37.382748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764126, 34.741882, 37.420143>,  <37.080330, 35.375824, 37.503044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764126, 34.741882, 37.420143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143742, 34.693310, 37.536469>,  <37.371513, 34.664165, 37.606266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143742, 34.693310, 37.536469>,  <36.764126, 34.741882, 37.420143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143742, 34.693310, 37.536469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281519, -0.741432, 0.609119,
		0.141658, -0.659950, -0.737834,
		0.949042, -0.121428, 0.290818,
		37.428455, 34.656879, 37.623714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820534, 33.996700, 37.508266>,  <36.764126, 34.741882, 37.420143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820534, 33.996700, 37.508266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126678, 34.172813, 37.696037>,  <37.310368, 34.278481, 37.808701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126678, 34.172813, 37.696037>,  <36.820534, 33.996700, 37.508266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.126678, 34.172813, 37.696037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154136, -0.582766, 0.797889,
		0.624866, -0.683033, -0.378165,
		0.765365, 0.440284, 0.469430,
		37.356289, 34.304897, 37.836868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936478, 33.417755, 37.088654>,  <36.820534, 33.996700, 37.508266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936478, 33.417755, 37.088654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619892, 33.198017, 36.981464>,  <36.429939, 33.066174, 36.917152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619892, 33.198017, 36.981464>,  <36.936478, 33.417755, 37.088654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619892, 33.198017, 36.981464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107784, 0.556996, -0.823491,
		0.601638, -0.622880, -0.500052,
		-0.791463, -0.549341, -0.267973,
		36.382454, 33.033215, 36.901073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989853, 33.214096, 36.395020>,  <36.936478, 33.417755, 37.088654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989853, 33.214096, 36.395020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593933, 33.208366, 36.451729>,  <36.356380, 33.204929, 36.485756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593933, 33.208366, 36.451729>,  <36.989853, 33.214096, 36.395020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593933, 33.208366, 36.451729> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135903, 0.394071, -0.908977,
		-0.042853, -0.918968, -0.391996,
		-0.989795, -0.014320, 0.141778,
		36.296993, 33.204071, 36.494263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700542, 32.772747, 35.788445>,  <36.989853, 33.214096, 36.395020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700542, 32.772747, 35.788445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413506, 33.000526, 35.948841>,  <36.241283, 33.137192, 36.045078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413506, 33.000526, 35.948841>,  <36.700542, 32.772747, 35.788445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413506, 33.000526, 35.948841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336846, 0.220174, -0.915455,
		-0.609591, -0.791994, 0.033821,
		-0.717589, 0.569446, 0.400996,
		36.198231, 33.171360, 36.069141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162506, 32.662102, 35.321728>,  <36.700542, 32.772747, 35.788445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162506, 32.662102, 35.321728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032276, 32.991886, 35.506886>,  <35.954136, 33.189754, 35.617981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032276, 32.991886, 35.506886>,  <36.162506, 32.662102, 35.321728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032276, 32.991886, 35.506886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464033, 0.287226, -0.837959,
		-0.823816, -0.487617, 0.289061,
		-0.325577, 0.824458, 0.462892,
		35.934605, 33.239223, 35.645752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427715, 32.688316, 35.166023>,  <36.162506, 32.662102, 35.321728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427715, 32.688316, 35.166023> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524769, 33.063404, 35.265465>,  <35.583000, 33.288456, 35.325130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524769, 33.063404, 35.265465>,  <35.427715, 32.688316, 35.166023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524769, 33.063404, 35.265465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481207, 0.338848, -0.808469,
		-0.842358, 0.076537, 0.533456,
		0.242638, 0.937723, 0.248602,
		35.597561, 33.344723, 35.340046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841854, 32.970898, 35.039490>,  <35.427715, 32.688316, 35.166023>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841854, 32.970898, 35.039490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075066, 33.295418, 35.056770>,  <35.214993, 33.490131, 35.067139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075066, 33.295418, 35.056770>,  <34.841854, 32.970898, 35.039490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075066, 33.295418, 35.056770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575844, 0.450163, -0.682464,
		-0.573129, 0.373023, 0.729641,
		0.583032, 0.811300, 0.043199,
		35.249977, 33.538807, 35.069729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436234, 33.599361, 35.175529>,  <34.841854, 32.970898, 35.039490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436234, 33.599361, 35.175529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769844, 33.763622, 35.028145>,  <34.970013, 33.862179, 34.939716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769844, 33.763622, 35.028145>,  <34.436234, 33.599361, 35.175529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.769844, 33.763622, 35.028145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551703, 0.626190, -0.550917,
		0.004490, 0.662760, 0.748818,
		0.834028, 0.410651, -0.368459,
		35.020054, 33.886818, 34.917606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491756, 34.316181, 35.338215>,  <34.436234, 33.599361, 35.175529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491756, 34.316181, 35.338215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737396, 34.293526, 35.023338>,  <34.884781, 34.279934, 34.834412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737396, 34.293526, 35.023338>,  <34.491756, 34.316181, 35.338215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737396, 34.293526, 35.023338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476793, 0.768209, -0.427226,
		0.628926, 0.637688, 0.444754,
		0.614101, -0.056638, -0.787192,
		34.921627, 34.276535, 34.787182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596962, 34.942043, 35.131920>,  <34.491756, 34.316181, 35.338215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596962, 34.942043, 35.131920> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736507, 34.749771, 34.810112>,  <34.820232, 34.634407, 34.617027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736507, 34.749771, 34.810112>,  <34.596962, 34.942043, 35.131920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736507, 34.749771, 34.810112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429150, 0.681220, -0.593102,
		0.833143, 0.552167, 0.031367,
		0.348859, -0.480677, -0.804516,
		34.841164, 34.605568, 34.568756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849701, 35.410343, 34.667976>,  <34.596962, 34.942043, 35.131920>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849701, 35.410343, 34.667976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784348, 35.095573, 34.429970>,  <34.745136, 34.906712, 34.287167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784348, 35.095573, 34.429970>,  <34.849701, 35.410343, 34.667976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784348, 35.095573, 34.429970> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364543, 0.608595, -0.704784,
		0.916741, 0.101760, -0.386303,
		-0.163384, -0.786929, -0.595020,
		34.735332, 34.859493, 34.251465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031273, 35.689857, 34.024639>,  <34.849701, 35.410343, 34.667976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031273, 35.689857, 34.024639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799095, 35.369114, 33.967915>,  <34.659790, 35.176670, 33.933880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799095, 35.369114, 33.967915>,  <35.031273, 35.689857, 34.024639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799095, 35.369114, 33.967915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399418, 0.432127, -0.808537,
		0.709613, -0.412666, -0.571101,
		-0.580444, -0.801856, -0.141816,
		34.624962, 35.128555, 33.925369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047668, 35.576992, 33.304298>,  <35.031273, 35.689857, 34.024639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047668, 35.576992, 33.304298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711586, 35.406960, 33.438969>,  <34.509937, 35.304939, 33.519772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711586, 35.406960, 33.438969>,  <35.047668, 35.576992, 33.304298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711586, 35.406960, 33.438969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518721, 0.449104, -0.727485,
		0.158037, -0.785883, -0.597840,
		-0.840210, -0.425081, 0.336679,
		34.459522, 35.279434, 33.539970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.518806, 30.195658, 39.778465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.164303, 30.371550, 39.720257>,  <35.951599, 30.477085, 39.685329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.164303, 30.371550, 39.720257>,  <36.518806, 30.195658, 39.778465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164303, 30.371550, 39.720257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331542, 0.382854, -0.862266,
		-0.323451, -0.812440, -0.485098,
		-0.886261, 0.439731, -0.145524,
		35.898426, 30.503469, 39.676601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587872, 30.152990, 39.093094>,  <36.518806, 30.195658, 39.778465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587872, 30.152990, 39.093094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.286255, 30.406115, 39.163490>,  <36.105286, 30.557989, 39.205730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.286255, 30.406115, 39.163490>,  <36.587872, 30.152990, 39.093094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286255, 30.406115, 39.163490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279247, 0.551379, -0.786131,
		-0.594513, -0.543627, -0.592472,
		-0.754039, 0.632811, 0.175996,
		36.060043, 30.595959, 39.216290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277306, 30.263380, 38.454605>,  <36.587872, 30.152990, 39.093094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277306, 30.263380, 38.454605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.120228, 30.569054, 38.659279>,  <36.025982, 30.752457, 38.782082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.120228, 30.569054, 38.659279>,  <36.277306, 30.263380, 38.454605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120228, 30.569054, 38.659279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005535, 0.554403, -0.832230,
		-0.919654, -0.329641, -0.213478,
		-0.392690, 0.764182, 0.511684,
		36.002422, 30.798307, 38.812782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640251, 30.573431, 38.067528>,  <36.277306, 30.263380, 38.454605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640251, 30.573431, 38.067528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.808704, 30.853521, 38.298122>,  <35.909775, 31.021576, 38.436478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.808704, 30.853521, 38.298122>,  <35.640251, 30.573431, 38.067528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808704, 30.853521, 38.298122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108443, 0.669909, -0.734481,
		-0.900494, 0.246795, 0.358053,
		0.421129, 0.700225, 0.576486,
		35.935043, 31.063589, 38.471069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.140556, 31.134436, 37.916225>,  <35.640251, 30.573431, 38.067528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.140556, 31.134436, 37.916225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.459942, 31.292931, 38.097530>,  <35.651573, 31.388027, 38.206314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.459942, 31.292931, 38.097530>,  <35.140556, 31.134436, 37.916225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459942, 31.292931, 38.097530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134413, 0.851205, -0.507330,
		-0.586845, 0.344160, 0.732917,
		0.798465, 0.396237, 0.453265,
		35.699482, 31.411802, 38.233509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050278, 31.860155, 38.080059>,  <35.140556, 31.134436, 37.916225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050278, 31.860155, 38.080059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.448185, 31.820124, 38.071869>,  <35.686928, 31.796104, 38.066956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.448185, 31.820124, 38.071869>,  <35.050278, 31.860155, 38.080059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448185, 31.820124, 38.071869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070159, 0.815037, -0.575145,
		0.074248, 0.570700, 0.817795,
		0.994769, -0.100079, -0.020475,
		35.746616, 31.790100, 38.065727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227230, 32.462704, 38.079685>,  <35.050278, 31.860155, 38.080059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227230, 32.462704, 38.079685> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.563828, 32.285530, 37.955948>,  <35.765785, 32.179226, 37.881706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.563828, 32.285530, 37.955948>,  <35.227230, 32.462704, 38.079685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563828, 32.285530, 37.955948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166288, 0.757124, -0.631752,
		0.514036, 0.480177, 0.710772,
		0.841496, -0.442937, -0.309342,
		35.816277, 32.152649, 37.863144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638569, 33.103859, 37.951130>,  <35.227230, 32.462704, 38.079685>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638569, 33.103859, 37.951130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.827358, 32.802124, 37.768608>,  <35.940632, 32.621082, 37.659096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.827358, 32.802124, 37.768608>,  <35.638569, 33.103859, 37.951130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827358, 32.802124, 37.768608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133445, 0.572748, -0.808797,
		0.871453, 0.320842, 0.370987,
		0.471978, -0.754334, -0.456308,
		35.968952, 32.575825, 37.631714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266521, 33.410934, 37.737942>,  <35.638569, 33.103859, 37.951130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266521, 33.410934, 37.737942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.196815, 33.098721, 37.497810>,  <36.154991, 32.911392, 37.353733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.196815, 33.098721, 37.497810>,  <36.266521, 33.410934, 37.737942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196815, 33.098721, 37.497810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044046, 0.615226, -0.787120,
		0.983714, -0.110724, -0.141591,
		-0.174263, -0.780537, -0.600329,
		36.144535, 32.864559, 37.317711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965603, 33.368137, 37.951126>,  <36.266521, 33.410934, 37.737942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965603, 33.368137, 37.951126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.117542, 33.711670, 38.088600>,  <37.208706, 33.917789, 38.171085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.117542, 33.711670, 38.088600>,  <36.965603, 33.368137, 37.951126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117542, 33.711670, 38.088600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247499, -0.452340, 0.856815,
		0.891323, -0.240402, -0.384383,
		0.379852, 0.858834, 0.343682,
		37.231499, 33.969318, 38.191704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655380, 33.117645, 38.220043>,  <36.965603, 33.368137, 37.951126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655380, 33.117645, 38.220043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.561882, 33.484509, 38.349152>,  <37.505783, 33.704628, 38.426617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.561882, 33.484509, 38.349152>,  <37.655380, 33.117645, 38.220043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.561882, 33.484509, 38.349152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215570, -0.274817, 0.937019,
		0.948099, 0.288603, -0.133475,
		-0.233745, 0.917161, 0.322769,
		37.491760, 33.759655, 38.445984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174236, 33.325699, 38.767994>,  <37.655380, 33.117645, 38.220043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174236, 33.325699, 38.767994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.902615, 33.606415, 38.854141>,  <37.739643, 33.774845, 38.905830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.902615, 33.606415, 38.854141>,  <38.174236, 33.325699, 38.767994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902615, 33.606415, 38.854141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168725, -0.136325, 0.976190,
		0.714437, 0.699223, -0.025837,
		-0.679053, 0.701785, 0.215372,
		37.698898, 33.816952, 38.918755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483799, 33.787796, 39.342533>,  <38.174236, 33.325699, 38.767994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483799, 33.787796, 39.342533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.085930, 33.826786, 39.355915>,  <37.847206, 33.850182, 39.363945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.085930, 33.826786, 39.355915>,  <38.483799, 33.787796, 39.342533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085930, 33.826786, 39.355915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007828, -0.252216, 0.967639,
		0.102762, 0.962749, 0.250110,
		-0.994675, 0.097479, 0.033454,
		37.787529, 33.856030, 39.365952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433636, 34.281815, 39.843250>,  <38.483799, 33.787796, 39.342533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433636, 34.281815, 39.843250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.100136, 34.063362, 39.810764>,  <37.900036, 33.932289, 39.791271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.100136, 34.063362, 39.810764>,  <38.433636, 34.281815, 39.843250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100136, 34.063362, 39.810764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036151, -0.200772, 0.978971,
		-0.550952, 0.813285, 0.187137,
		-0.833754, -0.546131, -0.081214,
		37.850010, 33.899525, 39.786400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031929, 34.417866, 40.479092>,  <38.433636, 34.281815, 39.843250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031929, 34.417866, 40.479092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.855255, 34.082661, 40.350937>,  <37.749252, 33.881538, 40.274044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.855255, 34.082661, 40.350937>,  <38.031929, 34.417866, 40.479092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855255, 34.082661, 40.350937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109646, -0.304007, 0.946339,
		-0.890445, 0.453112, 0.042391,
		-0.441685, -0.838015, -0.320383,
		37.722748, 33.831257, 40.254822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478073, 34.236771, 41.036488>,  <38.031929, 34.417866, 40.479092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478073, 34.236771, 41.036488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.512497, 33.892101, 40.836441>,  <37.533150, 33.685299, 40.716412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.512497, 33.892101, 40.836441>,  <37.478073, 34.236771, 41.036488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512497, 33.892101, 40.836441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311928, -0.500044, 0.807872,
		-0.946200, 0.086477, -0.311812,
		0.086057, -0.861671, -0.500117,
		37.538315, 33.633598, 40.686405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836636, 33.921310, 41.049141>,  <37.478073, 34.236771, 41.036488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836636, 33.921310, 41.049141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.091522, 33.620880, 40.980042>,  <37.244453, 33.440620, 40.938580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.091522, 33.620880, 40.980042>,  <36.836636, 33.921310, 41.049141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091522, 33.620880, 40.980042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472317, -0.557708, 0.682553,
		-0.608996, -0.353336, -0.710125,
		0.637213, -0.751076, -0.172756,
		37.282688, 33.395557, 40.928215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431976, 33.302174, 40.963356>,  <36.836636, 33.921310, 41.049141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431976, 33.302174, 40.963356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.809139, 33.207104, 41.056690>,  <37.035435, 33.150063, 41.112690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.809139, 33.207104, 41.056690>,  <36.431976, 33.302174, 40.963356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809139, 33.207104, 41.056690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287807, -0.228842, 0.929945,
		-0.167623, -0.944005, -0.284180,
		0.942905, -0.237669, 0.233332,
		37.092010, 33.135803, 41.126690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443817, 32.550289, 41.030682>,  <36.431976, 33.302174, 40.963356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443817, 32.550289, 41.030682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.751797, 32.697277, 41.239353>,  <36.936584, 32.785469, 41.364555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.751797, 32.697277, 41.239353>,  <36.443817, 32.550289, 41.030682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751797, 32.697277, 41.239353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350979, -0.438890, 0.827157,
		0.532913, -0.819966, -0.208948,
		0.769946, 0.367466, 0.521681,
		36.982780, 32.807518, 41.395859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632267, 31.997171, 41.397305>,  <36.443817, 32.550289, 41.030682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632267, 31.997171, 41.397305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.771832, 32.316174, 41.594181>,  <36.855568, 32.507576, 41.712307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.771832, 32.316174, 41.594181>,  <36.632267, 31.997171, 41.397305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771832, 32.316174, 41.594181> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113187, -0.485487, 0.866886,
		0.930297, -0.358172, -0.079123,
		0.348907, 0.797506, 0.492187,
		36.876503, 32.555424, 41.741837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065075, 31.650593, 41.866516>,  <36.632267, 31.997171, 41.397305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065075, 31.650593, 41.866516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.022419, 32.020390, 42.012913>,  <36.996826, 32.242268, 42.100750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.022419, 32.020390, 42.012913>,  <37.065075, 31.650593, 41.866516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.022419, 32.020390, 42.012913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170896, -0.379650, 0.909209,
		0.979502, 0.034408, 0.198476,
		-0.106636, 0.924490, 0.365988,
		36.990429, 32.297737, 42.122707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350578, 31.690779, 42.391876>,  <37.065075, 31.650593, 41.866516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350578, 31.690779, 42.391876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.088409, 31.986853, 42.451946>,  <36.931110, 32.164497, 42.487988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.088409, 31.986853, 42.451946>,  <37.350578, 31.690779, 42.391876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088409, 31.986853, 42.451946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152378, -0.324344, 0.933586,
		0.739733, 0.589007, 0.325369,
		-0.655420, 0.740184, 0.150176,
		36.891785, 32.208908, 42.496998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522243, 31.939285, 43.020412>,  <37.350578, 31.690779, 42.391876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522243, 31.939285, 43.020412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.155861, 32.093353, 42.975395>,  <36.936031, 32.185795, 42.948383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.155861, 32.093353, 42.975395>,  <37.522243, 31.939285, 43.020412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155861, 32.093353, 42.975395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237419, -0.294073, 0.925826,
		0.323505, 0.874737, 0.360805,
		-0.915957, 0.385171, -0.112545,
		36.881073, 32.208904, 42.941631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.580772, 33.334141, 42.456589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.932568, 33.147369, 42.493416>,  <31.143644, 33.035305, 42.515511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.932568, 33.147369, 42.493416>,  <30.580772, 33.334141, 42.456589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932568, 33.147369, 42.493416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379349, 0.570969, -0.728072,
		0.287392, 0.675256, 0.679290,
		0.879489, -0.466930, 0.092066,
		31.196415, 33.007290, 42.521034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015041, 33.758598, 42.613079>,  <30.580772, 33.334141, 42.456589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015041, 33.758598, 42.613079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.272579, 33.497276, 42.453751>,  <31.427101, 33.340481, 42.358154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.272579, 33.497276, 42.453751>,  <31.015041, 33.758598, 42.613079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272579, 33.497276, 42.453751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391343, 0.728490, -0.562275,
		0.657508, 0.206138, 0.724699,
		0.643843, -0.653307, -0.398318,
		31.465733, 33.301285, 42.334255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659927, 34.153130, 42.561905>,  <31.015041, 33.758598, 42.613079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659927, 34.153130, 42.561905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.696215, 33.830021, 42.328918>,  <31.717987, 33.636154, 42.189125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.696215, 33.830021, 42.328918>,  <31.659927, 34.153130, 42.561905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696215, 33.830021, 42.328918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423926, 0.560566, -0.711374,
		0.901142, -0.182391, 0.393289,
		0.090716, -0.807774, -0.582470,
		31.723429, 33.587688, 42.154179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354858, 34.236526, 42.240368>,  <31.659927, 34.153130, 42.561905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354858, 34.236526, 42.240368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.127518, 33.992786, 42.019218>,  <31.991114, 33.846542, 41.886528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.127518, 33.992786, 42.019218>,  <32.354858, 34.236526, 42.240368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127518, 33.992786, 42.019218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269353, 0.497130, -0.824809,
		0.777447, -0.617701, -0.118415,
		-0.568353, -0.609350, -0.552871,
		31.957012, 33.809982, 41.853355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732910, 34.194988, 41.542988>,  <32.354858, 34.236526, 42.240368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732910, 34.194988, 41.542988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.357868, 34.072651, 41.476837>,  <32.132843, 33.999249, 41.437145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.357868, 34.072651, 41.476837>,  <32.732910, 34.194988, 41.542988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357868, 34.072651, 41.476837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064089, 0.315472, -0.946768,
		0.341744, -0.898294, -0.276186,
		-0.937605, -0.305852, -0.165382,
		32.076588, 33.980896, 41.427223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899853, 33.805153, 40.984619>,  <32.732910, 34.194988, 41.542988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899853, 33.805153, 40.984619> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.506706, 33.878872, 40.984344>,  <32.270817, 33.923103, 40.984180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.506706, 33.878872, 40.984344>,  <32.899853, 33.805153, 40.984619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.506706, 33.878872, 40.984344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069847, 0.369065, -0.926775,
		-0.170549, -0.910948, -0.375616,
		-0.982870, 0.184296, -0.000683,
		32.211845, 33.934162, 40.984138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632362, 33.538483, 40.359211>,  <32.899853, 33.805153, 40.984619>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632362, 33.538483, 40.359211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.358021, 33.803486, 40.479664>,  <32.193417, 33.962490, 40.551933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.358021, 33.803486, 40.479664>,  <32.632362, 33.538483, 40.359211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358021, 33.803486, 40.479664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020347, 0.396170, -0.917952,
		-0.727451, -0.635711, -0.258236,
		-0.685858, 0.662511, 0.301129,
		32.152264, 34.002239, 40.570004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170101, 33.559708, 39.859562>,  <32.632362, 33.538483, 40.359211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170101, 33.559708, 39.859562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.089497, 33.894238, 40.063507>,  <32.041134, 34.094955, 40.185875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.089497, 33.894238, 40.063507>,  <32.170101, 33.559708, 39.859562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089497, 33.894238, 40.063507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119006, 0.537587, -0.834768,
		-0.972229, -0.107542, -0.207859,
		-0.201516, 0.836322, 0.509859,
		32.029041, 34.145134, 40.216465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705877, 33.861507, 39.487637>,  <32.170101, 33.559708, 39.859562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705877, 33.861507, 39.487637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.833309, 34.167587, 39.711414>,  <31.909767, 34.351234, 39.845680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.833309, 34.167587, 39.711414>,  <31.705877, 33.861507, 39.487637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833309, 34.167587, 39.711414> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068759, 0.569989, -0.818770,
		-0.945399, 0.299310, 0.128972,
		0.318579, 0.765197, 0.559448,
		31.928883, 34.397148, 39.879250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316805, 34.349697, 39.343880>,  <31.705877, 33.861507, 39.487637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316805, 34.349697, 39.343880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.617767, 34.569462, 39.489223>,  <31.798344, 34.701321, 39.576431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.617767, 34.569462, 39.489223>,  <31.316805, 34.349697, 39.343880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.617767, 34.569462, 39.489223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068974, 0.614314, -0.786042,
		-0.655080, 0.566359, 0.500108,
		0.752405, 0.549415, 0.363360,
		31.843489, 34.734287, 39.598232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137518, 35.045406, 39.217102>,  <31.316805, 34.349697, 39.343880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137518, 35.045406, 39.217102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.529085, 35.052567, 39.298489>,  <31.764025, 35.056862, 39.347321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.529085, 35.052567, 39.298489>,  <31.137518, 35.045406, 39.217102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.529085, 35.052567, 39.298489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134978, 0.690960, -0.710180,
		-0.153297, 0.722672, 0.673977,
		0.978918, 0.017897, 0.203467,
		31.822762, 35.057934, 39.359528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331703, 35.739052, 39.268440>,  <31.137518, 35.045406, 39.217102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331703, 35.739052, 39.268440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.681406, 35.557720, 39.198967>,  <31.891228, 35.448921, 39.157284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.681406, 35.557720, 39.198967>,  <31.331703, 35.739052, 39.268440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681406, 35.557720, 39.198967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172657, 0.624725, -0.761517,
		0.453724, 0.635774, 0.624441,
		0.874256, -0.453333, -0.173682,
		31.943684, 35.421719, 39.146862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755733, 36.363327, 39.093708>,  <31.331703, 35.739052, 39.268440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755733, 36.363327, 39.093708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.941576, 36.042988, 38.942558>,  <32.053082, 35.850784, 38.851868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.941576, 36.042988, 38.942558>,  <31.755733, 36.363327, 39.093708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941576, 36.042988, 38.942558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293562, 0.541889, -0.787514,
		0.835441, 0.254956, 0.486863,
		0.464606, -0.800846, -0.377871,
		32.080959, 35.802734, 38.829197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.465973, 36.530926, 38.992451>,  <31.755733, 36.363327, 39.093708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.465973, 36.530926, 38.992451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.365818, 36.240288, 38.736523>,  <32.305725, 36.065907, 38.582966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.365818, 36.240288, 38.736523>,  <32.465973, 36.530926, 38.992451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365818, 36.240288, 38.736523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095981, 0.638988, -0.763205,
		0.963377, -0.252507, -0.090256,
		-0.250387, -0.726591, -0.639822,
		32.290703, 36.022312, 38.544575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300594, 36.650063, 39.133629>,  <32.465973, 36.530926, 38.992451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300594, 36.650063, 39.133629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.458427, 36.933071, 39.368137>,  <33.553127, 37.102875, 39.508842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.458427, 36.933071, 39.368137>,  <33.300594, 36.650063, 39.133629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458427, 36.933071, 39.368137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255765, -0.528259, 0.809646,
		0.882546, -0.469422, -0.027484,
		0.394584, 0.707520, 0.586275,
		33.576801, 37.145329, 39.544022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507172, 36.301968, 39.823364>,  <33.300594, 36.650063, 39.133629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507172, 36.301968, 39.823364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.546391, 36.677788, 39.954590>,  <33.569923, 36.903282, 40.033325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.546391, 36.677788, 39.954590>,  <33.507172, 36.301968, 39.823364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546391, 36.677788, 39.954590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272697, -0.291667, 0.916824,
		0.957091, -0.179354, 0.227616,
		0.098048, 0.939555, 0.328061,
		33.575806, 36.959656, 40.053009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964020, 36.252300, 40.572121>,  <33.507172, 36.301968, 39.823364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964020, 36.252300, 40.572121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.770721, 36.602348, 40.562057>,  <33.654743, 36.812378, 40.556019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.770721, 36.602348, 40.562057>,  <33.964020, 36.252300, 40.572121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770721, 36.602348, 40.562057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224124, -0.095880, 0.969833,
		0.846311, 0.474306, 0.242470,
		-0.483246, 0.875123, -0.025159,
		33.625748, 36.864883, 40.554508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203182, 36.629189, 41.109699>,  <33.964020, 36.252300, 40.572121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203182, 36.629189, 41.109699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.866604, 36.834320, 41.041615>,  <33.664658, 36.957397, 41.000763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.866604, 36.834320, 41.041615>,  <34.203182, 36.629189, 41.109699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866604, 36.834320, 41.041615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268736, -0.123889, 0.955213,
		0.468772, 0.849505, 0.242062,
		-0.841447, 0.512828, -0.170216,
		33.614170, 36.988167, 40.990551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087200, 37.079418, 41.755581>,  <34.203182, 36.629189, 41.109699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087200, 37.079418, 41.755581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.750778, 37.009258, 41.550892>,  <33.548923, 36.967163, 41.428078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.750778, 37.009258, 41.550892>,  <34.087200, 37.079418, 41.755581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750778, 37.009258, 41.550892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489646, -0.155267, 0.857986,
		-0.229942, 0.972177, 0.044706,
		-0.841055, -0.175397, -0.511725,
		33.498463, 36.956638, 41.397373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615200, 37.456558, 42.108974>,  <34.087200, 37.079418, 41.755581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615200, 37.456558, 42.108974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.426430, 37.170322, 41.902981>,  <33.313168, 36.998581, 41.779385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.426430, 37.170322, 41.902981>,  <33.615200, 37.456558, 42.108974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426430, 37.170322, 41.902981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408810, -0.339916, 0.846954,
		-0.781127, 0.610233, -0.132125,
		-0.471928, -0.715593, -0.514987,
		33.284851, 36.955647, 41.748486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871426, 37.353546, 42.426517>,  <33.615200, 37.456558, 42.108974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871426, 37.353546, 42.426517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.938747, 37.002136, 42.247696>,  <32.979141, 36.791290, 42.140404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.938747, 37.002136, 42.247696>,  <32.871426, 37.353546, 42.426517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938747, 37.002136, 42.247696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309433, -0.477688, 0.822232,
		-0.935909, -0.000047, -0.352241,
		0.168300, -0.878529, -0.447058,
		32.989239, 36.738579, 42.113579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173145, 36.986553, 42.578678>,  <32.871426, 37.353546, 42.426517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173145, 36.986553, 42.578678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.457870, 36.729870, 42.464470>,  <32.628708, 36.575859, 42.395943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.457870, 36.729870, 42.464470>,  <32.173145, 36.986553, 42.578678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457870, 36.729870, 42.464470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103725, -0.498103, 0.860892,
		-0.694666, -0.583179, -0.421119,
		0.711815, -0.641713, -0.285525,
		32.671413, 36.537357, 42.378811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902512, 36.365131, 42.670536>,  <32.173145, 36.986553, 42.578678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902512, 36.365131, 42.670536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.289284, 36.268032, 42.639256>,  <32.521347, 36.209770, 42.620487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.289284, 36.268032, 42.639256>,  <31.902512, 36.365131, 42.670536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289284, 36.268032, 42.639256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092113, -0.618329, 0.780503,
		-0.237818, -0.747490, -0.620243,
		0.966932, -0.242751, -0.078196,
		32.579365, 36.195206, 42.615795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909855, 35.564911, 42.723644>,  <31.902512, 36.365131, 42.670536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909855, 35.564911, 42.723644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.273766, 35.704342, 42.813801>,  <32.492111, 35.788002, 42.867893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.273766, 35.704342, 42.813801>,  <31.909855, 35.564911, 42.723644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273766, 35.704342, 42.813801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034982, -0.605434, 0.795126,
		0.413622, -0.715502, -0.563004,
		0.909777, 0.348576, 0.225391,
		32.546700, 35.808914, 42.881416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271290, 34.986877, 42.765442>,  <31.909855, 35.564911, 42.723644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271290, 34.986877, 42.765442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.459457, 35.269753, 42.976570>,  <32.572357, 35.439476, 43.103249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.459457, 35.269753, 42.976570>,  <32.271290, 34.986877, 42.765442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459457, 35.269753, 42.976570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108856, -0.640073, 0.760563,
		0.875703, -0.300327, -0.378084,
		0.470420, 0.707184, 0.527821,
		32.600582, 35.481907, 43.134918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739491, 34.644581, 43.126034>,  <32.271290, 34.986877, 42.765442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739491, 34.644581, 43.126034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.768452, 34.979958, 43.342102>,  <32.785828, 35.181183, 43.471741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.768452, 34.979958, 43.342102>,  <32.739491, 34.644581, 43.126034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768452, 34.979958, 43.342102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410970, -0.518553, 0.749804,
		0.908769, 0.167704, -0.382117,
		0.072403, 0.838438, 0.540167,
		32.790173, 35.231487, 43.504150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455700, 34.715660, 43.400482>,  <32.739491, 34.644581, 43.126034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455700, 34.715660, 43.400482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.207729, 34.929897, 43.629860>,  <33.058949, 35.058441, 43.767487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.207729, 34.929897, 43.629860>,  <33.455700, 34.715660, 43.400482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207729, 34.929897, 43.629860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272010, -0.538809, 0.797305,
		0.736005, 0.650251, 0.188335,
		-0.619925, 0.535592, 0.573441,
		33.021751, 35.090576, 43.801891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788090, 34.843330, 44.056297>,  <33.455700, 34.715660, 43.400482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788090, 34.843330, 44.056297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.399742, 34.884609, 44.142796>,  <33.166733, 34.909378, 44.194695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.399742, 34.884609, 44.142796>,  <33.788090, 34.843330, 44.056297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399742, 34.884609, 44.142796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104207, -0.630812, 0.768906,
		0.215759, 0.769042, 0.601683,
		-0.970870, 0.103199, 0.216243,
		33.108482, 34.915569, 44.207668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365681, 35.294167, 44.511417>,  <33.788090, 34.843330, 44.056297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365681, 35.294167, 44.511417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.752373, 35.192226, 44.502659>,  <34.984390, 35.131062, 44.497402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.752373, 35.192226, 44.502659>,  <34.365681, 35.294167, 44.511417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752373, 35.192226, 44.502659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160378, 0.670612, -0.724264,
		0.199262, 0.696658, 0.689175,
		0.966733, -0.254847, -0.021899,
		35.042393, 35.115772, 44.496090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706047, 35.926414, 44.560909>,  <34.365681, 35.294167, 44.511417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706047, 35.926414, 44.560909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.977596, 35.674103, 44.410576>,  <35.140526, 35.522717, 44.320377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.977596, 35.674103, 44.410576>,  <34.706047, 35.926414, 44.560909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977596, 35.674103, 44.410576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188129, 0.644191, -0.741368,
		0.709746, 0.432590, 0.555991,
		0.678873, -0.630781, -0.375829,
		35.181259, 35.484867, 44.297829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413498, 36.271553, 44.498028>,  <34.706047, 35.926414, 44.560909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413498, 36.271553, 44.498028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.453884, 35.982609, 44.224384>,  <35.478115, 35.809242, 44.060200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.453884, 35.982609, 44.224384>,  <35.413498, 36.271553, 44.498028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453884, 35.982609, 44.224384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349299, 0.669586, -0.655474,
		0.931556, -0.172780, 0.319922,
		0.100962, -0.722359, -0.684108,
		35.484173, 35.765900, 44.019154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997215, 36.477871, 44.165558>,  <35.413498, 36.271553, 44.498028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997215, 36.477871, 44.165558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.873501, 36.207050, 43.898441>,  <35.799271, 36.044559, 43.738171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.873501, 36.207050, 43.898441>,  <35.997215, 36.477871, 44.165558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873501, 36.207050, 43.898441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362856, 0.565070, -0.740967,
		0.879020, -0.471484, 0.070903,
		-0.309289, -0.677052, -0.667788,
		35.780716, 36.003933, 43.698105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644081, 36.258648, 43.746449>,  <35.997215, 36.477871, 44.165558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644081, 36.258648, 43.746449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.322544, 36.158962, 43.530396>,  <36.129623, 36.099152, 43.400764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.322544, 36.158962, 43.530396>,  <36.644081, 36.258648, 43.746449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322544, 36.158962, 43.530396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414390, 0.416835, -0.809030,
		0.426787, -0.874146, -0.231782,
		-0.803825, -0.249236, -0.540137,
		36.081394, 36.084198, 43.368359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971947, 35.886608, 43.161636>,  <36.644081, 36.258648, 43.746449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971947, 35.886608, 43.161636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.599113, 35.966694, 43.040878>,  <36.375416, 36.014748, 42.968422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.599113, 35.966694, 43.040878>,  <36.971947, 35.886608, 43.161636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.599113, 35.966694, 43.040878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323917, 0.087509, -0.942030,
		-0.162194, -0.975835, -0.146420,
		-0.932079, 0.200219, -0.301897,
		36.319489, 36.026760, 42.950310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808384, 35.620075, 42.494503>,  <36.971947, 35.886608, 43.161636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808384, 35.620075, 42.494503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.529819, 35.906750, 42.509338>,  <36.362682, 36.078754, 42.518242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.529819, 35.906750, 42.509338>,  <36.808384, 35.620075, 42.494503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529819, 35.906750, 42.509338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189126, 0.233141, -0.953874,
		-0.692277, -0.657271, -0.297906,
		-0.696408, 0.716687, 0.037091,
		36.320896, 36.121758, 42.520466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288174, 35.425003, 41.964237>,  <36.808384, 35.620075, 42.494503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288174, 35.425003, 41.964237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.266460, 35.816490, 42.043396>,  <36.253433, 36.051384, 42.090893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.266460, 35.816490, 42.043396>,  <36.288174, 35.425003, 41.964237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266460, 35.816490, 42.043396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026558, 0.196704, -0.980103,
		-0.998172, -0.058463, 0.015314,
		-0.054287, 0.978718, 0.197897,
		36.250175, 36.110107, 42.102764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693714, 35.664375, 41.595234>,  <36.288174, 35.425003, 41.964237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693714, 35.664375, 41.595234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.919014, 35.983227, 41.682259>,  <36.054195, 36.174538, 41.734474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.919014, 35.983227, 41.682259>,  <35.693714, 35.664375, 41.595234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919014, 35.983227, 41.682259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027731, 0.281388, -0.959194,
		-0.825821, 0.534233, 0.180597,
		0.563250, 0.797130, 0.217561,
		36.087990, 36.222366, 41.747528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470341, 36.176186, 41.166473>,  <35.693714, 35.664375, 41.595234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470341, 36.176186, 41.166473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.817394, 36.356026, 41.251392>,  <36.025627, 36.463928, 41.302345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.817394, 36.356026, 41.251392>,  <35.470341, 36.176186, 41.166473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817394, 36.356026, 41.251392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048787, 0.347945, -0.936245,
		-0.494806, 0.822674, 0.279954,
		0.867633, 0.449601, 0.212301,
		36.077682, 36.490906, 41.315083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416443, 36.759274, 40.774502>,  <35.470341, 36.176186, 41.166473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416443, 36.759274, 40.774502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.808342, 36.741219, 40.852528>,  <36.043484, 36.730385, 40.899345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.808342, 36.741219, 40.852528>,  <35.416443, 36.759274, 40.774502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808342, 36.741219, 40.852528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196298, 0.408444, -0.891426,
		-0.039442, 0.911667, 0.409033,
		0.979751, -0.045133, 0.195068,
		36.102268, 36.727680, 40.911049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627441, 37.336411, 40.530354>,  <35.416443, 36.759274, 40.774502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627441, 37.336411, 40.530354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.939407, 37.089451, 40.571442>,  <36.126587, 36.941277, 40.596092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.939407, 37.089451, 40.571442>,  <35.627441, 37.336411, 40.530354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939407, 37.089451, 40.571442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304547, 0.230978, -0.924067,
		0.546790, 0.751978, 0.368170,
		0.779917, -0.617396, 0.102716,
		36.173382, 36.904232, 40.602257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182770, 37.776211, 40.549454>,  <35.627441, 37.336411, 40.530354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182770, 37.776211, 40.549454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.336678, 37.433849, 40.411251>,  <36.429024, 37.228432, 40.328331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.336678, 37.433849, 40.411251>,  <36.182770, 37.776211, 40.549454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336678, 37.433849, 40.411251> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300712, 0.470143, -0.829781,
		0.872652, 0.215381, 0.438280,
		0.384774, -0.855907, -0.345504,
		36.452110, 37.177078, 40.307598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946178, 37.874985, 40.401768>,  <36.182770, 37.776211, 40.549454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946178, 37.874985, 40.401768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.828888, 37.555439, 40.191689>,  <36.758514, 37.363712, 40.065639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.828888, 37.555439, 40.191689>,  <36.946178, 37.874985, 40.401768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828888, 37.555439, 40.191689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457507, 0.365109, -0.810792,
		0.839467, -0.478028, 0.258426,
		-0.293227, -0.798865, -0.525198,
		36.740921, 37.315781, 40.034130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.702932, 28.197201, 38.363827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.345640, 28.026918, 38.421677>,  <29.131266, 27.924749, 38.456387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.345640, 28.026918, 38.421677>,  <29.702932, 28.197201, 38.363827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345640, 28.026918, 38.421677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427330, 0.703876, -0.567404,
		0.139752, -0.568624, -0.810640,
		-0.893229, -0.425707, 0.144622,
		29.077671, 27.899206, 38.465065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.312393, 28.406425, 37.742126>,  <29.702932, 28.197201, 38.363827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.312393, 28.406425, 37.742126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.017862, 28.307928, 37.994217>,  <28.841145, 28.248829, 38.145470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.017862, 28.307928, 37.994217>,  <29.312393, 28.406425, 37.742126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.017862, 28.307928, 37.994217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574982, 0.718708, -0.390965,
		-0.356676, -0.650247, -0.670791,
		-0.736327, -0.246245, 0.630226,
		28.796965, 28.234055, 38.183285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755739, 28.214027, 37.283569>,  <29.312393, 28.406425, 37.742126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755739, 28.214027, 37.283569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.582020, 28.313644, 37.629833>,  <28.477787, 28.373415, 37.837589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.582020, 28.313644, 37.629833>,  <28.755739, 28.214027, 37.283569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582020, 28.313644, 37.629833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621199, 0.613125, -0.488047,
		-0.652301, -0.749703, -0.111574,
		-0.434299, 0.249044, 0.865656,
		28.451731, 28.388357, 37.889530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022032, 28.350124, 37.165024>,  <28.755739, 28.214027, 37.283569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.022032, 28.350124, 37.165024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.079929, 28.533958, 37.515530>,  <28.114668, 28.644258, 37.725834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.079929, 28.533958, 37.515530>,  <28.022032, 28.350124, 37.165024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079929, 28.533958, 37.515530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715571, 0.660251, -0.228092,
		-0.683379, -0.594012, 0.424432,
		0.144743, 0.459584, 0.876260,
		28.123352, 28.671833, 37.778408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.499830, 28.634409, 37.189030>,  <28.022032, 28.350124, 37.165024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.499830, 28.634409, 37.189030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.669718, 28.833765, 37.491348>,  <27.771650, 28.953379, 37.672737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.669718, 28.833765, 37.491348>,  <27.499830, 28.634409, 37.189030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.669718, 28.833765, 37.491348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716948, 0.694925, -0.055362,
		-0.552811, -0.518350, 0.652466,
		0.424718, 0.498389, 0.755793,
		27.797132, 28.983282, 37.718086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.991579, 28.869377, 37.542576>,  <27.499830, 28.634409, 37.189030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.991579, 28.869377, 37.542576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.284391, 29.126059, 37.634094>,  <27.460079, 29.280067, 37.689003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.284391, 29.126059, 37.634094>,  <26.991579, 28.869377, 37.542576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.284391, 29.126059, 37.634094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568989, 0.760573, -0.312699,
		-0.374673, 0.098725, 0.921886,
		0.732032, 0.641703, 0.228793,
		27.504002, 29.318569, 37.702732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.676983, 29.429459, 37.837814>,  <26.991579, 28.869377, 37.542576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.676983, 29.429459, 37.837814> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.033598, 29.583162, 37.741894>,  <27.247566, 29.675385, 37.684341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.033598, 29.583162, 37.741894>,  <26.676983, 29.429459, 37.837814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033598, 29.583162, 37.741894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433957, 0.876320, -0.209151,
		0.129773, 0.290529, 0.948025,
		0.891538, 0.384260, -0.239800,
		27.301060, 29.698441, 37.669952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.683268, 30.024229, 38.227615>,  <26.676983, 29.429459, 37.837814>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.683268, 30.024229, 38.227615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.932272, 30.056292, 37.916218>,  <27.081675, 30.075529, 37.729378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.932272, 30.056292, 37.916218>,  <26.683268, 30.024229, 38.227615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.932272, 30.056292, 37.916218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441835, 0.857043, -0.265065,
		0.645958, 0.508973, 0.568934,
		0.622511, 0.080154, -0.778495,
		27.119026, 30.080338, 37.682671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.730438, 30.702621, 38.136154>,  <26.683268, 30.024229, 38.227615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.730438, 30.702621, 38.136154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.873476, 30.563410, 37.789513>,  <26.959299, 30.479883, 37.581528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.873476, 30.563410, 37.789513>,  <26.730438, 30.702621, 38.136154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.873476, 30.563410, 37.789513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393909, 0.785164, -0.477863,
		0.846735, 0.512245, 0.143681,
		0.357596, -0.348027, -0.866604,
		26.980755, 30.459002, 37.529530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.101408, 31.321259, 37.901112>,  <26.730438, 30.702621, 38.136154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.101408, 31.321259, 37.901112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.015842, 31.064930, 37.606197>,  <26.964504, 30.911133, 37.429249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.015842, 31.064930, 37.606197>,  <27.101408, 31.321259, 37.901112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.015842, 31.064930, 37.606197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384407, 0.749083, -0.539542,
		0.898039, 0.168003, -0.406573,
		-0.213912, -0.640819, -0.737287,
		26.951668, 30.872684, 37.385010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.354441, 31.655104, 37.341507>,  <27.101408, 31.321259, 37.901112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.354441, 31.655104, 37.341507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.093760, 31.394255, 37.186581>,  <26.937351, 31.237745, 37.093624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.093760, 31.394255, 37.186581>,  <27.354441, 31.655104, 37.341507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.093760, 31.394255, 37.186581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352116, 0.712418, -0.607021,
		0.671784, -0.259218, -0.693910,
		-0.651706, -0.652124, -0.387317,
		26.898249, 31.198618, 37.070385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.307323, 31.810616, 36.650307>,  <27.354441, 31.655104, 37.341507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.307323, 31.810616, 36.650307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.972393, 31.597363, 36.698723>,  <26.771435, 31.469410, 36.727772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.972393, 31.597363, 36.698723>,  <27.307323, 31.810616, 36.650307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.972393, 31.597363, 36.698723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442854, 0.531611, -0.721990,
		0.320569, -0.658146, -0.681233,
		-0.837326, -0.533135, 0.121045,
		26.721195, 31.437422, 36.735035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.908884, 31.683977, 35.995480>,  <27.307323, 31.810616, 36.650307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.908884, 31.683977, 35.995480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.640100, 31.625509, 36.285889>,  <26.478830, 31.590429, 36.460133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.640100, 31.625509, 36.285889>,  <26.908884, 31.683977, 35.995480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.640100, 31.625509, 36.285889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508699, 0.803567, -0.309040,
		-0.538235, -0.576988, -0.614319,
		-0.671959, -0.146167, 0.726021,
		26.438513, 31.581659, 36.503696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.266226, 31.654642, 35.696892>,  <26.908884, 31.683977, 35.995480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.266226, 31.654642, 35.696892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.172749, 31.746437, 36.074829>,  <26.116663, 31.801514, 36.301590>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.172749, 31.746437, 36.074829>,  <26.266226, 31.654642, 35.696892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.172749, 31.746437, 36.074829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400990, 0.862514, -0.308668,
		-0.885774, -0.451005, -0.109541,
		-0.233691, 0.229486, 0.944841,
		26.102642, 31.815283, 36.358280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.543571, 31.903929, 35.722580>,  <26.266226, 31.654642, 35.696892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.543571, 31.903929, 35.722580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.717144, 32.048214, 36.052814>,  <25.821287, 32.134785, 36.250954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.717144, 32.048214, 36.052814>,  <25.543571, 31.903929, 35.722580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.717144, 32.048214, 36.052814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303513, 0.921317, -0.243013,
		-0.848282, -0.145125, 0.509270,
		0.433931, 0.360714, 0.825584,
		25.847324, 32.156429, 36.300491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.037094, 32.329357, 36.094162>,  <25.543571, 31.903929, 35.722580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.037094, 32.329357, 36.094162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.394619, 32.464756, 36.211819>,  <25.609135, 32.545994, 36.282413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.394619, 32.464756, 36.211819>,  <25.037094, 32.329357, 36.094162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.394619, 32.464756, 36.211819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244971, 0.917964, -0.311981,
		-0.375619, 0.206795, 0.903408,
		0.893812, 0.338495, 0.294146,
		25.662762, 32.566303, 36.300064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.971411, 32.989475, 36.005142>,  <25.037094, 32.329357, 36.094162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.971411, 32.989475, 36.005142> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.364008, 33.022415, 36.074299>,  <25.599566, 33.042179, 36.115791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.364008, 33.022415, 36.074299>,  <24.971411, 32.989475, 36.005142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.364008, 33.022415, 36.074299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013682, 0.930660, -0.365630,
		-0.191010, 0.356497, 0.914562,
		0.981493, 0.082352, 0.172888,
		25.658455, 33.047119, 36.126163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.108427, 33.637753, 36.449829>,  <24.971411, 32.989475, 36.005142>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.108427, 33.637753, 36.449829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.435749, 33.540375, 36.241554>,  <25.632141, 33.481949, 36.116589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.435749, 33.540375, 36.241554>,  <25.108427, 33.637753, 36.449829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.435749, 33.540375, 36.241554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015742, 0.896047, -0.443679,
		0.574570, 0.371261, 0.729407,
		0.818304, -0.243442, -0.520687,
		25.681240, 33.467342, 36.085350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.603451, 34.065945, 36.569702>,  <25.108427, 33.637753, 36.449829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.603451, 34.065945, 36.569702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.723110, 33.946941, 36.207047>,  <25.794905, 33.875542, 35.989452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.723110, 33.946941, 36.207047>,  <25.603451, 34.065945, 36.569702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.723110, 33.946941, 36.207047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120055, 0.954338, -0.273543,
		0.946624, -0.027018, 0.321205,
		0.299148, -0.297505, -0.906643,
		25.812855, 33.857689, 35.935055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.874966, 34.624157, 36.465515>,  <25.603451, 34.065945, 36.569702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.874966, 34.624157, 36.465515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.902744, 34.426140, 36.119080>,  <25.919411, 34.307331, 35.911217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.902744, 34.426140, 36.119080>,  <25.874966, 34.624157, 36.465515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.902744, 34.426140, 36.119080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221041, 0.854242, -0.470542,
		0.972789, -0.158766, 0.168746,
		0.069444, -0.495038, -0.866092,
		25.923578, 34.277630, 35.859253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.442753, 34.509300, 36.204384>,  <25.874966, 34.624157, 36.465515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.442753, 34.509300, 36.204384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.693972, 34.772976, 36.038963>,  <26.844702, 34.931183, 35.939709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.693972, 34.772976, 36.038963>,  <26.442753, 34.509300, 36.204384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.693972, 34.772976, 36.038963> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631407, -0.742301, -0.224311,
		-0.454845, -0.120243, -0.882416,
		0.628046, 0.659190, -0.413554,
		26.882385, 34.970734, 35.914898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.596045, 34.282158, 35.443817>,  <26.442753, 34.509300, 36.204384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.596045, 34.282158, 35.443817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.886129, 34.541656, 35.536068>,  <27.060181, 34.697357, 35.591419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.886129, 34.541656, 35.536068>,  <26.596045, 34.282158, 35.443817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.886129, 34.541656, 35.536068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673772, -0.599713, -0.431713,
		-0.141766, 0.468473, -0.872030,
		0.725213, 0.648751, 0.230625,
		27.103693, 34.736282, 35.605255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.073528, 34.196243, 34.922497>,  <26.596045, 34.282158, 35.443817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.073528, 34.196243, 34.922497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.253395, 34.342308, 35.248554>,  <27.361315, 34.429947, 35.444187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.253395, 34.342308, 35.248554>,  <27.073528, 34.196243, 34.922497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.253395, 34.342308, 35.248554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817093, -0.536792, -0.210273,
		0.360778, 0.760599, -0.539747,
		0.449665, 0.365162, 0.815143,
		27.388294, 34.451855, 35.493095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.793657, 34.278362, 34.808666>,  <27.073528, 34.196243, 34.922497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.793657, 34.278362, 34.808666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.825424, 34.279331, 35.207401>,  <27.844484, 34.279915, 35.446644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.825424, 34.279331, 35.207401>,  <27.793657, 34.278362, 34.808666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825424, 34.279331, 35.207401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836240, -0.544462, -0.065297,
		0.542582, 0.838782, -0.045267,
		0.079416, 0.002425, 0.996839,
		27.849249, 34.280060, 35.506454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.488188, 34.460648, 34.976418>,  <27.793657, 34.278362, 34.808666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.488188, 34.460648, 34.976418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.338125, 34.300961, 35.311054>,  <28.248087, 34.205147, 35.511837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.338125, 34.300961, 35.311054>,  <28.488188, 34.460648, 34.976418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.338125, 34.300961, 35.311054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861885, -0.482420, 0.156287,
		0.341193, 0.779675, 0.525066,
		-0.375156, -0.399222, 0.836588,
		28.225578, 34.181194, 35.562031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.025576, 34.569126, 35.500515>,  <28.488188, 34.460648, 34.976418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.025576, 34.569126, 35.500515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.804728, 34.275951, 35.659492>,  <28.672218, 34.100044, 35.754879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.804728, 34.275951, 35.659492>,  <29.025576, 34.569126, 35.500515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.804728, 34.275951, 35.659492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833670, -0.492423, 0.250027,
		0.012455, 0.469381, 0.882908,
		-0.552122, -0.732940, 0.397442,
		28.639091, 34.056068, 35.778725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.474098, 34.309319, 36.059662>,  <29.025576, 34.569126, 35.500515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.474098, 34.309319, 36.059662> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.203262, 34.033104, 35.957912>,  <29.040760, 33.867374, 35.896862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.203262, 34.033104, 35.957912>,  <29.474098, 34.309319, 36.059662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203262, 34.033104, 35.957912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649459, -0.723270, 0.234699,
		-0.346052, -0.006295, 0.938194,
		-0.677091, -0.690537, -0.254377,
		29.000135, 33.825943, 35.881599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774868, 33.797485, 36.393147>,  <29.474098, 34.309319, 36.059662>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774868, 33.797485, 36.393147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.534040, 33.621552, 36.126595>,  <29.389544, 33.515991, 35.966663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.534040, 33.621552, 36.126595>,  <29.774868, 33.797485, 36.393147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534040, 33.621552, 36.126595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550729, -0.833046, 0.052263,
		-0.578109, -0.335526, 0.743783,
		-0.602070, -0.439836, -0.666375,
		29.353420, 33.489601, 35.926682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658251, 33.122944, 36.669613>,  <29.774868, 33.797485, 36.393147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658251, 33.122944, 36.669613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.557487, 33.070724, 36.286053>,  <29.497028, 33.039391, 36.055916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.557487, 33.070724, 36.286053>,  <29.658251, 33.122944, 36.669613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557487, 33.070724, 36.286053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370696, -0.928301, 0.029000,
		-0.893938, -0.348157, 0.282243,
		-0.251910, -0.130551, -0.958904,
		29.481915, 33.031559, 35.998383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362112, 32.477436, 36.667870>,  <29.658251, 33.122944, 36.669613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362112, 32.477436, 36.667870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.444000, 32.558273, 36.284779>,  <29.493134, 32.606777, 36.054924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.444000, 32.558273, 36.284779>,  <29.362112, 32.477436, 36.667870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.444000, 32.558273, 36.284779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402009, -0.909482, -0.105982,
		-0.892457, -0.363319, -0.267433,
		0.204720, 0.202095, -0.957730,
		29.505417, 32.618900, 35.997459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001474, 31.970404, 36.311649>,  <29.362112, 32.477436, 36.667870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001474, 31.970404, 36.311649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.310617, 32.095196, 36.090611>,  <29.496103, 32.170071, 35.957989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.310617, 32.095196, 36.090611>,  <29.001474, 31.970404, 36.311649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310617, 32.095196, 36.090611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386353, -0.922140, 0.019737,
		-0.503413, -0.228751, -0.833215,
		0.772856, 0.311980, -0.552596,
		29.542475, 32.188789, 35.924831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095098, 31.488253, 35.826523>,  <29.001474, 31.970404, 36.311649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095098, 31.488253, 35.826523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.445429, 31.663038, 35.744553>,  <29.655626, 31.767910, 35.695370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.445429, 31.663038, 35.744553>,  <29.095098, 31.488253, 35.826523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445429, 31.663038, 35.744553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399592, -0.894644, -0.199844,
		-0.270660, 0.093141, -0.958158,
		0.875825, 0.436962, -0.204926,
		29.708176, 31.794127, 35.683075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.297943, 31.223753, 35.264210>,  <29.095098, 31.488253, 35.826523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.297943, 31.223753, 35.264210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.618647, 31.365717, 35.456551>,  <29.811069, 31.450895, 35.571957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.618647, 31.365717, 35.456551>,  <29.297943, 31.223753, 35.264210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.618647, 31.365717, 35.456551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439538, -0.895330, -0.072044,
		0.404953, 0.269115, -0.873837,
		0.801761, 0.354910, 0.480852,
		29.859175, 31.472189, 35.600807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832857, 31.147282, 34.777122>,  <29.297943, 31.223753, 35.264210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.832857, 31.147282, 34.777122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.992050, 31.200026, 35.140270>,  <30.087566, 31.231672, 35.358158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.992050, 31.200026, 35.140270>,  <29.832857, 31.147282, 34.777122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.992050, 31.200026, 35.140270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533446, -0.838375, -0.112080,
		0.746356, 0.528905, -0.403996,
		0.397980, 0.131858, 0.907868,
		30.111444, 31.239584, 35.412632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.459091, 30.930046, 34.666218>,  <29.832857, 31.147282, 34.777122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.459091, 30.930046, 34.666218> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.422264, 30.928596, 35.064518>,  <30.400167, 30.927727, 35.303497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.422264, 30.928596, 35.064518>,  <30.459091, 30.930046, 34.666218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422264, 30.928596, 35.064518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438347, -0.898033, 0.037260,
		0.894078, 0.439913, 0.084271,
		-0.092069, -0.003626, 0.995746,
		30.394644, 30.927509, 35.363243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995066, 30.583698, 34.836788>,  <30.459091, 30.930046, 34.666218>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995066, 30.583698, 34.836788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.764235, 30.563082, 35.162811>,  <30.625736, 30.550713, 35.358425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.764235, 30.563082, 35.162811>,  <30.995066, 30.583698, 34.836788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764235, 30.563082, 35.162811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486294, -0.823479, 0.292232,
		0.656125, 0.565000, 0.500275,
		-0.577077, -0.051540, 0.815062,
		30.591112, 30.547619, 35.407330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365749, 30.528284, 35.464394>,  <30.995066, 30.583698, 34.836788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365749, 30.528284, 35.464394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.015636, 30.353264, 35.546791>,  <30.805569, 30.248251, 35.596230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.015636, 30.353264, 35.546791>,  <31.365749, 30.528284, 35.464394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.015636, 30.353264, 35.546791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483372, -0.778074, 0.401189,
		-0.015264, 0.450724, 0.892533,
		-0.875282, -0.437550, 0.205990,
		30.753052, 30.221998, 35.608589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.464855, 30.132307, 36.117008>,  <31.365749, 30.528284, 35.464394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.464855, 30.132307, 36.117008> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.113550, 30.001671, 35.977299>,  <30.902767, 29.923288, 35.893475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.113550, 30.001671, 35.977299>,  <31.464855, 30.132307, 36.117008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113550, 30.001671, 35.977299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202280, -0.915601, 0.347501,
		-0.433283, 0.234547, 0.870203,
		-0.878264, -0.326591, -0.349271,
		30.850071, 29.903694, 35.872517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127647, 29.827591, 36.692902>,  <31.464855, 30.132307, 36.117008>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127647, 29.827591, 36.692902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.938450, 29.674131, 36.375641>,  <30.824932, 29.582056, 36.185284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.938450, 29.674131, 36.375641>,  <31.127647, 29.827591, 36.692902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938450, 29.674131, 36.375641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013325, -0.897002, 0.441825,
		-0.880965, 0.219549, 0.419164,
		-0.472993, -0.383647, -0.793153,
		30.796553, 29.559038, 36.137695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.442047, 29.406094, 36.842804>,  <31.127647, 29.827591, 36.692902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.442047, 29.406094, 36.842804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.601873, 29.291348, 36.494537>,  <30.697769, 29.222500, 36.285580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.601873, 29.291348, 36.494537>,  <30.442047, 29.406094, 36.842804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601873, 29.291348, 36.494537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037675, -0.954112, 0.297072,
		-0.915931, -0.085897, -0.392037,
		0.399564, -0.286867, -0.870664,
		30.721743, 29.205288, 36.233337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029350, 28.808657, 36.613949>,  <30.442047, 29.406094, 36.842804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029350, 28.808657, 36.613949> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.366652, 28.794395, 36.399414>,  <30.569033, 28.785839, 36.270695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.366652, 28.794395, 36.399414>,  <30.029350, 28.808657, 36.613949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.366652, 28.794395, 36.399414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017640, -0.995425, 0.093907,
		-0.537228, -0.088648, -0.838766,
		0.843253, -0.035654, -0.536334,
		30.619627, 28.783699, 36.238514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.994362, 28.230284, 36.197987>,  <30.029350, 28.808657, 36.613949>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.994362, 28.230284, 36.197987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.387571, 28.301191, 36.216930>,  <30.623497, 28.343737, 36.228294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.387571, 28.301191, 36.216930>,  <29.994362, 28.230284, 36.197987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387571, 28.301191, 36.216930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172435, -0.980736, 0.091783,
		0.062714, -0.082058, -0.994652,
		0.983023, 0.177269, 0.047357,
		30.682478, 28.354372, 36.231136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.371830, 32.419212, 43.742817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.008610, 32.358948, 43.586491>,  <36.790676, 32.322788, 43.492695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.008610, 32.358948, 43.586491>,  <37.371830, 32.419212, 43.742817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008610, 32.358948, 43.586491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324319, -0.337561, 0.883668,
		-0.265057, 0.929169, 0.257663,
		-0.908054, -0.150657, -0.390820,
		36.736195, 32.313751, 43.469246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938564, 32.727787, 44.252174>,  <37.371830, 32.419212, 43.742817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938564, 32.727787, 44.252174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.740501, 32.455738, 44.035934>,  <36.621662, 32.292507, 43.906189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.740501, 32.455738, 44.035934>,  <36.938564, 32.727787, 44.252174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740501, 32.455738, 44.035934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400237, -0.373711, 0.836750,
		-0.771121, 0.630694, -0.087163,
		-0.495159, -0.680121, -0.540603,
		36.591953, 32.251701, 43.873753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304226, 32.665066, 44.562878>,  <36.938564, 32.727787, 44.252174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304226, 32.665066, 44.562878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.353138, 32.304737, 44.396233>,  <36.382484, 32.088539, 44.296246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.353138, 32.304737, 44.396233>,  <36.304226, 32.665066, 44.562878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353138, 32.304737, 44.396233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380317, -0.430251, 0.818684,
		-0.916738, 0.058340, -0.395207,
		0.122276, -0.900822, -0.416615,
		36.389820, 32.034489, 44.271248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813671, 32.327972, 44.880939>,  <36.304226, 32.665066, 44.562878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813671, 32.327972, 44.880939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.013165, 32.021645, 44.718563>,  <36.132862, 31.837849, 44.621136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.013165, 32.021645, 44.718563>,  <35.813671, 32.327972, 44.880939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013165, 32.021645, 44.718563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273786, -0.583560, 0.764525,
		-0.822377, -0.270155, -0.500712,
		0.498736, -0.765816, -0.405941,
		36.162785, 31.791901, 44.596779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372993, 31.625788, 44.931728>,  <35.813671, 32.327972, 44.880939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372993, 31.625788, 44.931728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.738644, 31.487932, 44.846306>,  <35.958035, 31.405218, 44.795052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.738644, 31.487932, 44.846306>,  <35.372993, 31.625788, 44.931728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738644, 31.487932, 44.846306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123761, -0.738774, 0.662492,
		-0.386089, -0.579169, -0.717983,
		0.914122, -0.344638, -0.213554,
		36.012878, 31.384541, 44.782238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318592, 30.777813, 44.922012>,  <35.372993, 31.625788, 44.931728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318592, 30.777813, 44.922012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.703857, 30.857870, 44.993851>,  <35.935017, 30.905905, 45.036953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.703857, 30.857870, 44.993851>,  <35.318592, 30.777813, 44.922012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703857, 30.857870, 44.993851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000380, -0.668874, 0.743376,
		0.268906, -0.715926, -0.644313,
		0.963166, 0.200144, 0.179592,
		35.992805, 30.917913, 45.047729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757858, 30.111773, 45.001354>,  <35.318592, 30.777813, 44.922012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757858, 30.111773, 45.001354> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.019749, 30.375650, 45.148945>,  <36.176884, 30.533978, 45.237499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.019749, 30.375650, 45.148945>,  <35.757858, 30.111773, 45.001354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019749, 30.375650, 45.148945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272638, -0.661395, 0.698731,
		0.704988, -0.356877, -0.612887,
		0.654721, 0.659693, 0.368978,
		36.216164, 30.573559, 45.259640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427109, 29.708096, 45.096363>,  <35.757858, 30.111773, 45.001354>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427109, 29.708096, 45.096363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.437313, 30.030134, 45.333401>,  <36.443436, 30.223356, 45.475624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.437313, 30.030134, 45.333401>,  <36.427109, 29.708096, 45.096363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437313, 30.030134, 45.333401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309440, -0.570036, 0.761122,
		0.950577, 0.163956, -0.263671,
		0.025511, 0.805095, 0.592597,
		36.444965, 30.271662, 45.511181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031982, 29.670095, 45.483810>,  <36.427109, 29.708096, 45.096363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031982, 29.670095, 45.483810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.785694, 29.920835, 45.674789>,  <36.637920, 30.071280, 45.789375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.785694, 29.920835, 45.674789>,  <37.031982, 29.670095, 45.483810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785694, 29.920835, 45.674789> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297163, -0.376455, 0.877483,
		0.729785, 0.682160, 0.045513,
		-0.615717, 0.626849, 0.477443,
		36.600979, 30.108891, 45.818024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359882, 29.696934, 46.099339>,  <37.031982, 29.670095, 45.483810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359882, 29.696934, 46.099339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.996166, 29.850519, 46.163551>,  <36.777939, 29.942671, 46.202080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.996166, 29.850519, 46.163551>,  <37.359882, 29.696934, 46.099339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996166, 29.850519, 46.163551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077120, -0.223592, 0.971627,
		0.408963, 0.895867, 0.173697,
		-0.909286, 0.383964, 0.160530,
		36.723381, 29.965708, 46.211712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321243, 30.217001, 46.740047>,  <37.359882, 29.696934, 46.099339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321243, 30.217001, 46.740047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.956837, 30.057217, 46.699093>,  <36.738194, 29.961346, 46.674522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.956837, 30.057217, 46.699093>,  <37.321243, 30.217001, 46.740047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956837, 30.057217, 46.699093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062204, -0.378550, 0.923488,
		-0.407656, 0.834943, 0.369713,
		-0.911015, -0.399463, -0.102382,
		36.683533, 29.937378, 46.668377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934002, 30.344280, 47.411629>,  <37.321243, 30.217001, 46.740047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934002, 30.344280, 47.411629> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.746254, 30.054817, 47.209236>,  <36.633606, 29.881140, 47.087803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.746254, 30.054817, 47.209236>,  <36.934002, 30.344280, 47.411629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746254, 30.054817, 47.209236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055518, -0.547701, 0.834830,
		-0.881254, 0.419936, 0.216899,
		-0.469371, -0.723656, -0.505978,
		36.605442, 29.837721, 47.057442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225487, 30.256506, 47.658154>,  <36.934002, 30.344280, 47.411629>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225487, 30.256506, 47.658154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.406364, 29.915911, 47.551949>,  <36.514889, 29.711554, 47.488228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.406364, 29.915911, 47.551949>,  <36.225487, 30.256506, 47.658154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406364, 29.915911, 47.551949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046157, -0.319623, 0.946420,
		-0.890726, -0.415707, -0.183833,
		0.452191, -0.851486, -0.265508,
		36.542023, 29.660465, 47.472298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884937, 29.839939, 47.998444>,  <36.225487, 30.256506, 47.658154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884937, 29.839939, 47.998444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.234039, 29.656944, 47.930313>,  <36.443501, 29.547148, 47.889435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.234039, 29.656944, 47.930313>,  <35.884937, 29.839939, 47.998444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234039, 29.656944, 47.930313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056883, -0.251230, 0.966255,
		-0.484840, -0.852988, -0.193238,
		0.872751, -0.457487, -0.170326,
		36.495865, 29.519699, 47.879215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476978, 30.269205, 47.436756>,  <35.884937, 29.839939, 47.998444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476978, 30.269205, 47.436756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.330627, 30.531258, 47.701160>,  <35.242817, 30.688490, 47.859802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.330627, 30.531258, 47.701160>,  <35.476978, 30.269205, 47.436756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330627, 30.531258, 47.701160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137175, 0.740463, -0.657949,
		-0.920500, -0.150051, -0.360783,
		-0.365873, 0.655133, 0.661013,
		35.220867, 30.727797, 47.899464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174976, 30.847807, 47.076462>,  <35.476978, 30.269205, 47.436756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174976, 30.847807, 47.076462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.199165, 31.019415, 47.436970>,  <35.213680, 31.122379, 47.653275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.199165, 31.019415, 47.436970>,  <35.174976, 30.847807, 47.076462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199165, 31.019415, 47.436970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178913, 0.892957, -0.413059,
		-0.982005, -0.136269, 0.130757,
		0.060473, 0.429020, 0.901268,
		35.217308, 31.148121, 47.707352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.630608, 31.229486, 47.048691>,  <35.174976, 30.847807, 47.076462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.630608, 31.229486, 47.048691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.886719, 31.367207, 47.323353>,  <35.040386, 31.449839, 47.488152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.886719, 31.367207, 47.323353>,  <34.630608, 31.229486, 47.048691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886719, 31.367207, 47.323353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024855, 0.902739, -0.429469,
		-0.767741, 0.257913, 0.586562,
		0.640278, 0.344300, 0.686660,
		35.078804, 31.470497, 47.529350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342770, 31.892706, 47.398888>,  <34.630608, 31.229486, 47.048691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342770, 31.892706, 47.398888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.741764, 31.884302, 47.425938>,  <34.981163, 31.879261, 47.442165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.741764, 31.884302, 47.425938>,  <34.342770, 31.892706, 47.398888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741764, 31.884302, 47.425938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046188, 0.916889, -0.396461,
		-0.053674, 0.398589, 0.915558,
		0.997490, -0.021008, 0.067623,
		35.041012, 31.878000, 47.446224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504833, 32.536682, 47.584339>,  <34.342770, 31.892706, 47.398888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504833, 32.536682, 47.584339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.861954, 32.404774, 47.461597>,  <35.076225, 32.325626, 47.387951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.861954, 32.404774, 47.461597>,  <34.504833, 32.536682, 47.584339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.861954, 32.404774, 47.461597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167497, 0.875401, -0.453452,
		0.418158, 0.353444, 0.836792,
		0.892798, -0.329774, -0.306855,
		35.129795, 32.305840, 47.369541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867374, 33.080521, 47.591297>,  <34.504833, 32.536682, 47.584339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867374, 33.080521, 47.591297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.104923, 32.857807, 47.358982>,  <35.247452, 32.724178, 47.219593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.104923, 32.857807, 47.358982>,  <34.867374, 33.080521, 47.591297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104923, 32.857807, 47.358982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119599, 0.774940, -0.620615,
		0.795621, 0.299104, 0.526806,
		0.593871, -0.556780, -0.580786,
		35.283085, 32.690773, 47.184746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522247, 33.432758, 47.513176>,  <34.867374, 33.080521, 47.591297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522247, 33.432758, 47.513176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.463654, 33.190361, 47.200428>,  <35.428497, 33.044922, 47.012779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.463654, 33.190361, 47.200428>,  <35.522247, 33.432758, 47.513176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463654, 33.190361, 47.200428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177873, 0.761376, -0.623432,
		0.973089, -0.230398, -0.003743,
		-0.146488, -0.605989, -0.781869,
		35.419708, 33.008564, 46.965866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043896, 33.615463, 47.098225>,  <35.522247, 33.432758, 47.513176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043896, 33.615463, 47.098225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.813828, 33.421078, 46.835011>,  <35.675785, 33.304447, 46.677082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.813828, 33.421078, 46.835011>,  <36.043896, 33.615463, 47.098225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813828, 33.421078, 46.835011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171039, 0.715196, -0.677673,
		0.799951, -0.502330, -0.328243,
		-0.575173, -0.485962, -0.658040,
		35.641277, 33.275288, 46.637600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342087, 33.641270, 46.329071>,  <36.043896, 33.615463, 47.098225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342087, 33.641270, 46.329071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.956642, 33.547001, 46.278622>,  <35.725376, 33.490440, 46.248352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.956642, 33.547001, 46.278622>,  <36.342087, 33.641270, 46.329071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956642, 33.547001, 46.278622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052791, 0.630349, -0.774515,
		0.262036, -0.739674, -0.619854,
		-0.963613, -0.235673, -0.126126,
		35.667557, 33.476299, 46.240784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237244, 33.361229, 45.552986>,  <36.342087, 33.641270, 46.329071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237244, 33.361229, 45.552986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.891846, 33.493168, 45.705605>,  <35.684608, 33.572330, 45.797176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.891846, 33.493168, 45.705605>,  <36.237244, 33.361229, 45.552986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891846, 33.493168, 45.705605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074968, 0.664160, -0.743822,
		-0.498758, -0.670889, -0.548770,
		-0.863493, 0.329847, 0.381551,
		35.632797, 33.592121, 45.820068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941265, 33.516258, 44.944557>,  <36.237244, 33.361229, 45.552986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941265, 33.516258, 44.944557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.702713, 33.691273, 45.213745>,  <35.559582, 33.796284, 45.375259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.702713, 33.691273, 45.213745>,  <35.941265, 33.516258, 44.944557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702713, 33.691273, 45.213745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320416, 0.638934, -0.699355,
		-0.735981, -0.632711, -0.240852,
		-0.596378, 0.437539, 0.672974,
		35.523800, 33.822533, 45.415638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342987, 33.575588, 44.597954>,  <35.941265, 33.516258, 44.944557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342987, 33.575588, 44.597954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.332439, 33.827553, 44.908440>,  <35.326111, 33.978733, 45.094730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.332439, 33.827553, 44.908440>,  <35.342987, 33.575588, 44.597954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332439, 33.827553, 44.908440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305692, 0.734208, -0.606210,
		-0.951765, -0.253268, 0.173200,
		-0.026369, 0.629916, 0.776216,
		35.324528, 34.016529, 45.141304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706238, 33.923832, 44.486568>,  <35.342987, 33.575588, 44.597954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706238, 33.923832, 44.486568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.938343, 34.167038, 44.703312>,  <35.077606, 34.312962, 44.833359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.938343, 34.167038, 44.703312>,  <34.706238, 33.923832, 44.486568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938343, 34.167038, 44.703312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002466, 0.666630, -0.745385,
		-0.814425, 0.431183, 0.388320,
		0.580263, 0.608018, 0.541856,
		35.112423, 34.349442, 44.865868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376194, 34.566345, 44.444298>,  <34.706238, 33.923832, 44.486568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376194, 34.566345, 44.444298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.750446, 34.649509, 44.558403>,  <34.974998, 34.699406, 44.626865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.750446, 34.649509, 44.558403>,  <34.376194, 34.566345, 44.444298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750446, 34.649509, 44.558403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070278, 0.682250, -0.727733,
		-0.345925, 0.700935, 0.623720,
		0.935627, 0.207907, 0.285268,
		35.031136, 34.711880, 44.643982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774311, 34.867718, 44.811813>,  <34.376194, 34.566345, 44.444298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774311, 34.867718, 44.811813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.406097, 34.746338, 44.713394>,  <33.185169, 34.673508, 44.654343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.406097, 34.746338, 44.713394>,  <33.774311, 34.867718, 44.811813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406097, 34.746338, 44.713394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023159, -0.671083, 0.741020,
		-0.389982, 0.676434, 0.624781,
		-0.920531, -0.303453, -0.246045,
		33.129936, 34.655300, 44.639580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436031, 34.678394, 45.424042>,  <33.774311, 34.867718, 44.811813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436031, 34.678394, 45.424042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.183147, 34.499241, 45.171150>,  <33.031418, 34.391750, 45.019417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.183147, 34.499241, 45.171150>,  <33.436031, 34.678394, 45.424042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183147, 34.499241, 45.171150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058675, -0.841325, 0.537336,
		-0.772570, 0.302615, 0.558176,
		-0.632213, -0.447880, -0.632226,
		32.993484, 34.364876, 44.981483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880466, 34.453613, 45.814754>,  <33.436031, 34.678394, 45.424042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880466, 34.453613, 45.814754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.838074, 34.200695, 45.507778>,  <32.812637, 34.048943, 45.323593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.838074, 34.200695, 45.507778>,  <32.880466, 34.453613, 45.814754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838074, 34.200695, 45.507778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055453, -0.766830, 0.639450,
		-0.992820, 0.110329, 0.046209,
		-0.105985, -0.632297, -0.767443,
		32.806278, 34.011005, 45.277546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281078, 34.093349, 45.944672>,  <32.880466, 34.453613, 45.814754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281078, 34.093349, 45.944672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.464600, 33.854328, 45.681633>,  <32.574715, 33.710915, 45.523811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.464600, 33.854328, 45.681633>,  <32.281078, 34.093349, 45.944672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464600, 33.854328, 45.681633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244112, -0.796377, 0.553346,
		-0.854347, -0.093350, -0.511250,
		0.458803, -0.597552, -0.657595,
		32.602242, 33.675064, 45.484356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851950, 33.569801, 46.051868>,  <32.281078, 34.093349, 45.944672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851950, 33.569801, 46.051868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.183868, 33.430058, 45.877792>,  <32.383018, 33.346210, 45.773346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.183868, 33.430058, 45.877792>,  <31.851950, 33.569801, 46.051868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183868, 33.430058, 45.877792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169566, -0.900782, 0.399799,
		-0.531682, -0.257959, -0.806705,
		0.829796, -0.349356, -0.435188,
		32.432808, 33.325253, 45.747234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701378, 32.893234, 45.900276>,  <31.851950, 33.569801, 46.051868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701378, 32.893234, 45.900276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.101185, 32.888023, 45.888973>,  <32.341068, 32.884895, 45.882191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.101185, 32.888023, 45.888973>,  <31.701378, 32.893234, 45.900276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.101185, 32.888023, 45.888973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000184, -0.905693, 0.423935,
		-0.031118, -0.423735, -0.905251,
		0.999516, -0.013026, -0.028262,
		32.401039, 32.884117, 45.880493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.867350, 32.138809, 45.729855>,  <31.701378, 32.893234, 45.900276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.867350, 32.138809, 45.729855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.187477, 32.312294, 45.895447>,  <32.379555, 32.416386, 45.994804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.187477, 32.312294, 45.895447>,  <31.867350, 32.138809, 45.729855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187477, 32.312294, 45.895447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163054, -0.821880, 0.545827,
		0.576978, -0.369334, -0.728484,
		0.800319, 0.433712, 0.413985,
		32.427574, 32.442406, 46.019642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.987019, 31.764698, 45.039795>,  <31.867350, 32.138809, 45.729855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.987019, 31.764698, 45.039795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.717600, 31.509062, 44.891258>,  <31.555948, 31.355680, 44.802135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.717600, 31.509062, 44.891258>,  <31.987019, 31.764698, 45.039795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717600, 31.509062, 44.891258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057867, 0.455260, -0.888476,
		0.736876, -0.619919, -0.269656,
		-0.673547, -0.639092, -0.371342,
		31.515535, 31.317333, 44.779854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261272, 31.469568, 44.451782>,  <31.987019, 31.764698, 45.039795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261272, 31.469568, 44.451782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.866177, 31.439545, 44.397034>,  <31.629118, 31.421532, 44.364185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.866177, 31.439545, 44.397034>,  <32.261272, 31.469568, 44.451782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866177, 31.439545, 44.397034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066419, 0.591420, -0.803624,
		0.141267, -0.802863, -0.579184,
		-0.987741, -0.075057, -0.136873,
		31.569855, 31.417028, 44.355972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206306, 31.602966, 43.756157>,  <32.261272, 31.469568, 44.451782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206306, 31.602966, 43.756157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.827694, 31.614016, 43.884731>,  <31.600527, 31.620646, 43.961876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.827694, 31.614016, 43.884731>,  <32.206306, 31.602966, 43.756157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827694, 31.614016, 43.884731> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240496, 0.603695, -0.760075,
		-0.215045, -0.796737, -0.564771,
		-0.946529, 0.027625, 0.321434,
		31.543736, 31.622303, 43.981163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748720, 31.283512, 43.175289>,  <32.206306, 31.602966, 43.756157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748720, 31.283512, 43.175289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.528088, 31.530005, 43.400150>,  <31.395708, 31.677900, 43.535069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.528088, 31.530005, 43.400150>,  <31.748720, 31.283512, 43.175289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.528088, 31.530005, 43.400150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310525, 0.473807, -0.824064,
		-0.774167, -0.629100, -0.069987,
		-0.551579, 0.616230, 0.562157,
		31.362614, 31.714874, 43.568798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.211020, 31.334185, 42.819736>,  <31.748720, 31.283512, 43.175289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.211020, 31.334185, 42.819736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.213737, 31.652531, 43.061913>,  <31.215368, 31.843538, 43.207218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.213737, 31.652531, 43.061913>,  <31.211020, 31.334185, 42.819736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213737, 31.652531, 43.061913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188764, 0.595587, -0.780797,
		-0.981999, -0.108981, 0.154277,
		0.006793, 0.795864, 0.605438,
		31.215776, 31.891291, 43.243546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834646, 31.762064, 42.470814>,  <31.211020, 31.334185, 42.819736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834646, 31.762064, 42.470814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.992661, 32.019474, 42.733059>,  <31.087469, 32.173920, 42.890404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.992661, 32.019474, 42.733059>,  <30.834646, 31.762064, 42.470814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.992661, 32.019474, 42.733059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013055, 0.709649, -0.704434,
		-0.918572, 0.286837, 0.271937,
		0.395038, 0.643523, 0.655609,
		31.111172, 32.212532, 42.929741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474497, 32.329861, 42.431923>,  <30.834646, 31.762064, 42.470814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474497, 32.329861, 42.431923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.826019, 32.452660, 42.578045>,  <31.036934, 32.526340, 42.665718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.826019, 32.452660, 42.578045>,  <30.474497, 32.329861, 42.431923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.826019, 32.452660, 42.578045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110509, 0.613813, -0.781678,
		-0.464204, 0.727315, 0.505498,
		0.878807, 0.306996, 0.365310,
		31.089661, 32.544758, 42.687637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.964092, 27.481081, 45.699417> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.177746, 27.819220, 45.703300>,  <35.305939, 28.022102, 45.705631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.177746, 27.819220, 45.703300>,  <34.964092, 27.481081, 45.699417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177746, 27.819220, 45.703300> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298810, 0.199520, -0.933222,
		-0.790832, 0.495563, 0.359168,
		0.534132, 0.845345, 0.009707,
		35.337986, 28.072823, 45.706211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.557144, 28.021973, 45.390774>,  <34.964092, 27.481081, 45.699417>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.557144, 28.021973, 45.390774> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.932240, 28.160807, 45.396183>,  <35.157295, 28.244106, 45.399429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.932240, 28.160807, 45.396183>,  <34.557144, 28.021973, 45.390774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932240, 28.160807, 45.396183> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062898, 0.207969, -0.976111,
		-0.341604, 0.914485, 0.216851,
		0.937737, 0.347083, 0.013524,
		35.213562, 28.264931, 45.400242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579037, 28.756893, 45.152676>,  <34.557144, 28.021973, 45.390774>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579037, 28.756893, 45.152676> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.931850, 28.586617, 45.071877>,  <35.143539, 28.484449, 45.023396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.931850, 28.586617, 45.071877>,  <34.579037, 28.756893, 45.152676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931850, 28.586617, 45.071877> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115779, 0.219755, -0.968661,
		0.456743, 0.877777, 0.144544,
		0.882032, -0.425694, -0.201999,
		35.196461, 28.458908, 45.011276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876839, 29.298580, 44.782013>,  <34.579037, 28.756893, 45.152676>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876839, 29.298580, 44.782013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.101341, 28.974997, 44.712070>,  <35.236042, 28.780848, 44.670105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.101341, 28.974997, 44.712070>,  <34.876839, 29.298580, 44.782013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101341, 28.974997, 44.712070> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020031, 0.224486, -0.974271,
		0.827397, 0.543316, 0.142199,
		0.561259, -0.808958, -0.174856,
		35.269718, 28.732309, 44.659615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480690, 29.550680, 44.305523>,  <34.876839, 29.298580, 44.782013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480690, 29.550680, 44.305523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.441208, 29.155777, 44.255604>,  <35.417519, 28.918835, 44.225651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.441208, 29.155777, 44.255604>,  <35.480690, 29.550680, 44.305523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441208, 29.155777, 44.255604> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002252, 0.125191, -0.992130,
		0.995115, -0.098206, -0.010133,
		-0.098701, -0.987260, -0.124801,
		35.411598, 28.859598, 44.218163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046051, 29.440159, 43.848804>,  <35.480690, 29.550680, 44.305523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046051, 29.440159, 43.848804> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.761921, 29.159904, 43.821842>,  <35.591442, 28.991751, 43.805664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.761921, 29.159904, 43.821842>,  <36.046051, 29.440159, 43.848804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761921, 29.159904, 43.821842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123354, 0.218193, -0.968078,
		0.692980, -0.679336, -0.241414,
		-0.710326, -0.700639, -0.067405,
		35.548824, 28.949713, 43.801620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234947, 29.043877, 43.197525>,  <36.046051, 29.440159, 43.848804>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234947, 29.043877, 43.197525> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.854870, 28.945494, 43.274097>,  <35.626823, 28.886465, 43.320042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.854870, 28.945494, 43.274097>,  <36.234947, 29.043877, 43.197525>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854870, 28.945494, 43.274097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264510, 0.311508, -0.912687,
		0.164847, -0.917861, -0.361049,
		-0.950190, -0.245955, 0.191432,
		35.569813, 28.871708, 43.331528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125221, 28.552742, 42.590168>,  <36.234947, 29.043877, 43.197525>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125221, 28.552742, 42.590168> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.771816, 28.672548, 42.734222>,  <35.559772, 28.744432, 42.820656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.771816, 28.672548, 42.734222>,  <36.125221, 28.552742, 42.590168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771816, 28.672548, 42.734222> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304502, 0.216964, -0.927472,
		-0.355927, -0.929095, -0.100488,
		-0.883513, 0.299514, 0.360135,
		35.506763, 28.762402, 42.842262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639404, 28.264793, 42.182480>,  <36.125221, 28.552742, 42.590168>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639404, 28.264793, 42.182480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.412022, 28.551838, 42.343426>,  <35.275593, 28.724064, 42.439991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.412022, 28.551838, 42.343426>,  <35.639404, 28.264793, 42.182480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412022, 28.551838, 42.343426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273928, 0.296069, -0.915045,
		-0.775771, -0.630380, 0.028271,
		-0.568456, 0.717610, 0.402361,
		35.241486, 28.767120, 42.464134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988945, 28.290640, 41.783310>,  <35.639404, 28.264793, 42.182480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988945, 28.290640, 41.783310> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.032230, 28.643217, 41.967201>,  <35.058201, 28.854763, 42.077534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.032230, 28.643217, 41.967201>,  <34.988945, 28.290640, 41.783310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032230, 28.643217, 41.967201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208998, 0.472277, -0.856315,
		-0.971910, -0.003413, 0.235329,
		0.108218, 0.881444, 0.459723,
		35.064697, 28.907650, 42.105118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378448, 28.699444, 41.608696>,  <34.988945, 28.290640, 41.783310>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378448, 28.699444, 41.608696> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.629147, 28.983301, 41.737442>,  <34.779564, 29.153616, 41.814690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.629147, 28.983301, 41.737442>,  <34.378448, 28.699444, 41.608696>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629147, 28.983301, 41.737442> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253204, 0.576114, -0.777162,
		-0.736941, 0.405582, 0.540760,
		0.626742, 0.709645, 0.321867,
		34.817169, 29.196194, 41.834003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137157, 29.201975, 41.244671>,  <34.378448, 28.699444, 41.608696>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137157, 29.201975, 41.244671> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.510052, 29.286850, 41.361916>,  <34.733788, 29.337774, 41.432262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.510052, 29.286850, 41.361916>,  <34.137157, 29.201975, 41.244671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510052, 29.286850, 41.361916> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077396, 0.674355, -0.734340,
		-0.353478, 0.707263, 0.612235,
		0.932236, 0.212188, 0.293109,
		34.789722, 29.350506, 41.449848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482754, 29.185923, 41.742207>,  <34.137157, 29.201975, 41.244671>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482754, 29.185923, 41.742207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.114983, 29.089342, 41.618038>,  <32.894321, 29.031395, 41.543537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.114983, 29.089342, 41.618038>,  <33.482754, 29.185923, 41.742207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114983, 29.089342, 41.618038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165700, -0.478003, 0.862587,
		-0.356652, 0.844521, 0.399480,
		-0.919425, -0.241449, -0.310418,
		32.839153, 29.016907, 41.524914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.065807, 29.324533, 42.377190>,  <33.482754, 29.185923, 41.742207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.065807, 29.324533, 42.377190> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.868359, 29.068434, 42.141758>,  <32.749889, 28.914774, 42.000500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.868359, 29.068434, 42.141758>,  <33.065807, 29.324533, 42.377190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868359, 29.068434, 42.141758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225290, -0.559535, 0.797599,
		-0.839990, 0.526312, 0.131957,
		-0.493621, -0.640247, -0.588577,
		32.720272, 28.876360, 41.965183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434502, 29.146273, 42.688751>,  <33.065807, 29.324533, 42.377190>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434502, 29.146273, 42.688751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.445160, 28.850613, 42.419544>,  <32.451557, 28.673216, 42.258022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.445160, 28.850613, 42.419544>,  <32.434502, 29.146273, 42.688751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445160, 28.850613, 42.419544> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141656, -0.669252, 0.729408,
		-0.989557, 0.075900, -0.122539,
		0.026648, -0.739149, -0.673014,
		32.453156, 28.628868, 42.217640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883879, 28.820461, 42.735271>,  <32.434502, 29.146273, 42.688751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883879, 28.820461, 42.735271> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.126110, 28.539850, 42.584999>,  <32.271450, 28.371483, 42.494835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.126110, 28.539850, 42.584999>,  <31.883879, 28.820461, 42.735271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126110, 28.539850, 42.584999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166628, -0.573402, 0.802150,
		-0.778147, -0.423164, -0.464133,
		0.605576, -0.701528, -0.375680,
		32.307785, 28.329391, 42.472294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495165, 28.263939, 42.778839>,  <31.883879, 28.820461, 42.735271>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495165, 28.263939, 42.778839> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.878025, 28.151817, 42.749741>,  <32.107742, 28.084545, 42.732281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.878025, 28.151817, 42.749741>,  <31.495165, 28.263939, 42.778839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878025, 28.151817, 42.749741> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087340, -0.518931, 0.850343,
		-0.276104, -0.807553, -0.521177,
		0.957151, -0.280303, -0.072747,
		32.165169, 28.067726, 42.727917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435896, 27.521273, 42.925568>,  <31.495165, 28.263939, 42.778839>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435896, 27.521273, 42.925568> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.815958, 27.617971, 43.004322>,  <32.043995, 27.675991, 43.051575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.815958, 27.617971, 43.004322>,  <31.435896, 27.521273, 42.925568>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815958, 27.617971, 43.004322> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043281, -0.523102, 0.851171,
		0.308757, -0.817266, -0.486565,
		0.950155, 0.241746, 0.196883,
		32.101006, 27.690495, 43.063389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729074, 26.948997, 43.193302>,  <31.435896, 27.521273, 42.925568>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729074, 26.948997, 43.193302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.975094, 27.243229, 43.306889>,  <32.122704, 27.419767, 43.375042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.975094, 27.243229, 43.306889>,  <31.729074, 26.948997, 43.193302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975094, 27.243229, 43.306889> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151854, -0.463906, 0.872772,
		0.773728, -0.493675, -0.397026,
		0.615048, 0.735579, 0.283971,
		32.159607, 27.463903, 43.392078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245823, 26.561794, 43.462524>,  <31.729074, 26.948997, 43.193302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245823, 26.561794, 43.462524> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.253696, 26.927580, 43.624199>,  <32.258419, 27.147051, 43.721203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.253696, 26.927580, 43.624199>,  <32.245823, 26.561794, 43.462524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253696, 26.927580, 43.624199> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153593, -0.402228, 0.902564,
		0.987938, 0.044314, -0.148373,
		0.019683, 0.914466, 0.404183,
		32.259602, 27.201920, 43.745453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672920, 26.365677, 43.957256>,  <32.245823, 26.561794, 43.462524>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672920, 26.365677, 43.957256> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.580879, 26.732040, 44.088810>,  <32.525654, 26.951859, 44.167740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.580879, 26.732040, 44.088810>,  <32.672920, 26.365677, 43.957256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580879, 26.732040, 44.088810> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135142, -0.304601, 0.942844,
		0.963737, 0.261399, -0.053687,
		-0.230105, 0.915909, 0.328881,
		32.511848, 27.006813, 44.187473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152668, 26.680098, 44.500076>,  <32.672920, 26.365677, 43.957256>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152668, 26.680098, 44.500076> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.840500, 26.922112, 44.563164>,  <32.653198, 27.067320, 44.601017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.840500, 26.922112, 44.563164>,  <33.152668, 26.680098, 44.500076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840500, 26.922112, 44.563164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148834, -0.065227, 0.986709,
		0.607279, 0.793524, -0.039145,
		-0.780423, 0.605033, 0.157714,
		32.606373, 27.103622, 44.610477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339085, 27.289391, 45.030060>,  <33.152668, 26.680098, 44.500076>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339085, 27.289391, 45.030060> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.944180, 27.226679, 45.040947>,  <32.707237, 27.189051, 45.047478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.944180, 27.226679, 45.040947>,  <33.339085, 27.289391, 45.030060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944180, 27.226679, 45.040947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032751, -0.032823, 0.998924,
		-0.155719, 0.987088, 0.037539,
		-0.987258, -0.156781, 0.027217,
		32.648003, 27.179644, 45.049110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163521, 27.764799, 45.535648>,  <33.339085, 27.289391, 45.030060>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163521, 27.764799, 45.535648> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.856785, 27.509123, 45.512341>,  <32.672745, 27.355717, 45.498356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.856785, 27.509123, 45.512341>,  <33.163521, 27.764799, 45.535648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856785, 27.509123, 45.512341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057730, -0.021732, 0.998096,
		-0.639241, 0.768741, -0.020235,
		-0.766837, -0.639192, -0.058271,
		32.626736, 27.317366, 45.494858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663857, 28.090643, 45.964138>,  <33.163521, 27.764799, 45.535648>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663857, 28.090643, 45.964138> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.573639, 27.701698, 45.940002>,  <32.519508, 27.468330, 45.925522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.573639, 27.701698, 45.940002>,  <32.663857, 28.090643, 45.964138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573639, 27.701698, 45.940002> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074982, -0.044428, 0.996195,
		-0.971344, 0.229207, -0.062890,
		-0.225541, -0.972363, -0.060341,
		32.505978, 27.409988, 45.921902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997065, 27.983088, 46.226818>,  <32.663857, 28.090643, 45.964138>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997065, 27.983088, 46.226818> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.199005, 27.641010, 46.273758>,  <32.320168, 27.435764, 46.301922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.199005, 27.641010, 46.273758>,  <31.997065, 27.983088, 46.226818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199005, 27.641010, 46.273758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016520, 0.126345, 0.991849,
		-0.863049, -0.502673, 0.049658,
		0.504850, -0.855194, 0.117346,
		32.350460, 27.384453, 46.308960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.496151, 28.542870, 45.974159>,  <31.997065, 27.983088, 46.226818>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.496151, 28.542870, 45.974159> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.292170, 28.806080, 46.195770>,  <31.169781, 28.964005, 46.328739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.292170, 28.806080, 46.195770>,  <31.496151, 28.542870, 45.974159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.292170, 28.806080, 46.195770> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062641, 0.670770, -0.739016,
		-0.857917, -0.342160, -0.383282,
		-0.509955, 0.658023, 0.554031,
		31.139183, 29.003487, 46.361980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934502, 28.750687, 45.601360>,  <31.496151, 28.542870, 45.974159>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934502, 28.750687, 45.601360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.993406, 29.036327, 45.875111>,  <31.028749, 29.207712, 46.039360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.993406, 29.036327, 45.875111>,  <30.934502, 28.750687, 45.601360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993406, 29.036327, 45.875111> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033055, 0.687983, -0.724974,
		-0.988545, 0.129384, 0.077710,
		0.147263, 0.714100, 0.684379,
		31.037584, 29.250557, 46.080425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411125, 29.261774, 45.501682>,  <30.934502, 28.750687, 45.601360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411125, 29.261774, 45.501682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.715176, 29.432926, 45.697285>,  <30.897606, 29.535618, 45.814648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.715176, 29.432926, 45.697285>,  <30.411125, 29.261774, 45.501682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.715176, 29.432926, 45.697285> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011023, 0.760961, -0.648704,
		-0.649682, 0.487707, 0.583143,
		0.760126, 0.427879, 0.489006,
		30.943214, 29.561291, 45.843987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187016, 29.945126, 45.657436>,  <30.411125, 29.261774, 45.501682>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187016, 29.945126, 45.657436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.586819, 29.932768, 45.655434>,  <30.826700, 29.925354, 45.654232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.586819, 29.932768, 45.655434>,  <30.187016, 29.945126, 45.657436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.586819, 29.932768, 45.655434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024778, 0.878840, -0.476473,
		0.019116, 0.476116, 0.879175,
		0.999510, -0.030892, -0.005003,
		30.886671, 29.923500, 45.653934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.451532, 30.613819, 45.813396>,  <30.187016, 29.945126, 45.657436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.451532, 30.613819, 45.813396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.773832, 30.437426, 45.655258>,  <30.967213, 30.331589, 45.560375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.773832, 30.437426, 45.655258>,  <30.451532, 30.613819, 45.813396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773832, 30.437426, 45.655258> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187718, 0.823266, -0.535719,
		0.561717, 0.357444, 0.746129,
		0.805752, -0.440984, -0.395343,
		31.015558, 30.305130, 45.536655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998209, 31.256115, 45.800179>,  <30.451532, 30.613819, 45.813396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998209, 31.256115, 45.800179> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.108164, 30.960459, 45.554214>,  <31.174137, 30.783066, 45.406635>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.108164, 30.960459, 45.554214>,  <30.998209, 31.256115, 45.800179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108164, 30.960459, 45.554214> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233865, 0.671739, -0.702904,
		0.932601, 0.049412, 0.357509,
		0.274885, -0.739138, -0.614909,
		31.190630, 30.738718, 45.369743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627436, 31.453064, 45.624962>,  <30.998209, 31.256115, 45.800179>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627436, 31.453064, 45.624962> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.482388, 31.216885, 45.336552>,  <31.395359, 31.075178, 45.163506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.482388, 31.216885, 45.336552>,  <31.627436, 31.453064, 45.624962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482388, 31.216885, 45.336552> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018232, 0.769043, -0.638937,
		0.931759, -0.244837, -0.268105,
		-0.362619, -0.590447, -0.721027,
		31.373602, 31.039751, 45.120243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.336464, 31.574848, 45.855312>,  <31.627436, 31.453064, 45.624962>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.336464, 31.574848, 45.855312> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.469673, 31.872620, 46.086803>,  <32.549599, 32.051281, 46.225697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.469673, 31.872620, 46.086803>,  <32.336464, 31.574848, 45.855312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469673, 31.872620, 46.086803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283265, -0.664395, 0.691622,
		0.899363, -0.066397, -0.432132,
		0.333027, 0.744427, 0.578724,
		32.569580, 32.095947, 46.260422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953495, 31.456865, 45.985836>,  <32.336464, 31.574848, 45.855312>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953495, 31.456865, 45.985836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.815456, 31.687454, 46.282104>,  <32.732635, 31.825808, 46.459866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.815456, 31.687454, 46.282104>,  <32.953495, 31.456865, 45.985836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815456, 31.687454, 46.282104> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241071, -0.708233, 0.663544,
		0.907081, 0.407538, 0.105435,
		-0.345092, 0.576471, 0.740671,
		32.711929, 31.860395, 46.504307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329506, 31.205574, 46.502853>,  <32.953495, 31.456865, 45.985836>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329506, 31.205574, 46.502853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.083630, 31.446896, 46.706097>,  <32.936104, 31.591688, 46.828045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.083630, 31.446896, 46.706097>,  <33.329506, 31.205574, 46.502853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083630, 31.446896, 46.706097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146088, -0.545961, 0.824976,
		0.775120, 0.581336, 0.247463,
		-0.614693, 0.603304, 0.508111,
		32.899223, 31.627886, 46.858532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549362, 31.133167, 47.177925>,  <33.329506, 31.205574, 46.502853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549362, 31.133167, 47.177925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.196453, 31.310404, 47.241505>,  <32.984707, 31.416746, 47.279652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.196453, 31.310404, 47.241505>,  <33.549362, 31.133167, 47.177925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196453, 31.310404, 47.241505> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058840, -0.438808, 0.896652,
		0.467046, 0.781740, 0.413220,
		-0.882273, 0.443092, 0.158946,
		32.931770, 31.443331, 47.289188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579418, 31.432743, 47.881390>,  <33.549362, 31.133167, 47.177925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579418, 31.432743, 47.881390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.198631, 31.363573, 47.780315>,  <32.970158, 31.322071, 47.719669>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.198631, 31.363573, 47.780315>,  <33.579418, 31.432743, 47.881390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198631, 31.363573, 47.780315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115508, -0.561461, 0.819402,
		-0.283567, 0.809233, 0.514520,
		-0.951970, -0.172924, -0.252685,
		32.913040, 31.311695, 47.704510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241985, 31.429190, 48.501266>,  <33.579418, 31.432743, 47.881390>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241985, 31.429190, 48.501266> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.013779, 31.242119, 48.231216>,  <32.876854, 31.129877, 48.069187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.013779, 31.242119, 48.231216>,  <33.241985, 31.429190, 48.501266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013779, 31.242119, 48.231216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248384, -0.685283, 0.684611,
		-0.782829, 0.558270, 0.274799,
		-0.570512, -0.467678, -0.675125,
		32.842625, 31.101816, 48.028679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561874, 31.291056, 48.739334>,  <33.241985, 31.429190, 48.501266>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561874, 31.291056, 48.739334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.577202, 31.001879, 48.463394>,  <32.586399, 30.828373, 48.297832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.577202, 31.001879, 48.463394>,  <32.561874, 31.291056, 48.739334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577202, 31.001879, 48.463394> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432299, -0.634403, 0.640821,
		-0.900916, 0.273662, -0.336838,
		0.038323, -0.722940, -0.689847,
		32.588699, 30.784996, 48.256439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864815, 30.959795, 48.671364>,  <32.561874, 31.291056, 48.739334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864815, 30.959795, 48.671364> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.142464, 30.709612, 48.528820>,  <32.309055, 30.559502, 48.443295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.142464, 30.709612, 48.528820>,  <31.864815, 30.959795, 48.671364>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142464, 30.709612, 48.528820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276884, -0.688938, 0.669850,
		-0.664472, -0.366290, -0.651389,
		0.694127, -0.625456, -0.356361,
		32.350700, 30.521975, 48.421909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538731, 30.254681, 48.664307>,  <31.864815, 30.959795, 48.671364>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538731, 30.254681, 48.664307> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.935286, 30.203318, 48.653976>,  <32.173218, 30.172501, 48.647778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.935286, 30.203318, 48.653976>,  <31.538731, 30.254681, 48.664307>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935286, 30.203318, 48.653976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067296, -0.668508, 0.740654,
		-0.112367, -0.732536, -0.671390,
		0.991385, -0.128407, -0.025821,
		32.232700, 30.164795, 48.646229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.825573, 38.467072, 35.003136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178013, 38.404671, 35.181721>,  <35.389477, 38.367229, 35.288872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.178013, 38.404671, 35.181721>,  <34.825573, 38.467072, 35.003136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.178013, 38.404671, 35.181721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444000, 0.052246, 0.894502,
		-0.162873, -0.986373, -0.023233,
		0.881100, -0.156006, 0.446460,
		35.442341, 38.357868, 35.315659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775856, 37.926872, 35.438400>,  <34.825573, 38.467072, 35.003136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775856, 37.926872, 35.438400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069065, 38.150860, 35.592861>,  <35.244991, 38.285252, 35.685535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069065, 38.150860, 35.592861>,  <34.775856, 37.926872, 35.438400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069065, 38.150860, 35.592861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284135, -0.263721, 0.921802,
		0.618019, -0.785419, -0.034206,
		0.733021, 0.559972, 0.386149,
		35.288971, 38.318851, 35.708706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049309, 37.636150, 36.021656>,  <34.775856, 37.926872, 35.438400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049309, 37.636150, 36.021656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145027, 38.020443, 36.077847>,  <35.202457, 38.251019, 36.111561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.145027, 38.020443, 36.077847>,  <35.049309, 37.636150, 36.021656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145027, 38.020443, 36.077847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211302, -0.089683, 0.973298,
		0.947675, -0.262593, 0.181543,
		0.239300, 0.960730, 0.140477,
		35.216816, 38.308662, 36.119991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476830, 37.587551, 36.578304>,  <35.049309, 37.636150, 36.021656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476830, 37.587551, 36.578304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321159, 37.952778, 36.529556>,  <35.227757, 38.171913, 36.500309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321159, 37.952778, 36.529556>,  <35.476830, 37.587551, 36.578304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321159, 37.952778, 36.529556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322908, -0.011319, 0.946363,
		0.862711, 0.407658, 0.299240,
		-0.389180, 0.913064, -0.121871,
		35.204407, 38.226696, 36.492996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718426, 37.898670, 37.171787>,  <35.476830, 37.587551, 36.578304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718426, 37.898670, 37.171787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408470, 38.112782, 37.037315>,  <35.222496, 38.241249, 36.956631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408470, 38.112782, 37.037315>,  <35.718426, 37.898670, 37.171787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408470, 38.112782, 37.037315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336851, 0.100343, 0.936196,
		0.534863, 0.838692, 0.102556,
		-0.774889, 0.535283, -0.336184,
		35.176003, 38.273365, 36.936459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751892, 38.374538, 37.669582>,  <35.718426, 37.898670, 37.171787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751892, 38.374538, 37.669582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393547, 38.378521, 37.491898>,  <35.178539, 38.380913, 37.385284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.393547, 38.378521, 37.491898>,  <35.751892, 38.374538, 37.669582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.393547, 38.378521, 37.491898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441313, -0.136166, 0.886962,
		-0.051653, 0.990636, 0.126381,
		-0.895865, 0.009960, -0.444214,
		35.124786, 38.381508, 37.358635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360184, 38.914406, 38.023861>,  <35.751892, 38.374538, 37.669582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360184, 38.914406, 38.023861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084118, 38.683014, 37.849953>,  <34.918476, 38.544178, 37.745609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084118, 38.683014, 37.849953>,  <35.360184, 38.914406, 38.023861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084118, 38.683014, 37.849953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375549, -0.227241, 0.898512,
		-0.618572, 0.783401, -0.060415,
		-0.690167, -0.578484, -0.434771,
		34.877068, 38.509468, 37.719521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860092, 39.068775, 38.501881>,  <35.360184, 38.914406, 38.023861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860092, 39.068775, 38.501881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767872, 38.728455, 38.313000>,  <34.712540, 38.524261, 38.199673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767872, 38.728455, 38.313000>,  <34.860092, 39.068775, 38.501881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767872, 38.728455, 38.313000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324637, -0.390217, 0.861593,
		-0.917309, 0.351939, -0.186236,
		-0.230555, -0.850806, -0.472201,
		34.698704, 38.473213, 38.171341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241985, 38.917393, 38.706982>,  <34.860092, 39.068775, 38.501881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241985, 38.917393, 38.706982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344593, 38.558617, 38.562931>,  <34.406158, 38.343349, 38.476501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.344593, 38.558617, 38.562931>,  <34.241985, 38.917393, 38.706982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344593, 38.558617, 38.562931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321954, -0.430614, 0.843159,
		-0.911341, -0.100342, -0.399235,
		0.256521, -0.896941, -0.360130,
		34.421551, 38.289536, 38.454891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650791, 38.512836, 38.599701>,  <34.241985, 38.917393, 38.706982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650791, 38.512836, 38.599701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941818, 38.241402, 38.640015>,  <34.116436, 38.078541, 38.664204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941818, 38.241402, 38.640015>,  <33.650791, 38.512836, 38.599701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941818, 38.241402, 38.640015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487931, -0.408587, 0.771349,
		-0.482253, -0.610384, -0.628381,
		0.727568, -0.678592, 0.100783,
		34.160088, 38.037823, 38.670250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311188, 37.941414, 38.653698>,  <33.650791, 38.512836, 38.599701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311188, 37.941414, 38.653698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655106, 37.805054, 38.805767>,  <33.861458, 37.723236, 38.897007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655106, 37.805054, 38.805767>,  <33.311188, 37.941414, 38.653698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655106, 37.805054, 38.805767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496774, -0.386160, 0.777236,
		-0.118157, -0.857126, -0.501372,
		0.859799, -0.340905, 0.380171,
		33.913044, 37.702782, 38.919819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164955, 37.277287, 38.774765>,  <33.311188, 37.941414, 38.653698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164955, 37.277287, 38.774765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484982, 37.340790, 39.006176>,  <33.676998, 37.378891, 39.145023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484982, 37.340790, 39.006176>,  <33.164955, 37.277287, 38.774765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484982, 37.340790, 39.006176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523165, -0.287304, 0.802343,
		0.293592, -0.944591, -0.146805,
		0.800064, 0.158758, 0.578528,
		33.725002, 37.388416, 39.179733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986855, 36.621864, 38.422733>,  <33.164955, 37.277287, 38.774765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986855, 36.621864, 38.422733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707302, 36.392376, 38.251896>,  <32.539570, 36.254684, 38.149395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707302, 36.392376, 38.251896>,  <32.986855, 36.621864, 38.422733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707302, 36.392376, 38.251896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132014, 0.483404, -0.865386,
		0.702946, -0.661187, -0.262105,
		-0.698884, -0.573717, -0.427093,
		32.497639, 36.220261, 38.123768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223984, 36.546074, 37.757656>,  <32.986855, 36.621864, 38.422733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223984, 36.546074, 37.757656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840401, 36.434917, 37.735115>,  <32.610252, 36.368225, 37.721588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.840401, 36.434917, 37.735115>,  <33.223984, 36.546074, 37.757656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840401, 36.434917, 37.735115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069872, 0.424216, -0.902861,
		0.274799, -0.861870, -0.426223,
		-0.958960, -0.277887, -0.056354,
		32.552711, 36.351551, 37.718208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138954, 36.290840, 37.049145>,  <33.223984, 36.546074, 37.757656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138954, 36.290840, 37.049145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779678, 36.399387, 37.187492>,  <32.564114, 36.464516, 37.270500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779678, 36.399387, 37.187492>,  <33.138954, 36.290840, 37.049145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779678, 36.399387, 37.187492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179418, 0.491969, -0.851925,
		-0.401337, -0.827241, -0.393193,
		-0.898186, 0.271363, 0.345867,
		32.510223, 36.480797, 37.291252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660645, 36.101429, 36.465416>,  <33.138954, 36.290840, 37.049145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660645, 36.101429, 36.465416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438499, 36.349190, 36.687374>,  <32.305210, 36.497845, 36.820549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.438499, 36.349190, 36.687374>,  <32.660645, 36.101429, 36.465416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438499, 36.349190, 36.687374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569594, 0.202846, -0.796503,
		-0.605914, -0.758416, 0.240154,
		-0.555366, 0.619402, 0.554896,
		32.271889, 36.535011, 36.853844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050655, 35.880760, 36.424122>,  <32.660645, 36.101429, 36.465416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050655, 35.880760, 36.424122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989363, 36.258640, 36.540089>,  <31.952587, 36.485371, 36.609669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989363, 36.258640, 36.540089>,  <32.050655, 35.880760, 36.424122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989363, 36.258640, 36.540089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491337, 0.181714, -0.851803,
		-0.857384, -0.272975, 0.436323,
		-0.153235, 0.944704, 0.289921,
		31.943392, 36.542053, 36.627064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411089, 35.959862, 36.240959>,  <32.050655, 35.880760, 36.424122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411089, 35.959862, 36.240959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572048, 36.324959, 36.269180>,  <31.668623, 36.544018, 36.286114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572048, 36.324959, 36.269180>,  <31.411089, 35.959862, 36.240959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572048, 36.324959, 36.269180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404427, 0.246380, -0.880759,
		-0.821288, 0.325881, 0.468281,
		0.402398, 0.912742, 0.070554,
		31.692768, 36.598782, 36.290348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880033, 36.404373, 36.057514>,  <31.411089, 35.959862, 36.240959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880033, 36.404373, 36.057514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.229824, 36.589478, 35.999355>,  <31.439699, 36.700539, 35.964462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.229824, 36.589478, 35.999355>,  <30.880033, 36.404373, 36.057514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229824, 36.589478, 35.999355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294950, 0.269327, -0.916770,
		-0.385088, 0.844579, 0.372012,
		0.874478, 0.462762, -0.145394,
		31.492167, 36.728306, 35.955738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646893, 36.954422, 35.670414>,  <30.880033, 36.404373, 36.057514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646893, 36.954422, 35.670414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041271, 36.929993, 35.608212>,  <31.277899, 36.915337, 35.570892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041271, 36.929993, 35.608212>,  <30.646893, 36.954422, 35.670414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041271, 36.929993, 35.608212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142521, 0.178183, -0.973621,
		0.087170, 0.982100, 0.166974,
		0.985946, -0.061073, -0.155502,
		31.337055, 36.911671, 35.561562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737591, 37.401043, 35.094460>,  <30.646893, 36.954422, 35.670414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737591, 37.401043, 35.094460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087881, 37.208012, 35.100414>,  <31.298056, 37.092194, 35.103985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.087881, 37.208012, 35.100414>,  <30.737591, 37.401043, 35.094460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087881, 37.208012, 35.100414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079746, 0.114169, -0.990256,
		0.476175, 0.868381, 0.138464,
		0.875727, -0.482577, 0.014885,
		31.350599, 37.063240, 35.104881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.209824, 37.731014, 34.655983>,  <30.737591, 37.401043, 35.094460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.209824, 37.731014, 34.655983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291742, 37.340149, 34.678623>,  <31.340893, 37.105629, 34.692207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.291742, 37.340149, 34.678623>,  <31.209824, 37.731014, 34.655983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.291742, 37.340149, 34.678623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200223, -0.014779, -0.979639,
		0.958107, 0.211958, 0.192625,
		0.204795, -0.977167, 0.056599,
		31.353180, 37.046997, 34.695602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753098, 37.557762, 34.130146>,  <31.209824, 37.731014, 34.655983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753098, 37.557762, 34.130146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614458, 37.198647, 34.238846>,  <31.531275, 36.983177, 34.304066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614458, 37.198647, 34.238846>,  <31.753098, 37.557762, 34.130146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614458, 37.198647, 34.238846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159768, -0.341973, -0.926029,
		0.924308, -0.277542, 0.261964,
		-0.346597, -0.897789, 0.271746,
		31.510479, 36.929310, 34.320370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038090, 37.026844, 33.652882>,  <31.753098, 37.557762, 34.130146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038090, 37.026844, 33.652882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720207, 36.832375, 33.798252>,  <31.529478, 36.715694, 33.885475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.720207, 36.832375, 33.798252>,  <32.038090, 37.026844, 33.652882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720207, 36.832375, 33.798252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131121, -0.447095, -0.884824,
		0.592663, -0.750827, 0.291562,
		-0.794706, -0.486173, 0.363426,
		31.481796, 36.686523, 33.907280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031498, 36.491444, 33.355316>,  <32.038090, 37.026844, 33.652882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031498, 36.491444, 33.355316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649963, 36.485245, 33.475285>,  <31.421041, 36.481525, 33.547264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649963, 36.485245, 33.475285>,  <32.031498, 36.491444, 33.355316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649963, 36.485245, 33.475285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264715, -0.428279, -0.864004,
		0.141836, -0.903514, 0.404408,
		-0.953839, -0.015494, 0.299919,
		31.363811, 36.480598, 33.565262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825081, 36.149242, 32.799206>,  <32.031498, 36.491444, 33.355316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825081, 36.149242, 32.799206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480534, 36.204487, 32.994743>,  <31.273806, 36.237633, 33.112064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480534, 36.204487, 32.994743>,  <31.825081, 36.149242, 32.799206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480534, 36.204487, 32.994743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485241, -0.508402, -0.711385,
		0.150275, -0.849971, 0.504942,
		-0.861370, 0.138115, 0.488841,
		31.222122, 36.245922, 33.141396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732584, 35.568832, 33.134048>,  <31.825081, 36.149242, 32.799206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732584, 35.568832, 33.134048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580437, 35.249310, 33.320477>,  <31.489149, 35.057594, 33.432335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.580437, 35.249310, 33.320477>,  <31.732584, 35.568832, 33.134048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.580437, 35.249310, 33.320477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892962, 0.186048, -0.409884,
		0.240708, -0.572091, -0.784074,
		-0.380367, -0.798811, 0.466072,
		31.466326, 35.009666, 33.460300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610336, 34.804893, 32.996689>,  <31.732584, 35.568832, 33.134048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610336, 34.804893, 32.996689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921331, 34.625317, 32.820526>,  <32.107929, 34.517570, 32.714828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921331, 34.625317, 32.820526>,  <31.610336, 34.804893, 32.996689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921331, 34.625317, 32.820526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199977, -0.487448, 0.849943,
		-0.596254, -0.748893, -0.289207,
		0.777490, -0.448948, -0.440405,
		32.154579, 34.490631, 32.688404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505348, 34.157509, 33.030769>,  <31.610336, 34.804893, 32.996689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505348, 34.157509, 33.030769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899168, 34.227425, 33.026508>,  <32.135460, 34.269375, 33.023952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.899168, 34.227425, 33.026508>,  <31.505348, 34.157509, 33.030769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.899168, 34.227425, 33.026508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098962, -0.505203, 0.857307,
		0.144464, -0.845115, -0.514694,
		0.984549, 0.174785, -0.010651,
		32.194534, 34.279861, 33.023312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068413, 33.503815, 32.998810>,  <31.505348, 34.157509, 33.030769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068413, 33.503815, 32.998810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171013, 33.830574, 33.205456>,  <32.232571, 34.026630, 33.329445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171013, 33.830574, 33.205456>,  <32.068413, 33.503815, 32.998810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171013, 33.830574, 33.205456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230180, -0.570745, 0.788205,
		0.938737, -0.083257, -0.334427,
		0.256497, 0.816895, 0.516616,
		32.247963, 34.075642, 33.360439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628613, 33.412109, 33.225246>,  <32.068413, 33.503815, 32.998810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628613, 33.412109, 33.225246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487625, 33.680183, 33.486511>,  <32.403034, 33.841030, 33.643269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487625, 33.680183, 33.486511>,  <32.628613, 33.412109, 33.225246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487625, 33.680183, 33.486511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353165, -0.551083, 0.756030,
		0.866628, 0.497146, -0.042451,
		-0.352464, 0.670189, 0.653158,
		32.381886, 33.881241, 33.682457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082058, 33.378841, 33.718750>,  <32.628613, 33.412109, 33.225246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082058, 33.378841, 33.718750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791302, 33.546608, 33.936275>,  <32.616848, 33.647266, 34.066792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791302, 33.546608, 33.936275>,  <33.082058, 33.378841, 33.718750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791302, 33.546608, 33.936275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187994, -0.640085, 0.744949,
		0.660525, 0.643727, 0.386422,
		-0.726887, 0.419412, 0.543809,
		32.573235, 33.672432, 34.099419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387783, 33.498066, 34.432652>,  <33.082058, 33.378841, 33.718750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387783, 33.498066, 34.432652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990788, 33.492516, 34.481255>,  <32.752590, 33.489185, 34.510418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990788, 33.492516, 34.481255>,  <33.387783, 33.498066, 34.432652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990788, 33.492516, 34.481255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106691, -0.583890, 0.804792,
		0.059783, 0.811714, 0.580987,
		-0.992493, -0.013873, 0.121509,
		32.693039, 33.488354, 34.517708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406361, 33.741310, 35.031307>,  <33.387783, 33.498066, 34.432652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406361, 33.741310, 35.031307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061756, 33.550392, 34.962040>,  <32.854992, 33.435841, 34.920479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.061756, 33.550392, 34.962040>,  <33.406361, 33.741310, 35.031307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061756, 33.550392, 34.962040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131103, -0.538606, 0.832295,
		-0.490517, 0.694331, 0.526591,
		-0.861513, -0.477293, -0.173167,
		32.803303, 33.407204, 34.910091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113686, 33.532040, 35.676083>,  <33.406361, 33.741310, 35.031307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113686, 33.532040, 35.676083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883602, 33.298782, 35.446621>,  <32.745552, 33.158829, 35.308945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883602, 33.298782, 35.446621>,  <33.113686, 33.532040, 35.676083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883602, 33.298782, 35.446621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037404, -0.719298, 0.693694,
		-0.817152, 0.377561, 0.435557,
		-0.575207, -0.583146, -0.573653,
		32.711040, 33.123840, 35.274525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508511, 33.346470, 36.001575>,  <33.113686, 33.532040, 35.676083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508511, 33.346470, 36.001575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518379, 33.054184, 35.728683>,  <32.524300, 32.878811, 35.564949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.518379, 33.054184, 35.728683>,  <32.508511, 33.346470, 36.001575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518379, 33.054184, 35.728683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012095, -0.682609, 0.730684,
		-0.999622, -0.009772, -0.025676,
		0.024667, -0.730719, -0.682233,
		32.525780, 32.834969, 35.524014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912580, 32.851307, 36.100025>,  <32.508511, 33.346470, 36.001575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912580, 32.851307, 36.100025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216228, 32.663906, 35.919250>,  <32.398418, 32.551468, 35.810787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216228, 32.663906, 35.919250>,  <31.912580, 32.851307, 36.100025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216228, 32.663906, 35.919250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033576, -0.721526, 0.691573,
		-0.650083, -0.509813, -0.563456,
		0.759121, -0.468498, -0.451934,
		32.443966, 32.523357, 35.783672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736401, 32.154167, 36.138496>,  <31.912580, 32.851307, 36.100025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736401, 32.154167, 36.138496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129723, 32.147903, 36.065975>,  <32.365715, 32.144146, 36.022461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129723, 32.147903, 36.065975>,  <31.736401, 32.154167, 36.138496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129723, 32.147903, 36.065975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106205, -0.759638, 0.641615,
		-0.147770, -0.650157, -0.745292,
		0.983303, -0.015658, -0.181302,
		32.424713, 32.143208, 36.011585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.839752, 31.436953, 36.004379>,  <31.736401, 32.154167, 36.138496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.839752, 31.436953, 36.004379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181660, 31.613621, 36.113411>,  <32.386803, 31.719622, 36.178829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181660, 31.613621, 36.113411>,  <31.839752, 31.436953, 36.004379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181660, 31.613621, 36.113411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138635, -0.700404, 0.700153,
		0.500151, -0.560680, -0.659914,
		0.854769, 0.441669, 0.272578,
		32.438091, 31.746122, 36.195183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158966, 30.871922, 36.258244>,  <31.839752, 31.436953, 36.004379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158966, 30.871922, 36.258244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366699, 31.182571, 36.400875>,  <32.491341, 31.368961, 36.486454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366699, 31.182571, 36.400875>,  <32.158966, 30.871922, 36.258244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366699, 31.182571, 36.400875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152466, -0.494769, 0.855545,
		0.840861, -0.389946, -0.375359,
		0.519332, 0.776625, 0.356578,
		32.522499, 31.415558, 36.507847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687851, 30.593412, 36.600277>,  <32.158966, 30.871922, 36.258244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687851, 30.593412, 36.600277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732006, 30.966753, 36.736904>,  <32.758499, 31.190758, 36.818882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.732006, 30.966753, 36.736904>,  <32.687851, 30.593412, 36.600277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732006, 30.966753, 36.736904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246242, -0.358641, 0.900412,
		0.962901, -0.015285, -0.269420,
		0.110387, 0.933350, 0.341572,
		32.765121, 31.246758, 36.839375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439251, 30.824528, 36.736122>,  <32.687851, 30.593412, 36.600277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439251, 30.824528, 36.736122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178444, 31.011135, 36.975197>,  <33.021961, 31.123100, 37.118641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178444, 31.011135, 36.975197>,  <33.439251, 30.824528, 36.736122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178444, 31.011135, 36.975197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500358, -0.327520, 0.801481,
		0.569661, 0.821639, -0.019878,
		-0.652018, 0.466519, 0.597689,
		32.982838, 31.151091, 37.154503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769165, 30.742790, 37.441528>,  <33.439251, 30.824528, 36.736122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769165, 30.742790, 37.441528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403530, 30.874233, 37.536579>,  <33.184151, 30.953100, 37.593609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403530, 30.874233, 37.536579>,  <33.769165, 30.742790, 37.441528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403530, 30.874233, 37.536579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094067, -0.398172, 0.912475,
		0.394464, 0.856431, 0.333052,
		-0.914084, 0.328609, 0.237627,
		33.129303, 30.972816, 37.607868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788872, 31.202240, 38.049313>,  <33.769165, 30.742790, 37.441528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788872, 31.202240, 38.049313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409821, 31.074516, 38.051849>,  <33.182388, 30.997881, 38.053371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409821, 31.074516, 38.051849>,  <33.788872, 31.202240, 38.049313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409821, 31.074516, 38.051849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100550, -0.279448, 0.954881,
		-0.303132, 0.905511, 0.296920,
		-0.947629, -0.319311, 0.006340,
		33.125530, 30.978724, 38.053753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500301, 31.451616, 38.655064>,  <33.788872, 31.202240, 38.049313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500301, 31.451616, 38.655064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243687, 31.159662, 38.560661>,  <33.089718, 30.984489, 38.504021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.243687, 31.159662, 38.560661>,  <33.500301, 31.451616, 38.655064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243687, 31.159662, 38.560661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018292, -0.293022, 0.955931,
		-0.766875, 0.617581, 0.174633,
		-0.641536, -0.729885, -0.236008,
		33.051228, 30.940697, 38.489861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936371, 31.503300, 39.105217>,  <33.500301, 31.451616, 38.655064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936371, 31.503300, 39.105217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920284, 31.130539, 38.961029>,  <32.910633, 30.906881, 38.874516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920284, 31.130539, 38.961029>,  <32.936371, 31.503300, 39.105217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920284, 31.130539, 38.961029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225906, -0.342941, 0.911788,
		-0.973319, 0.118099, -0.196731,
		-0.040214, -0.931903, -0.360470,
		32.908218, 30.850967, 38.852886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478966, 31.277184, 39.424572>,  <32.936371, 31.503300, 39.105217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478966, 31.277184, 39.424572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628937, 30.923023, 39.314663>,  <32.718918, 30.710527, 39.248718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628937, 30.923023, 39.314663>,  <32.478966, 31.277184, 39.424572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628937, 30.923023, 39.314663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225508, -0.374591, 0.899349,
		-0.899210, -0.275224, -0.340108,
		0.374923, -0.885400, -0.274771,
		32.741413, 30.657404, 39.232231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962751, 30.826792, 39.662991>,  <32.478966, 31.277184, 39.424572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962751, 30.826792, 39.662991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280579, 30.588154, 39.617855>,  <32.471275, 30.444971, 39.590775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280579, 30.588154, 39.617855>,  <31.962751, 30.826792, 39.662991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280579, 30.588154, 39.617855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294459, -0.541148, 0.787689,
		-0.530980, -0.592658, -0.605654,
		0.794578, -0.596587, -0.112825,
		32.518948, 30.409174, 39.584003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712831, 30.042826, 39.689331>,  <31.962751, 30.826792, 39.662991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712831, 30.042826, 39.689331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105618, 30.051172, 39.764496>,  <32.341290, 30.056179, 39.809593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105618, 30.051172, 39.764496>,  <31.712831, 30.042826, 39.689331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105618, 30.051172, 39.764496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116014, -0.718280, 0.686013,
		0.149286, -0.695441, -0.702905,
		0.981965, 0.020865, 0.187910,
		32.400208, 30.057432, 39.820869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868916, 29.337921, 39.830257>,  <31.712831, 30.042826, 39.689331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868916, 29.337921, 39.830257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184505, 29.546404, 39.960400>,  <32.373859, 29.671494, 40.038486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184505, 29.546404, 39.960400>,  <31.868916, 29.337921, 39.830257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184505, 29.546404, 39.960400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169373, -0.693514, 0.700251,
		0.590617, -0.497374, -0.635445,
		0.788977, 0.521207, 0.325360,
		32.421200, 29.702766, 40.058006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478714, 28.864563, 39.933182>,  <31.868916, 29.337921, 39.830257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478714, 28.864563, 39.933182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534222, 29.189648, 40.159542>,  <32.567524, 29.384699, 40.295357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534222, 29.189648, 40.159542>,  <32.478714, 28.864563, 39.933182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534222, 29.189648, 40.159542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069333, -0.578001, 0.813086,
		0.987895, -0.073594, -0.136555,
		0.138767, 0.812711, 0.565901,
		32.575851, 29.433460, 40.329311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203476, 28.710236, 40.373760>,  <32.478714, 28.864563, 39.933182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203476, 28.710236, 40.373760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981266, 28.981955, 40.565571>,  <32.847942, 29.144985, 40.680656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981266, 28.981955, 40.565571>,  <33.203476, 28.710236, 40.373760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981266, 28.981955, 40.565571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118981, -0.505829, 0.854389,
		0.822945, 0.531688, 0.200176,
		-0.555523, 0.679297, 0.479530,
		32.814610, 29.185743, 40.709431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563850, 28.850206, 40.967579>,  <33.203476, 28.710236, 40.373760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563850, 28.850206, 40.967579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181141, 28.951519, 41.024754>,  <32.951515, 29.012306, 41.059059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181141, 28.951519, 41.024754>,  <33.563850, 28.850206, 40.967579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181141, 28.951519, 41.024754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004004, -0.502889, 0.864342,
		0.290802, 0.826408, 0.482165,
		-0.956775, 0.253283, 0.142933,
		32.894108, 29.027504, 41.067635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546028, 29.527128, 40.725910>,  <33.563850, 28.850206, 40.967579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546028, 29.527128, 40.725910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291149, 29.425283, 40.434940>,  <33.138222, 29.364176, 40.260357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291149, 29.425283, 40.434940>,  <33.546028, 29.527128, 40.725910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291149, 29.425283, 40.434940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066906, -0.922015, 0.381330,
		-0.767791, 0.291652, 0.570470,
		-0.637197, -0.254614, -0.727428,
		33.099991, 29.348900, 40.216713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217121, 29.882795, 40.803089>,  <33.546028, 29.527128, 40.725910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217121, 29.882795, 40.803089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552090, 29.805597, 41.007633>,  <34.753071, 29.759279, 41.130360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552090, 29.805597, 41.007633>,  <34.217121, 29.882795, 40.803089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552090, 29.805597, 41.007633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480467, 0.705922, -0.520408,
		-0.260542, 0.681489, 0.683879,
		0.837418, -0.192993, 0.511356,
		34.803314, 29.747700, 41.161041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538185, 30.603220, 41.062653>,  <34.217121, 29.882795, 40.803089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538185, 30.603220, 41.062653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803772, 30.308094, 41.014034>,  <34.963123, 30.131018, 40.984863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803772, 30.308094, 41.014034>,  <34.538185, 30.603220, 41.062653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803772, 30.308094, 41.014034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463503, 0.533642, -0.707383,
		0.586781, 0.413343, 0.696301,
		0.663968, -0.737817, -0.121546,
		35.002964, 30.086748, 40.977570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225193, 30.925858, 41.073860>,  <34.538185, 30.603220, 41.062653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225193, 30.925858, 41.073860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228790, 30.578947, 40.874763>,  <35.230949, 30.370800, 40.755306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228790, 30.578947, 40.874763>,  <35.225193, 30.925858, 41.073860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228790, 30.578947, 40.874763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535808, 0.424453, -0.729896,
		0.844292, -0.260135, 0.468509,
		0.008989, -0.867277, -0.497745,
		35.231487, 30.318764, 40.725441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860298, 30.876968, 40.734440>,  <35.225193, 30.925858, 41.073860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860298, 30.876968, 40.734440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680595, 30.587645, 40.524681>,  <35.572773, 30.414051, 40.398827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.680595, 30.587645, 40.524681>,  <35.860298, 30.876968, 40.734440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680595, 30.587645, 40.524681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441733, 0.330363, -0.834106,
		0.776558, -0.606371, 0.171092,
		-0.449255, -0.723308, -0.524400,
		35.545818, 30.370651, 40.367363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379028, 30.643772, 40.322163>,  <35.860298, 30.876968, 40.734440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379028, 30.643772, 40.322163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024055, 30.535698, 40.172783>,  <35.811073, 30.470854, 40.083157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024055, 30.535698, 40.172783>,  <36.379028, 30.643772, 40.322163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024055, 30.535698, 40.172783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256934, 0.382686, -0.887432,
		0.382686, -0.883488, -0.270187,
		0.887432, 0.270187, 0.373447,
		35.757824, 30.454641, 40.060749>
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
