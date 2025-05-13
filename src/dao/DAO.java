package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DAO {
 private static final String JDBC_URL = "jdbc:h2:tcp://localhost/~/manage"; // H2 組み込みモードの例
 private static final String DB_USER = "sa"; // デフォルトユーザー
 private static final String DB_PASSWORD = ""; // デフォルトパスワード
 private static final String JDBC_DRIVER = "org.h2.Driver";

 protected Connection getConnection() throws ClassNotFoundException, SQLException {
     Class.forName(JDBC_DRIVER);
     return DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASSWORD);
 }
}