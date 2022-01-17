package com.borz0y13.icarus4.service;



import com.borz0y13.icarus4.entity.SatelliteCollection;

import java.util.List;

public interface SatelliteCollectionService {
    public List<SatelliteCollection> get();

    public void save(SatelliteCollection satCollect);

    public SatelliteCollection get(int id);

    public void delete(int id);

    public void update(int id, SatelliteCollection newSatelliteCollection);
}
