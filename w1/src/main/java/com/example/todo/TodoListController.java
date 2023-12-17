package com.example.todo;

import com.example.todo.dto.TodoDTO;
import com.example.todo.service.TodoService;


import java.util.List;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name= "todoListController", urlPatterns ="/todo/list")
public class TodoListController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
	
		System.out.println("/todo/list");


		List<TodoDTO> dtoList = TodoService.INSTANCE.getList();

		req.setAttribute("list", dtoList);

		req.getRequestDispatcher("/WEB-INF/todo/list.jsp").forward(req, resp);
	}


}
