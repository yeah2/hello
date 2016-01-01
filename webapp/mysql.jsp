<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%
 String DBDRIVER = "com.mysql.jdbc.Driver" ;
 String host = System.getenv("MYSQL_PORT_3306_TCP_ADDR");
 String port = System.getenv("MYSQL_PORT_3306_TCP_PORT");
 String userName = System.getenv("MYSQL_USERNAME");   
 String userPasswd = System.getenv("MYSQL_PASSWORD");  
 String dbName = "test";  //数据库名
 String tableName="t1"; //表名
 String DBURL = "jdbc:mysql://"+host+":"+port +"/"+dbName+"?user="+userName+"&password="+userPasswd;


  Connection conn = null ;
  PreparedStatement pstmt = null ;
  ResultSet rs = null ;
  String str = "";

 try{
   Class.forName(DBDRIVER) ;
   conn = DriverManager.getConnection(DBURL) ;
   String sql = "SELECT * FROM t1" ;
   pstmt = conn.prepareStatement(sql) ;
   rs = pstmt.executeQuery() ;   
   while(rs.next()) {
     str += "\t" + rs.getString(1) ;
     str += "\t" + rs.getString(2) ;
     str += "\n";
  }
 }catch(Exception e){
   e.printStackTrace();
   out.println(e);
 }finally{
  try{
   conn.close() ; 
  }catch(Exception e){
    e.printStackTrace();
  }
 }

 System.out.println(str);
 %>

<pre> 
查询结果：
<%=str %>
</pre>