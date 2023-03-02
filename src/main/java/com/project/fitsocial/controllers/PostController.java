package com.project.fitsocial.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.project.fitsocial.models.Workout;
import com.project.fitsocial.services.WorkoutService;

@Controller
public class PostController {

  @Autowired WorkoutService workoutService;
  

  //create workout

  @GetMapping("/workouts/new")
  public String newWorkout(@ModelAttribute("workout")Workout workout){
    return "workouts/newWorkout.jsp";
  }

  

  @PostMapping("/workouts")
  public String createWorkout(
    @Valid
    @ModelAttribute("workout")Workout workout,
    BindingResult result){
    if(result.hasErrors()){
      return "workouts/newWorkout.jsp";
    } else {
      workoutService.addWorkout(workout);
    }
    return "redirect:/workouts";
  }

  //read all
  @GetMapping("/workouts")
  public String allWorkouts(HttpSession session,Model model){
    if(session.getAttribute("userId") == null){
      return "redirect:/logout";
  }
    List<Workout> workouts = workoutService.getAll();
    model.addAttribute("workouts", workouts);
    return "workouts/dashboard.jsp";
  }

  // read one 
  @GetMapping("workouts/{id}") // all were doing is getting data from db
  public String show(@PathVariable("id")Long id,Model model){
    Workout workout = workoutService.getOne(id);
    model.addAttribute("workout",workout);
    return "workouts/show.jsp";
  }
  

  //update // renders
  @GetMapping("/workouts/edit/{id}")
  public String edit(@PathVariable("id")Long id,Model model){
    
    Workout workout = workoutService.getOne(id);
    model.addAttribute("workout",workout);
    return "workouts/edit.jsp";
  }

  // update handles form data
  @PutMapping("/workouts/{id}")
  public String update(
    @Valid
    @ModelAttribute("workout")Workout workout,
    BindingResult result){
    if(result.hasErrors()){
      return "workouts/edit.jsp";
    } else {
      workoutService.addWorkout(workout);
    }
    return "redirect:/workouts";
  }

  // delete
  @DeleteMapping("/workouts/{id}")
  public String destroy(@PathVariable("id")Long id){
    workoutService.deleteWorkout(id);
      return "redirect:/workouts";
  }



}
