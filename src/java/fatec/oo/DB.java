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
        if(clientes == null){
            clientes = new ArrayList<>();
            Cliente cliente = new Cliente();
            cliente.setNome("Olaf");
            cliente.setEmail("olaf@gmail.net");
            cliente.setCpf("345.432.533.23");
            cliente.setTelefone("12 34443-3243");
            cliente.setRg("123.322.344-3");
            cliente.setLogradouro("Rua das flores, 303");
            clientes.add(cliente);
        }
        return clientes;
    }
    
    private static ArrayList<Fornecedor> fornecedores;
    
    public static ArrayList<Fornecedor> getFornecedores(){
        
        if(fornecedores == null){
            fornecedores = new ArrayList<>();
            Fornecedor fornecedor = new Fornecedor();
            fornecedor.setEmail("umbrellas@gmail.net");
            fornecedor.setCnpj("43.323.663/0001");
            fornecedor.setTelefone("12 5322-3423");
            fornecedor.setRazao_social("Umbrella");
            fornecedor.setLogradouro("Rua dos fornecedores, sem nº");
            fornecedores.add(fornecedor);
        }
        return fornecedores;
    }
}
