package com.project.fitsocial.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.project.fitsocial.models.Workout;

public interface WorkoutRepository extends CrudRepository <Workout, Long>{
    
    List<Workout> findAll();
}
