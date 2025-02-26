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
COMPAT_VARYING     vec2 _upper_bound;
COMPAT_VARYING     vec2 _lower_bound;
COMPAT_VARYING     vec2 _texel1;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
float _placeholder30;
};
struct texture_info {
    vec2 _texel1;
    vec2 _lower_bound;
    vec2 _upper_bound;
};
vec4 _oPosition1;
texture_info _oTexInfo1;
input_dummy _IN1;
vec4 _r0007;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
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
    vec2 _oTexCoord;
    vec2 _texel;
    texture_info _TMP3;
    _r0007 = VertexCoord.x*MVPMatrix[0];
    _r0007 = _r0007 + VertexCoord.y*MVPMatrix[1];
    _r0007 = _r0007 + VertexCoord.z*MVPMatrix[2];
    _r0007 = _r0007 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0007;
    _oTexCoord = TexCoord.xy;
    _texel = 1.00000000E+00/TextureSize;
    _TMP3._upper_bound = _texel*(OutputSize - 1.00000000E+00);
    _oTexInfo1._texel1 = _texel;
    _oTexInfo1._lower_bound = vec2( 0.00000000E+00, 0.00000000E+00);
    _oTexInfo1._upper_bound = _TMP3._upper_bound;
    gl_Position = _r0007;
    TEX0.xy = TexCoord.xy;
    TEX1.xy = _texel;
    TEX2.xy = vec2( 0.00000000E+00, 0.00000000E+00);
    TEX3.xy = _TMP3._upper_bound;
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
COMPAT_VARYING     vec2 _upper_bound;
COMPAT_VARYING     vec2 _lower_bound;
COMPAT_VARYING     vec2 _texel;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
float _placeholder28;
};
struct texture_info {
    vec2 _texel;
    vec2 _lower_bound;
    vec2 _upper_bound;
};
vec4 _ret_0;
vec4 _TMP7;
vec2 _TMP8;
vec4 _TMP5;
vec4 _TMP3;
input_dummy _IN1;
vec4 _out_color0014;
vec2 _TMP15;
vec2 _TMP23;
vec2 _x0024;
vec2 _TMP31;
vec2 _x0032;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
 
uniform sampler2D Texture;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    _TMP8 = min(TEX3.xy, TEX0.xy);
    _TMP15 = max(TEX2.xy, _TMP8);
    _TMP3 = COMPAT_TEXTURE(Texture, _TMP15);
    _out_color0014 = vec4(float((_TMP3*1.29882812E-01).x), float((_TMP3*1.29882812E-01).y), float((_TMP3*1.29882812E-01).z), float((_TMP3*1.29882812E-01).w));
    _x0024 = TEX0.xy + vec2(0.00000000E+00, float(float(TEX1.y)));
    _TMP8 = min(TEX3.xy, _x0024);
    _TMP23 = max(TEX2.xy, _TMP8);
    _TMP5 = COMPAT_TEXTURE(Texture, _TMP23);
    _out_color0014.w = float((float(_out_color0014.w) + _TMP5.w*1.29882812E-01));
    _x0032 = TEX0.xy - vec2(0.00000000E+00, float(float(TEX1.y)));
    _TMP8 = min(TEX3.xy, _x0032);
    _TMP31 = max(TEX2.xy, _TMP8);
    _TMP7 = COMPAT_TEXTURE(Texture, _TMP31);
    _out_color0014.w = float((float(_out_color0014.w) + _TMP7.w*1.29882812E-01));
    _x0024 = TEX0.xy + vec2(0.00000000E+00, float(float((2.00000000E+00*TEX1.y))));
    _TMP8 = min(TEX3.xy, _x0024);
    _TMP23 = max(TEX2.xy, _TMP8);
    _TMP5 = COMPAT_TEXTURE(Texture, _TMP23);
    _out_color0014.w = float((float(_out_color0014.w) + _TMP5.w*1.10351562E-01));
    _x0032 = TEX0.xy - vec2(0.00000000E+00, float(float((2.00000000E+00*TEX1.y))));
    _TMP8 = min(TEX3.xy, _x0032);
    _TMP31 = max(TEX2.xy, _TMP8);
    _TMP7 = COMPAT_TEXTURE(Texture, _TMP31);
    _out_color0014.w = float((float(_out_color0014.w) + _TMP7.w*1.10351562E-01));
    _x0024 = TEX0.xy + vec2(0.00000000E+00, float(float((3.00000000E+00*TEX1.y))));
    _TMP8 = min(TEX3.xy, _x0024);
    _TMP23 = max(TEX2.xy, _TMP8);
    _TMP5 = COMPAT_TEXTURE(Texture, _TMP23);
    _out_color0014.w = float((float(_out_color0014.w) + _TMP5.w*7.03125000E-02));
    _x0032 = TEX0.xy - vec2(0.00000000E+00, float(float((3.00000000E+00*TEX1.y))));
    _TMP8 = min(TEX3.xy, _x0032);
    _TMP31 = max(TEX2.xy, _TMP8);
    _TMP7 = COMPAT_TEXTURE(Texture, _TMP31);
    _out_color0014.w = float((float(_out_color0014.w) + _TMP7.w*7.03125000E-02));
    _x0024 = TEX0.xy + vec2(0.00000000E+00, float(float((4.00000000E+00*TEX1.y))));
    _TMP8 = min(TEX3.xy, _x0024);
    _TMP23 = max(TEX2.xy, _TMP8);
    _TMP5 = COMPAT_TEXTURE(Texture, _TMP23);
    _out_color0014.w = float((float(_out_color0014.w) + _TMP5.w*3.02734375E-02));
    _x0032 = TEX0.xy - vec2(0.00000000E+00, float(float((4.00000000E+00*TEX1.y))));
    _TMP8 = min(TEX3.xy, _x0032);
    _TMP31 = max(TEX2.xy, _TMP8);
    _TMP7 = COMPAT_TEXTURE(Texture, _TMP31);
    _out_color0014.w = float((float(_out_color0014.w) + _TMP7.w*3.02734375E-02));
    _ret_0 = vec4(float(_out_color0014.x), float(_out_color0014.y), float(_out_color0014.z), float(_out_color0014.w));
    FragColor = _ret_0;
    return;
} 
#endif
