/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import dal.DBContext;
import entity.Score;
import java.util.ArrayList;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author USER
 */
public class ScoreDBContext extends DBContext<Score> {

    public Score ScoreStudent(int sid, int subid) {
        try {

            String sql = "select s.sname,su.suname,sc.actlearn,sc.pt1,sc.pt2,sc.project,sc.final,sc.[avg]\n"
                    + "from Score sc Inner join Student s on s.[sid]=sc.[sid]\n"
                    + "         Inner join Subject su on su.[subid]=sc.[subid]\n"
                    + " where s.sid = ? and su.subid = ?";
            if (subid == 0) {
                sql = "select s.sname,su.suname,sc.actlearn,sc.pt1,sc.pt2,sc.project,sc.final,sc.[avg]\n"
                        + "from Score sc Inner join Student s on s.[sid]=sc.[sid]\n"
                        + "         Inner join Subject su on su.[subid]=sc.[subid]\n"
                        + " where s.sid = ? ";
            }
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, sid);
            if (subid != 0) {
                stm.setInt(2, subid);
            }
            ResultSet rs = stm.executeQuery();

            if (rs.next()) {
                Score score = new Score();

                score.setNameStudent(rs.getString("sname"));
                score.setNameSuject(rs.getString("suname"));
                score.setActive(rs.getFloat("actlearn"));
                score.setPt1(rs.getFloat("pt1"));
                score.setPt2(rs.getFloat("pt2"));
                score.setProject(rs.getFloat("project"));
                score.setFinalExam(rs.getFloat("final"));
                score.setAvg(rs.getFloat("avg"));
                return score;
            }

        } catch (SQLException ex) {
            Logger.getLogger(ScoreDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
