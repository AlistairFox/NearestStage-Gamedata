//
// Generated by Microsoft (R) D3DX9 Shader Compiler 9.07.239.0000
//
//   fxc /DUSE_SHADER3=1 /Gfp /nologo /Tvs_3_0 /Emain /Zpr /Fctest\v3F_sky2.vs
//    sky2.vs
//
//
// Parameters:
//
//   row_major float4x4 m_WVP;
//
//
// Registers:
//
//   Name         Reg   Size
//   ------------ ----- ----
//   m_WVP        c0       4
//

    vs_3_0
    dcl_position v0
    dcl_color v1
    dcl_texcoord v2
    dcl_texcoord1 v3
    dcl_position o0
    dcl_color o1
    dcl_texcoord o2.xyz
    dcl_texcoord1 o3.xyz
    dp4 o0.x, c0, v0
    dp4 o0.y, c1, v0
    dp4 o0.z, c2, v0
    dp4 o0.w, c3, v0
    mov o1, v1
    mov o2.xyz, v2
    mov o3.xyz, v3

// approximately 7 instruction slots used
