package com.borz0y13.icarus4.service.dao;


import com.borz0y13.icarus4.entity.Satellite;

import java.util.List;


public interface SatelliteService {
    public List<Satellite> getAll();

    public void save(Satellite satellite);

    public Satellite get(int id);

    public void delete(int id);

    public void update(int id, Satellite newSatellite);

    public Satellite getByName(String name);

}
