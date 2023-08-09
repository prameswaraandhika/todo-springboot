package com.example.todospringboot.login;

import org.springframework.stereotype.Service;

@Service
public class AuthenticationService {
    boolean authenticate(String username, String password){
        boolean isValidUsername = username.equalsIgnoreCase("andhikap");
        boolean isValidPassword = password.equalsIgnoreCase("password");
        return isValidUsername && isValidPassword;
    }
}
