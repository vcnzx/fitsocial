package com.project.fitsocial.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import com.project.fitsocial.models.Workout;
import com.project.fitsocial.repositories.WorkoutRepository;

public class WorkoutService {
    
    @Autowired WorkoutRepository workoutRepo;

    //! CREATE
    public void addWorkout(Workout workout){
        workoutRepo.save(workout);
    }

    //! READ ALL
    public List<Workout> getAll(){
        return workoutRepo.findAll();
    }

    //! READ ONE
    public Workout getOne(Long id) {
        Optional<Workout> optionalWorkout = workoutRepo.findById(id);
        return optionalWorkout.orElse(null);
    }

    //! UPDATE ONE
    public void updateBook(Workout workout){
        workoutRepo.save(workout);
    }

    //! DELETE
    public void deleteBook(Long id){
        workoutRepo.deleteById(id);
    }
}
