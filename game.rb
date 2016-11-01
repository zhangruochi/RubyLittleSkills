#了解游戏引擎驱动场景的概念


class Scene
    def enter
    end
end


class Scene1 < Scene
end

class Scene2 < Scene
end

class Scene3 < Scene
end

class Scene4 < Scene
end




class Engine
    def initialize(scene_map)
        @scene_map = scene_map
    end

    def start
        current_scene = @scene_map.opening_scene
        last_scene = @scene_map.next_scene "finished!"

        while current_scene != last_scene
            next_scene_name = current_scene.enter
            current_scene = @scene_map.next_scene next_scene_name
        end

    end
end


class Map
    @@scenes = {
        scene1: Scene1.new,
        scene2: Scene2.new,
        scene3: Scene3.new,
        scene4: Scene4.new,
    }

    def initialize(start_scene)
        @start_scene = start_scene
    end

    def next_scene(next_scene_name)
        return @@scenes[next_scene_name]
    end

    def opening_scene
        return @@scenes[@start_scene]
    end
end


a_map = Map.new(:scene1)
game = Engine.new(a_map)
game.start







