package com.example.todo.service;

import com.example.todo.dto.TodoDTO;

import java.awt.*;
import java.time.LocalDate;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.List;
public enum TodoService {
  INSTANCE;

  public void register(TodoDTO todoDTO) {
    System.out.println("DEBUG .. . . . . " + todoDTO);
  }

  public List<TodoDTO> getList() {

    List<TodoDTO> todoDTOS =  IntStream.range(0, 10).mapToObj(i -> {
      TodoDTO dto = new TodoDTO();
      dto.setTno((long)i);
      dto.setTitle("Todo. ." + i);
      dto.setDueDate(LocalDate.now());
      return dto;
    }).collect(Collectors.toList());

    return todoDTOS;
  }
}