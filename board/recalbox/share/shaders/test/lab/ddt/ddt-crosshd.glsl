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
COMPAT_VARYING     vec4 _t7;
COMPAT_VARYING     vec4 _t6;
COMPAT_VARYING     vec4 _t5;
COMPAT_VARYING     vec4 _t4;
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
    vec4 _t4;
    vec4 _t5;
    vec4 _t6;
    vec4 _t7;
};
out_vertex _ret_0;
float _TMP0;
input_dummy _IN1;
vec4 _r0006;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
COMPAT_VARYING vec4 TEX5;
COMPAT_VARYING vec4 TEX6;
COMPAT_VARYING vec4 TEX7;
 
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
    _TMP0 = dot(vec4(float(MVPMatrix[0].x), float(MVPMatrix[0].y), float(MVPMatrix[0].z), float(MVPMatrix[0].w)), vec4(float(VertexCoord.x), float(VertexCoord.y), float(VertexCoord.z), float(VertexCoord.w)));
    _r0006.x = float(_TMP0);
    _TMP0 = dot(vec4(float(MVPMatrix[1].x), float(MVPMatrix[1].y), float(MVPMatrix[1].z), float(MVPMatrix[1].w)), vec4(float(VertexCoord.x), float(VertexCoord.y), float(VertexCoord.z), float(VertexCoord.w)));
    _r0006.y = float(_TMP0);
    _TMP0 = dot(vec4(float(MVPMatrix[2].x), float(MVPMatrix[2].y), float(MVPMatrix[2].z), float(MVPMatrix[2].w)), vec4(float(VertexCoord.x), float(VertexCoord.y), float(VertexCoord.z), float(VertexCoord.w)));
    _r0006.z = float(_TMP0);
    _TMP0 = dot(vec4(float(MVPMatrix[3].x), float(MVPMatrix[3].y), float(MVPMatrix[3].z), float(MVPMatrix[3].w)), vec4(float(VertexCoord.x), float(VertexCoord.y), float(VertexCoord.z), float(VertexCoord.w)));
    _r0006.w = float(_TMP0);
    _ps = vec2(1.00000000E+00/TextureSize.x, 1.00000000E+00/TextureSize.y);
    _OUT._t1 = TexCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float((-2.00000000E+00*_ps.y))));
    _OUT._t2 = TexCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float(-_ps.y)));
    _OUT._t3 = TexCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), 0.00000000E+00);
    _OUT._t4 = TexCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float(_ps.y)));
    _OUT._t5 = TexCoord.xxxy + vec4(float(float(-_ps.x)), 0.00000000E+00, float(float(_ps.x)), float(float((2.00000000E+00*_ps.y))));
    _OUT._t6 = TexCoord.xyyy + vec4(float(float((2.00000000E+00*_ps.x))), float(float((2.00000000E+00*_ps.y))), 0.00000000E+00, float(float(_ps.y)));
    _OUT._t7 = TexCoord.xyyy + vec4(float(float((2.00000000E+00*_ps.x))), float(float(-_ps.y)), 0.00000000E+00, float(float(_ps.y)));
    _ret_0._position1 = _r0006;
    _ret_0._color1 = COLOR;
    _ret_0._texCoord1 = TexCoord.xy;
    _ret_0._t1 = _OUT._t1;
    _ret_0._t2 = _OUT._t2;
    _ret_0._t3 = _OUT._t3;
    _ret_0._t4 = _OUT._t4;
    _ret_0._t5 = _OUT._t5;
    _ret_0._t6 = _OUT._t6;
    _ret_0._t7 = _OUT._t7;
    gl_Position = vec4(float(_r0006.x), float(_r0006.y), float(_r0006.z), float(_r0006.w));
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
    TEX1 = _OUT._t1;
    TEX2 = _OUT._t2;
    TEX3 = _OUT._t3;
    TEX4 = _OUT._t4;
    TEX5 = _OUT._t5;
    TEX6 = _OUT._t6;
    TEX7 = _OUT._t7;
    return;
    COL0 = _ret_0._color1;
    TEX0.xy = _ret_0._texCoord1;
    TEX1 = _ret_0._t1;
    TEX2 = _ret_0._t2;
    TEX3 = _ret_0._t3;
    TEX4 = _ret_0._t4;
    TEX5 = _ret_0._t5;
    TEX6 = _ret_0._t6;
    TEX7 = _ret_0._t7;
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
COMPAT_VARYING     vec4 _t7;
COMPAT_VARYING     vec4 _t6;
COMPAT_VARYING     vec4 _t5;
COMPAT_VARYING     vec4 _t4;
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
    vec4 _t4;
    vec4 _t5;
    vec4 _t6;
    vec4 _t7;
};
vec4 _ret_0;
vec3 _TMP48;
vec3 _TMP50;
vec3 _TMP49;
vec3 _TMP44;
vec3 _TMP46;
vec3 _TMP45;
float _TMP47;
vec4 _TMP15;
vec4 _TMP14;
vec4 _TMP13;
vec4 _TMP12;
vec4 _TMP11;
vec4 _TMP10;
vec4 _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
uniform sampler2D Texture;
input_dummy _IN1;
vec2 _x0062;
vec4 _r0096;
vec4 _r0106;
vec4 _r0116;
vec4 _r0126;
float _TMP135;
float _a0138;
float _TMP139;
float _a0142;
float _TMP143;
float _a0146;
float _TMP147;
float _a0150;
float _TMP151;
float _a0154;
float _TMP155;
float _a0158;
float _TMP159;
float _a0162;
float _TMP163;
float _a0166;
float _TMP167;
float _a0170;
float _TMP171;
float _a0174;
float _TMP175;
float _a0178;
float _TMP179;
float _a0182;
float _TMP183;
float _a0186;
float _TMP187;
float _a0190;
float _TMP191;
float _a0194;
float _TMP195;
float _a0198;
float _TMP199;
float _a0202;
float _TMP203;
float _a0206;
float _TMP207;
float _a0210;
float _TMP211;
float _a0214;
float _TMP215;
float _a0218;
float _TMP219;
float _a0222;
float _TMP223;
float _a0226;
float _TMP227;
float _a0230;
vec3 _TMP233;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
COMPAT_VARYING vec4 TEX5;
COMPAT_VARYING vec4 TEX6;
COMPAT_VARYING vec4 TEX7;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _fp;
    vec3 _HH;
    vec3 _HV;
    vec3 _HD;
    vec3 _b;
    vec3 _c;
    vec3 _d;
    vec3 _e;
    vec3 _f;
    vec3 _g;
    vec3 _h;
    vec3 _o;
    vec3 _p;
    vec3 _q;
    vec3 _r;
    vec3 _s;
    vec3 _t;
    vec3 _u;
    vec3 _v;
    vec3 _w;
    vec4 _l1;
    vec4 _l2;
    vec4 _l3;
    vec4 _l4;
    float _A1;
    float _A3;
    float _A4;
    float _A5;
    bool _vert_edge;
    bool _horiz_edge;
    bool _edge_A1a;
    bool _edge_A1b;
    bool _edge_A2a;
    bool _edge_A2b;
    bool _edge_A3a;
    bool _edge_A3b;
    bool _edge_A4a;
    bool _edge_A4b;
    bool _edge_A5a;
    bool _edge_A5b;
    _x0062 = TEX0.xy*TextureSize;
    _fp = fract(_x0062);
    _TMP0 = COMPAT_TEXTURE(Texture, TEX2.xw);
    _b = vec3(float(_TMP0.x), float(_TMP0.y), float(_TMP0.z));
    _TMP1 = COMPAT_TEXTURE(Texture, TEX2.yw);
    _c = vec3(float(_TMP1.x), float(_TMP1.y), float(_TMP1.z));
    _TMP2 = COMPAT_TEXTURE(Texture, TEX2.zw);
    _d = vec3(float(_TMP2.x), float(_TMP2.y), float(_TMP2.z));
    _TMP3 = COMPAT_TEXTURE(Texture, TEX7.xy);
    _e = vec3(float(_TMP3.x), float(_TMP3.y), float(_TMP3.z));
    _TMP4 = COMPAT_TEXTURE(Texture, TEX3.xw);
    _f = vec3(float(_TMP4.x), float(_TMP4.y), float(_TMP4.z));
    _TMP5 = COMPAT_TEXTURE(Texture, TEX3.yw);
    _g = vec3(float(_TMP5.x), float(_TMP5.y), float(_TMP5.z));
    _TMP6 = COMPAT_TEXTURE(Texture, TEX3.zw);
    _h = vec3(float(_TMP6.x), float(_TMP6.y), float(_TMP6.z));
    _TMP7 = COMPAT_TEXTURE(Texture, TEX7.xz);
    _o = vec3(float(_TMP7.x), float(_TMP7.y), float(_TMP7.z));
    _TMP8 = COMPAT_TEXTURE(Texture, TEX4.xw);
    _p = vec3(float(_TMP8.x), float(_TMP8.y), float(_TMP8.z));
    _TMP9 = COMPAT_TEXTURE(Texture, TEX4.yw);
    _q = vec3(float(_TMP9.x), float(_TMP9.y), float(_TMP9.z));
    _TMP10 = COMPAT_TEXTURE(Texture, TEX4.zw);
    _r = vec3(float(_TMP10.x), float(_TMP10.y), float(_TMP10.z));
    _TMP11 = COMPAT_TEXTURE(Texture, TEX7.xw);
    _s = vec3(float(_TMP11.x), float(_TMP11.y), float(_TMP11.z));
    _TMP12 = COMPAT_TEXTURE(Texture, TEX5.xw);
    _t = vec3(float(_TMP12.x), float(_TMP12.y), float(_TMP12.z));
    _TMP13 = COMPAT_TEXTURE(Texture, TEX5.yw);
    _u = vec3(float(_TMP13.x), float(_TMP13.y), float(_TMP13.z));
    _TMP14 = COMPAT_TEXTURE(Texture, TEX5.zw);
    _v = vec3(float(_TMP14.x), float(_TMP14.y), float(_TMP14.z));
    _TMP15 = COMPAT_TEXTURE(Texture, TEX6.xy);
    _w = vec3(float(_TMP15.x), float(_TMP15.y), float(_TMP15.z));
    _TMP47 = dot(vec3(float(_b.x), float(_b.y), float(_b.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0096.x = float(_TMP47);
    _TMP47 = dot(vec3(float(_c.x), float(_c.y), float(_c.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0096.y = float(_TMP47);
    _TMP47 = dot(vec3(float(_d.x), float(_d.y), float(_d.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0096.z = float(_TMP47);
    _TMP47 = dot(vec3(float(_e.x), float(_e.y), float(_e.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0096.w = float(_TMP47);
    _l1 = vec4(float(_r0096.x), float(_r0096.y), float(_r0096.z), float(_r0096.w));
    _TMP47 = dot(vec3(float(_f.x), float(_f.y), float(_f.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0106.x = float(_TMP47);
    _TMP47 = dot(vec3(float(_g.x), float(_g.y), float(_g.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0106.y = float(_TMP47);
    _TMP47 = dot(vec3(float(_h.x), float(_h.y), float(_h.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0106.z = float(_TMP47);
    _TMP47 = dot(vec3(float(_o.x), float(_o.y), float(_o.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0106.w = float(_TMP47);
    _l2 = vec4(float(_r0106.x), float(_r0106.y), float(_r0106.z), float(_r0106.w));
    _TMP47 = dot(vec3(float(_p.x), float(_p.y), float(_p.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0116.x = float(_TMP47);
    _TMP47 = dot(vec3(float(_q.x), float(_q.y), float(_q.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0116.y = float(_TMP47);
    _TMP47 = dot(vec3(float(_r.x), float(_r.y), float(_r.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0116.z = float(_TMP47);
    _TMP47 = dot(vec3(float(_s.x), float(_s.y), float(_s.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0116.w = float(_TMP47);
    _l3 = vec4(float(_r0116.x), float(_r0116.y), float(_r0116.z), float(_r0116.w));
    _TMP47 = dot(vec3(float(_t.x), float(_t.y), float(_t.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0126.x = float(_TMP47);
    _TMP47 = dot(vec3(float(_u.x), float(_u.y), float(_u.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0126.y = float(_TMP47);
    _TMP47 = dot(vec3(float(_v.x), float(_v.y), float(_v.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0126.z = float(_TMP47);
    _TMP47 = dot(vec3(float(_w.x), float(_w.y), float(_w.z)), vec3( 1.43593750E+01, 2.81718750E+01, 5.47265625E+00));
    _r0126.w = float(_TMP47);
    _l4 = vec4(float(_r0126.x), float(_r0126.y), float(_r0126.z), float(_r0126.w));
    _A1 = _l1.y + _l1.z + _l2.y + _l2.z;
    _A3 = _l3.y + _l3.z + _l4.y + _l4.z;
    _A4 = _l2.x + _l2.y + _l3.x + _l3.y;
    _A5 = _l2.z + _l2.w + _l3.z + _l3.w;
    _a0138 = _A1 - _A3;
    _TMP135 = abs(_a0138);
    _a0142 = _A4 - _A5;
    _TMP139 = abs(_a0142);
    _vert_edge = _TMP135 < _TMP139;
    _a0146 = _A1 - _A3;
    _TMP143 = abs(_a0146);
    _a0150 = _A4 - _A5;
    _TMP147 = abs(_a0150);
    _horiz_edge = _TMP143 > _TMP147;
    _a0154 = _l1.y - _l2.z;
    _TMP151 = abs(_a0154);
    _a0158 = _l1.z - _l2.y;
    _TMP155 = abs(_a0158);
    _edge_A1a = _TMP151 > _TMP155;
    _a0162 = _l1.y - _l2.z;
    _TMP159 = abs(_a0162);
    _a0166 = _l1.z - _l2.y;
    _TMP163 = abs(_a0166);
    _edge_A1b = _TMP159 < _TMP163;
    _a0170 = _l2.y - _l3.z;
    _TMP167 = abs(_a0170);
    _a0174 = _l2.z - _l3.y;
    _TMP171 = abs(_a0174);
    _edge_A2a = _TMP167 > _TMP171;
    _a0178 = _l2.y - _l3.z;
    _TMP175 = abs(_a0178);
    _a0182 = _l2.z - _l3.y;
    _TMP179 = abs(_a0182);
    _edge_A2b = _TMP175 < _TMP179;
    _a0186 = _l3.y - _l4.z;
    _TMP183 = abs(_a0186);
    _a0190 = _l3.z - _l4.y;
    _TMP187 = abs(_a0190);
    _edge_A3a = _TMP183 > _TMP187;
    _a0194 = _l3.y - _l4.z;
    _TMP191 = abs(_a0194);
    _a0198 = _l3.z - _l4.y;
    _TMP195 = abs(_a0198);
    _edge_A3b = _TMP191 < _TMP195;
    _a0202 = _l2.x - _l3.y;
    _TMP199 = abs(_a0202);
    _a0206 = _l2.y - _l3.x;
    _TMP203 = abs(_a0206);
    _edge_A4a = _TMP199 > _TMP203;
    _a0210 = _l2.x - _l3.y;
    _TMP207 = abs(_a0210);
    _a0214 = _l2.y - _l3.x;
    _TMP211 = abs(_a0214);
    _edge_A4b = _TMP207 < _TMP211;
    _a0218 = _l2.z - _l3.w;
    _TMP215 = abs(_a0218);
    _a0222 = _l2.w - _l3.z;
    _TMP219 = abs(_a0222);
    _edge_A5a = _TMP215 > _TMP219;
    _a0226 = _l2.z - _l3.w;
    _TMP223 = abs(_a0226);
    _a0230 = _l2.w - _l3.z;
    _TMP227 = abs(_a0230);
    _edge_A5b = _TMP223 < _TMP227;
    if (_vert_edge) { 
        if (int(_edge_A1a) + int(_edge_A2a) + int(_edge_A3a) > int(_edge_A1b) + int(_edge_A2b) + int(_edge_A3b)) { 
            _HH = (7.00000000E+00*(_g + _h) + 2.00000000E+00*_q)/1.60000000E+01;
            _HV = (7.00000000E+00*(_g + _q) + 2.00000000E+00*_h)/1.60000000E+01;
            _HD = (_q + _h)/2.00000000E+00;
        } else {
            if (int(_edge_A1a) + int(_edge_A2a) + int(_edge_A3a) < int(_edge_A1b) + int(_edge_A2b) + int(_edge_A3b)) { 
                _HH = (7.00000000E+00*(_g + _h) + 2.00000000E+00*_r)/1.60000000E+01;
                _HV = (7.00000000E+00*(_g + _q) + 2.00000000E+00*_r)/1.60000000E+01;
                _HD = (_g + _r)/2.00000000E+00;
            } else {
                _HH = (_g + _h)/2.00000000E+00;
                _HV = (_g + _q)/2.00000000E+00;
                _HD = (_g + _h + _q + _r)/4.00000000E+00;
            } 
        } 
    } else {
        if (_horiz_edge) { 
            if (int(_edge_A4a) + int(_edge_A2a) + int(_edge_A5a) > int(_edge_A4b) + int(_edge_A2b) + int(_edge_A5b)) { 
                _HH = (7.00000000E+00*(_g + _h) + 2.00000000E+00*_q)/1.60000000E+01;
                _HV = (7.00000000E+00*(_g + _q) + 2.00000000E+00*_h)/1.60000000E+01;
                _HD = (_q + _h)/2.00000000E+00;
            } else {
                if (int(_edge_A4a) + int(_edge_A2a) + int(_edge_A5a) < int(_edge_A4b) + int(_edge_A2b) + int(_edge_A5b)) { 
                    _HH = (7.00000000E+00*(_g + _h) + 2.00000000E+00*_r)/1.60000000E+01;
                    _HV = (7.00000000E+00*(_g + _q) + 2.00000000E+00*_r)/1.60000000E+01;
                    _HD = (_g + _r)/2.00000000E+00;
                } else {
                    _HH = (_g + _h)/2.00000000E+00;
                    _HV = (_g + _q)/2.00000000E+00;
                    _HD = (_g + _h + _q + _r)/4.00000000E+00;
                } 
            } 
        } else {
            _HH = (_g + _h)/2.00000000E+00;
            _HV = (_g + _q)/2.00000000E+00;
            _HD = (_g + _h + _q + _r)/4.00000000E+00;
        } 
    } 
    if (_fp.x < 5.00000000E-01) { 
        if (_fp.y < 5.00000000E-01) { 
            _TMP45 = _g;
        } else {
            _TMP45 = _HV;
        } 
        _TMP44 = _TMP45;
    } else {
        if (_fp.y < 5.00000000E-01) { 
            _TMP46 = _HH;
        } else {
            _TMP46 = _HD;
        } 
        _TMP44 = _TMP46;
    } 
    _TMP49 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), vec3(float(_TMP44.x), float(_TMP44.y), float(_TMP44.z)));
    _TMP48 = vec3(float(_TMP49.x), float(_TMP49.y), float(_TMP49.z));
    _TMP50 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), vec3(float(_TMP48.x), float(_TMP48.y), float(_TMP48.z)));
    _TMP233 = vec3(float(_TMP50.x), float(_TMP50.y), float(_TMP50.z));
    _ret_0 = vec4(_TMP233.x, _TMP233.y, _TMP233.z, 1.00000000E+00);
    FragColor = vec4(float(_ret_0.x), float(_ret_0.y), float(_ret_0.z), float(_ret_0.w));
    return;
} 
#endif
