components {
  id: "particlefx"
  component: "/enemy/enemy_death.particlefx"
}
components {
  id: "particlefx_light"
  component: "/enemy/light.particlefx"
}
components {
  id: "script"
  component: "/enemy/swirler.script"
}
embedded_components {
  id: "collisionobject"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_KINEMATIC\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"enemy\"\n"
  "mask: \"level\"\n"
  "mask: \"player\"\n"
  "mask: \"bullet\"\n"
  "mask: \"sensor\"\n"
  "mask: \"black_hole\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_SPHERE\n"
  "    position {\n"
  "      x: -0.40971285\n"
  "      y: 0.73748314\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 1\n"
  "  }\n"
  "  data: 10.8239355\n"
  "}\n"
  ""
}
embedded_components {
  id: "light_mask"
  type: "sprite"
  data: "default_animation: \"anim\"\n"
  "material: \"/materials/light_mask.material\"\n"
  "textures {\n"
  "  sampler: \"DIFFUSE_TEXTURE\"\n"
  "  texture: \"/enemy/light_mask.tilesource\"\n"
  "}\n"
  ""
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"anim\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/enemy/swirler.tilesource\"\n"
  "}\n"
  ""
}
