precision lowp float;
uniform sampler2D texture;
varying vec4 color;
void main()
{
    vec4 textureColor = texture2D(texture,gl_PointCoord);
    gl_FragColor = textureColor;
}
