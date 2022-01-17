package com.borz0y13.icarus4.service;

import com.borz0y13.icarus4.dao.SatelliteRepository;
import com.borz0y13.icarus4.entity.Satellite;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SatelliteServiceImpl implements SatelliteService {
    @Autowired
    private SatelliteRepository satelliteRepository;

    @Override
    public List<Satellite> getAll() {
       List<Satellite>satellites = satelliteRepository.findAll();
       return satellites;
    }

    @Override
    public void save(Satellite satellite) {
        satelliteRepository.save(satellite);

    }

    @Override
    public Satellite get(int id) {

        return satelliteRepository.getById(id);
    }

    @Override
    public void delete(int id) {
        satelliteRepository.deleteById(id);

    }

    @Override
    public void update(int id, Satellite newSatellite) {
        Satellite satellite = satelliteRepository.getById(id);
        satellite.setName(newSatellite.getName());
        satelliteRepository.save(satellite);
    }

    @Override
    public Satellite getByName(String name) {
        Satellite satellite = satelliteRepository.findByName(name).get();
        return satellite;
    }
}
