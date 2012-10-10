components {
  id: "script"
  component: "/level/level.script"
  position {
    x: 0.0
    y: 0.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
embedded_components {
  id: "collisionobject"
  type: "collisionobject"
  data: "collision_shape: \"\"\ntype: COLLISION_OBJECT_TYPE_STATIC\nmass: 0.0\nfriction: 0.1\nrestitution: 0.5\ngroup: \"level\"\nmask: \"player\"\nmask: \"enemy\"\nmask: \"bullet\"\nembedded_collision_shape {\n  shapes {\n    shape_type: TYPE_BOX\n    position {\n      x: 45.0\n      y: 360.0\n      z: 0.0\n    }\n    rotation {\n      x: 0.0\n      y: 0.0\n      z: 0.0\n      w: 1.0\n    }\n    index: 0\n    count: 3\n  }\n  shapes {\n    shape_type: TYPE_BOX\n    position {\n      x: 1235.0\n      y: 360.0\n      z: 0.0\n    }\n    rotation {\n      x: 0.0\n      y: 0.0\n      z: 0.0\n      w: 1.0\n    }\n    index: 3\n    count: 3\n  }\n  shapes {\n    shape_type: TYPE_BOX\n    position {\n      x: 640.0\n      y: 45.0\n      z: 0.0\n    }\n    rotation {\n      x: 0.0\n      y: 0.0\n      z: 0.0\n      w: 1.0\n    }\n    index: 6\n    count: 3\n  }\n  shapes {\n    shape_type: TYPE_BOX\n    position {\n      x: 640.0\n      y: 675.0\n      z: 0.0\n    }\n    rotation {\n      x: 0.0\n      y: 0.0\n      z: 0.0\n      w: 1.0\n    }\n    index: 9\n    count: 3\n  }\n  data: 5.0\n  data: 320.0\n  data: 10.0\n  data: 5.0\n  data: 320.0\n  data: 10.0\n  data: 600.0\n  data: 5.0\n  data: 10.0\n  data: 600.0\n  data: 5.0\n  data: 10.0\n}\n"
  position {
    x: 0.0
    y: 0.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
embedded_components {
  id: "model"
  type: "model"
  data: "mesh: \"/level/grid2.dae\"\nmaterial: \"/level/grid.material\"\ntextures: \"/level/line.png\"\n"
  position {
    x: 100.0
    y: 60.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
embedded_components {
  id: "music"
  type: "sound"
  data: "sound: \"/level/overloadmaster.ogg\"\nlooping: 0\n"
  position {
    x: 0.0
    y: 0.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
