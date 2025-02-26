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
COMPAT_VARYING     float _threeVARtwo_dX;
COMPAT_VARYING     float _twoVARtwo_dX;
COMPAT_VARYING     float VARtwo_dX;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
float _placeholder30;
};
struct texture_data {
    float VARtwo_dX;
    float _twoVARtwo_dX;
    float _threeVARtwo_dX;
};
vec4 _oPosition1;
texture_data _oTexData1;
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
    float _texel_width;
    texture_data _TMP3;
    _r0007 = VertexCoord.x*MVPMatrix[0];
    _r0007 = _r0007 + VertexCoord.y*MVPMatrix[1];
    _r0007 = _r0007 + VertexCoord.z*MVPMatrix[2];
    _r0007 = _r0007 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0007;
    _oTexCoord = TexCoord.xy;
    _texel_width = 1.00000000E+00/TextureSize.x;
    _TMP3._twoVARtwo_dX = 2.00000000E+00*_texel_width;
    _TMP3._threeVARtwo_dX = 3.00000000E+00*_texel_width;
    _oTexData1.VARtwo_dX = _texel_width;
    _oTexData1._twoVARtwo_dX = _TMP3._twoVARtwo_dX;
    _oTexData1._threeVARtwo_dX = _TMP3._threeVARtwo_dX;
    gl_Position = _r0007;
    TEX0.xy = TexCoord.xy;
    TEX1.x = _texel_width;
    TEX2.x = _TMP3._twoVARtwo_dX;
    TEX3.x = _TMP3._threeVARtwo_dX;
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
COMPAT_VARYING     float _threeVARtwo_dX;
COMPAT_VARYING     float _twoVARtwo_dX;
COMPAT_VARYING     float VARtwo_dX;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
float _placeholder28;
};
struct texture_data {
    float VARtwo_dX;
    float _twoVARtwo_dX;
    float _threeVARtwo_dX;
};
vec4 _ret_0;
float _TMP5;
float _TMP4;
float _TMP3;
float _TMP10;
vec4 _TMP2;
vec3 _TMP0;
vec3 _TMP1;
float _TMP9;
float _TMP8;
float _TMP7;
float _TMP6;
input_dummy _IN1;
float _c0014;
float _a0016;
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
    vec4 _out_color;
    _a0016 = TEX0.x/TEX3.x;
    _TMP6 = abs(_a0016);
    _TMP7 = fract(_TMP6);
    _TMP8 = abs(TEX3.x);
    _c0014 = _TMP7*_TMP8;
    if (TEX0.x < 0.00000000E+00) { 
        _TMP9 = -_c0014;
    } else {
        _TMP9 = _c0014;
    } 
    if (_TMP9 < TEX1.x) { 
        _TMP0 = vec3( 1.00000000E+00, 0.00000000E+00, 1.00000000E+00);
    } else {
        if (_TMP9 < TEX2.x) { 
            _TMP1 = vec3( 1.00000000E+00, 1.00000000E+00, 0.00000000E+00);
        } else {
            _TMP1 = vec3( 0.00000000E+00, 1.00000000E+00, 1.00000000E+00);
        } 
        _TMP0 = _TMP1;
    } 
    _TMP2 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _out_color = vec4(float(_TMP2.x), float(_TMP2.y), float(_TMP2.z), float(_TMP2.w));
    _TMP10 = min(float(_out_color.x), float(_TMP0.x));
    _TMP3 = float(_TMP10);
    _TMP10 = min(float(_out_color.y), float(_TMP0.y));
    _TMP4 = float(_TMP10);
    _TMP10 = min(float(_out_color.z), float(_TMP0.z));
    _TMP5 = float(_TMP10);
    _out_color.xyz = vec3(_TMP3, _TMP4, _TMP5);
    _ret_0 = vec4(float(_out_color.x), float(_out_color.y), float(_out_color.z), float(_out_color.w));
    FragColor = _ret_0;
    return;
} 
#endif
