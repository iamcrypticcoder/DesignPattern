package com.mahbub.designpattern.factorymethod;

interface DatabaseConnection {
    void connect();
    void query(String queryString);
}

class MySQLConnection implements DatabaseConnection {
    public void connect() {
        System.out.println("Connected to MySQL Database");
    }

    public void query(String queryString) {
        System.out.println("MySQL: Query Completed: " + queryString);
    }
}

class MSSQLConnection implements DatabaseConnection {
    public void connect() {
        System.out.println("Connected to MSSQL Database");
    }

    public void query(String queryString) {
        System.out.println("MSSQL: Query Completed: " + queryString);
    }
}

class OracleConnection implements DatabaseConnection {
    public void connect() {
        System.out.println("Connected to Oracle Database");
    }

    public void query(String queryString) {
        System.out.println("Oracle: Query Completed: " + queryString);
    }
}

class ConnectionFactory {
    // This is called factorymethod method
    public static DatabaseConnection getConnection(String dbServer) {
        if(dbServer.equals("mysql")) return new MySQLConnection();
        if(dbServer.equals("mssql")) return new MSSQLConnection();
        if(dbServer.equals("oracle")) return new OracleConnection();

        return null;
    }
}

public class FactoryMethod_Demo {
    public static void main(String args[]) {
        DatabaseConnection conn = ConnectionFactory.getConnection("mssql");
        conn.connect();
        conn.query("SELECT * FROM users");
    }
}

