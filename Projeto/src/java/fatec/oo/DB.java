/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fatec.oo;

import java.util.ArrayList;

/**
 *
 * @author Daniel
 */
public class DB {
    private static ArrayList<Cliente> clientes;
    
    public static ArrayList<Cliente> getClientes(){
        return clientes;
    }
    
    private static ArrayList<Fornecedor> fornecedor;
    
    public static ArrayList<Fornecedor> getFornecedores(){
        
        return fornecedor;
    }
}
