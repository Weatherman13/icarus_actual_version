package com.borz0y13.icarus4.entity.pojo.filters;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@Data
@NoArgsConstructor
public class Coordinate {
    private Double x;
    private Double y;



    @JsonProperty("latitude")
    public Double getX() {
        return x;
    }
    @JsonProperty("longitude")
    public Double getY() {
        return y;
    }
}
