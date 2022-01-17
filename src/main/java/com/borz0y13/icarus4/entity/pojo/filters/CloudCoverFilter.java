package com.borz0y13.icarus4.entity.pojo.filters;

import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.Size;

@AllArgsConstructor
@NoArgsConstructor
@Data
@JsonPropertyOrder({ "max", "min","includeUnknown" })
public class CloudCoverFilter {


    @Size(min = 2)
    private Integer max;
    private Integer min;
    final Boolean includeUnknown = true;
}
