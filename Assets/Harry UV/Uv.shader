﻿Shader "Uv" {
	Properties{
		_Color("BruhColor", Color) = (1,1,1,1)
		_MainTex("Base (RGB)", 2D) = "white" {}
	}

		SubShader{
			Blend SrcAlpha One
			ZWrite Off
			Tags {Queue = Transparent}
			ColorMask RGB
		Pass {
			Tags {"LightMode" = "Vertex"}
			Lighting On
			Material {
				Diffuse[_Color]
			}
			SetTexture[_MainTex] {
				constantColor[_Color]
				Combine texture * primary DOUBLE, texture * constant
			}
		}
	}

		Fallback "VertexLit", 2

}
