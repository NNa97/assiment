/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import entity.Score;
import entity.Subject;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author USER
 */
public class SubjectDBContext extends DBContext {

    public ArrayList<Subject> SubjectStudent() {
        
        ArrayList<Subject> list = new ArrayList<>();
        try {

            String sql = "SELECT [subid]\n"
                    + "      ,[suname]\n"
                    + "     \n"
                    + "  FROM [Subject]";
            PreparedStatement stm = connection.prepareStatement(sql);

            ResultSet rs = stm.executeQuery();

            while (rs.next()) {
                Subject subject = new Subject();
                subject.setId(rs.getInt("subid"));
                 subject.setName(rs.getString("suname"));//nhin thay ko sua di
                list.add(subject);
            }

        } catch (SQLException ex) {
            Logger.getLogger(SubjectDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
}
