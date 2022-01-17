package com.borz0y13.icarus4.entity.pojo.filters;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.AllArgsConstructor;
import lombok.Data;

@AllArgsConstructor
@Data
@JsonPropertyOrder({ "maxResults", "datasetName","sceneFilter" })
@JsonIgnoreProperties({ "mapper" })
public class Filter {
    final Integer maxResults = 50000;

    private String datasetName;

    private SceneFilter sceneFilter;

    private ObjectMapper mapper = new ObjectMapper();


    public Filter() {
        if (this.sceneFilter == null) this.setSceneFilter(new SceneFilter());
    }

    public String serialize () throws JsonProcessingException {

        return mapper.writeValueAsString(this);
    }
}
