package com.borz0y13.icarus4.jacson;

import com.borz0y13.icarus4.entity.pojo.Scene;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.deser.std.StdDeserializer;
import lombok.extern.slf4j.Slf4j;

import java.io.IOException;

@Slf4j
public class CustomSceneDeserializer extends StdDeserializer<Scene> {

    public CustomSceneDeserializer() {
        this(null);
    }

    public CustomSceneDeserializer(Class<?> vc) {
        super(vc);
    }

    @Override
    public Scene deserialize(JsonParser jp, DeserializationContext ctxt)
            throws IOException, JsonProcessingException {

        Scene scene = new Scene();

        JsonNode sceneNode = jp.getCodec().readTree(jp);

        scene.setEntityId(sceneNode.get("entityId").textValue());
        scene.setDisplayId(sceneNode.get("displayId").textValue());
        scene.setCloudCover(sceneNode.get("cloudCover").textValue());

        log.debug("deserialize is close");




        return scene;
    }
}
