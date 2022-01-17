package com.borz0y13.icarus4.service.dao;

import com.borz0y13.icarus4.dao.SatelliteCollectionRepository;
import com.borz0y13.icarus4.entity.SatelliteCollection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SatelliteCollectionServiceImpl implements SatelliteCollectionService {
    @Autowired
    SatelliteCollectionRepository repository;

    @Override
    public List<SatelliteCollection> get() {
        List<SatelliteCollection> collections = repository.findAll();
        return collections;
    }

    @Override
    public void save(SatelliteCollection satCollect) {
        repository.save(satCollect);

    }

    @Override
    public SatelliteCollection get(int id) {
        return repository.getById(id);
    }

    @Override
    public void delete(int id) {
        repository.deleteById(id);

    }

    @Override
    public void update(int id, SatelliteCollection newCollection) {
        SatelliteCollection collection = repository.getById(id);
        collection.setName(newCollection.getName());
        repository.save(collection);
    }
}
