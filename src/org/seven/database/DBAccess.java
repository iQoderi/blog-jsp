package org.seven.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBAccess {

    private String drv = "com.mysql.jdbc.Driver";

    private String url = "jdbc:mysql://localhost:3306/blog?useUnicode=true&characterEncoding=utf-8";

    private String usr = "root";

    private String pwd = "Qoder5143209";

    private Connection conn = null;

    private Statement stm = null;

    private ResultSet rs = null;

    public boolean createConn() {//�������ݿ�
        boolean b = false;
        try {
            Class.forName(drv).newInstance();
            conn = DriverManager.getConnection(url, usr, pwd);
            b = true;
        } catch (SQLException e) {
            System.out.println(e.toString());
        } catch (ClassNotFoundException e) {
            System.out.println(e.toString());
        } catch (InstantiationException e) {
            System.out.println(e.toString());
        } catch (IllegalAccessException e) {
            System.out.println(e.toString());
        }
        return b;
    }

    public boolean update(String sql) {//�������ݿ��¼
        boolean b = false;
        try {
            stm = conn.createStatement();
            stm.execute(sql);
            b = true;
        } catch (Exception e) {
            System.out.println(e.toString());
        }
        return b;
    }

    public ResultSet query(String sql) {//��ѯ���ݿ�
        try {
            stm = conn.createStatement();
            rs = stm.executeQuery(sql);
            return rs;
        } catch (Exception e) {
            System.out.println(e.toString());
            return rs;
        }
    }

    public boolean next() {
        boolean b = false;
        try {
            if(rs.next())b = true;
        } catch (Exception e) {
        }
        return b;
    }

    public String getValue(String field) {
        String value = null;
        try {
            if(rs!=null)value = rs.getString(field);
        } catch (Exception e) {
        }
        return value;
    }

    public void closeConn() {
        try {
            if (conn != null)
                conn.close();
        } catch (SQLException e) {
        }
    }

    public void closeStm() {
        try {
            if (stm != null)
                stm.close();
        } catch (SQLException e) {
        }
    }

    public void closeRs() {
        try {
            if (rs != null)
                rs.close();
        } catch (SQLException e) {
        }
    }

    public Connection getConn() {
        return conn;
    }

    public void setConn(Connection conn) {
        this.conn = conn;
    }

    public String getDrv() {
        return drv;
    }

    public void setDrv(String drv) {
        this.drv = drv;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public ResultSet getRs() {
        return rs;
    }

    public void setRs(ResultSet rs) {
        this.rs = rs;
    }

    public Statement getStm() {
        return stm;
    }

    public void setStm(Statement stm) {
        this.stm = stm;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getUsr() {
        return usr;
    }

    public void setUsr(String usr) {
        this.usr = usr;
    }


}
