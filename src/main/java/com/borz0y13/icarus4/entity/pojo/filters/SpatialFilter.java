package com.borz0y13.icarus4.entity.pojo.filters;

import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@AllArgsConstructor
@NoArgsConstructor
@Data
@JsonPropertyOrder({ "filterType", "lowerLeft","upperRight" })
public class SpatialFilter {
    final String filterType = "mbr";
    private Coordinate lowerLeft;
    private Coordinate upperRight;
}
