// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying 
#define COMPAT_ATTRIBUTE attribute 
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     float VARscale_factor;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord1;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     vec4 _position1;
COMPAT_VARYING     float _frame_rotation;
struct prev {
    vec2 _video_size1;
    vec2 _texture_size1;
float _placeholder34;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _position1;
    vec4 _color1;
    vec2 _texCoord1;
    vec4 _t1;
    float VARscale_factor;
};
out_vertex _co1;
input_dummy _IN1;
prev _PASSPREV41;
vec4 _r0008;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
uniform COMPAT_PRECISION vec2 PassPrev4TextureSize;
uniform COMPAT_PRECISION vec2 PassPrev4InputSize;
void main()
{
    vec2 _ps;
    _r0008 = VertexCoord.x*MVPMatrix[0];
    _r0008 = _r0008 + VertexCoord.y*MVPMatrix[1];
    _r0008 = _r0008 + VertexCoord.z*MVPMatrix[2];
    _r0008 = _r0008 + VertexCoord.w*MVPMatrix[3];
    _co1._position1 = _r0008;
    _co1._color1 = COLOR;
    _ps = vec2(1.00000000E+00/PassPrev4TextureSize.x, 1.00000000E+00/PassPrev4TextureSize.y);
    _co1._texCoord1 = TexCoord.xy;
    _co1._t1 = vec4(_ps.x, 0.00000000E+00, 0.00000000E+00, _ps.y);
    VARscale_factor = OutputSize.x/PassPrev4InputSize.x;
    gl_Position = _r0008;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
    TEX1 = _co1._t1;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif
COMPAT_VARYING     float VARscale_factor;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     float _frame_rotation;
struct prev {
    vec2 _video_size;
    vec2 _texture_size;
float _placeholder27;
};
struct input_dummy {
    vec2 _video_size1;
    vec2 _texture_size1;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _color1;
    vec2 _texCoord;
    vec4 _t1;
    float VARscale_factor;
};
vec4 _ret_0;
vec3 _TMP49;
float _TMP51;
float _TMP50;
vec3 _TMP46;
float _TMP48;
float _TMP47;
vec3 _TMP43;
float _TMP45;
float _TMP44;
float _TMP42;
float _TMP55;
float _TMP41;
float _TMP40;
float _TMP39;
float _TMP38;
float _TMP37;
float _TMP36;
float _TMP35;
vec4 _TMP34;
float _TMP33;
float _TMP32;
float _TMP31;
float _TMP53;
float _TMP54;
float _TMP30;
float _TMP29;
float _TMP28;
float _TMP27;
vec4 _TMP26;
float _TMP25;
float _TMP24;
float _TMP23;
float _TMP22;
float _TMP21;
float _TMP20;
float _TMP19;
vec4 _TMP18;
float _TMP17;
float _TMP16;
float _TMP15;
float _TMP14;
float _TMP13;
float _TMP12;
float _TMP11;
vec4 _TMP10;
float _TMP9;
float _TMP8;
float _TMP7;
float _TMP6;
float _TMP5;
float _TMP4;
float _TMP3;
vec4 _TMP2;
vec4 _TMP52;
vec2 _TMP1;
vec2 _TMP0;
out_vertex _co1;
uniform sampler2D Texture;
prev _PASSPREV41;
vec2 _x0064;
vec2 _x0066;
vec2 _c0068;
vec2 _c0070;
vec2 _c0072;
vec2 _c0074;
vec4 _TMP75;
vec4 _x0080;
vec4 _TMP81;
vec4 _x0086;
vec4 _TMP87;
vec4 _x0092;
vec4 _TMP93;
vec4 _x0098;
float _x0102;
float _x0106;
float _x0110;
float _x0112;
float _x0116;
float _x0120;
float _x0122;
float _x0126;
float _x0130;
float _x0132;
float _x0136;
float _x0140;
float _x0142;
float _x0146;
float _x0150;
float _x0152;
vec2 _c0158;
float _x0160;
float _x0164;
float _x0168;
float _x0170;
float _x0174;
float _x0178;
float _x0180;
float _x0184;
float _x0188;
float _x0190;
float _x0194;
float _x0198;
float _x0200;
float _x0204;
float _x0208;
float _x0210;
vec2 _c0216;
float _x0218;
float _x0222;
float _x0226;
float _x0228;
float _x0232;
float _x0236;
float _x0238;
float _x0242;
float _x0246;
float _x0248;
float _x0252;
float _x0256;
float _x0258;
float _x0262;
float _x0266;
float _x0268;
vec2 _c0274;
float _x0276;
float _x0280;
float _x0284;
float _x0286;
float _x0290;
float _x0294;
float _x0296;
float _x0300;
float _x0304;
float _x0306;
float _x0310;
float _x0314;
float _x0316;
float _x0320;
float _x0324;
float _x0326;
vec2 _c0332;
float _a0334;
float _a0336;
float _a0338;
float _a0340;
vec4 _b0342;
float _x0346;
float _TMP347;
float _x0356;
float _TMP357;
float _x0366;
float _TMP367;
float _x0376;
float _TMP377;
vec3 _df0392;
vec3 _a0394;
vec3 _df0396;
vec3 _a0398;
vec3 _df0400;
vec3 _a0402;
vec3 _df0404;
vec3 _a0406;
vec3 _df0408;
vec3 _a0410;
vec3 _df0412;
vec3 _a0414;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
 
uniform COMPAT_PRECISION vec2 PassPrev4TextureSize;
uniform sampler2D PassPrev4Texture;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _fp;
    vec2 _pxcoord;
    vec4 _UL;
    vec4 _UR;
    vec4 _DL;
    vec4 _DR;
    vec3 _ax;
    vec3 _ay;
    vec2 _iq;
    vec3 _fp1;
    vec4 _inc;
    vec4 _level;
    vec3 _c11;
    vec3 _c21;
    vec3 _c3;
    vec3 _c4;
    _x0064 = TEX0.xy*PassPrev4TextureSize;
    _TMP0 = fract(_x0064);
    _fp = _TMP0 - vec2( 5.00000000E-01, 5.00000000E-01);
    _x0066 = TEX0.xy*PassPrev4TextureSize;
    _TMP1 = floor(_x0066);
    _pxcoord = _TMP1/PassPrev4TextureSize;
    _c0068 = _pxcoord + 2.50000000E-01*TEX1.xy + 2.50000000E-01*TEX1.zw;
    _UL = COMPAT_TEXTURE(Texture, _c0068);
    _c0070 = _pxcoord + 7.50000000E-01*TEX1.xy + 2.50000000E-01*TEX1.zw;
    _UR = COMPAT_TEXTURE(Texture, _c0070);
    _c0072 = _pxcoord + 2.50000000E-01*TEX1.xy + 7.50000000E-01*TEX1.zw;
    _DL = COMPAT_TEXTURE(Texture, _c0072);
    _c0074 = _pxcoord + 7.50000000E-01*TEX1.xy + 7.50000000E-01*TEX1.zw;
    _DR = COMPAT_TEXTURE(Texture, _c0074);
    _TMP52 = vec4( -6.40000000E+01, -6.40000000E+01, -6.40000000E+01, -6.40000000E+01) + _UL*vec4( 1.28000000E+02, 1.28000000E+02, 1.28000000E+02, 1.28000000E+02);
    _x0080 = _TMP52 + 5.00000000E-01;
    _TMP75 = floor(_x0080);
    _TMP52 = vec4( -6.40000000E+01, -6.40000000E+01, -6.40000000E+01, -6.40000000E+01) + _UR*vec4( 1.28000000E+02, 1.28000000E+02, 1.28000000E+02, 1.28000000E+02);
    _x0086 = _TMP52 + 5.00000000E-01;
    _TMP81 = floor(_x0086);
    _TMP52 = vec4( -6.40000000E+01, -6.40000000E+01, -6.40000000E+01, -6.40000000E+01) + _DL*vec4( 1.28000000E+02, 1.28000000E+02, 1.28000000E+02, 1.28000000E+02);
    _x0092 = _TMP52 + 5.00000000E-01;
    _TMP87 = floor(_x0092);
    _TMP52 = vec4( -6.40000000E+01, -6.40000000E+01, -6.40000000E+01, -6.40000000E+01) + _DR*vec4( 1.28000000E+02, 1.28000000E+02, 1.28000000E+02, 1.28000000E+02);
    _x0098 = _TMP52 + 5.00000000E-01;
    _TMP93 = floor(_x0098);
    _TMP2 = COMPAT_TEXTURE(PassPrev4Texture, TEX0.xy);
    _x0102 = _TMP75.w/2.00000000E+00;
    if (_x0102 < 0.00000000E+00) { 
        _x0106 = -_x0102;
        _TMP54 = floor(_x0106);
        _TMP53 = -_TMP54;
    } else {
        _TMP53 = floor(_x0102);
    } 
    _TMP3 = _x0102 - _TMP53;
    _x0110 = _TMP3 + 5.00000000E-01;
    _ay.z = floor(_x0110);
    _x0112 = _TMP53/2.00000000E+00;
    if (_x0112 < 0.00000000E+00) { 
        _x0116 = -_x0112;
        _TMP54 = floor(_x0116);
        _TMP53 = -_TMP54;
    } else {
        _TMP53 = floor(_x0112);
    } 
    _TMP4 = _x0112 - _TMP53;
    _x0120 = _TMP4 + 5.00000000E-01;
    _ay.y = floor(_x0120);
    _x0122 = _TMP53/2.00000000E+00;
    if (_x0122 < 0.00000000E+00) { 
        _x0126 = -_x0122;
        _TMP54 = floor(_x0126);
        _TMP53 = -_TMP54;
    } else {
        _TMP53 = floor(_x0122);
    } 
    _TMP5 = _x0122 - _TMP53;
    _x0130 = _TMP5 + 5.00000000E-01;
    _ay.x = floor(_x0130);
    _x0132 = _TMP53/2.00000000E+00;
    if (_x0132 < 0.00000000E+00) { 
        _x0136 = -_x0132;
        _TMP54 = floor(_x0136);
        _TMP53 = -_TMP54;
    } else {
        _TMP53 = floor(_x0132);
    } 
    _TMP6 = _x0132 - _TMP53;
    _x0140 = _TMP6 + 5.00000000E-01;
    _ax.z = floor(_x0140);
    _x0142 = _TMP53/2.00000000E+00;
    if (_x0142 < 0.00000000E+00) { 
        _x0146 = -_x0142;
        _TMP54 = floor(_x0146);
        _TMP53 = -_TMP54;
    } else {
        _TMP53 = floor(_x0142);
    } 
    _TMP7 = _x0142 - _TMP53;
    _x0150 = _TMP7 + 5.00000000E-01;
    _ax.y = floor(_x0150);
    _x0152 = _TMP53 + 5.00000000E-01;
    _ax.x = floor(_x0152);
    _TMP8 = dot(_ax, vec3( 4.00000000E+00, 2.00000000E+00, 1.00000000E+00));
    _iq.x = _TMP8 - 2.00000000E+00;
    _TMP9 = dot(_ay, vec3( 4.00000000E+00, 2.00000000E+00, 1.00000000E+00));
    _iq.y = _TMP9 - 2.00000000E+00;
    _c0158 = TEX0.xy + _iq.x*TEX1.xy + _iq.y*TEX1.zw;
    _TMP10 = COMPAT_TEXTURE(PassPrev4Texture, _c0158);
    _x0160 = _TMP81.w/2.00000000E+00;
    if (_x0160 < 0.00000000E+00) { 
        _x0164 = -_x0160;
        _TMP54 = floor(_x0164);
        _TMP53 = -_TMP54;
    } else {
        _TMP53 = floor(_x0160);
    } 
    _TMP11 = _x0160 - _TMP53;
    _x0168 = _TMP11 + 5.00000000E-01;
    _ay.z = floor(_x0168);
    _x0170 = _TMP53/2.00000000E+00;
    if (_x0170 < 0.00000000E+00) { 
        _x0174 = -_x0170;
        _TMP54 = floor(_x0174);
        _TMP53 = -_TMP54;
    } else {
        _TMP53 = floor(_x0170);
    } 
    _TMP12 = _x0170 - _TMP53;
    _x0178 = _TMP12 + 5.00000000E-01;
    _ay.y = floor(_x0178);
    _x0180 = _TMP53/2.00000000E+00;
    if (_x0180 < 0.00000000E+00) { 
        _x0184 = -_x0180;
        _TMP54 = floor(_x0184);
        _TMP53 = -_TMP54;
    } else {
        _TMP53 = floor(_x0180);
    } 
    _TMP13 = _x0180 - _TMP53;
    _x0188 = _TMP13 + 5.00000000E-01;
    _ay.x = floor(_x0188);
    _x0190 = _TMP53/2.00000000E+00;
    if (_x0190 < 0.00000000E+00) { 
        _x0194 = -_x0190;
        _TMP54 = floor(_x0194);
        _TMP53 = -_TMP54;
    } else {
        _TMP53 = floor(_x0190);
    } 
    _TMP14 = _x0190 - _TMP53;
    _x0198 = _TMP14 + 5.00000000E-01;
    _ax.z = floor(_x0198);
    _x0200 = _TMP53/2.00000000E+00;
    if (_x0200 < 0.00000000E+00) { 
        _x0204 = -_x0200;
        _TMP54 = floor(_x0204);
        _TMP53 = -_TMP54;
    } else {
        _TMP53 = floor(_x0200);
    } 
    _TMP15 = _x0200 - _TMP53;
    _x0208 = _TMP15 + 5.00000000E-01;
    _ax.y = floor(_x0208);
    _x0210 = _TMP53 + 5.00000000E-01;
    _ax.x = floor(_x0210);
    _TMP16 = dot(_ax, vec3( 4.00000000E+00, 2.00000000E+00, 1.00000000E+00));
    _iq.x = _TMP16 - 2.00000000E+00;
    _TMP17 = dot(_ay, vec3( 4.00000000E+00, 2.00000000E+00, 1.00000000E+00));
    _iq.y = _TMP17 - 2.00000000E+00;
    _c0216 = TEX0.xy + _iq.x*TEX1.xy + _iq.y*TEX1.zw;
    _TMP18 = COMPAT_TEXTURE(PassPrev4Texture, _c0216);
    _x0218 = _TMP87.w/2.00000000E+00;
    if (_x0218 < 0.00000000E+00) { 
        _x0222 = -_x0218;
        _TMP54 = floor(_x0222);
        _TMP53 = -_TMP54;
    } else {
        _TMP53 = floor(_x0218);
    } 
    _TMP19 = _x0218 - _TMP53;
    _x0226 = _TMP19 + 5.00000000E-01;
    _ay.z = floor(_x0226);
    _x0228 = _TMP53/2.00000000E+00;
    if (_x0228 < 0.00000000E+00) { 
        _x0232 = -_x0228;
        _TMP54 = floor(_x0232);
        _TMP53 = -_TMP54;
    } else {
        _TMP53 = floor(_x0228);
    } 
    _TMP20 = _x0228 - _TMP53;
    _x0236 = _TMP20 + 5.00000000E-01;
    _ay.y = floor(_x0236);
    _x0238 = _TMP53/2.00000000E+00;
    if (_x0238 < 0.00000000E+00) { 
        _x0242 = -_x0238;
        _TMP54 = floor(_x0242);
        _TMP53 = -_TMP54;
    } else {
        _TMP53 = floor(_x0238);
    } 
    _TMP21 = _x0238 - _TMP53;
    _x0246 = _TMP21 + 5.00000000E-01;
    _ay.x = floor(_x0246);
    _x0248 = _TMP53/2.00000000E+00;
    if (_x0248 < 0.00000000E+00) { 
        _x0252 = -_x0248;
        _TMP54 = floor(_x0252);
        _TMP53 = -_TMP54;
    } else {
        _TMP53 = floor(_x0248);
    } 
    _TMP22 = _x0248 - _TMP53;
    _x0256 = _TMP22 + 5.00000000E-01;
    _ax.z = floor(_x0256);
    _x0258 = _TMP53/2.00000000E+00;
    if (_x0258 < 0.00000000E+00) { 
        _x0262 = -_x0258;
        _TMP54 = floor(_x0262);
        _TMP53 = -_TMP54;
    } else {
        _TMP53 = floor(_x0258);
    } 
    _TMP23 = _x0258 - _TMP53;
    _x0266 = _TMP23 + 5.00000000E-01;
    _ax.y = floor(_x0266);
    _x0268 = _TMP53 + 5.00000000E-01;
    _ax.x = floor(_x0268);
    _TMP24 = dot(_ax, vec3( 4.00000000E+00, 2.00000000E+00, 1.00000000E+00));
    _iq.x = _TMP24 - 2.00000000E+00;
    _TMP25 = dot(_ay, vec3( 4.00000000E+00, 2.00000000E+00, 1.00000000E+00));
    _iq.y = _TMP25 - 2.00000000E+00;
    _c0274 = TEX0.xy + _iq.x*TEX1.xy + _iq.y*TEX1.zw;
    _TMP26 = COMPAT_TEXTURE(PassPrev4Texture, _c0274);
    _x0276 = _TMP93.w/2.00000000E+00;
    if (_x0276 < 0.00000000E+00) { 
        _x0280 = -_x0276;
        _TMP54 = floor(_x0280);
        _TMP53 = -_TMP54;
    } else {
        _TMP53 = floor(_x0276);
    } 
    _TMP27 = _x0276 - _TMP53;
    _x0284 = _TMP27 + 5.00000000E-01;
    _ay.z = floor(_x0284);
    _x0286 = _TMP53/2.00000000E+00;
    if (_x0286 < 0.00000000E+00) { 
        _x0290 = -_x0286;
        _TMP54 = floor(_x0290);
        _TMP53 = -_TMP54;
    } else {
        _TMP53 = floor(_x0286);
    } 
    _TMP28 = _x0286 - _TMP53;
    _x0294 = _TMP28 + 5.00000000E-01;
    _ay.y = floor(_x0294);
    _x0296 = _TMP53/2.00000000E+00;
    if (_x0296 < 0.00000000E+00) { 
        _x0300 = -_x0296;
        _TMP54 = floor(_x0300);
        _TMP53 = -_TMP54;
    } else {
        _TMP53 = floor(_x0296);
    } 
    _TMP29 = _x0296 - _TMP53;
    _x0304 = _TMP29 + 5.00000000E-01;
    _ay.x = floor(_x0304);
    _x0306 = _TMP53/2.00000000E+00;
    if (_x0306 < 0.00000000E+00) { 
        _x0310 = -_x0306;
        _TMP54 = floor(_x0310);
        _TMP53 = -_TMP54;
    } else {
        _TMP53 = floor(_x0306);
    } 
    _TMP30 = _x0306 - _TMP53;
    _x0314 = _TMP30 + 5.00000000E-01;
    _ax.z = floor(_x0314);
    _x0316 = _TMP53/2.00000000E+00;
    if (_x0316 < 0.00000000E+00) { 
        _x0320 = -_x0316;
        _TMP54 = floor(_x0320);
        _TMP53 = -_TMP54;
    } else {
        _TMP53 = floor(_x0316);
    } 
    _TMP31 = _x0316 - _TMP53;
    _x0324 = _TMP31 + 5.00000000E-01;
    _ax.y = floor(_x0324);
    _x0326 = _TMP53 + 5.00000000E-01;
    _ax.x = floor(_x0326);
    _TMP32 = dot(_ax, vec3( 4.00000000E+00, 2.00000000E+00, 1.00000000E+00));
    _iq.x = _TMP32 - 2.00000000E+00;
    _TMP33 = dot(_ay, vec3( 4.00000000E+00, 2.00000000E+00, 1.00000000E+00));
    _iq.y = _TMP33 - 2.00000000E+00;
    _c0332 = TEX0.xy + _iq.x*TEX1.xy + _iq.y*TEX1.zw;
    _TMP34 = COMPAT_TEXTURE(PassPrev4Texture, _c0332);
    _fp1 = vec3(_fp.x, _fp.y, -1.00000000E+00);
    _a0334 = _TMP75.x/_TMP75.y;
    _TMP35 = abs(_a0334);
    _a0336 = _TMP81.x/_TMP81.y;
    _TMP36 = abs(_a0336);
    _a0338 = _TMP87.x/_TMP87.y;
    _TMP37 = abs(_a0338);
    _a0340 = _TMP93.x/_TMP93.y;
    _TMP38 = abs(_a0340);
    _inc = vec4(_TMP35, _TMP36, _TMP37, _TMP38);
    _b0342 = 1.00000000E+00/_inc;
    _level = max(_inc, _b0342);
    _TMP39 = dot(_fp1, _TMP75.xyz);
    _x0346 = (_TMP39*VARscale_factor)/(8.00000000E+00*_level.x) + 5.00000000E-01;
    _TMP55 = min(1.00000000E+00, _x0346);
    _TMP347 = max(0.00000000E+00, _TMP55);
    _TMP40 = dot(_fp1, _TMP81.xyz);
    _x0356 = (_TMP40*VARscale_factor)/(8.00000000E+00*_level.y) + 5.00000000E-01;
    _TMP55 = min(1.00000000E+00, _x0356);
    _TMP357 = max(0.00000000E+00, _TMP55);
    _TMP41 = dot(_fp1, _TMP87.xyz);
    _x0366 = (_TMP41*VARscale_factor)/(8.00000000E+00*_level.z) + 5.00000000E-01;
    _TMP55 = min(1.00000000E+00, _x0366);
    _TMP367 = max(0.00000000E+00, _TMP55);
    _TMP42 = dot(_fp1, _TMP93.xyz);
    _x0376 = (_TMP42*VARscale_factor)/(8.00000000E+00*_level.w) + 5.00000000E-01;
    _TMP55 = min(1.00000000E+00, _x0376);
    _TMP377 = max(0.00000000E+00, _TMP55);
    _c11 = _TMP2.xyz + _TMP347*(_TMP10.xyz - _TMP2.xyz);
    _c21 = _TMP2.xyz + _TMP357*(_TMP18.xyz - _TMP2.xyz);
    _c3 = _TMP2.xyz + _TMP367*(_TMP26.xyz - _TMP2.xyz);
    _c4 = _TMP2.xyz + _TMP377*(_TMP34.xyz - _TMP2.xyz);
    _a0394 = _c21 - _TMP2.xyz;
    _df0392 = abs(_a0394);
    _TMP44 = _df0392.x + _df0392.y + _df0392.z;
    _a0398 = _c11 - _TMP2.xyz;
    _df0396 = abs(_a0398);
    _TMP45 = _df0396.x + _df0396.y + _df0396.z;
    if (_TMP44 > _TMP45) { 
        _TMP43 = _c21;
    } else {
        _TMP43 = _c11;
    } 
    _a0402 = _c3 - _TMP2.xyz;
    _df0400 = abs(_a0402);
    _TMP47 = _df0400.x + _df0400.y + _df0400.z;
    _a0406 = _TMP43 - _TMP2.xyz;
    _df0404 = abs(_a0406);
    _TMP48 = _df0404.x + _df0404.y + _df0404.z;
    if (_TMP47 > _TMP48) { 
        _TMP46 = _c3;
    } else {
        _TMP46 = _TMP43;
    } 
    _a0410 = _c4 - _TMP2.xyz;
    _df0408 = abs(_a0410);
    _TMP50 = _df0408.x + _df0408.y + _df0408.z;
    _a0414 = _TMP46 - _TMP2.xyz;
    _df0412 = abs(_a0414);
    _TMP51 = _df0412.x + _df0412.y + _df0412.z;
    if (_TMP50 > _TMP51) { 
        _TMP49 = _c4;
    } else {
        _TMP49 = _TMP46;
    } 
    _ret_0 = vec4(_TMP49.x, _TMP49.y, _TMP49.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
