package com.borz0y13.icarus4.entity.pojo;

import com.borz0y13.icarus4.jacson.CustomSceneDeserializer;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.Size;

@Data
@NoArgsConstructor
@AllArgsConstructor
@JsonDeserialize(using = CustomSceneDeserializer.class)
public class Scene {
   private String downloadId;
   @Size(min = 5)
   private String entityId;
   private String cloudCover;
   private String displayId;
   private String datasetId;

}
