// Mesh Warp Flex for OBS ShaderFilter (exeldro obs-shaderfilter)
// Grid Columns/Rows choose the working mesh density (2x2 to 6x6).
// The 36 P00..P55 sliders are the master control lattice. Coordinates: (0,0)=top-left, (1,1)=bottom-right.
// Tip: if points move outside 0..1, increase the filter's "Extra pixels" so the warped area is not clipped.

uniform int Grid_Columns<
    string label = "Grid columns (points across)";
    string widget_type = "select";
    string group = "Grid size";
    int option_0_value = 2;
    string option_0_label = "2";
    int option_1_value = 3;
    string option_1_label = "3";
    int option_2_value = 4;
    string option_2_label = "4";
    int option_3_value = 5;
    string option_3_label = "5";
    int option_4_value = 6;
    string option_4_label = "6";
> = 4;

uniform int Grid_Rows<
    string label = "Grid rows (points down)";
    string widget_type = "select";
    string group = "Grid size";
    int option_0_value = 2;
    string option_0_label = "2";
    int option_1_value = 3;
    string option_1_label = "3";
    int option_2_value = 4;
    string option_2_label = "4";
    int option_3_value = 5;
    string option_3_label = "5";
    int option_4_value = 6;
    string option_4_label = "6";
> = 4;

uniform bool Show_Grid<
    string label = "Show grid";
    string group = "Guide";
> = true;

uniform float Grid_Opacity<
    string label = "Grid opacity";
    string widget_type = "slider";
    string group = "Guide";
    float minimum = 0.0;
    float maximum = 1.0;
    float step = 0.01;
> = 0.85;

uniform float Feather<
    string label = "Edge feather";
    string widget_type = "slider";
    string group = "Guide";
    float minimum = 0.0;
    float maximum = 0.05;
    float step = 0.0005;
> = 0.0;

uniform float P00_X< string label = "P00 X"; string widget_type = "slider"; string group = "Master points row 0"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0;
uniform float P00_Y< string label = "P00 Y"; string widget_type = "slider"; string group = "Master points row 0"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0;
uniform float P01_X< string label = "P01 X"; string widget_type = "slider"; string group = "Master points row 0"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.2;
uniform float P01_Y< string label = "P01 Y"; string widget_type = "slider"; string group = "Master points row 0"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0;
uniform float P02_X< string label = "P02 X"; string widget_type = "slider"; string group = "Master points row 0"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.4;
uniform float P02_Y< string label = "P02 Y"; string widget_type = "slider"; string group = "Master points row 0"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0;
uniform float P03_X< string label = "P03 X"; string widget_type = "slider"; string group = "Master points row 0"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.6;
uniform float P03_Y< string label = "P03 Y"; string widget_type = "slider"; string group = "Master points row 0"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0;
uniform float P04_X< string label = "P04 X"; string widget_type = "slider"; string group = "Master points row 0"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.8;
uniform float P04_Y< string label = "P04 Y"; string widget_type = "slider"; string group = "Master points row 0"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0;
uniform float P05_X< string label = "P05 X"; string widget_type = "slider"; string group = "Master points row 0"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 1;
uniform float P05_Y< string label = "P05 Y"; string widget_type = "slider"; string group = "Master points row 0"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0;
uniform float P10_X< string label = "P10 X"; string widget_type = "slider"; string group = "Master points row 1"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0;
uniform float P10_Y< string label = "P10 Y"; string widget_type = "slider"; string group = "Master points row 1"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.2;
uniform float P11_X< string label = "P11 X"; string widget_type = "slider"; string group = "Master points row 1"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.2;
uniform float P11_Y< string label = "P11 Y"; string widget_type = "slider"; string group = "Master points row 1"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.2;
uniform float P12_X< string label = "P12 X"; string widget_type = "slider"; string group = "Master points row 1"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.4;
uniform float P12_Y< string label = "P12 Y"; string widget_type = "slider"; string group = "Master points row 1"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.2;
uniform float P13_X< string label = "P13 X"; string widget_type = "slider"; string group = "Master points row 1"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.6;
uniform float P13_Y< string label = "P13 Y"; string widget_type = "slider"; string group = "Master points row 1"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.2;
uniform float P14_X< string label = "P14 X"; string widget_type = "slider"; string group = "Master points row 1"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.8;
uniform float P14_Y< string label = "P14 Y"; string widget_type = "slider"; string group = "Master points row 1"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.2;
uniform float P15_X< string label = "P15 X"; string widget_type = "slider"; string group = "Master points row 1"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 1;
uniform float P15_Y< string label = "P15 Y"; string widget_type = "slider"; string group = "Master points row 1"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.2;
uniform float P20_X< string label = "P20 X"; string widget_type = "slider"; string group = "Master points row 2"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0;
uniform float P20_Y< string label = "P20 Y"; string widget_type = "slider"; string group = "Master points row 2"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.4;
uniform float P21_X< string label = "P21 X"; string widget_type = "slider"; string group = "Master points row 2"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.2;
uniform float P21_Y< string label = "P21 Y"; string widget_type = "slider"; string group = "Master points row 2"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.4;
uniform float P22_X< string label = "P22 X"; string widget_type = "slider"; string group = "Master points row 2"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.4;
uniform float P22_Y< string label = "P22 Y"; string widget_type = "slider"; string group = "Master points row 2"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.4;
uniform float P23_X< string label = "P23 X"; string widget_type = "slider"; string group = "Master points row 2"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.6;
uniform float P23_Y< string label = "P23 Y"; string widget_type = "slider"; string group = "Master points row 2"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.4;
uniform float P24_X< string label = "P24 X"; string widget_type = "slider"; string group = "Master points row 2"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.8;
uniform float P24_Y< string label = "P24 Y"; string widget_type = "slider"; string group = "Master points row 2"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.4;
uniform float P25_X< string label = "P25 X"; string widget_type = "slider"; string group = "Master points row 2"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 1;
uniform float P25_Y< string label = "P25 Y"; string widget_type = "slider"; string group = "Master points row 2"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.4;
uniform float P30_X< string label = "P30 X"; string widget_type = "slider"; string group = "Master points row 3"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0;
uniform float P30_Y< string label = "P30 Y"; string widget_type = "slider"; string group = "Master points row 3"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.6;
uniform float P31_X< string label = "P31 X"; string widget_type = "slider"; string group = "Master points row 3"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.2;
uniform float P31_Y< string label = "P31 Y"; string widget_type = "slider"; string group = "Master points row 3"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.6;
uniform float P32_X< string label = "P32 X"; string widget_type = "slider"; string group = "Master points row 3"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.4;
uniform float P32_Y< string label = "P32 Y"; string widget_type = "slider"; string group = "Master points row 3"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.6;
uniform float P33_X< string label = "P33 X"; string widget_type = "slider"; string group = "Master points row 3"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.6;
uniform float P33_Y< string label = "P33 Y"; string widget_type = "slider"; string group = "Master points row 3"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.6;
uniform float P34_X< string label = "P34 X"; string widget_type = "slider"; string group = "Master points row 3"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.8;
uniform float P34_Y< string label = "P34 Y"; string widget_type = "slider"; string group = "Master points row 3"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.6;
uniform float P35_X< string label = "P35 X"; string widget_type = "slider"; string group = "Master points row 3"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 1;
uniform float P35_Y< string label = "P35 Y"; string widget_type = "slider"; string group = "Master points row 3"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.6;
uniform float P40_X< string label = "P40 X"; string widget_type = "slider"; string group = "Master points row 4"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0;
uniform float P40_Y< string label = "P40 Y"; string widget_type = "slider"; string group = "Master points row 4"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.8;
uniform float P41_X< string label = "P41 X"; string widget_type = "slider"; string group = "Master points row 4"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.2;
uniform float P41_Y< string label = "P41 Y"; string widget_type = "slider"; string group = "Master points row 4"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.8;
uniform float P42_X< string label = "P42 X"; string widget_type = "slider"; string group = "Master points row 4"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.4;
uniform float P42_Y< string label = "P42 Y"; string widget_type = "slider"; string group = "Master points row 4"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.8;
uniform float P43_X< string label = "P43 X"; string widget_type = "slider"; string group = "Master points row 4"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.6;
uniform float P43_Y< string label = "P43 Y"; string widget_type = "slider"; string group = "Master points row 4"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.8;
uniform float P44_X< string label = "P44 X"; string widget_type = "slider"; string group = "Master points row 4"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.8;
uniform float P44_Y< string label = "P44 Y"; string widget_type = "slider"; string group = "Master points row 4"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.8;
uniform float P45_X< string label = "P45 X"; string widget_type = "slider"; string group = "Master points row 4"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 1;
uniform float P45_Y< string label = "P45 Y"; string widget_type = "slider"; string group = "Master points row 4"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.8;
uniform float P50_X< string label = "P50 X"; string widget_type = "slider"; string group = "Master points row 5"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0;
uniform float P50_Y< string label = "P50 Y"; string widget_type = "slider"; string group = "Master points row 5"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 1;
uniform float P51_X< string label = "P51 X"; string widget_type = "slider"; string group = "Master points row 5"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.2;
uniform float P51_Y< string label = "P51 Y"; string widget_type = "slider"; string group = "Master points row 5"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 1;
uniform float P52_X< string label = "P52 X"; string widget_type = "slider"; string group = "Master points row 5"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.4;
uniform float P52_Y< string label = "P52 Y"; string widget_type = "slider"; string group = "Master points row 5"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 1;
uniform float P53_X< string label = "P53 X"; string widget_type = "slider"; string group = "Master points row 5"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.6;
uniform float P53_Y< string label = "P53 Y"; string widget_type = "slider"; string group = "Master points row 5"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 1;
uniform float P54_X< string label = "P54 X"; string widget_type = "slider"; string group = "Master points row 5"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 0.8;
uniform float P54_Y< string label = "P54 Y"; string widget_type = "slider"; string group = "Master points row 5"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 1;
uniform float P55_X< string label = "P55 X"; string widget_type = "slider"; string group = "Master points row 5"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 1;
uniform float P55_Y< string label = "P55 Y"; string widget_type = "slider"; string group = "Master points row 5"; float minimum = -0.5; float maximum = 1.5; float step = 0.001; > = 1;

float segDist(float2 p, float2 a, float2 b)
{
    float2 pa = p - a;
    float2 ba = b - a;
    float h = clamp(dot(pa, ba) / max(dot(ba, ba), 0.00000001), 0.0, 1.0);
    return length(pa - ba * h);
}

float2 bilinearPoint(float2 d00, float2 d10, float2 d01, float2 d11, float s, float t)
{
    return lerp(lerp(d00, d10, s), lerp(d01, d11, s), t);
}

// Solve the inverse bilinear mapping with Newton iterations. This avoids the
// quadratic-root selection that could drop pixels in the lower cells.
bool bilinearInverse(float2 p, float2 d00, float2 d10, float2 d01, float2 d11, out float sOut, out float tOut)
{
    float2 b = d10 - d00;
    float2 c = d01 - d00;
    float2 d = d00 - d10 - d01 + d11;

    float s = 0.5;
    float t = 0.5;

    for (int i = 0; i < 6; i++)
    {
        float2 q = bilinearPoint(d00, d10, d01, d11, s, t);
        float2 f = q - p;
        if (dot(f, f) < 0.00000001)
        {
            break;
        }

        float2 js = b + d * t;
        float2 jt = c + d * s;
        float det = js.x * jt.y - js.y * jt.x;
        if (abs(det) < 0.00000001)
        {
            sOut = 0.0;
            tOut = 0.0;
            return false;
        }

        float ds = (jt.y * f.x - jt.x * f.y) / det;
        float dt = (-js.y * f.x + js.x * f.y) / det;
        s -= ds;
        t -= dt;

        if (s < -0.25 || s > 1.25 || t < -0.25 || t > 1.25)
        {
            sOut = 0.0;
            tOut = 0.0;
            return false;
        }
    }

    float2 qFinal = bilinearPoint(d00, d10, d01, d11, s, t);
    float2 fFinal = qFinal - p;
    sOut = clamp(s, 0.0, 1.0);
    tOut = clamp(t, 0.0, 1.0);
    return (s >= -0.0001 && s <= 1.0001 && t >= -0.0001 && t <= 1.0001 && dot(fFinal, fFinal) < 0.0001);
}

float4 mainImage(VertData v_in) : TARGET
{
    float2 p = v_in.uv;
    int cols = clamp(Grid_Columns, 2, 6);
    int rows = clamp(Grid_Rows, 2, 6);

    float2 pts[36];
    pts[0] = float2(P00_X, P00_Y);
    pts[1] = float2(P01_X, P01_Y);
    pts[2] = float2(P02_X, P02_Y);
    pts[3] = float2(P03_X, P03_Y);
    pts[4] = float2(P04_X, P04_Y);
    pts[5] = float2(P05_X, P05_Y);
    pts[6] = float2(P10_X, P10_Y);
    pts[7] = float2(P11_X, P11_Y);
    pts[8] = float2(P12_X, P12_Y);
    pts[9] = float2(P13_X, P13_Y);
    pts[10] = float2(P14_X, P14_Y);
    pts[11] = float2(P15_X, P15_Y);
    pts[12] = float2(P20_X, P20_Y);
    pts[13] = float2(P21_X, P21_Y);
    pts[14] = float2(P22_X, P22_Y);
    pts[15] = float2(P23_X, P23_Y);
    pts[16] = float2(P24_X, P24_Y);
    pts[17] = float2(P25_X, P25_Y);
    pts[18] = float2(P30_X, P30_Y);
    pts[19] = float2(P31_X, P31_Y);
    pts[20] = float2(P32_X, P32_Y);
    pts[21] = float2(P33_X, P33_Y);
    pts[22] = float2(P34_X, P34_Y);
    pts[23] = float2(P35_X, P35_Y);
    pts[24] = float2(P40_X, P40_Y);
    pts[25] = float2(P41_X, P41_Y);
    pts[26] = float2(P42_X, P42_Y);
    pts[27] = float2(P43_X, P43_Y);
    pts[28] = float2(P44_X, P44_Y);
    pts[29] = float2(P45_X, P45_Y);
    pts[30] = float2(P50_X, P50_Y);
    pts[31] = float2(P51_X, P51_Y);
    pts[32] = float2(P52_X, P52_Y);
    pts[33] = float2(P53_X, P53_Y);
    pts[34] = float2(P54_X, P54_Y);
    pts[35] = float2(P55_X, P55_Y);

    // Build the active grid by sampling the 6x6 master lattice at the selected grid density.
    float2 apt[36];
    for (int ar = 0; ar < 6; ar++)
    {
        for (int ac = 0; ac < 6; ac++)
        {
            float2 ap = float2(float(ac) * 0.2, float(ar) * 0.2);
            if (ac < cols && ar < rows)
            {
                float u = float(ac) / float(cols - 1);
                float v = float(ar) / float(rows - 1);
                float gx = u * 5.0;
                float gy = v * 5.0;
                int x0 = int(floor(gx));
                int y0 = int(floor(gy));
                int x1 = min(x0 + 1, 5);
                int y1 = min(y0 + 1, 5);
                float tx = gx - float(x0);
                float ty = gy - float(y0);

                if (x0 >= 5)
                {
                    x0 = 4;
                    x1 = 5;
                    tx = 1.0;
                }
                if (y0 >= 5)
                {
                    y0 = 4;
                    y1 = 5;
                    ty = 1.0;
                }

                float2 mp00 = pts[y0 * 6 + x0];
                float2 mp10 = pts[y0 * 6 + x1];
                float2 mp01 = pts[y1 * 6 + x0];
                float2 mp11 = pts[y1 * 6 + x1];
                ap = lerp(lerp(mp00, mp10, tx), lerp(mp01, mp11, tx), ty);
            }
            apt[ar * 6 + ac] = ap;
        }
    }

    float2 src = float2(0.0, 0.0);
    float edge = 1.0;
    bool found = false;

    for (int r = 0; r < 5; r++)
    {
        for (int c = 0; c < 5; c++)
        {
            if (!found && r < rows - 1 && c < cols - 1)
            {
                int i00 = r * 6 + c;
                int i10 = i00 + 1;
                int i01 = i00 + 6;
                int i11 = i01 + 1;

                float2 d00 = apt[i00];
                float2 d10 = apt[i10];
                float2 d01 = apt[i01];
                float2 d11 = apt[i11];

                float x0 = float(c) / float(cols - 1);
                float x1 = float(c + 1) / float(cols - 1);
                float y0 = float(r) / float(rows - 1);
                float y1 = float(r + 1) / float(rows - 1);

                float2 s00 = float2(x0, y0);
                float2 s10 = float2(x1, y0);
                float2 s01 = float2(x0, y1);
                float2 s11 = float2(x1, y1);

                float s;
                float t;
                if (!found && bilinearInverse(p, d00, d10, d01, d11, s, t))
                {
                    src = float2(lerp(x0, x1, s), lerp(y0, y1, t));
                    edge = min(edge, min(min(s, t), min(1.0 - s, 1.0 - t)));
                    found = true;
                }
            }
        }
    }

    float4 col = float4(0.0, 0.0, 0.0, 0.0);
    if (found)
    {
        col = image.SampleLevel(textureSampler, clamp(src, 0.0, 1.0), 0.0);
        if (Feather > 0.00001)
        {
            col.a *= clamp(edge / Feather, 0.0, 1.0);
        }
    }

    if (Show_Grid && Grid_Opacity > 0.001)
    {
        float lineDist = 1000.0;

        for (int hr = 0; hr < 6; hr++)
        {
            for (int hc = 0; hc < 5; hc++)
            {
                if (hr < rows && hc < cols - 1)
                {
                    int a = hr * 6 + hc;
                    lineDist = min(lineDist, segDist(p, apt[a], apt[a + 1]));
                }
            }
        }

        for (int vc = 0; vc < 6; vc++)
        {
            for (int vr = 0; vr < 5; vr++)
            {
                if (vc < cols && vr < rows - 1)
                {
                    int a2 = vr * 6 + vc;
                    lineDist = min(lineDist, segDist(p, apt[a2], apt[a2 + 6]));
                }
            }
        }

        float pointDist = 1000.0;
        for (int pr = 0; pr < 6; pr++)
        {
            for (int pc = 0; pc < 6; pc++)
            {
                if (pr < rows && pc < cols)
                {
                    pointDist = min(pointDist, length(p - apt[pr * 6 + pc]));
                }
            }
        }

        float lineA = (1.0 - smoothstep(0.0015, 0.005, lineDist)) * Grid_Opacity;
        float pointA = (1.0 - smoothstep(0.006, 0.013, pointDist)) * Grid_Opacity;

        col.rgb = lerp(col.rgb, float3(1.0, 0.15, 0.05), lineA);
        col.a = max(col.a, lineA);
        col.rgb = lerp(col.rgb, float3(1.0, 0.85, 0.1), pointA);
        col.a = max(col.a, pointA);
    }

    return col;
}
