struct CustomMaterial {
    color: vec4<f32>;
};

[[group(1), binding(0)]]
var<uniform> material: CustomMaterial;
[[group(1), binding(1)]]
var base_color_texture: texture_2d<f32>;
[[group(1), binding(2)]]
var base_color_sampler: sampler;

[[stage(fragment)]]
fn fragment([[location(2)]] uv: vec2<f32>) -> [[location(0)]] vec4<f32> {
    return material.color * textureSample(base_color_texture, base_color_sampler, uv);
}
