package org.zavatra.todoj1.methods;

import org.springframework.beans.factory.SmartInitializingSingleton;
import org.zavatra.todoj1.classes.ToDo;
import org.zavatra.todoj1.classes.importance;
import org.zavatra.todoj1.classes.status;

import java.sql.*;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class SQLMethods {
    public void insert(ToDo toDo){
        try{
            Class.forName("org.postgresql.Driver");
        }catch(ClassNotFoundException e){
            e.printStackTrace();
        }
        try{
            String importance =null;
            String status= null;
            switch (toDo.getImportance()){
                case High -> importance = "High";
                case Medium -> importance = "Medium";
                case Low -> importance = "Low";
            }
            switch (toDo.getStatus()){
                case DONE -> status = "Done";
                case InProgress -> status = "InProgress";
            }
            Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/todo","postgres","Bepc3827");
            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO todo VALUES (?,?,?,?,?,?,?,?)");
            preparedStatement.setInt(1, toDo.getId());
            preparedStatement.setString(2, toDo.getTitle());
            preparedStatement.setString(3, toDo.getDescription());
            preparedStatement.setString(4,importance);
            preparedStatement.setDate(5, (Date) toDo.getCreationDate());
            preparedStatement.setDate(6, (Date) toDo.getDeadline());
            preparedStatement.setDate(7, (Date) toDo.getExecutionDate());
            preparedStatement.setString(8,status);

            preparedStatement.executeUpdate();

            System.out.println("Successfully inserted");

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static List<ToDo> selectAll(){
        List<ToDo> toDos = new ArrayList<>();
        try{
            Class.forName("org.postgresql.Driver");
        }catch (Exception e){
            e.printStackTrace();
        }
        try{
            Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/todo","postgres","Bepc3827");
            ResultSet resultSet = conn.createStatement().executeQuery("SELECT * FROM todo");
            while (resultSet.next()){
                toDos.add(new ToDo(resultSet.getInt("todo_id"),resultSet.getString("title"),resultSet.getString("description"),null, resultSet.getDate("creation_date"),resultSet.getDate("deadline"),resultSet.getDate("execution_date"),null));
            }
        }catch (Exception e){}

        return toDos;
    }
    public static ToDo selectById(int id){
     try{
         Class.forName("org.postgresql.Driver");
     }catch (Exception e){
         e.printStackTrace();
     }
     try{
         Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/todo","postgres","Bepc3827");
         ResultSet resultat = conn.createStatement().executeQuery("SELECT * FROM todo where todo_id="+id);
         while(resultat.next()){
             return new ToDo(resultat.getInt("todo_id"),resultat.getString("title"),resultat.getString("description"),null,resultat.getDate("creation_date"),resultat.getDate("deadline"),null,null);
         }
     }catch (Exception e){
         e.printStackTrace();
     }
     return null;
    }
    public static List<ToDo> selectByKeyword(String keyword,String Value){
        List<ToDo> toDos = new ArrayList<>();
        try{
            Class.forName("org.postgresql.Driver");
        }catch(Exception e){
            e.printStackTrace();
        }
        try{
            Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/todo","postgres","Bepc3827");
            ResultSet res = conn.createStatement().executeQuery("SELECT * FROM todo WHERE "+keyword+" = '"+Value+"'");

            while(res.next()){
                toDos.add(new ToDo(res.getInt("todo_id"),res.getString("title"),res.getString("description"),null, res.getDate("creation_date"),res.getDate("deadline"),res.getDate("execution_date"),null));

            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return toDos;

    }

    public static void main(String[] args) {
        System.out.println(selectByKeyword("deadline","2024-08-26"));
    }
}
