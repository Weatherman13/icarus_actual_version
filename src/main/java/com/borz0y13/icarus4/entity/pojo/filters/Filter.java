package com.borz0y13.icarus4.entity.pojo.filters;

import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import lombok.AllArgsConstructor;
import lombok.Data;

@AllArgsConstructor
@Data
@JsonPropertyOrder({ "maxResults", "datasetName","sceneFilter" })
public class Filter {
    final Integer maxResults = 50000;

    private String datasetName;
    private SceneFilter sceneFilter;


    public Filter() {
        if (this.sceneFilter == null) this.setSceneFilter(new SceneFilter());
    }
}
