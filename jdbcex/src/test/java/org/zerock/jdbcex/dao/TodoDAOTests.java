package org.zerock.jdbcex.dao;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.zerock.jdbcex.domain.TodoVO;
import java.util.ArrayList;
import java.util.List;
import java.time.LocalDate;

public class TodoDAOTests {

  private TodoDAO todoDAO;

  @BeforeEach
  public void ready() {
    todoDAO = new TodoDAO();
  }

  @Test
  public void testTime() throws Exception {
    System.out.println(todoDAO.getTime2());

  }

  @Test
  public void testInsert() throws Exception {
    TodoVO todoVO = TodoVO.builder()
            .title("Sample Title...")
            .dueDate(LocalDate.of(2021,12,31))
            .build();
    todoDAO.insert(todoVO);
    System.out.println("생성완료");
  }

  @Test
  public void testList() throws Exception {

    List<TodoVO> list = todoDAO.selectAll();
    list.forEach(vo -> System.out.println(vo));
  }

  @Test
  public void testSelectOne() throws Exception {
    Long tno= 1L ; //반드시 존재하는 번호를 이용
    TodoVO vo = todoDAO.selectOne(tno);
    System.out.println(vo);
  }

  @Test
  public void testUpdateOne() throws Exception {
    TodoVO todoVO = TodoVO.builder()
            .tno(1L)
            .title("수정 완료...")
            .dueDate(LocalDate.of(2021,12,31))
            .finished(true)
            .build();
    todoDAO.updateOne(todoVO);
    System.out.println("수정완료");
  }

  @Test
  public void deleteOne() throws Exception {
    Long tno = 1L;
    todoDAO.deleteOne(tno);
    System.out.println("삭제완료");
  }
}

