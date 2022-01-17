package com.borz0y13.icarus4.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
@Table(name = "satellite_collections")
public class SatelliteCollection {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private int id;
    @Column(name="name")
    private String name;
    @OneToMany(mappedBy = "collection",
            cascade = CascadeType.ALL)
    private List<Satellite> satelliteList;

    public List<Satellite> getSatelliteList() {
        if (this.satelliteList == null) this.setSatelliteList(new ArrayList<>());
        return satelliteList;
    }


}
