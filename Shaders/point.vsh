attribute vec4 inVertex;

uniform mat4 MVP;
uniform float pointSize;
uniform lowp vec4 vertexColor;

varying lowp vec4 color;

void main()
{
    //fengchiwei 这个MVP的作用是将顶点数据转为 -1 到 1区间，外部传进来的数据直接用屏幕的坐标数据就好，不用转
    //-1 到 1，用GPU算更快。
	gl_Position = MVP * inVertex;
    gl_PointSize = pointSize;
//    1 * 3.0;
//    color = vertexColor;
}
