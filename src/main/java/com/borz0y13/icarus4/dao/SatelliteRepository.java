package com.borz0y13.icarus4.dao;

import com.borz0y13.icarus4.entity.Satellite;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface SatelliteRepository extends JpaRepository<Satellite,Integer> {


    Optional<Satellite> findByName(String name);
}
