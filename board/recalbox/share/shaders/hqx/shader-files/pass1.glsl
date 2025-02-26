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
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord1;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     vec4 _position1;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec4 _position1;
    vec4 _color1;
    vec2 _texCoord1;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
};
out_vertex _ret_0;
float _TMP1;
input_dummy _IN1;
vec4 _r0006;
vec4 _v0006;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    out_vertex _OUT;
    vec2 _ps;
    _v0006 = vec4(float(VertexCoord.x), float(VertexCoord.y), float(VertexCoord.z), float(VertexCoord.w));
    _TMP1 = dot(vec4(float(MVPMatrix[0].x), float(MVPMatrix[0].y), float(MVPMatrix[0].z), float(MVPMatrix[0].w)), vec4(float(_v0006.x), float(_v0006.y), float(_v0006.z), float(_v0006.w)));
    _r0006.x = float(_TMP1);
    _TMP1 = dot(vec4(float(MVPMatrix[1].x), float(MVPMatrix[1].y), float(MVPMatrix[1].z), float(MVPMatrix[1].w)), vec4(float(_v0006.x), float(_v0006.y), float(_v0006.z), float(_v0006.w)));
    _r0006.y = float(_TMP1);
    _TMP1 = dot(vec4(float(MVPMatrix[2].x), float(MVPMatrix[2].y), float(MVPMatrix[2].z), float(MVPMatrix[2].w)), vec4(float(_v0006.x), float(_v0006.y), float(_v0006.z), float(_v0006.w)));
    _r0006.z = float(_TMP1);
    _TMP1 = dot(vec4(float(MVPMatrix[3].x), float(MVPMatrix[3].y), float(MVPMatrix[3].z), float(MVPMatrix[3].w)), vec4(float(_v0006.x), float(_v0006.y), float(_v0006.z), float(_v0006.w)));
    _r0006.w = float(_TMP1);
    _OUT._position1 = vec4(float(_r0006.x), float(_r0006.y), float(_r0006.z), float(_r0006.w));
    _ps = 1.00000000E+00/TextureSize;
    _OUT._t1 = TexCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float(-_ps.y)));
    _OUT._t2 = TexCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), 0.00000000E+00);
    _OUT._t3 = TexCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float(_ps.y)));
    _ret_0._position1 = _OUT._position1;
    _ret_0._color1 = COLOR;
    _ret_0._texCoord1 = TexCoord.xy;
    _ret_0._t1 = _OUT._t1;
    _ret_0._t2 = _OUT._t2;
    _ret_0._t3 = _OUT._t3;
    gl_Position = _OUT._position1;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
    TEX1 = _OUT._t1;
    TEX2 = _OUT._t2;
    TEX3 = _OUT._t3;
    return;
    COL0 = _ret_0._color1;
    TEX0.xy = _ret_0._texCoord1;
    TEX1 = _ret_0._t1;
    TEX2 = _ret_0._t2;
    TEX3 = _ret_0._t3;
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
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _color;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec4 _color;
    vec2 _texCoord;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
};
vec4 _ret_0;
float _TMP35;
float _TMP32;
float _TMP31;
float _TMP30;
float _TMP34;
bool _TMP29;
bool _TMP28;
bool _TMP27;
bool _TMP26;
vec3 _TMP33;
bool _TMP25;
bool _TMP24;
bool _TMP23;
bool _TMP22;
bool _TMP21;
bool _TMP20;
bool _TMP19;
bool _TMP18;
vec4 _TMP16;
vec4 _TMP14;
vec4 _TMP12;
vec4 _TMP10;
vec4 _TMP8;
vec4 _TMP6;
vec4 _TMP4;
vec4 _TMP2;
vec4 _TMP0;
uniform sampler2D Texture;
vec3 _r0055;
vec3 _v0055;
vec3 _r0065;
vec3 _v0065;
vec3 _r0075;
vec3 _v0075;
vec3 _r0085;
vec3 _v0085;
vec3 _r0095;
vec3 _v0095;
vec3 _r0105;
vec3 _v0105;
vec3 _r0115;
vec3 _v0115;
vec3 _r0125;
vec3 _v0125;
vec3 _r0135;
vec3 _v0135;
bvec3 _res0143;
vec3 _a0145;
bvec3 _res0147;
vec3 _a0149;
bvec3 _res0151;
vec3 _a0153;
bvec3 _res0155;
vec3 _a0157;
bvec3 _res0159;
vec3 _a0161;
bvec3 _res0163;
vec3 _a0165;
bvec3 _res0167;
vec3 _a0169;
bvec3 _res0171;
vec3 _a0173;
bvec3 _res0175;
vec3 _a0177;
bvec3 _res0179;
vec3 _a0181;
bvec3 _res0183;
vec3 _a0185;
bvec3 _res0187;
vec3 _a0189;
vec3 _a0191;
vec3 _a0193;
vec3 _a0195;
vec4 _a0197;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec3 _w1;
    vec3 _w2;
    vec3 _w3;
    vec3 _w4;
    vec3 _w5;
    vec3 _w6;
    vec3 _w7;
    vec3 _w8;
    vec3 _w9;
    bvec4 _cross;
    vec2 _index;
    vec2 _TMP40;
    bvec3 _TMP41[3];
    _TMP0 = COMPAT_TEXTURE(Texture, TEX1.xw);
    _v0055 = vec3(float(_TMP0.x), float(_TMP0.y), float(_TMP0.z));
    _TMP34 = dot(vec3( 2.99072266E-01, 5.86914062E-01, 1.14013672E-01), vec3(float(_v0055.x), float(_v0055.y), float(_v0055.z)));
    _r0055.x = float(_TMP34);
    _TMP34 = dot(vec3( -1.68945312E-01, -3.31054688E-01, 5.00000000E-01), vec3(float(_v0055.x), float(_v0055.y), float(_v0055.z)));
    _r0055.y = float(_TMP34);
    _TMP34 = dot(vec3( 5.00000000E-01, -4.18945312E-01, -8.09936523E-02), vec3(float(_v0055.x), float(_v0055.y), float(_v0055.z)));
    _r0055.z = float(_TMP34);
    _w1 = vec3(float(_r0055.x), float(_r0055.y), float(_r0055.z));
    _TMP2 = COMPAT_TEXTURE(Texture, TEX1.yw);
    _v0065 = vec3(float(_TMP2.x), float(_TMP2.y), float(_TMP2.z));
    _TMP34 = dot(vec3( 2.99072266E-01, 5.86914062E-01, 1.14013672E-01), vec3(float(_v0065.x), float(_v0065.y), float(_v0065.z)));
    _r0065.x = float(_TMP34);
    _TMP34 = dot(vec3( -1.68945312E-01, -3.31054688E-01, 5.00000000E-01), vec3(float(_v0065.x), float(_v0065.y), float(_v0065.z)));
    _r0065.y = float(_TMP34);
    _TMP34 = dot(vec3( 5.00000000E-01, -4.18945312E-01, -8.09936523E-02), vec3(float(_v0065.x), float(_v0065.y), float(_v0065.z)));
    _r0065.z = float(_TMP34);
    _w2 = vec3(float(_r0065.x), float(_r0065.y), float(_r0065.z));
    _TMP4 = COMPAT_TEXTURE(Texture, TEX1.zw);
    _v0075 = vec3(float(_TMP4.x), float(_TMP4.y), float(_TMP4.z));
    _TMP34 = dot(vec3( 2.99072266E-01, 5.86914062E-01, 1.14013672E-01), vec3(float(_v0075.x), float(_v0075.y), float(_v0075.z)));
    _r0075.x = float(_TMP34);
    _TMP34 = dot(vec3( -1.68945312E-01, -3.31054688E-01, 5.00000000E-01), vec3(float(_v0075.x), float(_v0075.y), float(_v0075.z)));
    _r0075.y = float(_TMP34);
    _TMP34 = dot(vec3( 5.00000000E-01, -4.18945312E-01, -8.09936523E-02), vec3(float(_v0075.x), float(_v0075.y), float(_v0075.z)));
    _r0075.z = float(_TMP34);
    _w3 = vec3(float(_r0075.x), float(_r0075.y), float(_r0075.z));
    _TMP6 = COMPAT_TEXTURE(Texture, TEX2.xw);
    _v0085 = vec3(float(_TMP6.x), float(_TMP6.y), float(_TMP6.z));
    _TMP34 = dot(vec3( 2.99072266E-01, 5.86914062E-01, 1.14013672E-01), vec3(float(_v0085.x), float(_v0085.y), float(_v0085.z)));
    _r0085.x = float(_TMP34);
    _TMP34 = dot(vec3( -1.68945312E-01, -3.31054688E-01, 5.00000000E-01), vec3(float(_v0085.x), float(_v0085.y), float(_v0085.z)));
    _r0085.y = float(_TMP34);
    _TMP34 = dot(vec3( 5.00000000E-01, -4.18945312E-01, -8.09936523E-02), vec3(float(_v0085.x), float(_v0085.y), float(_v0085.z)));
    _r0085.z = float(_TMP34);
    _w4 = vec3(float(_r0085.x), float(_r0085.y), float(_r0085.z));
    _TMP8 = COMPAT_TEXTURE(Texture, TEX2.yw);
    _v0095 = vec3(float(_TMP8.x), float(_TMP8.y), float(_TMP8.z));
    _TMP34 = dot(vec3( 2.99072266E-01, 5.86914062E-01, 1.14013672E-01), vec3(float(_v0095.x), float(_v0095.y), float(_v0095.z)));
    _r0095.x = float(_TMP34);
    _TMP34 = dot(vec3( -1.68945312E-01, -3.31054688E-01, 5.00000000E-01), vec3(float(_v0095.x), float(_v0095.y), float(_v0095.z)));
    _r0095.y = float(_TMP34);
    _TMP34 = dot(vec3( 5.00000000E-01, -4.18945312E-01, -8.09936523E-02), vec3(float(_v0095.x), float(_v0095.y), float(_v0095.z)));
    _r0095.z = float(_TMP34);
    _w5 = vec3(float(_r0095.x), float(_r0095.y), float(_r0095.z));
    _TMP10 = COMPAT_TEXTURE(Texture, TEX2.zw);
    _v0105 = vec3(float(_TMP10.x), float(_TMP10.y), float(_TMP10.z));
    _TMP34 = dot(vec3( 2.99072266E-01, 5.86914062E-01, 1.14013672E-01), vec3(float(_v0105.x), float(_v0105.y), float(_v0105.z)));
    _r0105.x = float(_TMP34);
    _TMP34 = dot(vec3( -1.68945312E-01, -3.31054688E-01, 5.00000000E-01), vec3(float(_v0105.x), float(_v0105.y), float(_v0105.z)));
    _r0105.y = float(_TMP34);
    _TMP34 = dot(vec3( 5.00000000E-01, -4.18945312E-01, -8.09936523E-02), vec3(float(_v0105.x), float(_v0105.y), float(_v0105.z)));
    _r0105.z = float(_TMP34);
    _w6 = vec3(float(_r0105.x), float(_r0105.y), float(_r0105.z));
    _TMP12 = COMPAT_TEXTURE(Texture, TEX3.xw);
    _v0115 = vec3(float(_TMP12.x), float(_TMP12.y), float(_TMP12.z));
    _TMP34 = dot(vec3( 2.99072266E-01, 5.86914062E-01, 1.14013672E-01), vec3(float(_v0115.x), float(_v0115.y), float(_v0115.z)));
    _r0115.x = float(_TMP34);
    _TMP34 = dot(vec3( -1.68945312E-01, -3.31054688E-01, 5.00000000E-01), vec3(float(_v0115.x), float(_v0115.y), float(_v0115.z)));
    _r0115.y = float(_TMP34);
    _TMP34 = dot(vec3( 5.00000000E-01, -4.18945312E-01, -8.09936523E-02), vec3(float(_v0115.x), float(_v0115.y), float(_v0115.z)));
    _r0115.z = float(_TMP34);
    _w7 = vec3(float(_r0115.x), float(_r0115.y), float(_r0115.z));
    _TMP14 = COMPAT_TEXTURE(Texture, TEX3.yw);
    _v0125 = vec3(float(_TMP14.x), float(_TMP14.y), float(_TMP14.z));
    _TMP34 = dot(vec3( 2.99072266E-01, 5.86914062E-01, 1.14013672E-01), vec3(float(_v0125.x), float(_v0125.y), float(_v0125.z)));
    _r0125.x = float(_TMP34);
    _TMP34 = dot(vec3( -1.68945312E-01, -3.31054688E-01, 5.00000000E-01), vec3(float(_v0125.x), float(_v0125.y), float(_v0125.z)));
    _r0125.y = float(_TMP34);
    _TMP34 = dot(vec3( 5.00000000E-01, -4.18945312E-01, -8.09936523E-02), vec3(float(_v0125.x), float(_v0125.y), float(_v0125.z)));
    _r0125.z = float(_TMP34);
    _w8 = vec3(float(_r0125.x), float(_r0125.y), float(_r0125.z));
    _TMP16 = COMPAT_TEXTURE(Texture, TEX3.zw);
    _v0135 = vec3(float(_TMP16.x), float(_TMP16.y), float(_TMP16.z));
    _TMP34 = dot(vec3( 2.99072266E-01, 5.86914062E-01, 1.14013672E-01), vec3(float(_v0135.x), float(_v0135.y), float(_v0135.z)));
    _r0135.x = float(_TMP34);
    _TMP34 = dot(vec3( -1.68945312E-01, -3.31054688E-01, 5.00000000E-01), vec3(float(_v0135.x), float(_v0135.y), float(_v0135.z)));
    _r0135.y = float(_TMP34);
    _TMP34 = dot(vec3( 5.00000000E-01, -4.18945312E-01, -8.09936523E-02), vec3(float(_v0135.x), float(_v0135.y), float(_v0135.z)));
    _r0135.z = float(_TMP34);
    _w9 = vec3(float(_r0135.x), float(_r0135.y), float(_r0135.z));
    _a0145 = (_w5 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01)) - (_w1 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01));
    _TMP33 = abs(_a0145);
    _res0143 = bvec3(_TMP33.x > 1.88232422E-01, _TMP33.y > 2.74505615E-02, _TMP33.z > 2.35290527E-02);
    _TMP18 = _res0143.x || _res0143.y || _res0143.z;
    _a0149 = (_w5 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01)) - (_w2 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01));
    _TMP33 = abs(_a0149);
    _res0147 = bvec3(_TMP33.x > 1.88232422E-01, _TMP33.y > 2.74505615E-02, _TMP33.z > 2.35290527E-02);
    _TMP19 = _res0147.x || _res0147.y || _res0147.z;
    _a0153 = (_w5 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01)) - (_w3 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01));
    _TMP33 = abs(_a0153);
    _res0151 = bvec3(_TMP33.x > 1.88232422E-01, _TMP33.y > 2.74505615E-02, _TMP33.z > 2.35290527E-02);
    _TMP20 = _res0151.x || _res0151.y || _res0151.z;
    _a0157 = (_w5 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01)) - (_w4 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01));
    _TMP33 = abs(_a0157);
    _res0155 = bvec3(_TMP33.x > 1.88232422E-01, _TMP33.y > 2.74505615E-02, _TMP33.z > 2.35290527E-02);
    _TMP21 = _res0155.x || _res0155.y || _res0155.z;
    _a0161 = (_w5 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01)) - (_w6 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01));
    _TMP33 = abs(_a0161);
    _res0159 = bvec3(_TMP33.x > 1.88232422E-01, _TMP33.y > 2.74505615E-02, _TMP33.z > 2.35290527E-02);
    _TMP22 = _res0159.x || _res0159.y || _res0159.z;
    _a0165 = (_w5 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01)) - (_w7 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01));
    _TMP33 = abs(_a0165);
    _res0163 = bvec3(_TMP33.x > 1.88232422E-01, _TMP33.y > 2.74505615E-02, _TMP33.z > 2.35290527E-02);
    _TMP23 = _res0163.x || _res0163.y || _res0163.z;
    _a0169 = (_w5 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01)) - (_w8 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01));
    _TMP33 = abs(_a0169);
    _res0167 = bvec3(_TMP33.x > 1.88232422E-01, _TMP33.y > 2.74505615E-02, _TMP33.z > 2.35290527E-02);
    _TMP24 = _res0167.x || _res0167.y || _res0167.z;
    _a0173 = (_w5 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01)) - (_w9 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01));
    _TMP33 = abs(_a0173);
    _res0171 = bvec3(_TMP33.x > 1.88232422E-01, _TMP33.y > 2.74505615E-02, _TMP33.z > 2.35290527E-02);
    _TMP25 = _res0171.x || _res0171.y || _res0171.z;
    _TMP41[0] = bvec3(_TMP18, _TMP19, _TMP20);
    _TMP41[1] = bvec3(_TMP21, false, _TMP22);
    _TMP41[2] = bvec3(_TMP23, _TMP24, _TMP25);
    _a0177 = (_w4 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01)) - (_w2 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01));
    _TMP33 = abs(_a0177);
    _res0175 = bvec3(_TMP33.x > 1.88232422E-01, _TMP33.y > 2.74505615E-02, _TMP33.z > 2.35290527E-02);
    _TMP26 = _res0175.x || _res0175.y || _res0175.z;
    _a0181 = (_w2 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01)) - (_w6 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01));
    _TMP33 = abs(_a0181);
    _res0179 = bvec3(_TMP33.x > 1.88232422E-01, _TMP33.y > 2.74505615E-02, _TMP33.z > 2.35290527E-02);
    _TMP27 = _res0179.x || _res0179.y || _res0179.z;
    _a0185 = (_w8 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01)) - (_w4 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01));
    _TMP33 = abs(_a0185);
    _res0183 = bvec3(_TMP33.x > 1.88232422E-01, _TMP33.y > 2.74505615E-02, _TMP33.z > 2.35290527E-02);
    _TMP28 = _res0183.x || _res0183.y || _res0183.z;
    _a0189 = (_w6 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01)) - (_w8 + vec3( 0.00000000E+00, 5.00000000E-01, 5.00000000E-01));
    _TMP33 = abs(_a0189);
    _res0187 = bvec3(_TMP33.x > 1.88232422E-01, _TMP33.y > 2.74505615E-02, _TMP33.z > 2.35290527E-02);
    _TMP29 = _res0187.x || _res0187.y || _res0187.z;
    _cross = bvec4(_TMP26, _TMP27, _TMP28, _TMP29);
    _a0191 = vec3(float(_TMP41[0].x), float(_TMP41[0].y), float(_TMP41[0].z));
    _TMP34 = dot(vec3(float(_a0191.x), float(_a0191.y), float(_a0191.z)), vec3( 1.00000000E+00, 2.00000000E+00, 4.00000000E+00));
    _TMP30 = float(_TMP34);
    _a0193 = vec3(float(_TMP41[1].x), float(_TMP41[1].y), float(_TMP41[1].z));
    _TMP34 = dot(vec3(float(_a0193.x), float(_a0193.y), float(_a0193.z)), vec3( 8.00000000E+00, 0.00000000E+00, 1.60000000E+01));
    _TMP31 = float(_TMP34);
    _a0195 = vec3(float(_TMP41[2].x), float(_TMP41[2].y), float(_TMP41[2].z));
    _TMP34 = dot(vec3(float(_a0195.x), float(_a0195.y), float(_a0195.z)), vec3( 3.20000000E+01, 6.40000000E+01, 1.28000000E+02));
    _TMP32 = float(_TMP34);
    _index.x = _TMP30 + _TMP31 + _TMP32;
    _a0197 = vec4(float(_cross.x), float(_cross.y), float(_cross.z), float(_cross.w));
    _TMP35 = dot(vec4(float(_a0197.x), float(_a0197.y), float(_a0197.z), float(_a0197.w)), vec4( 1.00000000E+00, 2.00000000E+00, 4.00000000E+00, 8.00000000E+00));
    _index.y = float(_TMP35);
    _TMP40 = _index/vec2( 2.55000000E+02, 1.50000000E+01);
    _ret_0 = vec4(float(_TMP40.x), float(_TMP40.y), 0.00000000E+00, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
