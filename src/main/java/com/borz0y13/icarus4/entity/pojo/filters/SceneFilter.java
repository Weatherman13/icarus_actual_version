package com.borz0y13.icarus4.entity.pojo.filters;

import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
@JsonPropertyOrder({ "spatialFilter","cloudCoverFilter", "acquisitionFilter" })
public class SceneFilter {
    private SpatialFilter spatialFilter;
    private CloudCoverFilter cloudCoverFilter;
    private AcquisitionFilter acquisitionFilter;

    public SceneFilter() {
        if (this.spatialFilter == null) this.setSpatialFilter(new SpatialFilter());
        if (this.cloudCoverFilter == null) this.setCloudCoverFilter(new CloudCoverFilter());
        if (this.acquisitionFilter == null) this.setAcquisitionFilter(new AcquisitionFilter());
    }
}
