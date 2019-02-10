Shader "Custom/BasicShader"
{
    Properties
    {
        
    }
    SubShader
    {
        Pass
        {
            CGPROGRAM

            #pragma vertex vert
            #pragma fragment frag


            struct appdata
            {
                float4 vertexPosition : POSITION;
				float4 color : COLOR;
            };

            struct v2f
            {
				float4 position : POSITION;
				float4 color : COLOR;
            };

            v2f vert (appdata IN)
            {
                v2f OUT;
				OUT.position = IN.vertexPosition;
				OUT.color = float4(1, 0, 0, 1);

                return OUT;
            }

			struct f2o {

				float4 color : COLOR;
			};

			f2o frag(v2f IN)
			{
				f2o OUT;

				OUT.color = IN.color;

				return OUT;
			}
            ENDCG
        }
    }
}
